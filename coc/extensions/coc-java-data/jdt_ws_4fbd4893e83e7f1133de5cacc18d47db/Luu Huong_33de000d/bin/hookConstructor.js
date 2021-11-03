Java.use('com.netease.mpay.oversea.scan.server.modules.ServerApi').$init.overload('java.lang.String').implementation = function(stringArgument) {
      console.log("c'tor");
      return this.$init(stringArgument);
};
