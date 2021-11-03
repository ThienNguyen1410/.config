.class public Lcom/bluezone/BootStartReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootStartReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 29
    :try_start_0
    invoke-static {p1}, Lcom/scan/preference/AppPreferenceManager;->getInstance(Landroid/content/Context;)Lcom/scan/preference/AppPreferenceManager;

    move-result-object p2

    const-string v0, "auto_start_trace_covid_service"

    const/4 v1, 0x1

    .line 30
    invoke-virtual {p2, v0, v1}, Lcom/scan/preference/AppPreferenceManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 34
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/scan/ServiceTraceCovid;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 37
    invoke-virtual {p1, p2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
