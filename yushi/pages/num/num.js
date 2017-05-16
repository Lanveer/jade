// pages/num/index.js
import NumberAnimate from "../../utils/NumberAnimate";

var app = getApp()

Page({
  data:{
     num1:1233,
     leftradom:2,
     rightrandom:3,
     hasclick:false,
     show:false,
     num1Complete:''
  },
  onLoad:function(options){
    // 页面初始化 options为页面跳转所带来的参数

    this.constantNum = this.data.num1;
    
  },
  //调用NumberAnimate.js中NumberAnimate实例化对象，测试3种效果
 animate:function(){
    this.setData({
      hasclick:true,
    });
    let num1 = this.data.num1;
    this.n1 = new NumberAnimate({
        from:num1,//开始时的数字
        speed:3000,// 总时间
        refreshTime:100,//  刷新一次的时间
        decimals:0,//小数点后的位数
        onUpdate:()=>{//更新回调函数
          this.setData({
            num1:this.n1.tempValue
          });
        },
        onComplete:()=>{
          this.setData({
            num1Complete:`恭喜你的价格为${num1}`,
                 leftradom:'',
                 rightrandom:'',
          });
        }
    });
    
    
 },
 stopAnimate:function(){
   let num1 = this.constantNum;
   clearInterval(this.n1.interval);
   this.setData({
        num1:num1,
        leftradom:'',
        rightrandom:'',
        num1Complete:`恭喜你的价格为${num1}`
    });
 }

})


function move(){

}