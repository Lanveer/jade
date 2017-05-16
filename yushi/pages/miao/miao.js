// pages/miao/miao.js
var utils = require('../../utils/util.js');
var app = getApp();
import NumberAnimate from "../../utils/NumberAnimate";
Page({
    data: {
        num1: '',
        hadclick: false,
        hasclick: false,
        num1Complete: '',
        hour: '',
        minute: '',
        second: '',
        banner: '',
        detail: '',
        shop_id: '',
        shop_aucprice: '',
        flag: '',
        bondid:'',
        clock:''
    },
    onLoad: function(options) {
        // 页面初始化 options为页面跳转所带来的参数
        wx.setNavigationBarTitle({
            title: '滚动秒拍',
        });


        this.constantNum = this.data.shop_aucprice;
        var that = this;
        // 轮播图开始
        wx.request({
                url: app.globalData.requestPrefix + '/weixinapi/banner/showbanner',
                data: {},
                method: 'GET',
                success: function(res) {
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
            
            // 获取数据
        var shop_id = options.shop_id;
        that.setData({ shop_id: shop_id })
        wx.request({
            url: app.globalData.requestPrefix + '/weixinapi/shop/secondshot?shopid=' + shop_id,
            data: {},
            method: 'GET',
            success: function(res) {
                console.log(res)
                var detail = {};
                if (res.statusCode && res.statusCode === 200) {
                    var data = res.data.data;
                    var time = data.shop_time;
                    var shop_aucprice = data.shop_aucprice;
                    var shop_price = data.shop_price;
                    detail = {
                        id: data.id,
                        shop_cover: data.shop_cover,
                        shop_name: data.shop_name,
                        shop_price: data.shop_price,
                        shop_stock: data.shop_stock,
                        shop_time: data.shop_time
                    }
                    that.setData({
                            detail: detail,
                            shop_aucprice: shop_aucprice,
                            num1: shop_price,
                            clock:time
                        })
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
                    var seconds = parseInt(leftTime % 60*10);
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
                    }else{
                       that.setData({
                            hour:0+'0',
                            minute: 0+'0',
                            second: 0+'0'
                        })  
                    }

                }

                setInterval(function () { a() }, 1000)


                //时间函数结束
        
                }
            }
        })


    },

    // 手机支付
    pay: function(event) {
        var shop_id = event.currentTarget.dataset.shopid;
        var userId = app.globalData.userId;
        var that = this;
        wx.request({
            url: app.globalData.requestPrefix + '/weixinapi/bond/getbond',
            data: { uid: userId, shopid: shop_id },
            method: 'GET',
            success: function(res) {
                if (res.statusCode && res.statusCode == 200) {
                    console.log(res)
                            var bondid= res.data.data.bondid;
                            that.setData({bondid:bondid});
                            var params=[shop_id,bondid]
                    var flag = res.data.error;
                    switch (flag) {
                        case 1:
                       //modal begin
                            wx.showModal({
                                title: '提示',
                                cancelText: '取消',
                                confirmText: '确定',
                                content: '您已提交了保证金，可直接去秒杀！',
                                success: function(res) {
                                    if (res.confirm) {
                                        wx.redirectTo({
                                        url: '../account/account?params='+params
                                        })
                                    } else if (res.cancel) {
                                        //点击了取消
                                    }
                                }
                            });
                            //modal over
                            break;
                                  case 2:
                                wx.showModal({
                                title: '提示',
                                cancelText: '取消',
                                confirmText: '确定',
                                content: res.data.message,
                                success: function(res) {
                                    if (res.confirm) {
                                        wx.redirectTo({
                                        url: '../account/account?params='+params
                                        })
                                    } else if (res.cancel) {
                                        //点击了取消
                                    }
                                }
                            });
                            break;
                        case 3:
                         wx.redirectTo({
                                            url: '../deposit/deposit?shop_id=' + shop_id
                                        })
                            //modal begin
                            // wx.showModal({
                            //     title: '秒点开始',
                            //     cancelText: '取消',
                            //     confirmText: '去提交',
                            //     content: '请先提交保证金',
                            //     success: function(res) {
                            //         if (res.confirm) {
                            //             wx.redirectTo({
                            //                 url: '../deposit/deposit?shop_id=' + shop_id
                            //             })
                            //         } else if (res.cancel) {
                            //         }
                            //     }
                            // });
                            //modal over
                            break;
                      
                    }
                }
            }
        })
    },

    animate: function(event) {
        var  that=this;
        var shop_id = event.currentTarget.dataset.shopid;
        var userId = app.globalData.userId;
        wx.request({
            url: app.globalData.requestPrefix + '/weixinapi/bond/getbond',
            data: { uid: userId, shopid: shop_id },
            method: 'GET',
            success: function(res) {
                console.log(res)
                if (res.statusCode && res.statusCode == 200) {
                    var flag = res.data.error;
                    var bondid= res.data.data.bondid;
                    var params=[shop_id,bondid];
                    console.log(flag)
                    if (flag === 3) {
                        //modal begin
                        wx.showModal({
                            title: '秒点开始',
                            cancelText: '取消',
                            confirmText: '去提交',
                            content: '请先提交保证金',
                            success: function(res) {
                                if (res.confirm) {
                                    wx.redirectTo({
                                        url: '../deposit/deposit?shop_id=' + shop_id
                                    })
                                } else if (res.cancel) {
                                    //点击了取消
                                }
                            }
                        });
                        //modal over
                    } else if (flag === 1) {
                               //modal begin
                            wx.showModal({
                                title: '提示',
                                cancelText: '取消',
                                confirmText: '确定',
                                content: '您已提交了保证金，可直接去秒杀！',
                                success: function(res) {
                                    if (res.confirm) {
                                        wx.redirectTo({
                                        url: '../account/account?params='+params
                                        })
                                    } else if (res.cancel) {
                                        //点击了取消
                                    }
                                }
                            });
                            //modal over
                    }else if(flag ==2){
                         wx.showModal({
                                title: '提示',
                                cancelText: '取消',
                                confirmText: '确定',
                                content: '您已提交了保证金，可直接去秒杀！',
                                success: function(res) {
                                    if (res.confirm) {
                                        wx.redirectTo({
                                        url: '../account/account?params='+params
                                        })
                                    } else if (res.cancel) {
                                        //点击了取消
                                    }
                                }
                            });
                    }
                }
            }
        })

    },
    stopAnimate: function() {
        var that = this;
        var num1 = that.data.shop_aucprice;
        console.log(num1)
            //  var that= this;
            //  var num1= that.data.shop_aucprice;
        clearInterval(this.n1.interval);
        this.setData({
            num1: num1,
            // num1:'22',
            num1Complete: `恭喜你的价格为${num1}`
        });
    }
})