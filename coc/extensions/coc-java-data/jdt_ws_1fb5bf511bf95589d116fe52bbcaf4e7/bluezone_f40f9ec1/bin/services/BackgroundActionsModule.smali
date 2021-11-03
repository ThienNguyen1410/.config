.class public Lcom/bluezone/services/BackgroundActionsModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "BackgroundActionsModule.java"


# static fields
.field private static final EMIT_EVENT_HISTORY_SAVE:Ljava/lang/String; = "EMIT_EVENT_HISTORY_SAVE"

.field private static final EMIT_EVENT_STEP_SAVE:Ljava/lang/String; = "EMIT_EVENT_STEP_SAVE"

.field private static final EMIT_EVENT_TARGET_SAVE:Ljava/lang/String; = "EMIT_EVENT_TARGET_SAVE"

.field private static final EMIT_EVENT_TIMEOUT:Ljava/lang/String; = "EMIT_EVENT_TIMEOUT"

.field private static final EMIT_EVENT_TIME_SCHEDULE:Ljava/lang/String; = "EMIT_EVENT_TIME_SCHEDULE"

.field private static final TAG:Ljava/lang/String; = "RNServiceBluezone"

.field private static reactContextStatic:Lcom/facebook/react/bridge/ReactApplicationContext;


# instance fields
.field private currentServiceIntent:Landroid/content/Intent;

.field private handler:Landroid/os/Handler;

.field private final listener:Lcom/facebook/react/bridge/LifecycleEventListener;

.field private powerManager:Landroid/os/PowerManager;

.field private final reactContext:Lcom/facebook/react/bridge/ReactContext;

.field private runnable:Ljava/lang/Runnable;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 3

    .line 63
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 47
    new-instance v0, Lcom/bluezone/services/BackgroundActionsModule$1;

    invoke-direct {v0, p0}, Lcom/bluezone/services/BackgroundActionsModule$1;-><init>(Lcom/bluezone/services/BackgroundActionsModule;)V

    iput-object v0, p0, Lcom/bluezone/services/BackgroundActionsModule;->listener:Lcom/facebook/react/bridge/LifecycleEventListener;

    .line 64
    iput-object p1, p0, Lcom/bluezone/services/BackgroundActionsModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 65
    sput-object p1, Lcom/bluezone/services/BackgroundActionsModule;->reactContextStatic:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 66
    invoke-virtual {p0}, Lcom/bluezone/services/BackgroundActionsModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/bluezone/services/BackgroundActionsModule;->powerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "rohit_bg_wakelock"

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/bluezone/services/BackgroundActionsModule;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 68
    iget-object v0, p0, Lcom/bluezone/services/BackgroundActionsModule;->listener:Lcom/facebook/react/bridge/LifecycleEventListener;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/bluezone/services/BackgroundActionsModule;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/bluezone/services/BackgroundActionsModule;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$100(Lcom/bluezone/services/BackgroundActionsModule;)Lcom/facebook/react/bridge/ReactContext;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/bluezone/services/BackgroundActionsModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    return-object p0
.end method

.method static synthetic access$200(Lcom/bluezone/services/BackgroundActionsModule;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/bluezone/services/BackgroundActionsModule;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/bluezone/services/BackgroundActionsModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/bluezone/services/BackgroundActionsModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/bluezone/services/BackgroundActionsModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/bluezone/services/BackgroundActionsModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method private sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;)V
    .locals 1

    .line 174
    const-class v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 175
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const/4 v0, 0x0

    .line 176
    invoke-interface {p1, p2, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableNativeMap;)V
    .locals 2

    .line 211
    sget-object v0, Lcom/bluezone/services/BackgroundActionsModule;->reactContextStatic:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 212
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 213
    invoke-interface {v0, p0, p1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNServiceBluezone"

    return-object v0
.end method

.method public isSupportStepCounter(Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/bluezone/services/BackgroundActionsModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    const-string v1, "sensor"

    .line 127
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/16 v1, 0x13

    .line 129
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 133
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public sendEmitSaveHistorySuccess()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/bluezone/services/BackgroundActionsModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    const-string v1, "EMIT_EVENT_HISTORY_SAVE"

    invoke-direct {p0, v0, v1}, Lcom/bluezone/services/BackgroundActionsModule;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;)V

    return-void
.end method

.method public sendEmitSaveSuccess()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/bluezone/services/BackgroundActionsModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    const-string v1, "EMIT_EVENT_STEP_SAVE"

    invoke-direct {p0, v0, v1}, Lcom/bluezone/services/BackgroundActionsModule;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;)V

    return-void
