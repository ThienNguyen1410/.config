.class public final Lcom/bluezone/services/RNBackgroundActionsTask;
.super Lcom/facebook/react/HeadlessJsTaskService;
.source "RNBackgroundActionsTask.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final ABOVE:I = 0x1

.field private static final BELOW:I = 0x0

.field private static final CHANNEL_ID:Ljava/lang/String; = "CHANNEL_HEALTH_BLUEZONE"

.field private static final EMIT_EVENT_STEP:Ljava/lang/String; = "EMIT_EVENT_STEP"

.field private static final EMIT_IS_SUPPORT:Ljava/lang/String; = "EMIT_IS_SUPPORT"

.field private static final END_TIME:Ljava/lang/String; = "endTime"

.field private static final EVENT_COUNTER:Ljava/lang/String; = "stepCounter"

.field private static PREVIOUS_STATE:I = 0x0

.field public static final SERVICE_NOTIFICATION_ID:I = 0x16b23

.field private static final START_TIME:Ljava/lang/String; = "startTime"

.field private static final TOTAL_STEP:Ljava/lang/String; = "totalStep"

.field private static final formatter:Ljava/text/SimpleDateFormat;


# instance fields
.field private lastStepCounter:I

.field private lastUpdateTime:J

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private prev:[F

.field private stepCount:I

.field private streakPrevTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bluezone/services/RNBackgroundActionsTask;->formatter:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 61
    sput v0, Lcom/bluezone/services/RNBackgroundActionsTask;->PREVIOUS_STATE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/facebook/react/HeadlessJsTaskService;-><init>()V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bluezone/services/RNBackgroundActionsTask;->lastUpdateTime:J

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/bluezone/services/RNBackgroundActionsTask;->lastStepCounter:I

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 57
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/bluezone/services/RNBackgroundActionsTask;->prev:[F

    .line 58
    iput v0, p0, Lcom/bluezone/services/RNBackgroundActionsTask;->stepCount:I

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bluezone/services/RNBackgroundActionsTask;->streakPrevTime:J

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static buildNotification(Lcom/facebook/react/bridge/ReactContext;Lcom/bluezone/services/BackgroundTaskOptions;)Landroid/app/Notification;
    .locals 12

    .line 67
    invoke-virtual {p1}, Lcom/bluezone/services/BackgroundTaskOptions;->getTaskTitle()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Lcom/bluezone/services/BackgroundTaskOptions;->getCurrentSteps()D

    move-result-wide v1

    .line 69
    invoke-virtual {p1}, Lcom/bluezone/services/BackgroundTaskOptions;->isShowStep()Z

    move-result v3

    .line 70
    invoke-virtual {p1}, Lcom/bluezone/services/BackgroundTaskOptions;->getStepsTarget()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-nez v8, :cond_0

    const-wide v4, 0x40c3880000000000L    # 10000.0

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/bluezone/services/BackgroundTaskOptions;->getIconInt()I

    .line 75
    invoke-virtual {p1}, Lcom/bluezone/services/BackgroundTaskOptions;->getLinkingURI()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 78
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 81
    :cond_1
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v6, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const/high16 p1, 0x8000000

    const/4 v7, 0x0

    .line 83
    invoke-static {p0, v7, v6, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 85
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0b0020

    invoke-direct {v6, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v8, 0x7f0801f8

    const v9, 0x7f080161

    const v10, 0x7f0801f7

    const v11, 0x7f0801f9

    if-eqz v3, :cond_2

    .line 88
    invoke-virtual {v6, v11, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 89
    invoke-virtual {v6, v10, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 90
    invoke-virtual {v6, v9, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 91
    invoke-virtual {v6, v8, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 92
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 93
    sget-object v8, Lcom/bluezone/services/RNBackgroundActionsTask;->formatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v11, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int v8, v1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int v8, v4

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v10, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    double-to-float v1, v1

    float-to-double v1, v1

    div-double/2addr v1, v4

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v3

    double-to-int v1, v1

    const/16 v2, 0x64

    .line 96
    invoke-virtual {v6, v9, v2, v1, v7}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    .line 98
    invoke-virtual {v6, v11, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 99
    invoke-virtual {v6, v10, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 100
    invoke-virtual {v6, v9, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 101
    invoke-virtual {v6, v8, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 105
    :goto_1
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "CHANNEL_HEALTH_BLUEZONE"

    invoke-direct {v1, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p0, 0x7f0d0002

    .line 106
    invoke-virtual {v1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 108
    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    new-instance v0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    .line 109
    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 110
    invoke-virtual {p0, v6}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 111
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 112
    invoke-virtual {p0, v6}, Landroidx/core/app/NotificationCompat$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 113
    invoke-virtual {p0, v7}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 114
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    const/4 p1, -0x1

    .line 115
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 117
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method private calculationStepAccelerometer(Landroid/hardware/SensorEvent;)V
    .locals 8

    .line 233
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v0, p0, Lcom/bluezone/services/RNBackgroundActionsTask;->prev:[F

    invoke-direct {p0, p1, v0}, Lcom/bluezone/services/RNBackgroundActionsTask;->lowPassFilter([F[F)[F

    move-result-object p1

    iput-object p1, p0, Lcom/bluezone/services/RNBackgroundActionsTask;->prev:[F

    .line 234
    new-instance v0, Lcom/bluezone/model/Accelerometer;

    invoke-direct {v0, p1}, Lcom/bluezone/model/Accelerometer;-><init>([F)V

    .line 236
    iget-wide v1, v0, Lcom/bluezone/model/Accelerometer;->R:D

    const-wide/high16 v3, 0x4025000000000000L    # 10.5

    cmpl-double p1, v1, v3

    if-lez p1, :cond_3

    .line 238
    sget p1, Lcom/bluezone/services/RNBackgroundActionsTask;->PREVIOUS_STATE:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 240
    iget-wide v3, p0, Lcom/bluezone/services/RNBackgroundActionsTask;->streakPrevTime:J

    sub-long v3, v1, v3

    long-to-float p1, v3

    const/high16 v3, 0x437a0000    # 250.0f

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_0

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bluezone/services/RNBackgroundActionsTask;->streakPrevTime:J

    return-void

    .line 244
    :cond_0
    iget p1, p0, Lcom/bluezone/services/RNBackgroundActionsTask;->stepCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/bluezone/services/RNBackgroundActionsTask;->stepCount:I

    .line 245
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    long-to-double v3, v1

    const-string v5, "endTime"

    .line 246
    invoke-interface {p1, v5, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-string/jumbo v5, "stepCounter"

    .line 247
    invoke-interface {p1, v5, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 248
    iget v3, p0, Lcom/bluezone/services/RNBackgroundActionsTask;->stepCount:I

    int-to-double v3, v3

    const-string/jumbo v5, "totalStep"

    invoke-interface {p1, v5, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 249
    iget-wide v3, p0, Lcom/bluezone/services/RNBackgroundActionsTask;->streakPrevTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    sub-long v3, v1, v5

    .line 250
    iput-wide v3, p0, Lcom/bluezone/services/RNBackgroundActionsTask;->streakPrevTime:J

    .line 252
    :cond_1
    iget-wide v3, p0, Lcom/bluezone/services/RNBackgroundActionsTask;->streakPrevTime:J

    long-to-double v3, v3

    const-string/jumbo v5, "startTime"

    invoke-interface {p1, v5, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 253
    invoke-direct {p0, p1}, Lcom/bluezone/services/RNBackgroundActionsTask;->emitValue(Lcom/facebook/react/bridge/WritableMap;)V

    .line 254
    iput-wide v1, p0, Lcom/bluezone/services/RNBackgroundActionsTask;->streakPrevTime:J

    .line 256
    :cond_2
    sput v0, Lcom/bluezone/services/RNBackgroundActionsTask;->PREVIOUS_STATE:I

    goto :goto_0

    .line 257
    :cond_3
    iget-wide v0, v0, Lcom/bluezone/model/Accelerometer;->R:D

    cmpg-double p1, v0, v3

    if-gez p1, :cond_4

    const/4 p1, 0x0

    .line 258
    sput p1, Lcom/bluezone/services/RNBackgroundActionsTask;->PREVIOUS_STATE:I

    :cond_4
    :goto_0
    return-void
.end method

.method private createNotificationChannel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 177
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x2

    const-string v2, "CHANNEL_HEALTH_BLUEZONE"

    invoke-direct {v0, v2, p1, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 178
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 179
    const-class p1, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Lcom/bluezone/services/RNBackgroundActionsTask;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 180
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private emitValue(Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2

    .line 280
    invoke-virtual {p0}, Lcom/bluezone/services/RNBackgroundActionsTask;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 281
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v1, "EMIT_EVENT_STEP"

    .line 282
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private lowPassFilter([F[F)[F
    .locals 4

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 267
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 268
    aget v1, p2, v0

    aget v2, p1, v0

    aget v3, p2, v0

    sub-float/2addr v2, v3

    const v3, 0x3dcccccd    # 0.1f

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected getTaskConfig(Landroid/content/Intent;)Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;
    .locals 7

    .line 123
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 125
    new-instance v6, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    const-string/jumbo v0, "taskName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/react/bridge/Arguments;->fromBundle(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;JZ)V

    return-object v6

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 275
    invoke-super {p0}, Lcom/facebook/react/HeadlessJsTaskService;->onDestroy()V

    .line 276
    iget-object v0, p0, Lcom/bluezone/services/RNBackgroundActionsTask;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 186
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 187
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/16 v4, 0x13

    if-ne v3, v4, :cond_5

    .line 188
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 191
    iget-object v6, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    float-to-int v6, v6

    .line 192
    iget v7, v0, Lcom/bluezone/services/RNBackgroundActionsTask;->lastStepCounter:I

    const-string/jumbo v8, "totalStep"

    if-nez v7, :cond_0

    if-eqz v6, :cond_0

    .line 193
    iput v6, v0, Lcom/bluezone/services/RNBackgroundActionsTask;->lastStepCounter:I

    .line 194
    iput-wide v4, v0, Lcom/bluezone/services/RNBackgroundActionsTask;->lastUpdateTime:J

    int-to-double v1, v6

    .line 195
    invoke-interface {v3, v8, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 196
    invoke-direct {v0, v3}, Lcom/bluezone/services/RNBackgroundActionsTask;->emitValue(Lcom/facebook/react/bridge/WritableMap;)V

    return-void

    .line 199
    :cond_0
    iget v7, v0, Lcom/bluezone/services/RNBackgroundActionsTask;->lastStepCounter:I

    if-eq v6, v7, :cond_4

    .line 200
    iget-wide v9, v0, Lcom/bluezone/services/RNBackgroundActionsTask;->lastUpdateTime:J

    sub-long v9, v4, v9

    const-wide/16 v11, 0xbb8

    const-string/jumbo v13, "startTime"

    const-string/jumbo v14, "stepCounter"

    const-string v15, "endTime"

    const-wide v16, 0x408f400000000000L    # 1000.0

    cmp-long v18, v9, v11

    if-ltz v18, :cond_2

    long-to-double v9, v4

    .line 201
    invoke-interface {v3, v15, v9, v10}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 202
    iget v7, v0, Lcom/bluezone/services/RNBackgroundActionsTask;->lastStepCounter:I

    sub-int v7, v6, v7

    int-to-double v11, v7

    invoke-interface {v3, v14, v11, v12}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    int-to-double v11, v6

    .line 203
    invoke-interface {v3, v8, v11, v12}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 204
    iget v7, v0, Lcom/bluezone/services/RNBackgroundActionsTask;->lastStepCounter:I

    sub-int v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v7, v7

    const-wide v11, 0x3ffccccccccccccdL    # 1.8

    div-double/2addr v7, v11

    mul-double v7, v7, v16

    cmpg-double v11, v7, v16

    if-gez v11, :cond_1

    goto :goto_0

    :cond_1
    move-wide/from16 v16, v7

    :goto_0
    sub-double v9, v9, v16

    .line 209
    invoke-interface {v3, v13, v9, v10}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_2

    :cond_2
    sub-int v7, v6, v7

    int-to-double v9, v7

    cmpg-double v7, v9, v16

    if-gez v7, :cond_3

    goto :goto_1

    :cond_3
    move-wide/from16 v16, v9

    :goto_1
    long-to-double v9, v4

    sub-double v11, v9, v16

    .line 216
    invoke-interface {v3, v13, v11, v12}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 217
    invoke-interface {v3, v15, v9, v10}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 218
    iget v7, v0, Lcom/bluezone/services/RNBackgroundActionsTask;->lastStepCounter:I

    sub-int v7, v6, v7

    int-to-double v9, v7

    invoke-interface {v3, v14, v9, v10}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    int-to-double v9, v6

    .line 219
    invoke-interface {v3, v8, v9, v10}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 221
    :goto_2
    invoke-direct {v0, v3}, Lcom/bluezone/services/RNBackgroundActionsTask;->emitValue(Lcom/facebook/react/bridge/WritableMap;)V

    .line 223
    :cond_4
    iput v6, v0, Lcom/bluezone/services/RNBackgroundActionsTask;->lastStepCounter:I

    .line 224
    iput-wide v4, v0, Lcom/bluezone/services/RNBackgroundActionsTask;->lastUpdateTime:J

    .line 227
    :cond_5
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 228
    invoke-direct/range {p0 .. p1}, Lcom/bluezone/services/RNBackgroundActionsTask;->calculationStepAccelerometer(Landroid/hardware/SensorEvent;)V

    :cond_6
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    .line 133
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/bluezone/services/RNBackgroundActionsTask;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 139
    new-instance v2, Lcom/bluezone/services/BackgroundTaskOptions;

    invoke-direct {v2, v0}, Lcom/bluezone/services/BackgroundTaskOptions;-><init>(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {v2}, Lcom/bluezone/services/BackgroundTaskOptions;->getTaskTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/bluezone/services/BackgroundTaskOptions;->getTaskDesc()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/bluezone/services/RNBackgroundActionsTask;->createNotificationChannel(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/bluezone/services/RNBackgroundActionsTask;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v0, v2}, Lcom/bluezone/services/RNBackgroundActionsTask;->buildNotification(Lcom/facebook/react/bridge/ReactContext;Lcom/bluezone/services/BackgroundTaskOptions;)Landroid/app/Notification;

    move-result-object v0

    const v2, 0x16b23

    .line 143
    invoke-virtual {p0, v2, v0}, Lcom/bluezone/services/RNBackgroundActionsTask;->startForeground(ILandroid/app/Notification;)V

    const-string v0, "sensor"

    .line 147
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/bluezone/services/RNBackgroundActionsTask;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x13

    .line 149
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/bluezone/services/RNBackgroundActionsTask;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string v0, "StepCounter"

    const-string v4, "sensorStepCounter khong support"

    .line 155
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/bluezone/services/RNBackgroundActionsTask;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v2, 0x0

    .line 161
    :goto_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    xor-int/lit8 v4, v2, 0x1

    const-string v5, "EMIT_IS_SUPPORT"

    .line 162
    invoke-interface {v0, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    invoke-virtual {p0}, Lcom/bluezone/services/RNBackgroundActionsTask;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v4

    const-class v5, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 164
    invoke-virtual {v4, v5}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v5, "EMIT_EVENT_STEP"

    .line 165
    invoke-interface {v4, v5, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v2, :cond_1

    .line 168
    iget-object v0, p0, Lcom/bluezone/services/RNBackgroundActionsTask;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 171
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/HeadlessJsTaskService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    .line 135
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Extras cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
