.class public final Lcom/google/common/util/concurrent/Futures;
.super Lcom/google/common/util/concurrent/GwtFuturesCatchingSpecialization;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Futures$MappingCheckedFuture;,
        Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;,
        Lcom/google/common/util/concurrent/Futures$FutureCombiner;
    }
.end annotation


# static fields
.field private static final DEREFERENCER:Lcom/google/common/util/concurrent/AsyncFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/AsyncFunction<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 731
    new-instance v0, Lcom/google/common/util/concurrent/Futures$2;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Futures$2;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/Futures;->DEREFERENCER:Lcom/google/common/util/concurrent/AsyncFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/google/common/util/concurrent/GwtFuturesCatchingSpecialization;-><init>()V

    return-void
.end method

.method public static addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;",
            "Lcom/google/common/util/concurrent/FutureCallback<",
            "-TV;>;)V"
        }
    .end annotation

    .line 1073
    .local p0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    .local p1, "callback":Lcom/google/common/util/concurrent/FutureCallback;, "Lcom/google/common/util/concurrent/FutureCallback<-TV;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 1074
    return-void
.end method

.method public static addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;",
            "Lcom/google/common/util/concurrent/FutureCallback<",
            "-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1114
    .local p0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    .local p1, "callback":Lcom/google/common/util/concurrent/FutureCallback;, "Lcom/google/common/util/concurrent/FutureCallback<-TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    new-instance v0, Lcom/google/common/util/concurrent/Futures$4;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/Futures$4;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 1135
    .local v0, "callbackListener":Ljava/lang/Runnable;
    invoke-interface {p0, v0, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1136
    return-void
.end method

.method public static allAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .line 774
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    new-instance v0, Lcom/google/common/util/concurrent/CollectionFuture$ListFuture;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/CollectionFuture$ListFuture;-><init>(Lcom/google/common/collect/ImmutableCollection;Z)V

    return-object v0
.end method

.method public static varargs allAsList([Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 755
    .local p0, "futures":[Lcom/google/common/util/concurrent/ListenableFuture;, "[Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    new-instance v0, Lcom/google/common/util/concurrent/CollectionFuture$ListFuture;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/CollectionFuture$ListFuture;-><init>(Lcom/google/common/collect/ImmutableCollection;Z)V

    return-object v0
.end method

.method public static catching(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/common/base/Function<",
            "-TX;+TV;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 245
    .local p0, "input":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p2, "fallback":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TX;+TV;>;"
    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->create(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static catching(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/common/base/Function<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 296
    .local p0, "input":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p2, "fallback":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TX;+TV;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->create(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static catchingAsync(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/common/util/concurrent/AsyncFunction<",
            "-TX;+TV;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 366
    .local p0, "input":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p2, "fallback":Lcom/google/common/util/concurrent/AsyncFunction;, "Lcom/google/common/util/concurrent/AsyncFunction<-TX;+TV;>;"
    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->create(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static catchingAsync(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/common/util/concurrent/AsyncFunction<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 438
    .local p0, "input":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p2, "fallback":Lcom/google/common/util/concurrent/AsyncFunction;, "Lcom/google/common/util/concurrent/AsyncFunction<-TX;+TV;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->create(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static dereference(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 725
    .local p0, "nested":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    sget-object v0, Lcom/google/common/util/concurrent/Futures;->DEREFERENCER:Lcom/google/common/util/concurrent/AsyncFunction;

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static getChecked(Ljava/util/concurrent/Future;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/lang/Class<",
            "TX;>;)TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1219
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    .local p1, "exceptionClass":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/FuturesGetChecked;->getChecked(Ljava/util/concurrent/Future;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getChecked(Ljava/util/concurrent/Future;Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/lang/Class<",
            "TX;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1268
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    .local p1, "exceptionClass":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/util/concurrent/FuturesGetChecked;->getChecked(Ljava/util/concurrent/Future;Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1170
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const-string v1, "Future was expected to be done: %s"

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 1171
    invoke-static {p0}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 1307
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1310
    :catch_0
    move-exception v0

    .line 1311
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->wrapAndThrowUnchecked(Ljava/lang/Throwable;)V

    .line 1312
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static immediateCancelledFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 181
    new-instance v0, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateCancelledFuture;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateCancelledFuture;-><init>()V

    return-object v0
.end method

.method public static immediateCheckedFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/CheckedFuture;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(TV;)",
            "Lcom/google/common/util/concurrent/CheckedFuture<",
            "TV;TX;>;"
        }
    .end annotation

    .line 159
    .local p0, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static immediateFailedCheckedFuture(Ljava/lang/Exception;)Lcom/google/common/util/concurrent/CheckedFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(TX;)",
            "Lcom/google/common/util/concurrent/CheckedFuture<",
            "TV;TX;>;"
        }
    .end annotation

    .line 195
    .local p0, "exception":Ljava/lang/Exception;, "TX;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance v0, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedCheckedFuture;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedCheckedFuture;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 170
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v0, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedFuture;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedFuture;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 140
    .local p0, "value":Ljava/lang/Object;, "TV;"
    if-nez p0, :cond_0

    .line 143
    sget-object v0, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;->NULL:Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;

    .line 144
    .local v0, "typedNull":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    return-object v0

    .line 146
    .end local v0    # "typedNull":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static inCompletionOrder(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TT;>;>;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;>;"
        }
    .end annotation

    .line 1010
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/common/util/concurrent/ListenableFuture<+TT;>;>;"
    invoke-static {}, Lcom/google/common/collect/Queues;->newConcurrentLinkedQueue()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    .line 1011
    .local v0, "delegates":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/google/common/util/concurrent/SettableFuture<TT;>;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 1022
    .local v1, "listBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/common/util/concurrent/ListenableFuture<TT;>;>;"
    new-instance v2, Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/common/util/concurrent/SerializingExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    .line 1023
    .local v2, "executor":Lcom/google/common/util/concurrent/SerializingExecutor;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1024
    .local v4, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TT;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v5

    .line 1026
    .local v5, "delegate":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<TT;>;"
    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 1027
    new-instance v6, Lcom/google/common/util/concurrent/Futures$3;

    invoke-direct {v6, v0, v4}, Lcom/google/common/util/concurrent/Futures$3;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-interface {v4, v6, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1035
    invoke-virtual {v1, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 1036
    .end local v4    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TT;>;"
    .end local v5    # "delegate":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<TT;>;"
    goto :goto_0

    .line 1037
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    return-object v3
.end method

.method public static lazyTransform(Ljava/util/concurrent/Future;Lcom/google/common/base/Function;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TI;>;",
            "Lcom/google/common/base/Function<",
            "-TI;+TO;>;)",
            "Ljava/util/concurrent/Future<",
            "TO;>;"
        }
    .end annotation

    .line 658
    .local p0, "input":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TI;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TI;+TO;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    new-instance v0, Lcom/google/common/util/concurrent/Futures$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/Futures$1;-><init>(Ljava/util/concurrent/Future;Lcom/google/common/base/Function;)V

    return-object v0
.end method

.method public static makeChecked(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/CheckedFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;",
            "Lcom/google/common/base/Function<",
            "-",
            "Ljava/lang/Exception;",
            "TX;>;)",
            "Lcom/google/common/util/concurrent/CheckedFuture<",
            "TV;TX;>;"
        }
    .end annotation

    .line 131
    .local p0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    .local p1, "mapper":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-Ljava/lang/Exception;TX;>;"
    new-instance v0, Lcom/google/common/util/concurrent/Futures$MappingCheckedFuture;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {v0, v1, p1}, Lcom/google/common/util/concurrent/Futures$MappingCheckedFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)V

    return-object v0
.end method

.method public static nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 931
    .local p0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    new-instance v0, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-object v0
.end method

.method public static successfulAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .line 989
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    new-instance v0, Lcom/google/common/util/concurrent/CollectionFuture$ListFuture;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/CollectionFuture$ListFuture;-><init>(Lcom/google/common/collect/ImmutableCollection;Z)V

    return-object v0
.end method

.method public static varargs successfulAsList([Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 970
    .local p0, "futures":[Lcom/google/common/util/concurrent/ListenableFuture;, "[Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    new-instance v0, Lcom/google/common/util/concurrent/CollectionFuture$ListFuture;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/CollectionFuture$ListFuture;-><init>(Lcom/google/common/collect/ImmutableCollection;Z)V

    return-object v0
.end method

.method public static transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TI;>;",
            "Lcom/google/common/base/Function<",
            "-TI;+TO;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TO;>;"
        }
    .end annotation

    .line 591
    .local p0, "input":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TI;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TI;+TO;>;"
    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->create(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TI;>;",
            "Lcom/google/common/base/Function<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TO;>;"
        }
    .end annotation

    .line 632
    .local p0, "input":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TI;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TI;+TO;>;"
    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->create(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TI;>;",
            "Lcom/google/common/util/concurrent/AsyncFunction<",
            "-TI;+TO;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TO;>;"
        }
    .end annotation

    .line 504
    .local p0, "input":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TI;>;"
    .local p1, "function":Lcom/google/common/util/concurrent/AsyncFunction;, "Lcom/google/common/util/concurrent/AsyncFunction<-TI;+TO;>;"
    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->create(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TI;>;",
            "Lcom/google/common/util/concurrent/AsyncFunction<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TO;>;"
        }
    .end annotation

    .line 551
    .local p0, "input":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TI;>;"
    .local p1, "function":Lcom/google/common/util/concurrent/AsyncFunction;, "Lcom/google/common/util/concurrent/AsyncFunction<-TI;+TO;>;"
    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->create(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static whenAllComplete(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/Futures$FutureCombiner;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;)",
            "Lcom/google/common/util/concurrent/Futures$FutureCombiner<",
            "TV;>;"
        }
    .end annotation

    .line 796
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    new-instance v0, Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;-><init>(ZLcom/google/common/collect/ImmutableList;Lcom/google/common/util/concurrent/Futures$1;)V

    return-object v0
.end method

.method public static varargs whenAllComplete([Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/Futures$FutureCombiner;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)",
            "Lcom/google/common/util/concurrent/Futures$FutureCombiner<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 785
    .local p0, "futures":[Lcom/google/common/util/concurrent/ListenableFuture;, "[Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    new-instance v0, Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;-><init>(ZLcom/google/common/collect/ImmutableList;Lcom/google/common/util/concurrent/Futures$1;)V

    return-object v0
.end method

.method public static whenAllSucceed(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/Futures$FutureCombiner;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;)",
            "Lcom/google/common/util/concurrent/Futures$FutureCombiner<",
            "TV;>;"
        }
    .end annotation

    .line 820
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    new-instance v0, Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;-><init>(ZLcom/google/common/collect/ImmutableList;Lcom/google/common/util/concurrent/Futures$1;)V

    return-object v0
.end method

.method public static varargs whenAllSucceed([Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/Futures$FutureCombiner;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)",
            "Lcom/google/common/util/concurrent/Futures$FutureCombiner<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 808
    .local p0, "futures":[Lcom/google/common/util/concurrent/ListenableFuture;, "[Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    new-instance v0, Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;-><init>(ZLcom/google/common/collect/ImmutableList;Lcom/google/common/util/concurrent/Futures$1;)V

    return-object v0
.end method

.method public static withTimeout(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduledExecutor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 460
    .local p0, "delegate":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/util/concurrent/TimeoutFuture;->create(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private static wrapAndThrowUnchecked(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "cause"    # Ljava/lang/Throwable;

    .line 1318
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    .line 1319
    new-instance v0, Lcom/google/common/util/concurrent/ExecutionError;

    move-object v1, p0

    check-cast v1, Ljava/lang/Error;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw v0

    .line 1326
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
