function formatTime(date) {
    var year = date.getFullYear()
    var month = date.getMonth() + 1
    var day = date.getDate()

    var hour = date.getHours()
    var minute = date.getMinutes()
    var second = date.getSeconds()


    return [year, month, day].map(formatNumber).join('/') + ' ' + [hour, minute, second].map(formatNumber).join(':')
}

function formatNumber(n) {
    n = n.toString()
    return n[1] ? n : '0' + n
}

// function cal(h) {
//     var curTime = new Date();
//     var endTime = new Date(h);
//     var leftTime = parseInt((endTime.getTime() - curTime.getTime()) / 1000);
//     var day = parseInt(leftTime / (24 * 60 * 60));
//     var hour = parseInt(leftTime / (60 * 60) % 24);
//     var minute = parseInt(leftTime / 60 % 60);
//     var seconds = parseInt(leftTime % 60);
  
//     if (leftTime <= 0) {
//         var data = {
//             hour: '0',
//             minute: '0',
//             seconds: '0'
//         }
//     } else {
//         var data = {
//             day: day,
//             hour: hour,
//             minute: minute,
//             seconds: seconds
//         };
//           setInterval(cal, 1000);
//     }

//     return data;
// }


module.exports = {
    formatTime: formatTime,
    // cal: cal,
    // coutd:countd
}