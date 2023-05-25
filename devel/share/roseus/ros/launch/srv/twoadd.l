;; Auto-generated. Do not edit!


(when (boundp 'launch::twoadd)
  (if (not (find-package "LAUNCH"))
    (make-package "LAUNCH"))
  (shadow 'twoadd (find-package "LAUNCH")))
(unless (find-package "LAUNCH::TWOADD")
  (make-package "LAUNCH::TWOADD"))
(unless (find-package "LAUNCH::TWOADDREQUEST")
  (make-package "LAUNCH::TWOADDREQUEST"))
(unless (find-package "LAUNCH::TWOADDRESPONSE")
  (make-package "LAUNCH::TWOADDRESPONSE"))

(in-package "ROS")





(defclass launch::twoaddRequest
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod launch::twoaddRequest
  (:init
   (&key
    ((:num1 __num1) 0)
    ((:num2 __num2) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   (setq _num2 (round __num2))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; int32 _num1
    4
    ;; int32 _num2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num1
       (write-long _num1 s)
     ;; int32 _num2
       (write-long _num2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num1
     (setq _num1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num2
     (setq _num2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass launch::twoaddResponse
  :super ros::object
  :slots (_return ))

(defmethod launch::twoaddResponse
  (:init
   (&key
    ((:return __return) 0)
    )
   (send-super :init)
   (setq _return (round __return))
   self)
  (:return
   (&optional __return)
   (if __return (setq _return __return)) _return)
  (:serialization-length
   ()
   (+
    ;; int32 _return
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _return
       (write-long _return s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _return
     (setq _return (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass launch::twoadd
  :super ros::object
  :slots ())

(setf (get launch::twoadd :md5sum-) "510f99e32f14fb884b8dc4c5eadcee05")
(setf (get launch::twoadd :datatype-) "launch/twoadd")
(setf (get launch::twoadd :request) launch::twoaddRequest)
(setf (get launch::twoadd :response) launch::twoaddResponse)

(defmethod launch::twoaddRequest
  (:response () (instance launch::twoaddResponse :init)))

(setf (get launch::twoaddRequest :md5sum-) "510f99e32f14fb884b8dc4c5eadcee05")
(setf (get launch::twoaddRequest :datatype-) "launch/twoaddRequest")
(setf (get launch::twoaddRequest :definition-)
      "#客户端请求时发送的数据
int32 num1
int32 num2

---
#服务器响应的数据

int32 return

")

(setf (get launch::twoaddResponse :md5sum-) "510f99e32f14fb884b8dc4c5eadcee05")
(setf (get launch::twoaddResponse :datatype-) "launch/twoaddResponse")
(setf (get launch::twoaddResponse :definition-)
      "#客户端请求时发送的数据
int32 num1
int32 num2

---
#服务器响应的数据

int32 return

")



(provide :launch/twoadd "510f99e32f14fb884b8dc4c5eadcee05")


