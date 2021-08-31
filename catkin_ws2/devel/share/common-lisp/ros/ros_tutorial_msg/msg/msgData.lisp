; Auto-generated. Do not edit!


(cl:in-package ros_tutorial_msg-msg)


;//! \htmlinclude msgData.msg.html

(cl:defclass <msgData> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass msgData (<msgData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msgData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msgData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_tutorial_msg-msg:<msgData> is deprecated: use ros_tutorial_msg-msg:msgData instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <msgData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_tutorial_msg-msg:data-val is deprecated.  Use ros_tutorial_msg-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msgData>) ostream)
  "Serializes a message object of type '<msgData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msgData>) istream)
  "Deserializes a message object of type '<msgData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msgData>)))
  "Returns string type for a message object of type '<msgData>"
  "ros_tutorial_msg/msgData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msgData)))
  "Returns string type for a message object of type 'msgData"
  "ros_tutorial_msg/msgData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msgData>)))
  "Returns md5sum for a message object of type '<msgData>"
  "304a39449588c7f8ce2df6e8001c5fce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msgData)))
  "Returns md5sum for a message object of type 'msgData"
  "304a39449588c7f8ce2df6e8001c5fce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msgData>)))
  "Returns full string definition for message of type '<msgData>"
  (cl:format cl:nil "~%uint32 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msgData)))
  "Returns full string definition for message of type 'msgData"
  (cl:format cl:nil "~%uint32 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msgData>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msgData>))
  "Converts a ROS message object to a list"
  (cl:list 'msgData
    (cl:cons ':data (data msg))
))
