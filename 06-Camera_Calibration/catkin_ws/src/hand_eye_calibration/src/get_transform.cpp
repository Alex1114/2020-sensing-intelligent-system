#include <ros/ros.h>
#include <cstdio>               // printf
#include <iostream>             // std::cout
#include <tf/tf.h>              // Transformation
#include <string>               //std::string
#include <eigen3/Eigen/Dense>   //Eigen core, SVD
#include <fstream>              //std::ifstream
#include <geometry_msgs/Point.h>
#include <iomanip>

using namespace std;
using namespace Eigen;


class get_transform
{
    public:
    get_transform(char* file)
    {
        if(!parse_file(file))
            return;
        else
            get_transform::get_transform_matrix();
    }

    private:
        //=======================================================
        MatrixXf arm_position, eye_position;
        Vector3f arm_centroid, eye_centroid;
        MatrixXf H;
        Matrix3f R;
        Array3f trans;
        Matrix4f homo;
        ifstream f;
        string data;
        double arm_sum = 0.0;
        double eye_sum = 0.0;
        //=======================================================

        bool parse_file(char* file)
        {
            int count = 0;
            f.open(file, ifstream::in);  

            // Check if file exist
            if(!f)
            {
                cout << "Can't open file" << endl;
                return false;
            } 
            // Get number of data
            while(getline(f, data)) 
            {
                if(!data.empty()) 
                    ++count;
                else 
                    cout << "Empty, ignore this line." << endl;
            }
            arm_position = MatrixXf(count, 3);
            eye_position = MatrixXf(count, 3);
            
            // return the cursor to the begining of the file
            f.clear();
            f.seekg(0, ios::beg);
            int row = 0;
            while(!f.eof() && row<count)
            {
                getline(f, data);
                stringstream ss(data);
                int i = 0;
                while(ss.good() && i<6)
                {
                    double val;
                    switch(i)
                    {
                        case 0: case 1: case 2:
                            ss >> val; 
                            arm_position(row, i) = val; 
                            break;
                        case 3: case 4: case 5:
                            ss >> val; 
                            eye_position(row, i-3) = val; 
                            break;
                    } 
                    ++i;
                } 
                ++row;
            }
            return true;
        }

        void get_transform_matrix(void)
        {
            // Reference: Least-Squares Fitting of Two 3-D Point Sets
            // 1. Compute centroid
            for(int i=0; i<3; ++i)
            {
                for(int j=0; j<arm_position.rows(); ++j)
                {
                    arm_sum += arm_position(j, i);
                    eye_sum += eye_position(j, i);
                }
                arm_centroid(i) = arm_sum/(double)arm_position.rows();
                eye_centroid(i) = eye_sum/(double)eye_position.rows(); 
                arm_sum = eye_sum = 0;
            }

            // 2. Compute deviation
            MatrixXf arm_deviation(arm_position.rows(), 3), eye_deviation(eye_position.rows(), 3);
            for(int i=0; i<arm_position.rows(); ++i)
            {
                for(int j=0; j<3; ++j)
                {
                    arm_deviation(i, j) = arm_position(i, j) - arm_centroid(j); 
                    eye_deviation(i, j) = eye_position(i, j) - eye_centroid(j); 
                }
            }

            // 3. Compute H
            H = eye_deviation.transpose() * arm_deviation; 
            
            // 4. SVD
            Eigen::JacobiSVD<Eigen::MatrixXf> svd(H, Eigen::ComputeThinU | Eigen::ComputeThinV);
  
            // 5. Compute rotation and translation
            R = svd.matrixV() * svd.matrixU().transpose(); 
            trans = arm_centroid - R * eye_centroid; 

            //Print Eigen::Matrix4f
            homo.block<3, 3>(0, 0) = R;
            homo.block<3, 1>(0, 3) = trans;
            homo(3, 3) = 1.0;
            cout.setf(ios::fixed, ios::floatfield);
            cout << "Homogeneous transformation matrix: \n" << setprecision(6) << homo << "\n";
        }
};

int main(int argc, char** argv)
{
    if(argc!=2)
    {
        printf("Not enough input. \n");
        return -1;
    }
    get_transform psr(argv[1]);
    return 0;
}