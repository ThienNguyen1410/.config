.class Lcom/bluezone/services/BackgroundActionsModule$2;
.super Ljava/lang/Object;
.source "BackgroundActionsModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bluezone/services/BackgroundActionsModule;->startSchedule(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bluezone/services/BackgroundActionsModule;


# direct methods
.method constructor <init>(Lcom/bluezone/services/BackgroundActionsModule;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/bluezone/services/BackgroundActionsModule$2;->this$0:Lcom/bluezone/services/BackgroundActionsModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/bluezone/services/BackgroundActionsModule$2;->this$0:Lcom/bluezone/services/BackgroundActionsModule;

    invoke-static {v0}, Lcom/bluezone/services/BackgroundActionsModule;->access$100(Lcom/bluezone/services/BackgroundActionsModule;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    const-string v2, "EMIT_EVENT_TIME_SCHEDULE"

    invoke-static {v0, v1, v2}, Lcom/bluezone/services/BackgroundActionsModule;->access$200(Lcom/bluezone/services/BackgroundActionsModule;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;)V

    return-void
.end method
