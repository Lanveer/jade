// pages/success/success.js
// var listSearch=require('../data.js')

var app = getApp()

Page({
    data: {
        list: '',
        myuid: ''
    },
    onLoad: function (options) {
        wx.setNavigationBarTitle({
            title: '已成交查询'
        })
        var that = this;
        var shop_id = options.shop_id;
        var myuid = app.globalData.userId;
        console.log(shop_id);
        var url = app.globalData.requestPrefix + '/weixinapi/bond/dealshopinfo';
        if (options.shop_id) {
            url += '?shopid=' + shop_id;
        }
        wx.request({
            url: url,
            data: {},
            method: 'GET',
            success: function (res) {
                console.log(res)
                var items = res.data.data;
                if (items.length == 0) {
                    wx.showToast({
                        title: '暂时没有数据',
                        icon: ';loading',
                        duration: 1500
                    })
                }
                var data = [];
                for (var idx in items) {
                    var temp = {
                        shop_name: items[idx].shop_name.substring(0,3)+'...',
                        address: items[idx].address.substring(0, 2) + '...',
                        deal_price: items[idx].deal_price,
                        tel: items[idx].tel.substring(0, 3) + '***' + items[idx].tel.substring(8, 11),
                        user_name: items[idx].user_name.substring(0, 2) + '',
                        uid: items[idx].uid
                    }
                    data.push(temp);
                }
     
              
                that.setData({
                    list: data,
                    myuid: myuid
                })
            }
        })




    }
})