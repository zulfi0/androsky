.class abstract Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;
.super Lcom/google/common/util/concurrent/InterruptibleTask;
.source "CombinedFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CombinedFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CombinedFutureInterruptibleTask"
.end annotation


# instance fields
.field private final listenerExecutor:Ljava/util/concurrent/Executor;

.field final synthetic this$0:Lcom/google/common/util/concurrent/CombinedFuture;

.field volatile thrownByExecute:Z


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/CombinedFuture;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p2, "listenerExecutor"    # Ljava/util/concurrent/Executor;

    .line 101
    .local p0, "this":Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;, "Lcom/google/common/util/concurrent/CombinedFuture<TV;>.CombinedFutureInterruptibleTask;"
    iput-object p1, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/CombinedFuture;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;-><init>()V

    .line 99
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->thrownByExecute:Z

    .line 102
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->listenerExecutor:Ljava/util/concurrent/Executor;

    .line 103
    return-void
.end method


# virtual methods
.method final execute()V
    .locals 2

    .line 129
    .local p0, "this":Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;, "Lcom/google/common/util/concurrent/CombinedFuture<TV;>.CombinedFutureInterruptibleTask;"
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->listenerExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->thrownByExecute:Z

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/CombinedFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/CombinedFuture;->setException(Ljava/lang/Throwable;)Z

    .line 135
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :cond_0
    :goto_0
    return-void
.end method

.method final runInterruptibly()V
    .locals 3

    .line 107
    .local p0, "this":Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;, "Lcom/google/common/util/concurrent/CombinedFuture<TV;>.CombinedFutureInterruptibleTask;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->thrownByExecute:Z

    .line 109
    iget-object v1, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/CombinedFuture;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/CombinedFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->setValue()V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :goto_0
    goto :goto_1

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/CombinedFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/CombinedFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_1

    .line 114
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    iget-object v2, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/CombinedFuture;

    invoke-virtual {v2, v0}, Lcom/google/common/util/concurrent/CombinedFuture;->cancel(Z)Z

    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    goto :goto_0

    .line 112
    :catch_1
    move-exception v0

    .line 113
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    iget-object v1, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/CombinedFuture;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/CombinedFuture;->setException(Ljava/lang/Throwable;)Z

    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    goto :goto_0

    .line 120
    :cond_0
    :goto_1
    return-void
.end method

.method abstract setValue()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method final wasInterrupted()Z
    .locals 1

    .line 124
    .local p0, "this":Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;, "Lcom/google/common/util/concurrent/CombinedFuture<TV;>.CombinedFutureInterruptibleTask;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/CombinedFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/CombinedFuture;->wasInterrupted()Z

    move-result v0

    return v0
.end method
