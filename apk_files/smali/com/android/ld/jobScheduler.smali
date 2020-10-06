.class public Lcom/android/ld/jobScheduler;
.super Landroid/app/job/JobService;
.source "jobScheduler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "jobSchedulerClass"


# instance fields
.field private context:Landroid/content/Context;

.field private jobCancelled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ld/jobScheduler;->jobCancelled:Z

    return-void
.end method

.method private doBackgroundWork(Landroid/app/job/JobParameters;)V
    .locals 2
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 36
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/ld/jobScheduler$1;

    invoke-direct {v1, p0, p1}, Lcom/android/ld/jobScheduler$1;-><init>(Lcom/android/ld/jobScheduler;Landroid/app/job/JobParameters;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 43
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 44
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .line 22
    const-string v0, "jobSchedulerClass"

    const-string v1, "Job started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-direct {p0, p1}, Lcom/android/ld/jobScheduler;->doBackgroundWork(Landroid/app/job/JobParameters;)V

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .line 29
    const-string v0, "jobSchedulerClass"

    const-string v1, "Job cancelled before completion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ld/jobScheduler;->jobCancelled:Z

    .line 31
    return v0
.end method
