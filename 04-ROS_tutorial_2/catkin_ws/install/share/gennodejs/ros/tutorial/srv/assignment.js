// Auto-generated. Do not edit!

// (in-package tutorial.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class assignmentRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tag1_id = null;
      this.tag2_id = null;
    }
    else {
      if (initObj.hasOwnProperty('tag1_id')) {
        this.tag1_id = initObj.tag1_id
      }
      else {
        this.tag1_id = 0;
      }
      if (initObj.hasOwnProperty('tag2_id')) {
        this.tag2_id = initObj.tag2_id
      }
      else {
        this.tag2_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type assignmentRequest
    // Serialize message field [tag1_id]
    bufferOffset = _serializer.int64(obj.tag1_id, buffer, bufferOffset);
    // Serialize message field [tag2_id]
    bufferOffset = _serializer.int64(obj.tag2_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type assignmentRequest
    let len;
    let data = new assignmentRequest(null);
    // Deserialize message field [tag1_id]
    data.tag1_id = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [tag2_id]
    data.tag2_id = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tutorial/assignmentRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f286f46d5c435878fb57d59632e4582f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 tag1_id
    int64 tag2_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new assignmentRequest(null);
    if (msg.tag1_id !== undefined) {
      resolved.tag1_id = msg.tag1_id;
    }
    else {
      resolved.tag1_id = 0
    }

    if (msg.tag2_id !== undefined) {
      resolved.tag2_id = msg.tag2_id;
    }
    else {
      resolved.tag2_id = 0
    }

    return resolved;
    }
};

class assignmentResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.distance = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = '';
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type assignmentResponse
    // Serialize message field [result]
    bufferOffset = _serializer.string(obj.result, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type assignmentResponse
    let len;
    let data = new assignmentResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.result.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tutorial/assignmentResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8bb25a224ff987289e4bb4db81282f4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string result
    float64 distance
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new assignmentResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = ''
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: assignmentRequest,
  Response: assignmentResponse,
  md5sum() { return '1d701094808d2d1d11adf0aa9a8a6193'; },
  datatype() { return 'tutorial/assignment'; }
};
