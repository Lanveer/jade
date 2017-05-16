// pages/index/index.js
var utils = require('../../utils/util.js');
var indexList = require('../data.js')
var app = getApp()

Page({
    data: {
        banner: '',
        hour: '',
        minute: '',
        second: '',
        listData: '',
        title: '',
        hammer: '',
        userInfo: '',
        userInfo: {},
        clock: ''
    },
    onLoad: function (options) {
        wx.setNavigationBarTitle({
            title: '滚动秒拍',
        });
        var that = this;
        // 获得userInfo
        app.getUserInfo(function (userInfo) {
            //更新数据
            that.setData({
                userInfo: userInfo
            });

            var nick_name = userInfo.nickName;
            var header = userInfo.avatarUrl;
            var loginCode = app.globalData.loginCode;
            console.log(nick_name);
            console.log(header);
            console.log(loginCode)
            wx.request({
                url: app.globalData.requestPrefix + '/weixinapi/user/getuid',
                data: {
                    nick_name: nick_name,
                    header: header,
                    code: loginCode
                },
                header: { "Content-Type": "application/x-www-form-urlencoded" },
                method: 'POST',
                success: function (res) {
                    var userId = res.data.data.id;
                    app.globalData.userId = userId;
                }
            })
        });


        // 获得userInfo


        // 获取成交图片开始
        wx.request({
            url: app.globalData.requestPrefix + '/weixinapi/shop/getbuttonimg',
            method: 'GET',
            success: function (res) {
                var hammer = res.data.data.img;
                that.setData({ hammer: hammer })
            }
        })
        // 获取成交图片结束

        // 轮播图开始
        var that = this;
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


        // 秒拍专场数据开始
        wx.request({
            url: app.globalData.requestPrefix + '/weixinapi/showtime/showtime',
            data: {},
            method: 'GET',
            success: function (res) {
                console.log(res);
                var times = res.data.data.time;
                var title = res.data.data.title;
                that.setData({
                    title: title
                });
                // 时间设置开始
                that.setData({ clock: times })

                // 时间函数开始

                function a() {
                    var t = that.data.clock;
                    var p = t.replace(/-/g, '/');
                    var o = new Date(p);
                    var s = o.getTime();
                    var curTime = new Date();
                    var cur = curTime.getTime();
                    var leftTime = parseInt((s - cur) / 1000);
                    var day = parseInt(leftTime / (24 * 60 * 60));
                    var hour = parseInt(leftTime / (60 * 60) % 24);
                    var minute = parseInt(leftTime / 60 % 60);
                    var seconds = parseInt(leftTime % 60);
                    // console.log(leftTime)
                    hour = hour >= 10 ? hour : '0' + hour;
                    minute = minute >= 10 ? minute : '0' + minute;
                    seconds = seconds >= 10 ? seconds : '0' + seconds;
                    if (leftTime > 0) {
                        that.setData({
                            hour: hour,
                            minute: minute,
                            second: seconds
                        })
                    } else {
                        that.setData({
                            hour: 0 + '0',
                            minute: 0 + '0',
                            second: 0 + '0'
                        })
                    }

                }

                setInterval(function () { a() }, 1000)


                //时间函数结束


                // setInterval(function() {
                //         var time = utils.cal(endTime)
                //             // console.log(time)
                //         var hour = time.hour;
                //         var minute = time.minute;
                //         var seconds = parseInt(time.seconds);
                //         hour = hour >= 10 ? hour : '0' + hour;
                //         minute = minute >= 10 ? minute : '0' + minute;
                //         seconds = seconds >= 10 ? seconds : '0' + seconds;
                //         // console.log(seconds)
                //         that.setData({
                //             hour: hour,
                //             minute: minute,
                //             second: seconds
                //         })
                //     }, 1000)
                // 时间设置结束
            }
        })

        // 秒拍专场数据结束




        // 列表数据开始
        wx.request({
            url: app.globalData.requestPrefix + '/weixinapi/shop/shoplist',
            data: {},
            method: 'GET',
            success: function (res) {
                console.log(res)
                var listdata = [];
                if (res.statusCode && res.statusCode == 200) {
                    var lists = res.data.data;
                    that.setData({
                        listData: res.data.data
                    })
                }
            }
        })


        // 列表数据结束




    },
    // 拨打电话

    dail: function () {
        wx.makePhoneCall({
            phoneNumber: '0377-65619668',
            success: function (res) {
                // success
            }
        })
    },
    // 点击跳转到详情页面
    transfer: function (e) {
        var shopid = e.currentTarget.dataset.shopid;
        var stock = e.currentTarget.dataset.stock;
        console.log(stock)
        if (stock == 1) {
            wx.navigateTo({
                url: ''
            })
        } else {
            wx.navigateTo({
                url: '../detail/detail?shopid=' + shopid
            })
        }
    },
    // 点击跳转到秒拍页面

    pai: function (e) {
        var shopid = e.currentTarget.dataset.shopid;
        var stock = e.currentTarget.dataset.stock;
        //跳转之前请求数据获得最新的库存数量开始
        wx.request({
            url: app.globalData.requestPrefix + '/weixinapi/shop/shopinfo?shopid=' + shopid,
            data: {},
            method: 'GET',
            success: function (res) {
                console.log(res);
                var shop_stock = res.data.data.shop_stock;
                if (shop_stock == 1) {
                    wx.navigateTo({
                        url: ''
                    })
                }else{
                      wx.navigateTo({
                url: '../miao/miao?shop_id=' + shopid
            })
                }
            }
        })
        // if (stock == 1) {
        //     wx.navigateTo({
        //         url: ''
        //     })
        // } else {
        //     wx.navigateTo({
        //         url: '../miao/miao?shop_id=' + shopid
        //     })
        // }
    }
})