// Auto-generated. Do not edit!

// (in-package launch.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class twoaddRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num1 = null;
      this.num2 = null;
    }
    else {
      if (initObj.hasOwnProperty('num1')) {
        this.num1 = initObj.num1
      }
      else {
        this.num1 = 0;
      }
      if (initObj.hasOwnProperty('num2')) {
        this.num2 = initObj.num2
      }
      else {
        this.num2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type twoaddRequest
    // Serialize message field [num1]
    bufferOffset = _serializer.int32(obj.num1, buffer, bufferOffset);
    // Serialize message field [num2]
    bufferOffset = _serializer.int32(obj.num2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type twoaddRequest
    let len;
    let data = new twoaddRequest(null);
    // Deserialize message field [num1]
    data.num1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [num2]
    data.num2 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'launch/twoaddRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c68f3979e1a90aac7d1c75a1096d1e60';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #客户端请求时发送的数据
    int32 num1
    int32 num2
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new twoaddRequest(null);
    if (msg.num1 !== undefined) {
      resolved.num1 = msg.num1;
    }
    else {
      resolved.num1 = 0
    }

    if (msg.num2 !== undefined) {
      resolved.num2 = msg.num2;
    }
    else {
      resolved.num2 = 0
    }

    return resolved;
    }
};

class twoaddResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.return = null;
    }
    else {
      if (initObj.hasOwnProperty('return')) {
        this.return = initObj.return
      }
      else {
        this.return = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type twoaddResponse
    // Serialize message field [return]
    bufferOffset = _serializer.int32(obj.return, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type twoaddResponse
    let len;
    let data = new twoaddResponse(null);
    // Deserialize message field [return]
    data.return = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'launch/twoaddResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '58d8c27c86ff6e3ad2cfa24bf4378371';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #服务器响应的数据
    
    int32 return
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new twoaddResponse(null);
    if (msg.return !== undefined) {
      resolved.return = msg.return;
    }
    else {
      resolved.return = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: twoaddRequest,
  Response: twoaddResponse,
  md5sum() { return '510f99e32f14fb884b8dc4c5eadcee05'; },
  datatype() { return 'launch/twoadd'; }
};
