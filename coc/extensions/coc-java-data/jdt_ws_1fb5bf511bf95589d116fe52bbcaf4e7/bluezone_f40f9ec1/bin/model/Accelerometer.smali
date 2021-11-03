.class public Lcom/bluezone/model/Accelerometer;
.super Ljava/lang/Object;
.source "Accelerometer.java"


# instance fields
.field public R:D

.field public X:F

.field public Y:F

.field public Z:F


# direct methods
.method public constructor <init>([F)V
    .locals 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    aget v0, p1, v0

    iput v0, p0, Lcom/bluezone/model/Accelerometer;->X:F

    const/4 v1, 0x1

    .line 12
    aget v1, p1, v1

    iput v1, p0, Lcom/bluezone/model/Accelerometer;->Y:F

    const/4 v2, 0x2

    .line 13
    aget p1, p1, v2

    iput p1, p0, Lcom/bluezone/model/Accelerometer;->Z:F

    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    mul-float p1, p1, p1

    add-float/2addr v0, p1

    float-to-double v0, v0

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bluezone/model/Accelerometer;->R:D

    return-void
.end method


# virtual methods
.method public toNumber()Ljava/lang/Number;
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/bluezone/model/Accelerometer;->R:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
