// pages/deposit/deposit.js

var app = getApp()

Page({
    data: {
        banner: '',
        title: '',
        money: '',
        record: '',
        showTips: false,
        shopId: '',
        bondid: '',

    },
    onLoad: function (options) {
        // 页面初始化 options为页面跳转所带来的参数
        wx.setNavigationBarTitle({
            title: '提交保证金',
        })
        var that = this;
        // 轮播图开始
        wx.request({
            url: app.globalData.requestPrefix + '/weixinapi/banner/showbanner',
            data: {},
            method: 'GET',
            success: function (res) {
                if (res.statusCode && res.statusCode == 200) {
                    var imgData = res.data.data;
                    var banner = [];
                    for (var idx in imgData) {
                        var imgs = { id: imgData[idx].id, path: imgData[idx].path };
                        banner.push(imgs);
                    }
                    that.setData({
                        banner: banner
                    })
                }

            }
        })
        // 轮播图结束


        // id的获取
        var shop_id = options.shop_id;
        that.setData({ shopId: shop_id })
        //  表头数据的获取
        wx.request({
            url: app.globalData.requestPrefix + '/weixinapi/bond/bondshop?shopid=' + shop_id,
            data: {},
            method: 'GET',
            success: function (res) {
                var header = []
                var title = res.data.data.shop_name;
                var bond = res.data.data.shop_bond;
                that.setData({
                    title: title,
                    money: bond
                })
            }
        })

        //  交易记录列表获取
        wx.request({
            url: app.globalData.requestPrefix + '/weixinapi/bond/dealinfo?shopid=' + shop_id,
            data: {},
            method: 'GET',
            success: function (res) {
                console.log(res);
                if (res.data.data.length == 0) {
                    that.setData({ showTips: true })
                } else {
                    var record = res.data.data;
                    that.setData({ record: record })
                }
            }
        })
    },

    pay: function (events) {


        var that = this;
        var shop_id = that.data.shopId;
        var userId = app.globalData.userId;
        var bond = that.data.money;
        var code = app.globalData.loginCode;
        console.log(bond)
        // 支付之前获取数据

        wx.request({
            url: app.globalData.requestPrefix + '/weixinapi/wxpay/index',
            data: {
                code: code,
                uid: userId,
                shopid: shop_id,
                shopbond: bond
            },
            header: { "Content-Type": "application/x-www-form-urlencoded" },
            method: 'POST',
            success: function (res) {
                console.log(res);
                var bondid = res.data.bondid;
                var params = [shop_id, bondid]
                if (res.statusCode && res.statusCode == 200) {
                    if (res.data.error == 400) {
                        var msg = res.data.message
                        wx.showToast({
                            title: msg,
                            icon: 'success',
                            duration: 2000
                        })
                    } else {
                        var timeStamp = res.data.timestamp,
                            nonceStr = res.data.none_str,
                            pkg = res.data.pkg,
                            paySign = res.data.paysign;

                        // 提交保证金
                        wx.requestPayment({
                            'timeStamp': timeStamp,
                            'nonceStr': nonceStr,
                            'package': pkg,
                            'signType': 'MD5',
                            'paySign': paySign,
                            'success': function (res) {
                                console.log(res);
                                if (res.errMsg == 'requestPayment:ok') {
                                    //modal begin
                                    wx.showModal({
                                        title: '支付成功！',
                                        content: '',
                                        showCancel: false,
                                        success: function (res) {
                                            if (res.confirm) {
                                            }
                                        }
                                    })
                                    //modal over
                                    wx.redirectTo({
                                        url: '../account/account?params=' + params
                                    })
                                } else {
                                    wx.showToast({
                                        title: '支付失败',
                                        icon: 'success',
                                        duration: 2000
                                    })
                                }
                            },
                            'fail': function (res) {

                            }
                        })
                    }
                }


            }
        })



    }


})