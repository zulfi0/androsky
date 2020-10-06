.class final Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;
.super Ljava/lang/Object;
.source "SerializingExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/SerializingExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueueWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/SerializingExecutor;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/SerializingExecutor;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/SerializingExecutor;Lcom/google/common/util/concurrent/SerializingExecutor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/util/concurrent/SerializingExecutor;
    .param p2, "x1"    # Lcom/google/common/util/concurrent/SerializingExecutor$1;

    .line 157
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;-><init>(Lcom/google/common/util/concurrent/SerializingExecutor;)V

    return-void
.end method

.method private workOnQueue()V
    .locals 6

    .line 175
    :goto_0
    const/4 v0, 0x0

    .line 176
    .local v0, "task":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-static {v1}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$100(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-static {v2}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$300(Lcom/google/common/util/concurrent/SerializingExecutor;)I

    move-result v2

    if-nez v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-static {v2}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$400(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/util/Deque;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    move-object v0, v2

    .line 181
    :cond_0
    if-nez v0, :cond_1

    .line 182
    iget-object v2, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$202(Lcom/google/common/util/concurrent/SerializingExecutor;Z)Z

    .line 183
    monitor-exit v1

    return-void

    .line 185
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :try_start_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 190
    goto :goto_1

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$500()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while executing runnable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    .end local v0    # "task":Ljava/lang/Runnable;
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_1
    goto :goto_0

    .line 185
    .restart local v0    # "task":Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 161
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->workOnQueue()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    nop

    .line 171
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Error;
    iget-object v1, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-static {v1}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$100(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 164
    :try_start_1
    iget-object v2, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$202(Lcom/google/common/util/concurrent/SerializingExecutor;Z)Z

    .line 165
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    throw v0

    .line 165
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
