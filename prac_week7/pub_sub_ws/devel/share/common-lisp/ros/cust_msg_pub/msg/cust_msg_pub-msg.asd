
(cl:in-package :asdf)

(defsystem "cust_msg_pub-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "my_first_cust_msg" :depends-on ("_package_my_first_cust_msg"))
    (:file "_package_my_first_cust_msg" :depends-on ("_package"))
  ))