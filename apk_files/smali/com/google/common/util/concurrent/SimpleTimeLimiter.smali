.class public final Lcom/google/common/util/concurrent/SimpleTimeLimiter;
.super Ljava/lang/Object;
.source "SimpleTimeLimiter.java"

# interfaces
.implements Lcom/google/common/util/concurrent/TimeLimiter;


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/ExecutorService;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->executor:Ljava/util/concurrent/ExecutorService;

    .line 64
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Exception;Z)Ljava/lang/Exception;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Exception;
    .param p1, "x1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->throwCause(Ljava/lang/Exception;Z)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method private static declaresInterruptedEx(Ljava/lang/reflect/Method;)Z
    .locals 5
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 175
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 177
    .local v3, "exType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/lang/InterruptedException;

    if-ne v3, v4, :cond_0

    .line 178
    const/4 v4, 0x1

    return v4

    .line 175
    .end local v3    # "exType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static findInterruptibleMethods(Ljava/lang/Class;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 165
    .local p0, "interfaceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 166
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 167
    .local v4, "m":Ljava/lang/reflect/Method;
    invoke-static {v4}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->declaresInterruptedEx(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 168
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "arr$":[Ljava/lang/reflect/Method;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    return-object v0
.end method

.method private static newProxy(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    .locals 3
    .param p1, "handler"    # Ljava/lang/reflect/InvocationHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/InvocationHandler;",
            ")TT;"
        }
    .end annotation

    .line 186
    .local p0, "interfaceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 189
    .local v0, "object":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static throwCause(Ljava/lang/Exception;Z)Ljava/lang/Exception;
    .locals 4
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "combineStackTraces"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 146
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_3

    .line 149
    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const-class v3, Ljava/lang/StackTraceElement;

    invoke-static {v1, v2, v3}, Lcom/google/common/collect/ObjectArrays;->concat([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    .line 152
    .local v1, "combined":[Ljava/lang/StackTraceElement;
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 154
    .end local v1    # "combined":[Ljava/lang/StackTraceElement;
    :cond_0
    instance-of v1, v0, Ljava/lang/Exception;

    if-nez v1, :cond_2

    .line 157
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 158
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 161
    :cond_1
    throw p0

    .line 155
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/Exception;

    throw v1

    .line 147
    :cond_3
    throw p0
.end method


# virtual methods
.method public callWithTimeout(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Z)Ljava/lang/Object;
    .locals 4
    .param p2, "timeoutDuration"    # J
    .param p4, "timeoutUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "amInterruptible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "timeout must be positive: %s"

    invoke-static {v1, v2, p2, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 124
    iget-object v1, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 126
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    if-eqz p5, :cond_1

    .line 128
    :try_start_0
    invoke-interface {v1, p2, p3, p4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 131
    nop

    .end local v1    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local p1    # "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local p2    # "timeoutDuration":J
    .end local p4    # "timeoutUnit":Ljava/util/concurrent/TimeUnit;
    .end local p5    # "amInterruptible":Z
    throw v2

    .line 134
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local p1    # "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .restart local p2    # "timeoutDuration":J
    .restart local p4    # "timeoutUnit":Ljava/util/concurrent/TimeUnit;
    .restart local p5    # "amInterruptible":Z
    :cond_1
    invoke-static {v1, p2, p3, p4}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 138
    :catch_1
    move-exception v2

    .line 139
    .local v2, "e":Ljava/util/concurrent/TimeoutException;
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 140
    new-instance v0, Lcom/google/common/util/concurrent/UncheckedTimeoutException;

    invoke-direct {v0, v2}, Lcom/google/common/util/concurrent/UncheckedTimeoutException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 136
    .end local v2    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_2
    move-exception v2

    .line 137
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    invoke-static {v2, v0}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->throwCause(Ljava/lang/Exception;Z)Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method public newProxy(Ljava/lang/Object;Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 9
    .param p3, "timeoutDuration"    # J
    .param p5, "timeoutUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 84
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "interfaceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "bad timeout: %s"

    invoke-static {v0, v1, p3, p4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 88
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    const-string v1, "interfaceType must be an interface type"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 90
    invoke-static {p2}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->findInterruptibleMethods(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 92
    .local v0, "interruptibleMethods":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Method;>;"
    new-instance v1, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p3

    move-object v7, p5

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;-><init>(Lcom/google/common/util/concurrent/SimpleTimeLimiter;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Ljava/util/Set;)V

    .line 112
    .local v1, "handler":Ljava/lang/reflect/InvocationHandler;
    invoke-static {p2, v1}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->newProxy(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
