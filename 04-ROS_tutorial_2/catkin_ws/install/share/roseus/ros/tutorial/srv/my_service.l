;; Auto-generated. Do not edit!


(when (boundp 'tutorial::my_service)
  (if (not (find-package "TUTORIAL"))
    (make-package "TUTORIAL"))
  (shadow 'my_service (find-package "TUTORIAL")))
(unless (find-package "TUTORIAL::MY_SERVICE")
  (make-package "TUTORIAL::MY_SERVICE"))
(unless (find-package "TUTORIAL::MY_SERVICEREQUEST")
  (make-package "TUTORIAL::MY_SERVICEREQUEST"))
(unless (find-package "TUTORIAL::MY_SERVICERESPONSE")
  (make-package "TUTORIAL::MY_SERVICERESPONSE"))

(in-package "ROS")





(defclass tutorial::my_serviceRequest
  :super ros::object
  :slots (_filename ))

(defmethod tutorial::my_serviceRequest
  (:init
   (&key
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _filename (string __filename))
   self)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; string _filename
    4 (length _filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tutorial::my_serviceResponse
  :super ros::object
  :slots (_result ))

(defmethod tutorial::my_serviceResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tutorial::my_service
  :super ros::object
  :slots ())

(setf (get tutorial::my_service :md5sum-) "6961c189baed6807930789f82dc9e445")
(setf (get tutorial::my_service :datatype-) "tutorial/my_service")
(setf (get tutorial::my_service :request) tutorial::my_serviceRequest)
(setf (get tutorial::my_service :response) tutorial::my_serviceResponse)

(defmethod tutorial::my_serviceRequest
  (:response () (instance tutorial::my_serviceResponse :init)))

(setf (get tutorial::my_serviceRequest :md5sum-) "6961c189baed6807930789f82dc9e445")
(setf (get tutorial::my_serviceRequest :datatype-) "tutorial/my_serviceRequest")
(setf (get tutorial::my_serviceRequest :definition-)
      "string filename
---
string result

")

(setf (get tutorial::my_serviceResponse :md5sum-) "6961c189baed6807930789f82dc9e445")
(setf (get tutorial::my_serviceResponse :datatype-) "tutorial/my_serviceResponse")
(setf (get tutorial::my_serviceResponse :definition-)
      "string filename
---
string result

")



(provide :tutorial/my_service "6961c189baed6807930789f82dc9e445")


