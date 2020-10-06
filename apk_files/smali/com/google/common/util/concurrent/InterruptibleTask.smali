.class abstract Lcom/google/common/util/concurrent/InterruptibleTask;
.super Ljava/lang/Object;
.source "InterruptibleTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/InterruptibleTask$SynchronizedAtomicHelper;,
        Lcom/google/common/util/concurrent/InterruptibleTask$SafeAtomicHelper;,
        Lcom/google/common/util/concurrent/InterruptibleTask$AtomicHelper;
    }
.end annotation


# static fields
.field private static final ATOMIC_HELPER:Lcom/google/common/util/concurrent/InterruptibleTask$AtomicHelper;

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private volatile doneInterrupting:Z

.field private volatile runner:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 34
    const-class v0, Lcom/google/common/util/concurrent/InterruptibleTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/google/common/util/concurrent/InterruptibleTask;->log:Ljava/util/logging/Logger;

    .line 39
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/google/common/util/concurrent/InterruptibleTask$SafeAtomicHelper;

    const-class v3, Ljava/lang/Thread;

    const-string v4, "runner"

    invoke-static {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/common/util/concurrent/InterruptibleTask$SafeAtomicHelper;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 48
    .local v0, "helper":Lcom/google/common/util/concurrent/InterruptibleTask$AtomicHelper;
    goto :goto_0

    .line 41
    .end local v0    # "helper":Lcom/google/common/util/concurrent/InterruptibleTask$AtomicHelper;
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 46
    .local v0, "reflectionFailure":Ljava/lang/Throwable;
    .local v2, "helper":Lcom/google/common/util/concurrent/InterruptibleTask$AtomicHelper;
    sget-object v3, Lcom/google/common/util/concurrent/InterruptibleTask;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "SafeAtomicHelper is broken!"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    new-instance v3, Lcom/google/common/util/concurrent/InterruptibleTask$SynchronizedAtomicHelper;

    invoke-direct {v3, v1}, Lcom/google/common/util/concurrent/InterruptibleTask$SynchronizedAtomicHelper;-><init>(Lcom/google/common/util/concurrent/InterruptibleTask$1;)V

    move-object v1, v3

    move-object v0, v1

    .line 49
    .end local v2    # "helper":Lcom/google/common/util/concurrent/InterruptibleTask$AtomicHelper;
    .local v0, "helper":Lcom/google/common/util/concurrent/InterruptibleTask$AtomicHelper;
    :goto_0
    sput-object v0, Lcom/google/common/util/concurrent/InterruptibleTask;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/InterruptibleTask$AtomicHelper;

    .line 50
    .end local v0    # "helper":Lcom/google/common/util/concurrent/InterruptibleTask$AtomicHelper;
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method

.method static synthetic access$200(Lcom/google/common/util/concurrent/InterruptibleTask;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/InterruptibleTask;

    .line 25
    iget-object v0, p0, Lcom/google/common/util/concurrent/InterruptibleTask;->runner:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/common/util/concurrent/InterruptibleTask;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/InterruptibleTask;
    .param p1, "x1"    # Ljava/lang/Thread;

    .line 25
    iput-object p1, p0, Lcom/google/common/util/concurrent/InterruptibleTask;->runner:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method final interruptTask()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/google/common/util/concurrent/InterruptibleTask;->runner:Ljava/lang/Thread;

    .line 83
    .local v0, "currentRunner":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 86
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/common/util/concurrent/InterruptibleTask;->doneInterrupting:Z

    .line 87
    return-void
.end method

.method public final run()V
    .locals 3

    .line 54
    sget-object v0, Lcom/google/common/util/concurrent/InterruptibleTask;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/InterruptibleTask$AtomicHelper;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/google/common/util/concurrent/InterruptibleTask$AtomicHelper;->compareAndSetRunner(Lcom/google/common/util/concurrent/InterruptibleTask;Ljava/lang/Thread;Ljava/lang/Thread;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    return-void

    .line 58
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->runInterruptibly()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->wasInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :goto_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/InterruptibleTask;->doneInterrupting:Z

    if-nez v0, :cond_1

    .line 68
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 72
    :cond_1
    return-void

    .line 60
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->wasInterrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    :goto_1
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/InterruptibleTask;->doneInterrupting:Z

    if-nez v1, :cond_2

    .line 68
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    :cond_2
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method abstract runInterruptibly()V
.end method

.method abstract wasInterrupted()Z
.end method
