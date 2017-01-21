
'use strict';

const Parity = require('@parity/parity.js');
const transport = new Parity.Api.Transport.Http('http://localhost:8540');
const api = new Parity.Api(transport);

api.eth.accounts().then(r => {
    console.log(r);
    return api.eth.getBalance("0x3104d952c7c36138e52067301d7d688f97db6938");
  }).then(a => {
    console.log(a.toString(10));
  });
