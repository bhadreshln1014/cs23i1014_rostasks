;; Auto-generated. Do not edit!


(when (boundp 'task3_pkg::node2)
  (if (not (find-package "TASK3_PKG"))
    (make-package "TASK3_PKG"))
  (shadow 'node2 (find-package "TASK3_PKG")))
(unless (find-package "TASK3_PKG::NODE2")
  (make-package "TASK3_PKG::NODE2"))

(in-package "ROS")
;;//! \htmlinclude node2.msg.html


(defclass task3_pkg::node2
  :super ros::object
  :slots (_data1 _data2 ))

(defmethod task3_pkg::node2
  (:init
   (&key
    ((:data1 __data1) 0)
    ((:data2 __data2) "")
    )
   (send-super :init)
   (setq _data1 (round __data1))
   (setq _data2 (string __data2))
   self)
  (:data1
   (&optional __data1)
   (if __data1 (setq _data1 __data1)) _data1)
  (:data2
   (&optional __data2)
   (if __data2 (setq _data2 __data2)) _data2)
  (:serialization-length
   ()
   (+
    ;; int32 _data1
    4
    ;; string _data2
    4 (length _data2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _data1
       (write-long _data1 s)
     ;; string _data2
       (write-long (length _data2) s) (princ _data2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _data1
     (setq _data1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _data2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get task3_pkg::node2 :md5sum-) "43926191ad7dd73221b81d137aa19cb5")
(setf (get task3_pkg::node2 :datatype-) "task3_pkg/node2")
(setf (get task3_pkg::node2 :definition-)
      "int32 data1
string data2
")



(provide :task3_pkg/node2 "43926191ad7dd73221b81d137aa19cb5")


