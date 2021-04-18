// Auto-generated. Do not edit!

// (in-package srv_vect.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let num_to_add = require('../msg/num_to_add.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class add_num_vectorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.triple_vect = null;
    }
    else {
      if (initObj.hasOwnProperty('triple_vect')) {
        this.triple_vect = initObj.triple_vect
      }
      else {
        this.triple_vect = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type add_num_vectorRequest
    // Serialize message field [triple_vect]
    // Serialize the length for message field [triple_vect]
    bufferOffset = _serializer.uint32(obj.triple_vect.length, buffer, bufferOffset);
    obj.triple_vect.forEach((val) => {
      bufferOffset = num_to_add.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type add_num_vectorRequest
    let len;
    let data = new add_num_vectorRequest(null);
    // Deserialize message field [triple_vect]
    // Deserialize array length for message field [triple_vect]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.triple_vect = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.triple_vect[i] = num_to_add.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.triple_vect.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'srv_vect/add_num_vectorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '26ee6ff0fea7723aa88681e691bd7db4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    num_to_add[] triple_vect
    
    ================================================================================
    MSG: srv_vect/num_to_add
    int32 A
    int32 B
    int32 C
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new add_num_vectorRequest(null);
    if (msg.triple_vect !== undefined) {
      resolved.triple_vect = new Array(msg.triple_vect.length);
      for (let i = 0; i < resolved.triple_vect.length; ++i) {
        resolved.triple_vect[i] = num_to_add.Resolve(msg.triple_vect[i]);
      }
    }
    else {
      resolved.triple_vect = []
    }

    return resolved;
    }
};

class add_num_vectorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sum_vect = null;
    }
    else {
      if (initObj.hasOwnProperty('sum_vect')) {
        this.sum_vect = initObj.sum_vect
      }
      else {
        this.sum_vect = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type add_num_vectorResponse
    // Serialize message field [sum_vect]
    bufferOffset = _arraySerializer.int32(obj.sum_vect, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type add_num_vectorResponse
    let len;
    let data = new add_num_vectorResponse(null);
    // Deserialize message field [sum_vect]
    data.sum_vect = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.sum_vect.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'srv_vect/add_num_vectorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c7527e97d7b23d7f36d1b3439f809ab8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] sum_vect
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new add_num_vectorResponse(null);
    if (msg.sum_vect !== undefined) {
      resolved.sum_vect = msg.sum_vect;
    }
    else {
      resolved.sum_vect = []
    }

    return resolved;
    }
};

module.exports = {
  Request: add_num_vectorRequest,
  Response: add_num_vectorResponse,
  md5sum() { return '0681f85c1862941ab79099dc09475177'; },
  datatype() { return 'srv_vect/add_num_vector'; }
};
