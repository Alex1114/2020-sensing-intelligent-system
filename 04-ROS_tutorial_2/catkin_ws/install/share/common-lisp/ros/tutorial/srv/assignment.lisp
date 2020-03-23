; Auto-generated. Do not edit!


(cl:in-package tutorial-srv)


;//! \htmlinclude assignment-request.msg.html

(cl:defclass <assignment-request> (roslisp-msg-protocol:ros-message)
  ((tag1_id
    :reader tag1_id
    :initarg :tag1_id
    :type cl:integer
    :initform 0)
   (tag2_id
    :reader tag2_id
    :initarg :tag2_id
    :type cl:integer
    :initform 0))
)

(cl:defclass assignment-request (<assignment-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <assignment-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'assignment-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tutorial-srv:<assignment-request> is deprecated: use tutorial-srv:assignment-request instead.")))

(cl:ensure-generic-function 'tag1_id-val :lambda-list '(m))
(cl:defmethod tag1_id-val ((m <assignment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorial-srv:tag1_id-val is deprecated.  Use tutorial-srv:tag1_id instead.")
  (tag1_id m))

(cl:ensure-generic-function 'tag2_id-val :lambda-list '(m))
(cl:defmethod tag2_id-val ((m <assignment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorial-srv:tag2_id-val is deprecated.  Use tutorial-srv:tag2_id instead.")
  (tag2_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <assignment-request>) ostream)
  "Serializes a message object of type '<assignment-request>"
  (cl:let* ((signed (cl:slot-value msg 'tag1_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'tag2_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <assignment-request>) istream)
  "Deserializes a message object of type '<assignment-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tag1_id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tag2_id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<assignment-request>)))
  "Returns string type for a service object of type '<assignment-request>"
  "tutorial/assignmentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'assignment-request)))
  "Returns string type for a service object of type 'assignment-request"
  "tutorial/assignmentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<assignment-request>)))
  "Returns md5sum for a message object of type '<assignment-request>"
  "1d701094808d2d1d11adf0aa9a8a6193")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'assignment-request)))
  "Returns md5sum for a message object of type 'assignment-request"
  "1d701094808d2d1d11adf0aa9a8a6193")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<assignment-request>)))
  "Returns full string definition for message of type '<assignment-request>"
  (cl:format cl:nil "int64 tag1_id~%int64 tag2_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'assignment-request)))
  "Returns full string definition for message of type 'assignment-request"
  (cl:format cl:nil "int64 tag1_id~%int64 tag2_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <assignment-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <assignment-request>))
  "Converts a ROS message object to a list"
  (cl:list 'assignment-request
    (cl:cons ':tag1_id (tag1_id msg))
    (cl:cons ':tag2_id (tag2_id msg))
))
;//! \htmlinclude assignment-response.msg.html

(cl:defclass <assignment-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform "")
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass assignment-response (<assignment-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <assignment-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'assignment-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tutorial-srv:<assignment-response> is deprecated: use tutorial-srv:assignment-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <assignment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorial-srv:result-val is deprecated.  Use tutorial-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <assignment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorial-srv:distance-val is deprecated.  Use tutorial-srv:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <assignment-response>) ostream)
  "Serializes a message object of type '<assignment-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <assignment-response>) istream)
  "Deserializes a message object of type '<assignment-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<assignment-response>)))
  "Returns string type for a service object of type '<assignment-response>"
  "tutorial/assignmentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'assignment-response)))
  "Returns string type for a service object of type 'assignment-response"
  "tutorial/assignmentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<assignment-response>)))
  "Returns md5sum for a message object of type '<assignment-response>"
  "1d701094808d2d1d11adf0aa9a8a6193")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'assignment-response)))
  "Returns md5sum for a message object of type 'assignment-response"
  "1d701094808d2d1d11adf0aa9a8a6193")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<assignment-response>)))
  "Returns full string definition for message of type '<assignment-response>"
  (cl:format cl:nil "string result~%float64 distance~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'assignment-response)))
  "Returns full string definition for message of type 'assignment-response"
  (cl:format cl:nil "string result~%float64 distance~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <assignment-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <assignment-response>))
  "Converts a ROS message object to a list"
  (cl:list 'assignment-response
    (cl:cons ':result (result msg))
    (cl:cons ':distance (distance msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'assignment)))
  'assignment-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'assignment)))
  'assignment-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'assignment)))
  "Returns string type for a service object of type '<assignment>"
  "tutorial/assignment")