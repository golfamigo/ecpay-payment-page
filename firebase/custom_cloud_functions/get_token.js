const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code

const axios = require("axios"); // 使用axios进行HTTP请求

exports.getToken = functions.https.onCall(async (data, context) => {
  // 解析客户端传来的参数
  const merchantID = data.merchantID;
  const rqHeader = data.rqHeader; // 假设rqHeader已经是一个包含Timestamp的对象
  const encryptedData = data.encryptedData; // 避免与`data`参数冲突

  // 构建请求ECPay获取Token的参数
  const params = {
    MerchantID: merchantID,
    RqHeader: rqHeader,
    Data: encryptedData,
  };

  try {
    // 发送POST请求到ECPay获取Token
    const response = await axios.post(
      "https://ecpg-stage.ecpay.com.tw/Merchant/GetTokenbyTrade",
      params,
      {
        headers: { "Content-Type": "application/json" },
      },
    );

    // 处理响应
    if (response.data && response.data.TransCode === 1) {
      // 成功获取Token，返回给客户端
      return { token: response.data.Data };
    } else {
      // 处理错误情况
      throw new Error(
        response.data.TransMsg || "Failed to get token from ECPay",
      );
    }
  } catch (error) {
    // 错误处理
    throw new functions.https.HttpsError("internal", error.message);
  }
});
