
(cl:in-package :asdf)

(defsystem "tutorial-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "assignment" :depends-on ("_package_assignment"))
    (:file "_package_assignment" :depends-on ("_package"))
    (:file "my_service" :depends-on ("_package_my_service"))
    (:file "_package_my_service" :depends-on ("_package"))
  ))