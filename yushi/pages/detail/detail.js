// pages/detail/detail.js

var app = getApp()

Page({
    data: {
        banner: '',
        params: '',
        listimg: '',
        shop_id: '',
        preImg: ''
    },
    onLoad: function (options) {
        // 页面初始化 options为页面跳转所带来的参数
        wx.setNavigationBarTitle({
            title: '商品详情',
        })
        var that = this;
        wx.showToast({
            title: '加载中',
            icon: 'loading',
            duration: 10000
        })

        setTimeout(function () {
            wx.hideToast()
        }, 1000)
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


        // 获取id开始
        var shop_id = options.shopid;

        // 详情页面开始
        wx.request({
            url: app.globalData.requestPrefix + '/weixinapi/shop/shopinfo?shopid=' + shop_id,
            data: {},
            method: 'GET',
            success: function (res) {
                var params = {};
                var listimg = {};
                if (res.statusCode && res.statusCode === 200) {
                    console.log(res);
                    params = {
                        width: res.data.data.shop_width,
                        height: res.data.data.shop_height,
                        length: res.data.data.shop_length,
                        price: res.data.data.shop_price,
                        materal: res.data.data.shop_material,
                        weight: res.data.data.shop_weight,
                        store: res.data.data.shop_stock,
                        info: res.data.data.shop_descript

                    };

                    listimg = res.data.data.imgs
                    shop_id: res.data.data.id,

                        that.setData({
                            params: params,
                            listimg: listimg,
                            shop_id: shop_id
                        })

                }
            }
        })
        // 详情页面结束

    },

    // 图片的预览
    viewImg: function (event) {
        var preIdx=event.target.dataset.index;
        var that = this;
        var imgs = that.data.listimg;
            var prevImgs = [];
        for (var idx in imgs) {
            var img = imgs[idx].imgurl; 
                prevImgs.push(img);         
        } 
        console.log(prevImgs)
var h= [];
h.push(prevImgs[preIdx]);
        wx.previewImage({
            current: '',           
            urls:prevImgs,
        })
    }

})