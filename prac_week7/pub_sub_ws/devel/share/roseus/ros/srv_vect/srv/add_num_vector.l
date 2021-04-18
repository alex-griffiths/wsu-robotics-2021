;; Auto-generated. Do not edit!


(when (boundp 'srv_vect::add_num_vector)
  (if (not (find-package "SRV_VECT"))
    (make-package "SRV_VECT"))
  (shadow 'add_num_vector (find-package "SRV_VECT")))
(unless (find-package "SRV_VECT::ADD_NUM_VECTOR")
  (make-package "SRV_VECT::ADD_NUM_VECTOR"))
(unless (find-package "SRV_VECT::ADD_NUM_VECTORREQUEST")
  (make-package "SRV_VECT::ADD_NUM_VECTORREQUEST"))
(unless (find-package "SRV_VECT::ADD_NUM_VECTORRESPONSE")
  (make-package "SRV_VECT::ADD_NUM_VECTORRESPONSE"))

(in-package "ROS")





(defclass srv_vect::add_num_vectorRequest
  :super ros::object
  :slots (_triple_vect ))

(defmethod srv_vect::add_num_vectorRequest
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
    ;; srv_vect/num_to_add[] _triple_vect
    (apply #'+ (send-all _triple_vect :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; srv_vect/num_to_add[] _triple_vect
     (write-long (length _triple_vect) s)
     (dolist (elem _triple_vect)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; srv_vect/num_to_add[] _triple_vect
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _triple_vect (let (r) (dotimes (i n) (push (instance srv_vect::num_to_add :init) r)) r))
     (dolist (elem- _triple_vect)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass srv_vect::add_num_vectorResponse
  :super ros::object
  :slots (_sum_vect ))

(defmethod srv_vect::add_num_vectorResponse
  (:init
   (&key
    ((:sum_vect __sum_vect) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _sum_vect __sum_vect)
   self)
  (:sum_vect
   (&optional __sum_vect)
   (if __sum_vect (setq _sum_vect __sum_vect)) _sum_vect)
  (:serialization-length
   ()
   (+
    ;; int32[] _sum_vect
    (* 4    (length _sum_vect)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _sum_vect
     (write-long (length _sum_vect) s)
     (dotimes (i (length _sum_vect))
       (write-long (elt _sum_vect i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _sum_vect
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sum_vect (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _sum_vect i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass srv_vect::add_num_vector
  :super ros::object
  :slots ())

(setf (get srv_vect::add_num_vector :md5sum-) "0681f85c1862941ab79099dc09475177")
(setf (get srv_vect::add_num_vector :datatype-) "srv_vect/add_num_vector")
(setf (get srv_vect::add_num_vector :request) srv_vect::add_num_vectorRequest)
(setf (get srv_vect::add_num_vector :response) srv_vect::add_num_vectorResponse)

(defmethod srv_vect::add_num_vectorRequest
  (:response () (instance srv_vect::add_num_vectorResponse :init)))

(setf (get srv_vect::add_num_vectorRequest :md5sum-) "0681f85c1862941ab79099dc09475177")
(setf (get srv_vect::add_num_vectorRequest :datatype-) "srv_vect/add_num_vectorRequest")
(setf (get srv_vect::add_num_vectorRequest :definition-)
      "num_to_add[] triple_vect

================================================================================
MSG: srv_vect/num_to_add
int32 A
int32 B
int32 C
---
int32[] sum_vect

")

(setf (get srv_vect::add_num_vectorResponse :md5sum-) "0681f85c1862941ab79099dc09475177")
(setf (get srv_vect::add_num_vectorResponse :datatype-) "srv_vect/add_num_vectorResponse")
(setf (get srv_vect::add_num_vectorResponse :definition-)
      "num_to_add[] triple_vect

================================================================================
MSG: srv_vect/num_to_add
int32 A
int32 B
int32 C
---
int32[] sum_vect

")



(provide :srv_vect/add_num_vector "0681f85c1862941ab79099dc09475177")


