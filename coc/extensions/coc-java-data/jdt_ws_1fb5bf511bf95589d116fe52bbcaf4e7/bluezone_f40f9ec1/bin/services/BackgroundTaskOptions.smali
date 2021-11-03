.class public final Lcom/bluezone/services/BackgroundTaskOptions;
.super Ljava/lang/Object;
.source "BackgroundTaskOptions.java"


# instance fields
.field private final extras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/bluezone/services/BackgroundTaskOptions;->extras:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 5

    const-string v0, "color"

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p2}, Lcom/facebook/react/bridge/Arguments;->toBundle(Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/bluezone/services/BackgroundTaskOptions;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_5

    :try_start_0
    const-string/jumbo v1, "taskTitle"

    .line 29
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v1, :cond_4

    :try_start_1
    const-string/jumbo v1, "taskDesc"

    .line 36
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v1, :cond_3

    :try_start_2
    const-string/jumbo v1, "taskIcon"

    .line 43
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "name"

    .line 46
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "type"

    .line 47
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string v4, "package"

    .line 50
    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 55
    :catch_0
    :try_start_4
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 57
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 58
    iget-object v1, p0, Lcom/bluezone/services/BackgroundTaskOptions;->extras:Landroid/os/Bundle;

    const-string v2, "iconInt"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz p1, :cond_1

    .line 66
    :try_start_5
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    iget-object p2, p0, Lcom/bluezone/services/BackgroundTaskOptions;->extras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 69
    :catch_1
    iget-object p1, p0, Lcom/bluezone/services/BackgroundTaskOptions;->extras:Landroid/os/Bundle;

    const-string p2, "#ffffff"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    return-void

    .line 60
    :cond_1
    :try_start_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 45
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 62
    :catch_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Task icon not found"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_3
    :try_start_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 39
    :catch_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Task description cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_4
    :try_start_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 32
    :catch_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Task title cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Could not convert arguments to bundle"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCurrentSteps()D
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/bluezone/services/BackgroundTaskOptions;->extras:Landroid/os/Bundle;

    const-string v1, "currentStep"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/bluezone/services/BackgroundTaskOptions;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIconInt()I
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/bluezone/services/BackgroundTaskOptions;->extras:Landroid/os/Bundle;

    const-string v1, "iconInt"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLinkingURI()Ljava/lang/String;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/bluezone/services/BackgroundTaskOptions;->extras:Landroid/os/Bundle;

    const-string v1, "linkingURI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgressBar()Landroid/os/Bundle;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/bluezone/services/BackgroundTaskOptions;->extras:Landroid/os/Bundle;

    const-string v1, "progressBar"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getStepsTarget()D
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/bluezone/services/BackgroundTaskOptions;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "targetStep"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTaskDesc()Ljava/lang/String;
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/bluezone/services/BackgroundTaskOptions;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "taskDesc"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaskTitle()Ljava/lang/String;
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/bluezone/services/BackgroundTaskOptions;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "taskTitle"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getvalueTarget()D
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/bluezone/services/BackgroundTaskOptions;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "valueTarget"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public isShowStep()Z
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/bluezone/services/BackgroundTaskOptions;->extras:Landroid/os/Bundle;

    const-string v1, "isShowStep"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
