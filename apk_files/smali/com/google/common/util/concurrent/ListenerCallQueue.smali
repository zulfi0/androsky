.class final Lcom/google/common/util/concurrent/ListenerCallQueue;
.super Ljava/lang/Object;
.source "ListenerCallQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private isThreadScheduled:Z

.field private final listener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field private final waitQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback<",
            "T",
            "L;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/google/common/util/concurrent/ListenerCallQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/ListenerCallQueue;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/google/common/util/concurrent/ListenerCallQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue<TL;>;"
    .local p1, "listener":Ljava/lang/Object;, "TL;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lcom/google/common/collect/Queues;->newArrayDeque()Ljava/util/ArrayDeque;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->waitQueue:Ljava/util/Queue;

    .line 67
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->listener:Ljava/lang/Object;

    .line 68
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->executor:Ljava/util/concurrent/Executor;

    .line 69
    return-void
.end method


# virtual methods
.method declared-synchronized add(Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback<",
            "T",
            "L;",
            ">;)V"
        }
    .end annotation

    .local p0, "this":Lcom/google/common/util/concurrent/ListenerCallQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue<TL;>;"
    .local p1, "callback":Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;, "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback<TL;>;"
    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->waitQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 72
    .end local p0    # "this":Lcom/google/common/util/concurrent/ListenerCallQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue<TL;>;"
    .end local p1    # "callback":Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;, "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback<TL;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method execute()V
    .locals 6

    .line 78
    .local p0, "this":Lcom/google/common/util/concurrent/ListenerCallQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue<TL;>;"
    const/4 v0, 0x0

    .line 79
    .local v0, "scheduleTaskRunner":Z
    monitor-enter p0

    .line 80
    :try_start_0
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->isThreadScheduled:Z

    if-nez v1, :cond_0

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->isThreadScheduled:Z

    .line 82
    const/4 v0, 0x1

    .line 84
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    if-eqz v0, :cond_1

    .line 87
    :try_start_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/RuntimeException;
    monitor-enter p0

    .line 91
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->isThreadScheduled:Z

    .line 92
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    sget-object v2, Lcom/google/common/util/concurrent/ListenerCallQueue;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while running callbacks for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->listener:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    throw v1

    .line 92
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 101
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void

    .line 84
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public run()V
    .locals 8

    .line 105
    .local p0, "this":Lcom/google/common/util/concurrent/ListenerCallQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue<TL;>;"
    const/4 v0, 0x1

    .local v0, "stillRunning":Z
    const/4 v1, 0x0

    .line 109
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 110
    :try_start_1
    iget-boolean v3, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->isThreadScheduled:Z

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 111
    iget-object v3, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->waitQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v3

    .line 112
    .local v1, "nextToRun":Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;, "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback<TL;>;"
    if-nez v1, :cond_1

    .line 113
    :try_start_2
    iput-boolean v2, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->isThreadScheduled:Z

    .line 114
    const/4 v0, 0x0

    .line 115
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 131
    .end local v1    # "nextToRun":Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;, "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback<TL;>;"
    if-eqz v0, :cond_0

    .line 134
    monitor-enter p0

    .line 135
    :try_start_3
    iput-boolean v2, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->isThreadScheduled:Z

    .line 136
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 139
    :cond_0
    :goto_1
    return-void

    .line 117
    .restart local v1    # "nextToRun":Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;, "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback<TL;>;"
    :cond_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 121
    :try_start_5
    iget-object v3, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->listener:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;->call(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 128
    goto :goto_2

    .line 122
    :catch_0
    move-exception v3

    .line 124
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_6
    sget-object v4, Lcom/google/common/util/concurrent/ListenerCallQueue;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while executing callback: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->listener:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;->access$000(Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 129
    .end local v1    # "nextToRun":Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;, "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback<TL;>;"
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_2
    goto :goto_0

    .line 117
    :catchall_1
    move-exception v3

    .restart local v1    # "nextToRun":Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;, "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback<TL;>;"
    :goto_3
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v0    # "stillRunning":Z
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .restart local v0    # "stillRunning":Z
    :catchall_2
    move-exception v3

    goto :goto_3

    .line 131
    .end local v1    # "nextToRun":Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;, "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback<TL;>;"
    :catchall_3
    move-exception v1

    if-eqz v0, :cond_2

    .line 134
    monitor-enter p0

    .line 135
    :try_start_9
    iput-boolean v2, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->isThreadScheduled:Z

    .line 136
    monitor-exit p0

    goto :goto_4

    :catchall_4
    move-exception v1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v1

    :cond_2
    :goto_4
    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method
