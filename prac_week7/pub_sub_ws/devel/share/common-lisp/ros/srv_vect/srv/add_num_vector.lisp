; Auto-generated. Do not edit!


(cl:in-package srv_vect-srv)


;//! \htmlinclude add_num_vector-request.msg.html

(cl:defclass <add_num_vector-request> (roslisp-msg-protocol:ros-message)
  ((triple_vect
    :reader triple_vect
    :initarg :triple_vect
    :type (cl:vector srv_vect-msg:num_to_add)
   :initform (cl:make-array 0 :element-type 'srv_vect-msg:num_to_add :initial-element (cl:make-instance 'srv_vect-msg:num_to_add))))
)

(cl:defclass add_num_vector-request (<add_num_vector-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <add_num_vector-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'add_num_vector-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srv_vect-srv:<add_num_vector-request> is deprecated: use srv_vect-srv:add_num_vector-request instead.")))

(cl:ensure-generic-function 'triple_vect-val :lambda-list '(m))
(cl:defmethod triple_vect-val ((m <add_num_vector-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srv_vect-srv:triple_vect-val is deprecated.  Use srv_vect-srv:triple_vect instead.")
  (triple_vect m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <add_num_vector-request>) ostream)
  "Serializes a message object of type '<add_num_vector-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'triple_vect))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'triple_vect))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <add_num_vector-request>) istream)
  "Deserializes a message object of type '<add_num_vector-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'triple_vect) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'triple_vect)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'srv_vect-msg:num_to_add))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<add_num_vector-request>)))
  "Returns string type for a service object of type '<add_num_vector-request>"
  "srv_vect/add_num_vectorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'add_num_vector-request)))
  "Returns string type for a service object of type 'add_num_vector-request"
  "srv_vect/add_num_vectorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<add_num_vector-request>)))
  "Returns md5sum for a message object of type '<add_num_vector-request>"
  "0681f85c1862941ab79099dc09475177")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'add_num_vector-request)))
  "Returns md5sum for a message object of type 'add_num_vector-request"
  "0681f85c1862941ab79099dc09475177")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<add_num_vector-request>)))
  "Returns full string definition for message of type '<add_num_vector-request>"
  (cl:format cl:nil "num_to_add[] triple_vect~%~%================================================================================~%MSG: srv_vect/num_to_add~%int32 A~%int32 B~%int32 C~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'add_num_vector-request)))
  "Returns full string definition for message of type 'add_num_vector-request"
  (cl:format cl:nil "num_to_add[] triple_vect~%~%================================================================================~%MSG: srv_vect/num_to_add~%int32 A~%int32 B~%int32 C~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <add_num_vector-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'triple_vect) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <add_num_vector-request>))
  "Converts a ROS message object to a list"
  (cl:list 'add_num_vector-request
    (cl:cons ':triple_vect (triple_vect msg))
))
;//! \htmlinclude add_num_vector-response.msg.html

(cl:defclass <add_num_vector-response> (roslisp-msg-protocol:ros-message)
  ((sum_vect
    :reader sum_vect
    :initarg :sum_vect
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass add_num_vector-response (<add_num_vector-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <add_num_vector-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'add_num_vector-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srv_vect-srv:<add_num_vector-response> is deprecated: use srv_vect-srv:add_num_vector-response instead.")))

(cl:ensure-generic-function 'sum_vect-val :lambda-list '(m))
(cl:defmethod sum_vect-val ((m <add_num_vector-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srv_vect-srv:sum_vect-val is deprecated.  Use srv_vect-srv:sum_vect instead.")
  (sum_vect m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <add_num_vector-response>) ostream)
  "Serializes a message object of type '<add_num_vector-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sum_vect))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'sum_vect))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <add_num_vector-response>) istream)
  "Deserializes a message object of type '<add_num_vector-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sum_vect) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sum_vect)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<add_num_vector-response>)))
  "Returns string type for a service object of type '<add_num_vector-response>"
  "srv_vect/add_num_vectorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'add_num_vector-response)))
  "Returns string type for a service object of type 'add_num_vector-response"
  "srv_vect/add_num_vectorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<add_num_vector-response>)))
  "Returns md5sum for a message object of type '<add_num_vector-response>"
  "0681f85c1862941ab79099dc09475177")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'add_num_vector-response)))
  "Returns md5sum for a message object of type 'add_num_vector-response"
  "0681f85c1862941ab79099dc09475177")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<add_num_vector-response>)))
  "Returns full string definition for message of type '<add_num_vector-response>"
  (cl:format cl:nil "int32[] sum_vect~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'add_num_vector-response)))
  "Returns full string definition for message of type 'add_num_vector-response"
  (cl:format cl:nil "int32[] sum_vect~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <add_num_vector-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sum_vect) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <add_num_vector-response>))
  "Converts a ROS message object to a list"
  (cl:list 'add_num_vector-response
    (cl:cons ':sum_vect (sum_vect msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'add_num_vector)))
  'add_num_vector-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'add_num_vector)))
  'add_num_vector-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'add_num_vector)))
  "Returns string type for a service object of type '<add_num_vector>"
  "srv_vect/add_num_vector")