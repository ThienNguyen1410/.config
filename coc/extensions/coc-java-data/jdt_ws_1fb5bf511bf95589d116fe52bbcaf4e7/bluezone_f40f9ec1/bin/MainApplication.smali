.class public Lcom/bluezone/MainApplication;
.super Landroid/app/Application;
.source "MainApplication.java"

# interfaces
.implements Lcom/facebook/react/ReactApplication;


# instance fields
.field private final mReactNativeHost:Lcom/facebook/react/ReactNativeHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 29
    new-instance v0, Lcom/bluezone/MainApplication$1;

    invoke-direct {v0, p0, p0}, Lcom/bluezone/MainApplication$1;-><init>(Lcom/bluezone/MainApplication;Landroid/app/Application;)V

    iput-object v0, p0, Lcom/bluezone/MainApplication;->mReactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-void
.end method

.method private static initializeFlipper(Landroid/content/Context;Lcom/facebook/react/ReactInstanceManager;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getReactNativeHost()Lcom/facebook/react/ReactNativeHost;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/bluezone/MainApplication;->mReactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 64
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const/4 v0, 0x0

    .line 65
    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;Z)V

    .line 66
    invoke-virtual {p0}, Lcom/bluezone/MainApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bluezone/MainApplication;->initializeFlipper(Landroid/content/Context;Lcom/facebook/react/ReactInstanceManager;)V

    .line 67
    new-instance v0, Lio/rumors/reactnativesettings/receivers/GpsLocationReceiver;

    invoke-direct {v0}, Lio/rumors/reactnativesettings/receivers/GpsLocationReceiver;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/bluezone/MainApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    new-instance v0, Lio/rumors/reactnativesettings/receivers/AirplaneModeReceiver;

    invoke-direct {v0}, Lio/rumors/reactnativesettings/receivers/AirplaneModeReceiver;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/bluezone/MainApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
