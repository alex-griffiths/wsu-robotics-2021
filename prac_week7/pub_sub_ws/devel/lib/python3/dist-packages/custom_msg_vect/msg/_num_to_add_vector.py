# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from custom_msg_vect/num_to_add_vector.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import custom_msg_vect.msg

class num_to_add_vector(genpy.Message):
  _md5sum = "26ee6ff0fea7723aa88681e691bd7db4"
  _type = "custom_msg_vect/num_to_add_vector"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """num_to_add[] triple_vect

================================================================================
MSG: custom_msg_vect/num_to_add
int32 A
int32 B
int32 C
"""
  __slots__ = ['triple_vect']
  _slot_types = ['custom_msg_vect/num_to_add[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       triple_vect

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(num_to_add_vector, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.triple_vect is None:
        self.triple_vect = []
    else:
      self.triple_vect = []

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
      length = len(self.triple_vect)
      buff.write(_struct_I.pack(length))
      for val1 in self.triple_vect:
        _x = val1
        buff.write(_get_struct_3i().pack(_x.A, _x.B, _x.C))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.triple_vect is None:
        self.triple_vect = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.triple_vect = []
      for i in range(0, length):
        val1 = custom_msg_vect.msg.num_to_add()
        _x = val1
        start = end
        end += 12
        (_x.A, _x.B, _x.C,) = _get_struct_3i().unpack(str[start:end])
        self.triple_vect.append(val1)
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
      length = len(self.triple_vect)
      buff.write(_struct_I.pack(length))
      for val1 in self.triple_vect:
        _x = val1
        buff.write(_get_struct_3i().pack(_x.A, _x.B, _x.C))
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
      if self.triple_vect is None:
        self.triple_vect = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.triple_vect = []
      for i in range(0, length):
        val1 = custom_msg_vect.msg.num_to_add()
        _x = val1
        start = end
        end += 12
        (_x.A, _x.B, _x.C,) = _get_struct_3i().unpack(str[start:end])
        self.triple_vect.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3i = None
def _get_struct_3i():
    global _struct_3i
    if _struct_3i is None:
        _struct_3i = struct.Struct("<3i")
    return _struct_3i
