.class public Lcom/android/ld/MainBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MainBroadcastReceiver.java"


# static fields
.field static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-string v0, "broadcastReceiverClass"

    sput-object v0, Lcom/android/ld/MainBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isMyServiceRunning(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 34
    .local v0, "manager":Landroid/app/ActivityManager;
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 35
    .local v2, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    const-class v3, Lcom/android/ld/MainService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    const/4 v1, 0x1

    return v1

    .line 38
    .end local v2    # "service":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_0
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/ld/MainService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 20
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    sget-object v0, Lcom/android/ld/MainBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Received..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-direct {p0, p1}, Lcom/android/ld/MainBroadcastReceiver;->isMyServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    sget-object v0, Lcom/android/ld/MainBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Yeah, it\'s running, no need to restart service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 27
    :cond_1
    sget-object v0, Lcom/android/ld/MainBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Not running, restarting service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/ld/MainService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .local v0, "intent1":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 31
    .end local v0    # "intent1":Landroid/content/Intent;
    :goto_0
    return-void
.end method
