;; Auto-generated. Do not edit!


(when (boundp 'custom_msg_vect::num_to_add_vector)
  (if (not (find-package "CUSTOM_MSG_VECT"))
    (make-package "CUSTOM_MSG_VECT"))
  (shadow 'num_to_add_vector (find-package "CUSTOM_MSG_VECT")))
(unless (find-package "CUSTOM_MSG_VECT::NUM_TO_ADD_VECTOR")
  (make-package "CUSTOM_MSG_VECT::NUM_TO_ADD_VECTOR"))

(in-package "ROS")
;;//! \htmlinclude num_to_add_vector.msg.html


(defclass custom_msg_vect::num_to_add_vector
  :super ros::object
  :slots (_triple_vect ))

(defmethod custom_msg_vect::num_to_add_vector
  (:init
   (&key
    ((:triple_vect __triple_vect) ())
    )
   (send-super :init)
   (setq _triple_vect __triple_vect)
   self)
  (:triple_vect
   (&rest __triple_vect)
   (if (keywordp (car __triple_vect))
       (send* _triple_vect __triple_vect)
     (progn
       (if __triple_vect (setq _triple_vect (car __triple_vect)))
       _triple_vect)))
  (:serialization-length
   ()
   (+
    ;; custom_msg_vect/num_to_add[] _triple_vect
    (apply #'+ (send-all _triple_vect :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; custom_msg_vect/num_to_add[] _triple_vect
     (write-long (length _triple_vect) s)
     (dolist (elem _triple_vect)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; custom_msg_vect/num_to_add[] _triple_vect
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _triple_vect (let (r) (dotimes (i n) (push (instance custom_msg_vect::num_to_add :init) r)) r))
     (dolist (elem- _triple_vect)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get custom_msg_vect::num_to_add_vector :md5sum-) "26ee6ff0fea7723aa88681e691bd7db4")
(setf (get custom_msg_vect::num_to_add_vector :datatype-) "custom_msg_vect/num_to_add_vector")
(setf (get custom_msg_vect::num_to_add_vector :definition-)
      "num_to_add[] triple_vect

================================================================================
MSG: custom_msg_vect/num_to_add
int32 A
int32 B
int32 C

")



(provide :custom_msg_vect/num_to_add_vector "26ee6ff0fea7723aa88681e691bd7db4")


