
(cl:in-package :asdf)

(defsystem "custom_msg_vect-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "num_to_add" :depends-on ("_package_num_to_add"))
    (:file "_package_num_to_add" :depends-on ("_package"))
    (:file "num_to_add_vector" :depends-on ("_package_num_to_add_vector"))
    (:file "_package_num_to_add_vector" :depends-on ("_package"))
  ))