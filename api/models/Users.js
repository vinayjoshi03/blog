'use strict';

/**
 * Draft.js
 *
 * @description :: Model to create, update , delete, get the mapping that is unpublished
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {
  tableName: 'users',
  sync: true, // Here is essential part
  schema: true,
  attributes: {
   username: {
        type:'string', 
    },
    password: {
      type: 'string',
    },
    token: {
      type: 'string',
    }
  },
};
