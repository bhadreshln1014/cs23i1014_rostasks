// Auto-generated. Do not edit!

// (in-package task3_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class node2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data1 = null;
      this.data2 = null;
    }
    else {
      if (initObj.hasOwnProperty('data1')) {
        this.data1 = initObj.data1
      }
      else {
        this.data1 = 0;
      }
      if (initObj.hasOwnProperty('data2')) {
        this.data2 = initObj.data2
      }
      else {
        this.data2 = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type node2
    // Serialize message field [data1]
    bufferOffset = _serializer.int32(obj.data1, buffer, bufferOffset);
    // Serialize message field [data2]
    bufferOffset = _serializer.string(obj.data2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node2
    let len;
    let data = new node2(null);
    // Deserialize message field [data1]
    data.data1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [data2]
    data.data2 = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.data2);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'task3_pkg/node2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '43926191ad7dd73221b81d137aa19cb5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 data1
    string data2
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new node2(null);
    if (msg.data1 !== undefined) {
      resolved.data1 = msg.data1;
    }
    else {
      resolved.data1 = 0
    }

    if (msg.data2 !== undefined) {
      resolved.data2 = msg.data2;
    }
    else {
      resolved.data2 = ''
    }

    return resolved;
    }
};

module.exports = node2;
