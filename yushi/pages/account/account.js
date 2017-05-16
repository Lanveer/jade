import NumberAnimate from "../../utils/NumberAnimate";
var utils = require('../../utils/util.js');
var app = getApp()
Page({
    data: {
        num1: '',
        banner: '',
        shop_id: '',
        hadclick: false,
        hasclick: false,
        num1Complete: '',
        detail: '',
        hour: '',
        minute: '',
        second: '',
        shop_aucprice: '',
        flag: 1,
        list: '',
        noTips: false,
        money: '',
        flagFake: '',
        difference1: '',
        difference2: '',
        bondid: '',
        timeNum: '',
        clock: '',
        record: ''

    },
    onLoad: function (options) {

        this.constantNum = this.data.num1;
        var that = this;

        //持续秒杀的时间开始
        wx.request({
            url: 'https://ysxcx.cokmarket.com/weixinapi/showtime/over',
            data: {},
            method: 'GET',
            success: function (res) {
                var timeNum = res.data.data.second;
                that.setData({
                    timeNum: timeNum
                })
            }
        })
        //持续秒杀的时间结束

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
                        var imgs = {
                            id: imgData[idx].id,
                            path: imgData[idx].path
                        };
                        banner.push(imgs);
                    }
                    that.setData({
                        banner: banner
                    })
                }

            }
        })
        // 轮播图结束

        // 获取数据开始
        var shop_id = options.shop_id;
        var bondid = options.bondid
        var data = options;
        var params = data.params;
        var h = params.split(',');
        var bondid = h[1],
            shop_id = h[0];
        that.setData({
            bondid: bondid,
            shop_id: shop_id
        })
        wx.request({
            url: app.globalData.requestPrefix + '/weixinapi/bond/startbuy',
            data: {
                shopid: shop_id,
                bondid: bondid

            },
            header: {
                "Content-Type": "application/x-www-form-urlencoded"
            },
            method: 'POST',
            success: function (res) {
                console.log(res)
                var detail = {};
                if (res.statusCode && res.statusCode === 200) {
                    var data = res.data.data;
                    var flagFake = data.tag == true ? 3 : 2;
                    console.log(flagFake)
                    that.setData({
                        flagFake: flagFake
                    })
                    var time = data.shop_time;
                    var shop_price = data.shop_price;
                    var shop_aucprice = data.shop_aucprice;
                    var difference = data.difference;
                    console.log(difference)
                    // 需要退款
                    if (difference > 0) {
                        that.setData({
                            difference1: difference
                        })
                        // 需要补交
                    } else if (difference < 0) {
                        that.setData({
                            difference2: difference
                        })
                    } else if (difference == 0) {
                        that.setData({
                            difference2: difference
                        })
                    }
                    detail = {
                        id: data.id,
                        shop_cover: data.shop_cover,
                        shop_name: data.shop_name,
                        shop_stock: data.shop_stock,
                        shop_time: data.shop_time,
                        // difference:data.difference,
                        count: data.count,
                    }
                    that.setData({
                        detail: detail,
                        shop_aucprice: shop_aucprice,
                        // flagFake: flagFake,
                        num1: shop_price,
                        clock: time
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

                }
            }
        })
        // 获取数据结束


        // 实时数据开始
        var url = app.globalData.requestPrefix + '/weixinapi/bond/dealinfo?shopid=' + shop_id;
        wx.request({
            url: url,
            data: {},
            method: 'GET',
            success: function (res) {
                console.log(res)
                var items = res.data.data;
                if (items.length == 0) {
                    that.setData({
                        noTips: true
                    })
                } else {
                    var record = [];
                    for (var idx in items) {
                        var temp = {
                            name: items[idx].name,
                            num: items[idx].deal_price,
                        }
                        record.push(temp)
                    }

                    that.setData({
                        record: record,
                        noTips: false
                    })
                }
            }
        })
        // 实时数据结束
    },
    // 点击秒杀开始
    animate: function (events) {
        var that = this;
        var shop_id = events.currentTarget.dataset.shopid;
        var userId = app.globalData.userId;
        var bondid = that.data.bondid
        // 播放音乐开始
        wx.playBackgroundAudio({
            dataUrl: 'https://ysxcx.cokmarket.com/music/start.mp3',
        })
        // 播放音乐结束


        // 发送请求获得详细价格信息开始
        wx.request({
            url: app.globalData.requestPrefix + '/weixinapi/bond/startbuy',
            data: {
                shopid: shop_id,
                bondid: bondid
            },
            method: 'post',
            header: {
                "Content-Type": "application/x-www-form-urlencoded"
            },
            success: function (res) {
                if (res.statusCode && res.statusCode === 200) {
                    console.log(res);
                    var data = res.data.data;
                    var tag = data.tag == true ? 3 : 2;
                    // 数字滚动开始
                    that.setData({
                        hasclick: true,
                    });
                    let num1 = that.data.shop_aucprice;
                    console.log(num1);
                    var timeNum = parseInt(that.data.timeNum * 1000);
                    that.n1 = new NumberAnimate({
                        from: num1, //开始时的数字
                        speed: timeNum, // 总时间
                        refreshTime: 30, //  刷新一次的时间
                        decimals: 2, //小数点后的位数
                        onUpdate: () => { //更新回调函数
                            that.setData({
                                num1: that.n1.tempValue,

                            });
                        },
                        onComplete: () => {
                            console.log(data.difference)
                            if (data.difference == 0) {
                                tag = 3;
                                that.setData({
                                    flag: tag,
                                })
                            }
                            that.setData({
                                flag: tag,
                                num1Complete: `恭喜你的价格为${num1}`
                            });
                            // 播放音乐开始
                            wx.playBackgroundAudio({
                                dataUrl: 'https://ysxcx.cokmarket.com/music/end.mp3',
                            })
                            // 播放音乐结束

                        }
                    });

                    // 数字滚动结束
                }
            }
        })

        // 发送请求获得详细价格信息结束




    },

    // 点击秒杀结束

    // 停止滚动开始
    stopAnimate: function () {
        // 音乐结束
        wx.stopBackgroundAudio()

        // 播放音乐开始
        wx.playBackgroundAudio({
            dataUrl: 'https://ysxcx.cokmarket.com/music/end.mp3',
        })
        // 播放音乐结束

        var that = this;
        var flagFake = that.data.flagFake;
        console.log(flagFake)
        let num1 = that.data.shop_aucprice;
        clearInterval(this.n1.interval);
        this.setData({
            num1: num1,
            flag: flagFake,
            num1Complete: `恭喜你的价格为${num1}`
        });
    },

    // 停止滚动结束


    // 退还金额开始
    formSubmit: function (e) {
        var that = this;
        var bondid = that.data.bondid;
        var info = e.detail.value;
        var code = app.globalData.loginCode;
        var userId = app.globalData.userId;
        var wx_code = info.wx_code;
        var name = info.name;
        var tel = info.tel;
        var address = info.address;
        var difference = that.data.difference1;
        console.log(name);
        console.log(bondid);
        console.log(code);
        console.log(userId);
        console.log(difference)
        console.log(tel);
        console.log(address)
        console.log(info);
        if (name == '' || tel == '' || address == '' || wx_code == '') {
            //modal begin
            wx.showModal({
                title: '请先完善信息',
                content: '',
                showCancel: false,
                success: function (res) {
                    if (res.confirm) {
                    }
                }
            })
            //modal over
            return false;
        } else if (name !== '' && tel !== '' && address !== '') {
            wx.request({
                url: app.globalData.requestPrefix + '/weixinapi/wxpaydifferences/index',
                data: {
                    wx_code: wx_code,
                    name: name,
                    tel: tel,
                    code: code,
                    address: address,
                    type: 2,
                    bondid: bondid,
                    uid: userId,
                    difference: that.data.difference1
                },
                header: {
                    "Content-Type": "application/x-www-form-urlencoded"
                },
                method: 'POST',
                success: function (res) {
                    console.log(res)
                    if (res.data.error == 999) {
                        //modal begin
                        wx.showModal({
                            title: '提示',
                            cancelText: '取消',
                            confirmText: '确定',
                            content: '信息保存完成！',
                            success: function (res) {
                                if (res.confirm) {

                                    wx.navigateBack({
                                        delta: 2,
                                    })
                                } else if (res.cancel) {
                                    //点击了取消
                                }
                            }
                        });

                        //modal over
                    } else {
                        //modal begin
                        wx.showModal({
                            title: '信息保存失败',
                            content: '',
                            showCancel: false,
                            success: function (res) {
                                if (res.confirm) {
                                }
                            }
                        })
                        //modal over
                    }
                }
            })
        }


    },

    // 退还金额结束


    // 补交金额开始
    formSubmit2: function (e) {
        var that = this;
        var bondid = that.data.bondid;
        var userId = app.globalData.userId;
        var info = e.detail.value;
        var code = app.globalData.loginCode;
        var difference = that.data.difference2;
        var name = info.name;
        var tel = info.tel;
        var address = info.address;
        console.log(tel);
        console.log(address)
        console.log(name);
        console.log(bondid);
        console.log(code);
        console.log(userId);
        console.log(difference)
        if (name == '' || tel == '' || address == '') {
            //modal begin
            wx.showModal({
                title: '请先完善信息',
                content: '',
                showCancel: false,
                success: function (res) {
                    if (res.confirm) {
                    }
                }
            })
            //modal over
            return false;
        } else if (name !== '' && tel !== '' && address !== '') {
            wx.request({
                url: app.globalData.requestPrefix + '/weixinapi/wxpaydifferences/index',
                header: {
                    "Content-Type": "application/x-www-form-urlencoded"
                },
                data: {
                    name: name,
                    tel: tel,
                    address: address,
                    type: 1,
                    bondid: bondid,
                    code: code,
                    uid: userId,
                    difference: difference
                },
                method: 'POST',
                success: function (res) {
                    console.log(res);
                    // if (res.data.error === 0) {
                    //     wx.showToast({
                    //         title: '信息保存成功',
                    //         icon: 'success',
                    //         duration: 2000
                    //     })
                    //     wx.redirectTo({
                    //         url: '../index/index'
                    //     })

                    // } else if (res.data.error === 400) {
                    //     wx.showModal({
                    //         title: res.data.message,
                    //         content: '',
                    //         showCancel: false,
                    //         success: function (res) {
                    //             if (res.confirm) {
                    //             }
                    //         }
                    //     })
                    // }
                    if (res.statusCode && res.statusCode == 200) {



                        if (res.data.error == 999) {
                            //modal begin
                            wx.showModal({
                                title: '提示',
                                cancelText: '取消',
                                confirmText: '确定',
                                content: '信息保存完成！',
                                success: function (res) {
                                    if (res.confirm) {

                                        wx.navigateBack({
                                            delta: 2,
                                        })
                                    } else if (res.cancel) {
                                        //点击了取消
                                    }
                                }
                            });

                            //modal over
                        } else {

                            // 补交开始
                            var timeStamp = res.data.timestamp,
                                nonceStr = res.data.none_str,
                                pkg = res.data.pkg,
                                paySign = res.data.paysign;

                            console.log(timeStamp)
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
                                            title: '补交金额成功！',
                                            content: '',
                                            showCancel: false,
                                            success: function (res) {
                                                if (res.confirm) {
                                                    wx.navigateBack({
                                                        delta: 2,
                                                    })
                                                }
                                            }
                                        })
                                        //modal over

                                    } else {
                                        //modal begin
                                        wx.showModal({
                                            title: '补交金额失败！',
                                            content: '',
                                            showCancel: false,
                                            success: function (res) {
                                                if (res.confirm) {

                                                }
                                            }
                                        })
                                        //modal over
                                    }
                                },
                                'fail': function (res) {
                                }
                            })
                            // 补交结束
                        }

                    }
                }
            });
        } else {
            //modal begin
            wx.showModal({
                title: '信息保存失败222！',
                content: '',
                showCancel: false,
                success: function (res) {
                    if (res.confirm) {
                    }
                }
            })
            //modal over
        }



    },

    // 补交金额结束

})