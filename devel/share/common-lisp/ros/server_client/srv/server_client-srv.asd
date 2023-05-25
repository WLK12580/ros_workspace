
(cl:in-package :asdf)

(defsystem "server_client-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "twoadd" :depends-on ("_package_twoadd"))
    (:file "_package_twoadd" :depends-on ("_package"))
  ))