.class Lcom/bluezone/services/BackgroundActionsModule$3;
.super Ljava/lang/Object;
.source "BackgroundActionsModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bluezone/services/BackgroundActionsModule;->setTimeout(ID)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bluezone/services/BackgroundActionsModule;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/bluezone/services/BackgroundActionsModule;I)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/bluezone/services/BackgroundActionsModule$3;->this$0:Lcom/bluezone/services/BackgroundActionsModule;

    iput p2, p0, Lcom/bluezone/services/BackgroundActionsModule$3;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/bluezone/services/BackgroundActionsModule$3;->this$0:Lcom/bluezone/services/BackgroundActionsModule;

    invoke-static {v0}, Lcom/bluezone/services/BackgroundActionsModule;->access$300(Lcom/bluezone/services/BackgroundActionsModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/bluezone/services/BackgroundActionsModule$3;->this$0:Lcom/bluezone/services/BackgroundActionsModule;

    invoke-static {v0}, Lcom/bluezone/services/BackgroundActionsModule;->access$400(Lcom/bluezone/services/BackgroundActionsModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 187
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    iget v1, p0, Lcom/bluezone/services/BackgroundActionsModule$3;->val$id:I

    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EMIT_EVENT_TIMEOUT"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
