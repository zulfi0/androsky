.class Lcom/android/ld/jobScheduler$1;
.super Ljava/lang/Object;
.source "jobScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ld/jobScheduler;->doBackgroundWork(Landroid/app/job/JobParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ld/jobScheduler;

.field final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/android/ld/jobScheduler;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ld/jobScheduler;

    .line 36
    iput-object p1, p0, Lcom/android/ld/jobScheduler$1;->this$0:Lcom/android/ld/jobScheduler;

    iput-object p2, p0, Lcom/android/ld/jobScheduler$1;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 39
    new-instance v0, Lcom/android/ld/catcher;

    iget-object v1, p0, Lcom/android/ld/jobScheduler$1;->this$0:Lcom/android/ld/jobScheduler;

    invoke-virtual {v1}, Lcom/android/ld/jobScheduler;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/ld/catcher;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/ld/catcher;->init()V

    .line 40
    const-string v0, "jobSchedulerClass"

    const-string v1, "Job finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/android/ld/jobScheduler$1;->this$0:Lcom/android/ld/jobScheduler;

    iget-object v1, p0, Lcom/android/ld/jobScheduler$1;->val$params:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/ld/jobScheduler;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 42
    return-void
.end method
