;; Auto-generated. Do not edit!


(when (boundp 'ros_tutorial_msg::msgData)
  (if (not (find-package "ROS_TUTORIAL_MSG"))
    (make-package "ROS_TUTORIAL_MSG"))
  (shadow 'msgData (find-package "ROS_TUTORIAL_MSG")))
(unless (find-package "ROS_TUTORIAL_MSG::MSGDATA")
  (make-package "ROS_TUTORIAL_MSG::MSGDATA"))

(in-package "ROS")
;;//! \htmlinclude msgData.msg.html


(defclass ros_tutorial_msg::msgData
  :super ros::object
  :slots (_data ))

(defmethod ros_tutorial_msg::msgData
  (:init
   (&key
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_tutorial_msg::msgData :md5sum-) "304a39449588c7f8ce2df6e8001c5fce")
(setf (get ros_tutorial_msg::msgData :datatype-) "ros_tutorial_msg/msgData")
(setf (get ros_tutorial_msg::msgData :definition-)
      "
uint32 data

")



(provide :ros_tutorial_msg/msgData "304a39449588c7f8ce2df6e8001c5fce")


