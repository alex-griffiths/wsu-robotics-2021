;; Auto-generated. Do not edit!


(when (boundp 'cust_msg_pub::my_first_cust_msg)
  (if (not (find-package "CUST_MSG_PUB"))
    (make-package "CUST_MSG_PUB"))
  (shadow 'my_first_cust_msg (find-package "CUST_MSG_PUB")))
(unless (find-package "CUST_MSG_PUB::MY_FIRST_CUST_MSG")
  (make-package "CUST_MSG_PUB::MY_FIRST_CUST_MSG"))

(in-package "ROS")
;;//! \htmlinclude my_first_cust_msg.msg.html


(defclass cust_msg_pub::my_first_cust_msg
  :super ros::object
  :slots (_A _B _C ))

(defmethod cust_msg_pub::my_first_cust_msg
  (:init
   (&key
    ((:A __A) 0)
    ((:B __B) 0)
    ((:C __C) 0)
    )
   (send-super :init)
   (setq _A (round __A))
   (setq _B (round __B))
   (setq _C (round __C))
   self)
  (:A
   (&optional __A)
   (if __A (setq _A __A)) _A)
  (:B
   (&optional __B)
   (if __B (setq _B __B)) _B)
  (:C
   (&optional __C)
   (if __C (setq _C __C)) _C)
  (:serialization-length
   ()
   (+
    ;; int32 _A
    4
    ;; int32 _B
    4
    ;; int32 _C
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _A
       (write-long _A s)
     ;; int32 _B
       (write-long _B s)
     ;; int32 _C
       (write-long _C s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _A
     (setq _A (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _B
     (setq _B (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _C
     (setq _C (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cust_msg_pub::my_first_cust_msg :md5sum-) "e7a68ce4e0b75a9719b4950a7069c9d4")
(setf (get cust_msg_pub::my_first_cust_msg :datatype-) "cust_msg_pub/my_first_cust_msg")
(setf (get cust_msg_pub::my_first_cust_msg :definition-)
      "int32 A
int32 B
int32 C

")



(provide :cust_msg_pub/my_first_cust_msg "e7a68ce4e0b75a9719b4950a7069c9d4")