.end method

.method public sendEmitSaveTargetSuccess()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/bluezone/services/BackgroundActionsModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    const-string v1, "EMIT_EVENT_TARGET_SAVE"

    invoke-direct {p0, v0, v1}, Lcom/bluezone/services/BackgroundActionsModule;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;)V

    return-void
.end method

.method public setTimeout(ID)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 181
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 182
    new-instance v1, Lcom/bluezone/services/BackgroundActionsModule$3;

    invoke-direct {v1, p0, p1}, Lcom/bluezone/services/BackgroundActionsModule$3;-><init>(Lcom/bluezone/services/BackgroundActionsModule;I)V

    double-to-long p1, p2

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public start(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/bluezone/services/BackgroundActionsModule;->currentServiceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bluezone/services/BackgroundActionsModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v1, v0}, Lcom/facebook/react/bridge/ReactContext;->stopService(Landroid/content/Intent;)Z

    .line 83
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bluezone/services/BackgroundActionsModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    const-class v2, Lcom/bluezone/services/RNBackgroundActionsTask;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/bluezone/services/BackgroundActionsModule;->currentServiceIntent:Landroid/content/Intent;

    .line 86
    :try_start_0
    new-instance v0, Lcom/bluezone/services/BackgroundTaskOptions;

    iget-object v1, p0, Lcom/bluezone/services/BackgroundActionsModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-direct {v0, v1, p1}, Lcom/bluezone/services/BackgroundTaskOptions;-><init>(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 87
    iget-object p1, p0, Lcom/bluezone/services/BackgroundActionsModule;->currentServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/bluezone/services/BackgroundTaskOptions;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    iget-object p1, p0, Lcom/bluezone/services/BackgroundActionsModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    iget-object v0, p0, Lcom/bluezone/services/BackgroundActionsModule;->currentServiceIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 p1, 0x0

    .line 94
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    .line 89
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    return-void
.end method

.method public startSchedule(I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 154
    iget-object p1, p0, Lcom/bluezone/services/BackgroundActionsModule;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bluezone/services/BackgroundActionsModule;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 156
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/bluezone/services/BackgroundActionsModule;->handler:Landroid/os/Handler;

    .line 157
    new-instance p1, Lcom/bluezone/services/BackgroundActionsModule$2;

    invoke-direct {p1, p0}, Lcom/bluezone/services/BackgroundActionsModule$2;-><init>(Lcom/bluezone/services/BackgroundActionsModule;)V

    iput-object p1, p0, Lcom/bluezone/services/BackgroundActionsModule;->runnable:Ljava/lang/Runnable;

    .line 164
    iget-object v0, p0, Lcom/bluezone/services/BackgroundActionsModule;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/bluezone/services/BackgroundActionsModule;->currentServiceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/bluezone/services/BackgroundActionsModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v1, v0}, Lcom/facebook/react/bridge/ReactContext;->stopService(Landroid/content/Intent;)Z

    :cond_0
    const/4 v0, 0x0

    .line 102
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public stopSchedule()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/bluezone/services/BackgroundActionsModule;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bluezone/services/BackgroundActionsModule;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/bluezone/services/BackgroundActionsModule;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bluezone/services/BackgroundActionsModule;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public updateNotification(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 110
    :try_start_0
    new-instance v0, Lcom/bluezone/services/BackgroundTaskOptions;

    iget-object v1, p0, Lcom/bluezone/services/BackgroundActionsModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-direct {v0, v1, p1}, Lcom/bluezone/services/BackgroundTaskOptions;-><init>(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 112
    iget-object p1, p0, Lcom/bluezone/services/BackgroundActionsModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-static {p1, v0}, Lcom/bluezone/services/RNBackgroundActionsTask;->buildNotification(Lcom/facebook/react/bridge/ReactContext;Lcom/bluezone/services/BackgroundTaskOptions;)Landroid/app/Notification;

    move-result-object p1

    .line 114
    iget-object v0, p0, Lcom/bluezone/services/BackgroundActionsModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x16b23

    .line 116
    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    .line 121
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    .line 118
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    return-void
.end method

.method public updateStepTargetSuccess()V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 146
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/bluezone/services/BackgroundActionsModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    const-class v2, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 148
    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v2, "EMIT_EVENT_STEP_TARGET"

    .line 149
    invoke-interface {v1, v2, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateTypeNotification()V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 138
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/bluezone/services/BackgroundActionsModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    const-class v2, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 140
    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v2, "EMIT_EVENT_STEP"

    .line 141
    invoke-interface {v1, v2, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
