;; Auto-generated. Do not edit!


(when (boundp 'task3_pkg::node1)
  (if (not (find-package "TASK3_PKG"))
    (make-package "TASK3_PKG"))
  (shadow 'node1 (find-package "TASK3_PKG")))
(unless (find-package "TASK3_PKG::NODE1")
  (make-package "TASK3_PKG::NODE1"))

(in-package "ROS")
;;//! \htmlinclude node1.msg.html


(defclass task3_pkg::node1
  :super ros::object
  :slots (_data1 _data2 ))

(defmethod task3_pkg::node1
  (:init
   (&key
    ((:data1 __data1) "")
    ((:data2 __data2) 0)
    )
   (send-super :init)
   (setq _data1 (string __data1))
   (setq _data2 (round __data2))
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
    ;; string _data1
    4 (length _data1)
    ;; int32 _data2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data1
       (write-long (length _data1) s) (princ _data1 s)
     ;; int32 _data2
       (write-long _data2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _data2
     (setq _data2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get task3_pkg::node1 :md5sum-) "ca2ba9eef5388fbdc1aa511d4795378a")
(setf (get task3_pkg::node1 :datatype-) "task3_pkg/node1")
(setf (get task3_pkg::node1 :definition-)
      "string data1
int32 data2
")



(provide :task3_pkg/node1 "ca2ba9eef5388fbdc1aa511d4795378a")


