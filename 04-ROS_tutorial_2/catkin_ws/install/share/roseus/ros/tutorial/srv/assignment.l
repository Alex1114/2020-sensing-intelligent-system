;; Auto-generated. Do not edit!


(when (boundp 'tutorial::assignment)
  (if (not (find-package "TUTORIAL"))
    (make-package "TUTORIAL"))
  (shadow 'assignment (find-package "TUTORIAL")))
(unless (find-package "TUTORIAL::ASSIGNMENT")
  (make-package "TUTORIAL::ASSIGNMENT"))
(unless (find-package "TUTORIAL::ASSIGNMENTREQUEST")
  (make-package "TUTORIAL::ASSIGNMENTREQUEST"))
(unless (find-package "TUTORIAL::ASSIGNMENTRESPONSE")
  (make-package "TUTORIAL::ASSIGNMENTRESPONSE"))

(in-package "ROS")





(defclass tutorial::assignmentRequest
  :super ros::object
  :slots (_tag1_id _tag2_id ))

(defmethod tutorial::assignmentRequest
  (:init
   (&key
    ((:tag1_id __tag1_id) 0)
    ((:tag2_id __tag2_id) 0)
    )
   (send-super :init)
   (setq _tag1_id (round __tag1_id))
   (setq _tag2_id (round __tag2_id))
   self)
  (:tag1_id
   (&optional __tag1_id)
   (if __tag1_id (setq _tag1_id __tag1_id)) _tag1_id)
  (:tag2_id
   (&optional __tag2_id)
   (if __tag2_id (setq _tag2_id __tag2_id)) _tag2_id)
  (:serialization-length
   ()
   (+
    ;; int64 _tag1_id
    8
    ;; int64 _tag2_id
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _tag1_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _tag1_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _tag1_id) (= (length (_tag1_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_tag1_id . bv) 0) 0) s)
              (write-long (ash (elt (_tag1_id . bv) 1) -1) s))
             ((and (class _tag1_id) (= (length (_tag1_id . bv)) 1)) ;; big1
              (write-long (elt (_tag1_id . bv) 0) s)
              (write-long (if (>= _tag1_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _tag1_id s)(write-long (if (>= _tag1_id 0) 0 #xffffffff) s)))
     ;; int64 _tag2_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _tag2_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _tag2_id) (= (length (_tag2_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_tag2_id . bv) 0) 0) s)
              (write-long (ash (elt (_tag2_id . bv) 1) -1) s))
             ((and (class _tag2_id) (= (length (_tag2_id . bv)) 1)) ;; big1
              (write-long (elt (_tag2_id . bv) 0) s)
              (write-long (if (>= _tag2_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _tag2_id s)(write-long (if (>= _tag2_id 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _tag1_id
#+(or :alpha :irix6 :x86_64)
      (setf _tag1_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _tag1_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _tag2_id
#+(or :alpha :irix6 :x86_64)
      (setf _tag2_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _tag2_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass tutorial::assignmentResponse
  :super ros::object
  :slots (_result _distance ))

(defmethod tutorial::assignmentResponse
  (:init
   (&key
    ((:result __result) "")
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _result (string __result))
   (setq _distance (float __distance))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ;; float64 _distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass tutorial::assignment
  :super ros::object
  :slots ())

(setf (get tutorial::assignment :md5sum-) "1d701094808d2d1d11adf0aa9a8a6193")
(setf (get tutorial::assignment :datatype-) "tutorial/assignment")
(setf (get tutorial::assignment :request) tutorial::assignmentRequest)
(setf (get tutorial::assignment :response) tutorial::assignmentResponse)

(defmethod tutorial::assignmentRequest
  (:response () (instance tutorial::assignmentResponse :init)))

(setf (get tutorial::assignmentRequest :md5sum-) "1d701094808d2d1d11adf0aa9a8a6193")
(setf (get tutorial::assignmentRequest :datatype-) "tutorial/assignmentRequest")
(setf (get tutorial::assignmentRequest :definition-)
      "int64 tag1_id
int64 tag2_id
---
string result
float64 distance


")

(setf (get tutorial::assignmentResponse :md5sum-) "1d701094808d2d1d11adf0aa9a8a6193")
(setf (get tutorial::assignmentResponse :datatype-) "tutorial/assignmentResponse")
(setf (get tutorial::assignmentResponse :definition-)
      "int64 tag1_id
int64 tag2_id
---
string result
float64 distance


")



(provide :tutorial/assignment "1d701094808d2d1d11adf0aa9a8a6193")


