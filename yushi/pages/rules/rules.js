// pages/rules/rules.js

var app = getApp()

Page({
    data: {
        rules: ''
    },
    onLoad: function(options) {
        // 页面初始化 options为页面跳转所带来的参数
        wx.setNavigationBarTitle({
            title: '秒拍规则'
        })

        // get rule data
        var that = this;
        wx.request({
            url: app.globalData.requestPrefix + '/weixinapi/rule/showrule',
            data: {},
            method: 'GET',
            success: function(res) {
                // success
                if (res.statusCode && res.statusCode == 200) {
                    console.log(res)
                    that.setData({
                        rules: res.data.data.content
                    })
                }
            }
        })

    }
})