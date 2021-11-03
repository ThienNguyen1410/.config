.class Lcom/bluezone/MainApplication$1;
.super Lcom/facebook/react/ReactNativeHost;
.source "MainApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluezone/MainApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bluezone/MainApplication;


# direct methods
.method constructor <init>(Lcom/bluezone/MainApplication;Landroid/app/Application;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/bluezone/MainApplication$1;->this$0:Lcom/bluezone/MainApplication;

    invoke-direct {p0, p2}, Lcom/facebook/react/ReactNativeHost;-><init>(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method protected getJSMainModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "index"

    return-object v0
.end method

.method protected getPackages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/facebook/react/PackageList;

    invoke-direct {v0, p0}, Lcom/facebook/react/PackageList;-><init>(Lcom/facebook/react/ReactNativeHost;)V

    invoke-virtual {v0}, Lcom/facebook/react/PackageList;->getPackages()Ljava/util/ArrayList;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/scan/TraceCovidPackage;

    invoke-direct {v1}, Lcom/scan/TraceCovidPackage;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v1, Lio/invertase/firebase/messaging/RNFirebaseMessagingPackage;

    invoke-direct {v1}, Lio/invertase/firebase/messaging/RNFirebaseMessagingPackage;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v1, Lio/invertase/firebase/notifications/RNFirebaseNotificationsPackage;

    invoke-direct {v1}, Lio/invertase/firebase/notifications/RNFirebaseNotificationsPackage;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v1, Lcom/airbnb/android/react/lottie/LottiePackage;

    invoke-direct {v1}, Lcom/airbnb/android/react/lottie/LottiePackage;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v1, Lio/invertase/firebase/analytics/RNFirebaseAnalyticsPackage;

    invoke-direct {v1}, Lio/invertase/firebase/analytics/RNFirebaseAnalyticsPackage;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getUseDeveloperSupport()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
