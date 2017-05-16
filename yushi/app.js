//app.js
App({
  onLaunch: function () {
    //调用API从本地缓存中获取数据
    var logs = wx.getStorageSync('logs') || []
    logs.unshift(Date.now())
    wx.setStorageSync('logs', logs)
  },
  getUserInfo: function (cb) {
    var that = this
    if (this.globalData.userInfo) {
      typeof cb == "function" && cb(this.globalData.userInfo)
    } else {
      //调用登录接口
      wx.login({
        success: function (res) {
         var code = res.code;
         that.globalData.loginCode = code;
          wx.getUserInfo({
            success: function (res) {
              console.log(res.userInfo);
              var header=res.userInfo.avatarUrl;
              var nick_name=res.userInfo.nickName;
              var code=code;
              that.globalData.userInfo = res.userInfo;
              typeof cb == "function" && cb(that.globalData.userInfo);
            }
          })
        }
      });
    }
  },
  globalData: {
    userInfo:null,
    // userId: '1',
    requestPrefix: 'https://ysxcx.cokmarket.com',
    userId:'',
    header:'',
    nick_name:'',
    loginCode:'',
  }
})