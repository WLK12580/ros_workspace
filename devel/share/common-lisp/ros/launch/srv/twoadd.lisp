; Auto-generated. Do not edit!


(cl:in-package launch-srv)


;//! \htmlinclude twoadd-request.msg.html

(cl:defclass <twoadd-request> (roslisp-msg-protocol:ros-message)
  ((num1
    :reader num1
    :initarg :num1
    :type cl:integer
    :initform 0)
   (num2
    :reader num2
    :initarg :num2
    :type cl:integer
    :initform 0))
)

(cl:defclass twoadd-request (<twoadd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <twoadd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'twoadd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name launch-srv:<twoadd-request> is deprecated: use launch-srv:twoadd-request instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <twoadd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader launch-srv:num1-val is deprecated.  Use launch-srv:num1 instead.")
  (num1 m))

(cl:ensure-generic-function 'num2-val :lambda-list '(m))
(cl:defmethod num2-val ((m <twoadd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader launch-srv:num2-val is deprecated.  Use launch-srv:num2 instead.")
  (num2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <twoadd-request>) ostream)
  "Serializes a message object of type '<twoadd-request>"
  (cl:let* ((signed (cl:slot-value msg 'num1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <twoadd-request>) istream)
  "Deserializes a message object of type '<twoadd-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<twoadd-request>)))
  "Returns string type for a service object of type '<twoadd-request>"
  "launch/twoaddRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'twoadd-request)))
  "Returns string type for a service object of type 'twoadd-request"
  "launch/twoaddRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<twoadd-request>)))
  "Returns md5sum for a message object of type '<twoadd-request>"
  "510f99e32f14fb884b8dc4c5eadcee05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'twoadd-request)))
  "Returns md5sum for a message object of type 'twoadd-request"
  "510f99e32f14fb884b8dc4c5eadcee05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<twoadd-request>)))
  "Returns full string definition for message of type '<twoadd-request>"
  (cl:format cl:nil "#客户端请求时发送的数据~%int32 num1~%int32 num2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'twoadd-request)))
  "Returns full string definition for message of type 'twoadd-request"
  (cl:format cl:nil "#客户端请求时发送的数据~%int32 num1~%int32 num2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <twoadd-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <twoadd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'twoadd-request
    (cl:cons ':num1 (num1 msg))
    (cl:cons ':num2 (num2 msg))
))
;//! \htmlinclude twoadd-response.msg.html

(cl:defclass <twoadd-response> (roslisp-msg-protocol:ros-message)
  ((return
    :reader return
    :initarg :return
    :type cl:integer
    :initform 0))
)

(cl:defclass twoadd-response (<twoadd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <twoadd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'twoadd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name launch-srv:<twoadd-response> is deprecated: use launch-srv:twoadd-response instead.")))

(cl:ensure-generic-function 'return-val :lambda-list '(m))
(cl:defmethod return-val ((m <twoadd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader launch-srv:return-val is deprecated.  Use launch-srv:return instead.")
  (return m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <twoadd-response>) ostream)
  "Serializes a message object of type '<twoadd-response>"
  (cl:let* ((signed (cl:slot-value msg 'return)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <twoadd-response>) istream)
  "Deserializes a message object of type '<twoadd-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'return) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<twoadd-response>)))
  "Returns string type for a service object of type '<twoadd-response>"
  "launch/twoaddResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'twoadd-response)))
  "Returns string type for a service object of type 'twoadd-response"
  "launch/twoaddResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<twoadd-response>)))
  "Returns md5sum for a message object of type '<twoadd-response>"
  "510f99e32f14fb884b8dc4c5eadcee05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'twoadd-response)))
  "Returns md5sum for a message object of type 'twoadd-response"
  "510f99e32f14fb884b8dc4c5eadcee05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<twoadd-response>)))
  "Returns full string definition for message of type '<twoadd-response>"
  (cl:format cl:nil "#服务器响应的数据~%~%int32 return~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'twoadd-response)))
  "Returns full string definition for message of type 'twoadd-response"
  (cl:format cl:nil "#服务器响应的数据~%~%int32 return~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <twoadd-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <twoadd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'twoadd-response
    (cl:cons ':return (return msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'twoadd)))
  'twoadd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'twoadd)))
  'twoadd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'twoadd)))
  "Returns string type for a service object of type '<twoadd>"
  "launch/twoadd")