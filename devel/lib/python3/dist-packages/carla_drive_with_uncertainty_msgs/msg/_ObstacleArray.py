# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from carla_drive_with_uncertainty_msgs/ObstacleArray.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import carla_drive_with_uncertainty_msgs.msg

class ObstacleArray(genpy.Message):
  _md5sum = "3481daa31f9f2166d0ff402bba1666c6"
  _type = "carla_drive_with_uncertainty_msgs/ObstacleArray"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """Obstacle[] obstacles # 保存目标检测到的障碍物信息
================================================================================
MSG: carla_drive_with_uncertainty_msgs/Obstacle
float64 x       # x坐标
float64 y       # y坐标
float64 long_axis  # 椭圆范围 长轴 = l_vehicle/2 + delta_l + un_l
float64 short_axis # 椭圆范围 短轴 = w_vehicle/2 + delta_w + un_w
float64 yaw        # 偏航角 [-pi, pi]"""
  __slots__ = ['obstacles']
  _slot_types = ['carla_drive_with_uncertainty_msgs/Obstacle[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       obstacles

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ObstacleArray, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.obstacles is None:
        self.obstacles = []
    else:
      self.obstacles = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.obstacles)
      buff.write(_struct_I.pack(length))
      for val1 in self.obstacles:
        _x = val1
        buff.write(_get_struct_5d().pack(_x.x, _x.y, _x.long_axis, _x.short_axis, _x.yaw))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.obstacles is None:
        self.obstacles = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.obstacles = []
      for i in range(0, length):
        val1 = carla_drive_with_uncertainty_msgs.msg.Obstacle()
        _x = val1
        start = end
        end += 40
        (_x.x, _x.y, _x.long_axis, _x.short_axis, _x.yaw,) = _get_struct_5d().unpack(str[start:end])
        self.obstacles.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.obstacles)
      buff.write(_struct_I.pack(length))
      for val1 in self.obstacles:
        _x = val1
        buff.write(_get_struct_5d().pack(_x.x, _x.y, _x.long_axis, _x.short_axis, _x.yaw))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.obstacles is None:
        self.obstacles = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.obstacles = []
      for i in range(0, length):
        val1 = carla_drive_with_uncertainty_msgs.msg.Obstacle()
        _x = val1
        start = end
        end += 40
        (_x.x, _x.y, _x.long_axis, _x.short_axis, _x.yaw,) = _get_struct_5d().unpack(str[start:end])
        self.obstacles.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_5d = None
def _get_struct_5d():
    global _struct_5d
    if _struct_5d is None:
        _struct_5d = struct.Struct("<5d")
    return _struct_5d
