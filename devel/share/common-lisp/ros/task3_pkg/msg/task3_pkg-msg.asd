
(cl:in-package :asdf)

(defsystem "task3_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "node1" :depends-on ("_package_node1"))
    (:file "_package_node1" :depends-on ("_package"))
    (:file "node2" :depends-on ("_package_node2"))
    (:file "_package_node2" :depends-on ("_package"))
  ))