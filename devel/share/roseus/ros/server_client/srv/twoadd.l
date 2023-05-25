;; Auto-generated. Do not edit!


(when (boundp 'server_client::twoadd)
  (if (not (find-package "SERVER_CLIENT"))
    (make-package "SERVER_CLIENT"))
  (shadow 'twoadd (find-package "SERVER_CLIENT")))
(unless (find-package "SERVER_CLIENT::TWOADD")
  (make-package "SERVER_CLIENT::TWOADD"))
(unless (find-package "SERVER_CLIENT::TWOADDREQUEST")
  (make-package "SERVER_CLIENT::TWOADDREQUEST"))
(unless (find-package "SERVER_CLIENT::TWOADDRESPONSE")
  (make-package "SERVER_CLIENT::TWOADDRESPONSE"))

(in-package "ROS")





(defclass server_client::twoaddRequest
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod server_client::twoaddRequest
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

(defclass server_client::twoaddResponse
  :super ros::object
  :slots (_ret ))

(defmethod server_client::twoaddResponse
  (:init
   (&key
    ((:ret __ret) 0)
    )
   (send-super :init)
   (setq _ret (round __ret))
   self)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:serialization-length
   ()
   (+
    ;; int32 _ret
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ret
       (write-long _ret s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ret
     (setq _ret (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass server_client::twoadd
  :super ros::object
  :slots ())

(setf (get server_client::twoadd :md5sum-) "da303ca83c249449e0d5931b4ba7bf73")
(setf (get server_client::twoadd :datatype-) "server_client/twoadd")
(setf (get server_client::twoadd :request) server_client::twoaddRequest)
(setf (get server_client::twoadd :response) server_client::twoaddResponse)

(defmethod server_client::twoaddRequest
  (:response () (instance server_client::twoaddResponse :init)))

(setf (get server_client::twoaddRequest :md5sum-) "da303ca83c249449e0d5931b4ba7bf73")
(setf (get server_client::twoaddRequest :datatype-) "server_client/twoaddRequest")
(setf (get server_client::twoaddRequest :definition-)
      "#客户端请求时发送的数据
int32 num1
int32 num2
---
#服务器响应的数据

int32 ret

")

(setf (get server_client::twoaddResponse :md5sum-) "da303ca83c249449e0d5931b4ba7bf73")
(setf (get server_client::twoaddResponse :datatype-) "server_client/twoaddResponse")
(setf (get server_client::twoaddResponse :definition-)
      "#客户端请求时发送的数据
int32 num1
int32 num2
---
#服务器响应的数据

int32 ret

")



(provide :server_client/twoadd "da303ca83c249449e0d5931b4ba7bf73")


