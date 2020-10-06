.class final Lcom/google/common/util/concurrent/Futures$4;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/google/common/util/concurrent/FutureCallback;

.field final synthetic val$future:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V
    .locals 0

    .line 1116
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$4;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$4;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1121
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$4;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1131
    .local v0, "value":Ljava/lang/Object;, "TV;"
    nop

    .line 1132
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$4;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/FutureCallback;->onSuccess(Ljava/lang/Object;)V

    .line 1133
    return-void

    .line 1128
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v1

    .line 1129
    .restart local v0    # "value":Ljava/lang/Object;, "TV;"
    .local v1, "e":Ljava/lang/Error;
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$4;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {v2, v1}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 1130
    return-void

    .line 1125
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    .end local v1    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v1

    .line 1126
    .restart local v0    # "value":Ljava/lang/Object;, "TV;"
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$4;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {v2, v1}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 1127
    return-void

    .line 1122
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 1123
    .restart local v0    # "value":Ljava/lang/Object;, "TV;"
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$4;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 1124
    return-void
.end method
