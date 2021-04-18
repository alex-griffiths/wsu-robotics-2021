
(cl:in-package :asdf)

(defsystem "srv_vect-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :srv_vect-msg
)
  :components ((:file "_package")
    (:file "add_num_vector" :depends-on ("_package_add_num_vector"))
    (:file "_package_add_num_vector" :depends-on ("_package"))
  ))