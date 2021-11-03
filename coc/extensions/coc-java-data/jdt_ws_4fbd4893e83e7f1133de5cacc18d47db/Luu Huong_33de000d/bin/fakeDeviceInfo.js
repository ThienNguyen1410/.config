console.log("Start Hook...");
Java.perform(function () {
    var activity = Java.use("com.netease.game.MessiahNativeActivity");
    activity.getDeviceInfo.overload('java.lang.String').implementation = function(key) {
        console.log("Key : ", key);
        console.log("Value : " + this.getDeviceInfo(key));
        return "";
    }
});
