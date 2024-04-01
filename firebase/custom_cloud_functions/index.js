const admin = require("firebase-admin/app");
admin.initializeApp();

const getToken = require("./get_token.js");
exports.getToken = getToken.getToken;
