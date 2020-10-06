.class public Lcom/android/ld/MainService;
.super Landroid/app/Service;
.source "MainService.java"


# static fields
.field static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-string v0, "MainServiceClass"

    sput-object v0, Lcom/android/ld/MainService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .line 27
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 28
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 21
    sget-object v0, Lcom/android/ld/MainService;->TAG:Ljava/lang/String;

    const-string v1, "in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v0, Lcom/android/ld/catcher;

    invoke-virtual {p0}, Lcom/android/ld/MainService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/ld/catcher;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/ld/catcher;->init()V

    .line 23
    const/4 v0, 0x1

    return v0
.end method
