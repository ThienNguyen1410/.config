.class public Lcom/bluezone/MyStepsCounter;
.super Ljava/lang/Object;
.source "MyStepsCounter.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final EVENT_STEP_CHANGE:Ljava/lang/String; = "EVENT_STEP_CHANGE"

.field private static final TAG:Ljava/lang/String; = "StepCounter"


# instance fields
.field private delay:I

.field private isTypeCounter:Z

.field private lastUpdate:J

.field private mReactContext:Lcom/facebook/react/bridge/ReactContext;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStepCounter:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 6

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/bluezone/MyStepsCounter;->lastUpdate:J

    .line 35
    iput-object p1, p0, Lcom/bluezone/MyStepsCounter;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    const-string v0, "StepCounter"

    const-string v1, "Nay vao step counter"

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 41
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x13

    if-lt v2, v5, :cond_0

    const-string v2, "android.hardware.sensor.stepcounter"

    .line 44
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.hardware.sensor.stepdetector"

    .line 45
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/bluezone/MyStepsCounter;->isTypeCounter:Z

    if-nez v2, :cond_1

    const-string v2, "android.hardware.sensor.accelerometer"

    .line 48
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bluezone/MyStepsCounter;->isTypeCounter:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 v3, 0x1

    .line 56
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasStepCounter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_3

    const-string v0, "sensor"

    .line 59
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/bluezone/MyStepsCounter;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_3
    return-void
.end method

.method private sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1

    .line 125
    const-class v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 126
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 127
    invoke-interface {p1, p2, p3}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    .line 90
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    const-string v1, "StepCounter"

    const-string v2, "onSensorChanged"

    .line 91
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0x13

    if-ne v2, v3, :cond_0

    .line 93
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 97
    iget-wide v4, p0, Lcom/bluezone/MyStepsCounter;->lastUpdate:J

    sub-long v4, v2, v4

    iget v6, p0, Lcom/bluezone/MyStepsCounter;->delay:I

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    .line 98
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data point:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v5

    float-to-double v4, p1

    const-string/jumbo p1, "steps"

    invoke-interface {v0, p1, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 102
    iget-object p1, p0, Lcom/bluezone/MyStepsCounter;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    const-string v1, "EVENT_STEP_CHANGE"

    invoke-direct {p0, p1, v1, v0}, Lcom/bluezone/MyStepsCounter;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 110
    iput-wide v2, p0, Lcom/bluezone/MyStepsCounter;->lastUpdate:J

    goto :goto_0

    .line 112
    :cond_0
    iget-boolean p1, p0, Lcom/bluezone/MyStepsCounter;->isTypeCounter:Z

    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    :cond_1
    :goto_0
    return-void
.end method

.method public start(I)I
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/bluezone/MyStepsCounter;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    .line 79
    iput p1, p0, Lcom/bluezone/MyStepsCounter;->delay:I

    .line 80
    iget-object p1, p0, Lcom/bluezone/MyStepsCounter;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/bluezone/MyStepsCounter;->mStepCounter:Landroid/hardware/Sensor;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/bluezone/MyStepsCounter;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, p1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method
