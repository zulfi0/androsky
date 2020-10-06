.class public abstract Lcom/google/common/cache/ForwardingCache;
.super Lcom/google/common/collect/ForwardingObject;
.source "ForwardingCache.java"

# interfaces
.implements Lcom/google/common/cache/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/ForwardingCache$SimpleForwardingCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingObject;",
        "Lcom/google/common/cache/Cache<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 39
    .local p0, "this":Lcom/google/common/cache/ForwardingCache;, "Lcom/google/common/cache/ForwardingCache<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingObject;-><init>()V

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lcom/google/common/cache/ForwardingCache;, "Lcom/google/common/cache/ForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/Cache;->asMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method public cleanUp()V
    .locals 1

    .line 120
    .local p0, "this":Lcom/google/common/cache/ForwardingCache;, "Lcom/google/common/cache/ForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/Cache;->cleanUp()V

    .line 121
    return-void
.end method

.method protected abstract delegate()Lcom/google/common/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/Cache<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 35
    .local p0, "this":Lcom/google/common/cache/ForwardingCache;, "Lcom/google/common/cache/ForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/concurrent/Callable<",
            "+TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/google/common/cache/ForwardingCache;, "Lcom/google/common/cache/ForwardingCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "valueLoader":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/cache/Cache;->get(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAllPresent(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/google/common/cache/ForwardingCache;, "Lcom/google/common/cache/ForwardingCache<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/Cache;->getAllPresent(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 50
    .local p0, "this":Lcom/google/common/cache/ForwardingCache;, "Lcom/google/common/cache/ForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/Cache;->getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invalidate(Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 87
    .local p0, "this":Lcom/google/common/cache/ForwardingCache;, "Lcom/google/common/cache/ForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/Cache;->invalidate(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public invalidateAll()V
    .locals 1

    .line 100
    .local p0, "this":Lcom/google/common/cache/ForwardingCache;, "Lcom/google/common/cache/ForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/Cache;->invalidateAll()V

    .line 101
    return-void
.end method

.method public invalidateAll(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 95
    .local p0, "this":Lcom/google/common/cache/ForwardingCache;, "Lcom/google/common/cache/ForwardingCache<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/Cache;->invalidateAll(Ljava/lang/Iterable;)V

    .line 96
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/google/common/cache/ForwardingCache;, "Lcom/google/common/cache/ForwardingCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/google/common/cache/ForwardingCache;, "Lcom/google/common/cache/ForwardingCache<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/Cache;->putAll(Ljava/util/Map;)V

    .line 83
    return-void
.end method

.method public size()J
    .locals 2

    .line 105
    .local p0, "this":Lcom/google/common/cache/ForwardingCache;, "Lcom/google/common/cache/ForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/Cache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public stats()Lcom/google/common/cache/CacheStats;
    .locals 1

    .line 110
    .local p0, "this":Lcom/google/common/cache/ForwardingCache;, "Lcom/google/common/cache/ForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/Cache;->stats()Lcom/google/common/cache/CacheStats;

    move-result-object v0

    return-object v0
.end method
