.class Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1AsMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "MapConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->asMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingMap<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;

.field final synthetic val$asMapDelegate:Ljava/util/Map;

.field values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 275
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1AsMap;, "Lcom/google/common/collect/MapConstraints$ConstrainedMultimap.1AsMap;"
    iput-object p1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1AsMap;->this$0:Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;

    iput-object p2, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1AsMap;->val$asMapDelegate:Ljava/util/Map;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    return-void
.end method


# virtual methods
.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 315
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1AsMap;, "Lcom/google/common/collect/MapConstraints$ConstrainedMultimap.1AsMap;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1AsMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 274
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1AsMap;, "Lcom/google/common/collect/MapConstraints$ConstrainedMultimap.1AsMap;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1AsMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 281
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1AsMap;, "Lcom/google/common/collect/MapConstraints$ConstrainedMultimap.1AsMap;"
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1AsMap;->val$asMapDelegate:Ljava/util/Map;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 286
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1AsMap;, "Lcom/google/common/collect/MapConstraints$ConstrainedMultimap.1AsMap;"
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1AsMap;->entrySet:Ljava/util/Set;

    .line 287
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    if-nez v0, :cond_0

    .line 288
    iget-object v1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1AsMap;->val$asMapDelegate:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1AsMap;->this$0:Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;

    iget-object v2, v2, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->constraint:Lcom/google/common/collect/MapConstraint;

    invoke-static {v1, v2}, Lcom/google/common/collect/MapConstraints;->access$200(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1AsMap;->entrySet:Ljava/util/Set;

    .line 290
    :cond_0
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 274
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1AsMap;, "Lcom/google/common/collect/MapConstraints$ConstrainedMultimap.1AsMap;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1AsMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 297
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1AsMap;, "Lcom/google/common/collect/MapConstraints$ConstrainedMultimap.1AsMap;"
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1AsMap;->this$0:Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 298
    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    .line 299
    .end local v1    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/ClassCastException;
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 306
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1AsMap;, "Lcom/google/common/collect/MapConstraints$ConstrainedMultimap.1AsMap;"
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1AsMap;->values:Ljava/util/Collection;

    .line 307
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Collection<TV;>;>;"
    if-nez v0, :cond_0

    .line 308
    new-instance v1, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1AsMap;->delegate()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1AsMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;-><init>(Ljava/util/Collection;Ljava/util/Set;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1AsMap;->values:Ljava/util/Collection;

    .line 310
    :cond_0
    return-object v0
.end method
