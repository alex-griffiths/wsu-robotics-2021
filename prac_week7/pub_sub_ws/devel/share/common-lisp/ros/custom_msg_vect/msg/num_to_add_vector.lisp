; Auto-generated. Do not edit!


(cl:in-package custom_msg_vect-msg)


;//! \htmlinclude num_to_add_vector.msg.html

(cl:defclass <num_to_add_vector> (roslisp-msg-protocol:ros-message)
  ((triple_vect
    :reader triple_vect
    :initarg :triple_vect
    :type (cl:vector custom_msg_vect-msg:num_to_add)
   :initform (cl:make-array 0 :element-type 'custom_msg_vect-msg:num_to_add :initial-element (cl:make-instance 'custom_msg_vect-msg:num_to_add))))
)

(cl:defclass num_to_add_vector (<num_to_add_vector>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <num_to_add_vector>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'num_to_add_vector)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msg_vect-msg:<num_to_add_vector> is deprecated: use custom_msg_vect-msg:num_to_add_vector instead.")))

(cl:ensure-generic-function 'triple_vect-val :lambda-list '(m))
(cl:defmethod triple_vect-val ((m <num_to_add_vector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msg_vect-msg:triple_vect-val is deprecated.  Use custom_msg_vect-msg:triple_vect instead.")
  (triple_vect m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <num_to_add_vector>) ostream)
  "Serializes a message object of type '<num_to_add_vector>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'triple_vect))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'triple_vect))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <num_to_add_vector>) istream)
  "Deserializes a message object of type '<num_to_add_vector>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'triple_vect) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'triple_vect)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'custom_msg_vect-msg:num_to_add))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<num_to_add_vector>)))
  "Returns string type for a message object of type '<num_to_add_vector>"
  "custom_msg_vect/num_to_add_vector")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'num_to_add_vector)))
  "Returns string type for a message object of type 'num_to_add_vector"
  "custom_msg_vect/num_to_add_vector")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<num_to_add_vector>)))
  "Returns md5sum for a message object of type '<num_to_add_vector>"
  "26ee6ff0fea7723aa88681e691bd7db4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'num_to_add_vector)))
  "Returns md5sum for a message object of type 'num_to_add_vector"
  "26ee6ff0fea7723aa88681e691bd7db4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<num_to_add_vector>)))
  "Returns full string definition for message of type '<num_to_add_vector>"
  (cl:format cl:nil "num_to_add[] triple_vect~%~%================================================================================~%MSG: custom_msg_vect/num_to_add~%int32 A~%int32 B~%int32 C~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'num_to_add_vector)))
  "Returns full string definition for message of type 'num_to_add_vector"
  (cl:format cl:nil "num_to_add[] triple_vect~%~%================================================================================~%MSG: custom_msg_vect/num_to_add~%int32 A~%int32 B~%int32 C~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <num_to_add_vector>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'triple_vect) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <num_to_add_vector>))
  "Converts a ROS message object to a list"
  (cl:list 'num_to_add_vector
    (cl:cons ':triple_vect (triple_vect msg))
))
