'use strict';

/**
 * Draft.js
 *
 * @description :: Model to create, update , delete, get the mapping that is unpublished
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {
  tableName: 'posts',
  schema: true,
  attributes: {
    title: {
        type:'string', 
    },
    description: {
      type: 'string',
    },
    status: {
      type: 'number',
    }
  },
};
