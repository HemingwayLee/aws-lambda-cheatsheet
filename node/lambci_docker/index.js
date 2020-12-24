'use strict';

exports.handler = (event, context, callback) => {
  const response = {
    statusCode: 200,
    body: JSON.stringify({
      message: 'Hello, foo'
    }),
  };

  callback(null, response);
};

