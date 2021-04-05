; Auto-generated. Do not edit!


(cl:in-package cust_msg_pub-msg)


;//! \htmlinclude my_first_cust_msg.msg.html

(cl:defclass <my_first_cust_msg> (roslisp-msg-protocol:ros-message)
  ((A
    :reader A
    :initarg :A
    :type cl:integer
    :initform 0)
   (B
    :reader B
    :initarg :B
    :type cl:integer
    :initform 0)
   (C
    :reader C
    :initarg :C
    :type cl:integer
    :initform 0))
)

(cl:defclass my_first_cust_msg (<my_first_cust_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <my_first_cust_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'my_first_cust_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cust_msg_pub-msg:<my_first_cust_msg> is deprecated: use cust_msg_pub-msg:my_first_cust_msg instead.")))

(cl:ensure-generic-function 'A-val :lambda-list '(m))
(cl:defmethod A-val ((m <my_first_cust_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cust_msg_pub-msg:A-val is deprecated.  Use cust_msg_pub-msg:A instead.")
  (A m))

(cl:ensure-generic-function 'B-val :lambda-list '(m))
(cl:defmethod B-val ((m <my_first_cust_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cust_msg_pub-msg:B-val is deprecated.  Use cust_msg_pub-msg:B instead.")
  (B m))

(cl:ensure-generic-function 'C-val :lambda-list '(m))
(cl:defmethod C-val ((m <my_first_cust_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cust_msg_pub-msg:C-val is deprecated.  Use cust_msg_pub-msg:C instead.")
  (C m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <my_first_cust_msg>) ostream)
  "Serializes a message object of type '<my_first_cust_msg>"
  (cl:let* ((signed (cl:slot-value msg 'A)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'B)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'C)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <my_first_cust_msg>) istream)
  "Deserializes a message object of type '<my_first_cust_msg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'A) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'B) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'C) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<my_first_cust_msg>)))
  "Returns string type for a message object of type '<my_first_cust_msg>"
  "cust_msg_pub/my_first_cust_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'my_first_cust_msg)))
  "Returns string type for a message object of type 'my_first_cust_msg"
  "cust_msg_pub/my_first_cust_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<my_first_cust_msg>)))
  "Returns md5sum for a message object of type '<my_first_cust_msg>"
  "e7a68ce4e0b75a9719b4950a7069c9d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'my_first_cust_msg)))
  "Returns md5sum for a message object of type 'my_first_cust_msg"
  "e7a68ce4e0b75a9719b4950a7069c9d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<my_first_cust_msg>)))
  "Returns full string definition for message of type '<my_first_cust_msg>"
  (cl:format cl:nil "int32 A~%int32 B~%int32 C~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'my_first_cust_msg)))
  "Returns full string definition for message of type 'my_first_cust_msg"
  (cl:format cl:nil "int32 A~%int32 B~%int32 C~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <my_first_cust_msg>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <my_first_cust_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'my_first_cust_msg
    (cl:cons ':A (A msg))
    (cl:cons ':B (B msg))
    (cl:cons ':C (C msg))
))
