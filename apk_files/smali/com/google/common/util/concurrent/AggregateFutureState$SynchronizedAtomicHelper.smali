.class final Lcom/google/common/util/concurrent/AggregateFutureState$SynchronizedAtomicHelper;
.super Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;
.source "AggregateFutureState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AggregateFutureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SynchronizedAtomicHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;-><init>(Lcom/google/common/util/concurrent/AggregateFutureState$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/AggregateFutureState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/util/concurrent/AggregateFutureState$1;

    .line 149
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AggregateFutureState$SynchronizedAtomicHelper;-><init>()V

    return-void
.end method


# virtual methods
.method compareAndSetSeenExceptions(Lcom/google/common/util/concurrent/AggregateFutureState;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .param p1, "state"    # Lcom/google/common/util/concurrent/AggregateFutureState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AggregateFutureState;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 153
    .local p2, "expect":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    .local p3, "update":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    monitor-enter p1

    .line 154
    :try_start_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/AggregateFutureState;->access$200(Lcom/google/common/util/concurrent/AggregateFutureState;)Ljava/util/Set;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 155
    invoke-static {p1, p3}, Lcom/google/common/util/concurrent/AggregateFutureState;->access$202(Lcom/google/common/util/concurrent/AggregateFutureState;Ljava/util/Set;)Ljava/util/Set;

    .line 157
    :cond_0
    monitor-exit p1

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method decrementAndGetRemainingCount(Lcom/google/common/util/concurrent/AggregateFutureState;)I
    .locals 1
    .param p1, "state"    # Lcom/google/common/util/concurrent/AggregateFutureState;

    .line 162
    monitor-enter p1

    .line 163
    :try_start_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/AggregateFutureState;->access$310(Lcom/google/common/util/concurrent/AggregateFutureState;)I

    .line 164
    invoke-static {p1}, Lcom/google/common/util/concurrent/AggregateFutureState;->access$300(Lcom/google/common/util/concurrent/AggregateFutureState;)I

    move-result v0

    monitor-exit p1

    return v0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
