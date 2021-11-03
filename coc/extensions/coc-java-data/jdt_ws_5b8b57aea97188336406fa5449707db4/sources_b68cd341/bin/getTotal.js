Java.perform( function() {
    var apis = Java.use("com.scan.apis.AsyncStorageApi");
    apis.setItem.implementation = function(str1,str2) {
        console.log(str1);
        console.log(str2);
        return this.setItem(str1,str2);
    }
});
