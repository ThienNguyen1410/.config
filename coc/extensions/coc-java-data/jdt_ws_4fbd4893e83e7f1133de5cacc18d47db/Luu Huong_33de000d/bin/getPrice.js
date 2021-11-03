console.log("Start hooking...")
Java.perform(function () {
    var deviceInfo = Java.use("com.netease.messiah.DeviceInfo");
    deviceInfo.getDeviceInfoStr.overload('android.content.Context').implementation = function(str) {
        console.log("Get DeviceInfo : " + str);
        console.log("Get DeviceInfo : " + this.getDeviceInfoStr(str));
    } 
});

