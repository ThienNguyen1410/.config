console.log("Start Hook...");
Java.perform(function () {
    var activity = Java.use("com.netease.unisdk.gmbridge5.data.DataManager");
    activity.setRoleId.overload('java.lang.String').implementation = function(role) {
        console.log("RoleId : ", role);
        return this.setRoleId(Java.use('java.lang.String').$new("0"));
    }
});
