; Auto-generated. Do not edit!


(cl:in-package task3_pkg-msg)


;//! \htmlinclude node2.msg.html

(cl:defclass <node2> (roslisp-msg-protocol:ros-message)
  ((data1
    :reader data1
    :initarg :data1
    :type cl:integer
    :initform 0)
   (data2
    :reader data2
    :initarg :data2
    :type cl:string
    :initform ""))
)

(cl:defclass node2 (<node2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name task3_pkg-msg:<node2> is deprecated: use task3_pkg-msg:node2 instead.")))

(cl:ensure-generic-function 'data1-val :lambda-list '(m))
(cl:defmethod data1-val ((m <node2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task3_pkg-msg:data1-val is deprecated.  Use task3_pkg-msg:data1 instead.")
  (data1 m))

(cl:ensure-generic-function 'data2-val :lambda-list '(m))
(cl:defmethod data2-val ((m <node2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task3_pkg-msg:data2-val is deprecated.  Use task3_pkg-msg:data2 instead.")
  (data2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node2>) ostream)
  "Serializes a message object of type '<node2>"
  (cl:let* ((signed (cl:slot-value msg 'data1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data2))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node2>) istream)
  "Deserializes a message object of type '<node2>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data2) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data2) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node2>)))
  "Returns string type for a message object of type '<node2>"
  "task3_pkg/node2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node2)))
  "Returns string type for a message object of type 'node2"
  "task3_pkg/node2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node2>)))
  "Returns md5sum for a message object of type '<node2>"
  "43926191ad7dd73221b81d137aa19cb5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node2)))
  "Returns md5sum for a message object of type 'node2"
  "43926191ad7dd73221b81d137aa19cb5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node2>)))
  "Returns full string definition for message of type '<node2>"
  (cl:format cl:nil "int32 data1~%string data2~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node2)))
  "Returns full string definition for message of type 'node2"
  (cl:format cl:nil "int32 data1~%string data2~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node2>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'data2))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node2>))
  "Converts a ROS message object to a list"
  (cl:list 'node2
    (cl:cons ':data1 (data1 msg))
    (cl:cons ':data2 (data2 msg))
))
