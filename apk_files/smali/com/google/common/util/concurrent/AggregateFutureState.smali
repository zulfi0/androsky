.class abstract Lcom/google/common/util/concurrent/AggregateFutureState;
.super Ljava/lang/Object;
.source "AggregateFutureState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AggregateFutureState$SynchronizedAtomicHelper;,
        Lcom/google/common/util/concurrent/AggregateFutureState$SafeAtomicHelper;,
        Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;
    }
.end annotation


# static fields
.field private static final ATOMIC_HELPER:Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private volatile remaining:I

.field private volatile seenExceptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 46
    const-class v0, Lcom/google/common/util/concurrent/AggregateFutureState;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/google/common/util/concurrent/AggregateFutureState;->log:Ljava/util/logging/Logger;

    .line 51
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/google/common/util/concurrent/AggregateFutureState$SafeAtomicHelper;

    const-class v3, Ljava/util/Set;

    const-string v4, "seenExceptions"

    invoke-static {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    const-string v4, "remaining"

    invoke-static {v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/google/common/util/concurrent/AggregateFutureState$SafeAtomicHelper;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 62
    .local v0, "helper":Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;
    goto :goto_0

    .line 55
    .end local v0    # "helper":Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 60
    .local v0, "reflectionFailure":Ljava/lang/Throwable;
    .local v2, "helper":Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;
    sget-object v3, Lcom/google/common/util/concurrent/AggregateFutureState;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "SafeAtomicHelper is broken!"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    new-instance v3, Lcom/google/common/util/concurrent/AggregateFutureState$SynchronizedAtomicHelper;

    invoke-direct {v3, v1}, Lcom/google/common/util/concurrent/AggregateFutureState$SynchronizedAtomicHelper;-><init>(Lcom/google/common/util/concurrent/AggregateFutureState$1;)V

    move-object v1, v3

    move-object v0, v1

    .line 63
    .end local v2    # "helper":Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;
    .local v0, "helper":Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;
    :goto_0
    sput-object v0, Lcom/google/common/util/concurrent/AggregateFutureState;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;

    .line 64
    .end local v0    # "helper":Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "remainingFutures"    # I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/AggregateFutureState;->seenExceptions:Ljava/util/Set;

    .line 67
    iput p1, p0, Lcom/google/common/util/concurrent/AggregateFutureState;->remaining:I

    .line 68
    return-void
.end method

.method static synthetic access$200(Lcom/google/common/util/concurrent/AggregateFutureState;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AggregateFutureState;

    .line 37
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFutureState;->seenExceptions:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/common/util/concurrent/AggregateFutureState;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AggregateFutureState;
    .param p1, "x1"    # Ljava/util/Set;

    .line 37
    iput-object p1, p0, Lcom/google/common/util/concurrent/AggregateFutureState;->seenExceptions:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/common/util/concurrent/AggregateFutureState;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AggregateFutureState;

    .line 37
    iget v0, p0, Lcom/google/common/util/concurrent/AggregateFutureState;->remaining:I

    return v0
.end method

.method static synthetic access$310(Lcom/google/common/util/concurrent/AggregateFutureState;)I
    .locals 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AggregateFutureState;

    .line 37
    iget v0, p0, Lcom/google/common/util/concurrent/AggregateFutureState;->remaining:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/common/util/concurrent/AggregateFutureState;->remaining:I

    return v0
.end method


# virtual methods
.method abstract addInitialException(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method

.method final decrementRemainingAndGet()I
    .locals 1

    .line 113
    sget-object v0, Lcom/google/common/util/concurrent/AggregateFutureState;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;

    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;->decrementAndGetRemainingCount(Lcom/google/common/util/concurrent/AggregateFutureState;)I

    move-result v0

    return v0
.end method

.method final getOrInitSeenExceptions()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFutureState;->seenExceptions:Ljava/util/Set;

    .line 88
    .local v0, "seenExceptionsLocal":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Lcom/google/common/collect/Sets;->newConcurrentHashSet()Ljava/util/Set;

    move-result-object v0

    .line 95
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AggregateFutureState;->addInitialException(Ljava/util/Set;)V

    .line 97
    sget-object v1, Lcom/google/common/util/concurrent/AggregateFutureState;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;->compareAndSetSeenExceptions(Lcom/google/common/util/concurrent/AggregateFutureState;Ljava/util/Set;Ljava/util/Set;)V

    .line 104
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFutureState;->seenExceptions:Ljava/util/Set;

    .line 106
    :cond_0
    return-object v0
.end method
