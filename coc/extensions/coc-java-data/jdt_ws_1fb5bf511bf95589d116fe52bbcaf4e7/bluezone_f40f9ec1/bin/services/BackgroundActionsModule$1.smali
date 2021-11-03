.class Lcom/bluezone/services/BackgroundActionsModule$1;
.super Ljava/lang/Object;
.source "BackgroundActionsModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluezone/services/BackgroundActionsModule;
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

    .line 47
    iput-object p1, p0, Lcom/bluezone/services/BackgroundActionsModule$1;->this$0:Lcom/bluezone/services/BackgroundActionsModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHostDestroy()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/bluezone/services/BackgroundActionsModule$1;->this$0:Lcom/bluezone/services/BackgroundActionsModule;

    invoke-static {v0}, Lcom/bluezone/services/BackgroundActionsModule;->access$000(Lcom/bluezone/services/BackgroundActionsModule;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bluezone/services/BackgroundActionsModule$1;->this$0:Lcom/bluezone/services/BackgroundActionsModule;

    invoke-static {v0}, Lcom/bluezone/services/BackgroundActionsModule;->access$000(Lcom/bluezone/services/BackgroundActionsModule;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public onHostPause()V
    .locals 0

    return-void
.end method

.method public onHostResume()V
    .locals 0

    return-void
.end method
