.class final Lcom/google/common/util/concurrent/CollectionFuture$ListFuture$ListFutureRunningState;
.super Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;
.source "CollectionFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CollectionFuture$ListFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListFutureRunningState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/CollectionFuture<",
        "TV;",
        "Ljava/util/List<",
        "TV;>;>.CollectionFutureRunningState;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/CollectionFuture$ListFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/CollectionFuture$ListFuture;Lcom/google/common/collect/ImmutableCollection;Z)V
    .locals 0
    .param p3, "allMustSucceed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;Z)V"
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/google/common/util/concurrent/CollectionFuture$ListFuture$ListFutureRunningState;, "Lcom/google/common/util/concurrent/CollectionFuture$ListFuture<TV;>.ListFutureRunningState;"
    .local p2, "futures":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    iput-object p1, p0, Lcom/google/common/util/concurrent/CollectionFuture$ListFuture$ListFutureRunningState;->this$0:Lcom/google/common/util/concurrent/CollectionFuture$ListFuture;

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;-><init>(Lcom/google/common/util/concurrent/CollectionFuture;Lcom/google/common/collect/ImmutableCollection;Z)V

    .line 101
    return-void
.end method


# virtual methods
.method public bridge synthetic combine(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;

    .line 96
    .local p0, "this":Lcom/google/common/util/concurrent/CollectionFuture$ListFuture$ListFutureRunningState;, "Lcom/google/common/util/concurrent/CollectionFuture$ListFuture<TV;>.ListFutureRunningState;"
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/CollectionFuture$ListFuture$ListFutureRunningState;->combine(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public combine(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/common/base/Optional<",
            "TV;>;>;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lcom/google/common/util/concurrent/CollectionFuture$ListFuture$ListFutureRunningState;, "Lcom/google/common/util/concurrent/CollectionFuture$ListFuture<TV;>.ListFutureRunningState;"
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/base/Optional<TV;>;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 106
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/base/Optional;

    .line 107
    .local v2, "element":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<TV;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v2    # "element":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<TV;>;"
    goto :goto_0

    .line 109
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
