; Auto-generated. Do not edit!


(cl:in-package task3_pkg-msg)


;//! \htmlinclude node1.msg.html

(cl:defclass <node1> (roslisp-msg-protocol:ros-message)
  ((data1
    :reader data1
    :initarg :data1
    :type cl:string
    :initform "")
   (data2
    :reader data2
    :initarg :data2
    :type cl:integer
    :initform 0))
)

(cl:defclass node1 (<node1>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node1>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node1)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name task3_pkg-msg:<node1> is deprecated: use task3_pkg-msg:node1 instead.")))

(cl:ensure-generic-function 'data1-val :lambda-list '(m))
(cl:defmethod data1-val ((m <node1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task3_pkg-msg:data1-val is deprecated.  Use task3_pkg-msg:data1 instead.")
  (data1 m))

(cl:ensure-generic-function 'data2-val :lambda-list '(m))
(cl:defmethod data2-val ((m <node1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task3_pkg-msg:data2-val is deprecated.  Use task3_pkg-msg:data2 instead.")
  (data2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node1>) ostream)
  "Serializes a message object of type '<node1>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data1))
  (cl:let* ((signed (cl:slot-value msg 'data2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node1>) istream)
  "Deserializes a message object of type '<node1>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data1) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data1) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node1>)))
  "Returns string type for a message object of type '<node1>"
  "task3_pkg/node1")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node1)))
  "Returns string type for a message object of type 'node1"
  "task3_pkg/node1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node1>)))
  "Returns md5sum for a message object of type '<node1>"
  "ca2ba9eef5388fbdc1aa511d4795378a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node1)))
  "Returns md5sum for a message object of type 'node1"
  "ca2ba9eef5388fbdc1aa511d4795378a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node1>)))
  "Returns full string definition for message of type '<node1>"
  (cl:format cl:nil "string data1~%int32 data2~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node1)))
  "Returns full string definition for message of type 'node1"
  (cl:format cl:nil "string data1~%int32 data2~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node1>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data1))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node1>))
  "Converts a ROS message object to a list"
  (cl:list 'node1
    (cl:cons ':data1 (data1 msg))
    (cl:cons ':data2 (data2 msg))
))
