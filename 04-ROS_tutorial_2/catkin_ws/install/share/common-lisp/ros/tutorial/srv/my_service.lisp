; Auto-generated. Do not edit!


(cl:in-package tutorial-srv)


;//! \htmlinclude my_service-request.msg.html

(cl:defclass <my_service-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass my_service-request (<my_service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <my_service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'my_service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tutorial-srv:<my_service-request> is deprecated: use tutorial-srv:my_service-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <my_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorial-srv:filename-val is deprecated.  Use tutorial-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <my_service-request>) ostream)
  "Serializes a message object of type '<my_service-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <my_service-request>) istream)
  "Deserializes a message object of type '<my_service-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<my_service-request>)))
  "Returns string type for a service object of type '<my_service-request>"
  "tutorial/my_serviceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'my_service-request)))
  "Returns string type for a service object of type 'my_service-request"
  "tutorial/my_serviceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<my_service-request>)))
  "Returns md5sum for a message object of type '<my_service-request>"
  "6961c189baed6807930789f82dc9e445")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'my_service-request)))
  "Returns md5sum for a message object of type 'my_service-request"
  "6961c189baed6807930789f82dc9e445")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<my_service-request>)))
  "Returns full string definition for message of type '<my_service-request>"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'my_service-request)))
  "Returns full string definition for message of type 'my_service-request"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <my_service-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <my_service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'my_service-request
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude my_service-response.msg.html

(cl:defclass <my_service-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass my_service-response (<my_service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <my_service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'my_service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tutorial-srv:<my_service-response> is deprecated: use tutorial-srv:my_service-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <my_service-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorial-srv:result-val is deprecated.  Use tutorial-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <my_service-response>) ostream)
  "Serializes a message object of type '<my_service-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <my_service-response>) istream)
  "Deserializes a message object of type '<my_service-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<my_service-response>)))
  "Returns string type for a service object of type '<my_service-response>"
  "tutorial/my_serviceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'my_service-response)))
  "Returns string type for a service object of type 'my_service-response"
  "tutorial/my_serviceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<my_service-response>)))
  "Returns md5sum for a message object of type '<my_service-response>"
  "6961c189baed6807930789f82dc9e445")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'my_service-response)))
  "Returns md5sum for a message object of type 'my_service-response"
  "6961c189baed6807930789f82dc9e445")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<my_service-response>)))
  "Returns full string definition for message of type '<my_service-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'my_service-response)))
  "Returns full string definition for message of type 'my_service-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <my_service-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <my_service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'my_service-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'my_service)))
  'my_service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'my_service)))
  'my_service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'my_service)))
  "Returns string type for a service object of type '<my_service>"
  "tutorial/my_service")