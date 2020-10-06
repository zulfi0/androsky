.class public Lcom/android/ld/functions;
.super Ljava/lang/Object;
.source "functions.java"


# instance fields
.field activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/ld/functions;->activity:Landroid/app/Activity;

    .line 25
    return-void
.end method


# virtual methods
.method public getScreenUp(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x680000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 48
    return-void
.end method

.method public hideAppIcon(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 52
    .local v0, "p":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/ld/MainActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v1, "componentName":Landroid/content/ComponentName;
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 54
    return-void
.end method

.method public jobScheduler(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/ld/jobScheduler;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .local v0, "componentName":Landroid/content/ComponentName;
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const/16 v2, 0x7b

    invoke-direct {v1, v2, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 31
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 32
    const-wide/32 v3, 0x493e0

    invoke-virtual {v1, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 35
    .local v1, "info":Landroid/app/job/JobInfo;
    const-string v3, "jobscheduler"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobScheduler;

    .line 36
    .local v3, "scheduler":Landroid/app/job/JobScheduler;
    invoke-virtual {v3, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v4

    .line 37
    .local v4, "resultCode":I
    const-string v5, "jobSchedulerClass"

    if-ne v4, v2, :cond_0

    .line 38
    const-string v2, "Job scheduled"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    :cond_0
    const-string v2, "Job scheduling failed"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_0
    return-void
.end method

.method public unHideAppIcon(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 58
    .local v0, "p":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/ld/MainActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v1, "componentName":Landroid/content/ComponentName;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 60
    return-void
.end method
