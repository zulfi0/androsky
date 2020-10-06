.class public final Lcom/google/common/graph/ImmutableValueGraph;
.super Lcom/google/common/graph/ImmutableGraph$ValueBackedImpl;
.source "ImmutableValueGraph.java"

# interfaces
.implements Lcom/google/common/graph/ValueGraph;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/ImmutableGraph$ValueBackedImpl<",
        "TN;TV;>;",
        "Lcom/google/common/graph/ValueGraph<",
        "TN;TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/common/graph/ValueGraph;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/ValueGraph<",
            "TN;TV;>;)V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/google/common/graph/ImmutableValueGraph;, "Lcom/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    .local p1, "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    invoke-static {p1}, Lcom/google/common/graph/ValueGraphBuilder;->from(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/graph/ImmutableValueGraph;->getNodeConnections(Lcom/google/common/graph/ValueGraph;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/graph/ValueGraph;->edges()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/common/graph/ImmutableGraph$ValueBackedImpl;-><init>(Lcom/google/common/graph/AbstractGraphBuilder;Lcom/google/common/collect/ImmutableMap;J)V

    .line 48
    return-void
.end method

.method private static connectionsOf(Lcom/google/common/graph/ValueGraph;Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ValueGraph<",
            "TN;TV;>;TN;)",
            "Lcom/google/common/graph/GraphConnections<",
            "TN;TV;>;"
        }
    .end annotation

    .line 81
    .local p0, "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    new-instance v0, Lcom/google/common/graph/ImmutableValueGraph$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/graph/ImmutableValueGraph$1;-><init>(Lcom/google/common/graph/ValueGraph;Ljava/lang/Object;)V

    .line 88
    .local v0, "successorNodeToValueFn":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<TN;TV;>;"
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->isDirected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, p1}, Lcom/google/common/graph/ValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, p1}, Lcom/google/common/graph/ValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/graph/DirectedGraphConnections;->ofImmutable(Ljava/util/Set;Ljava/util/Map;)Lcom/google/common/graph/DirectedGraphConnections;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lcom/google/common/graph/ValueGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/graph/UndirectedGraphConnections;->ofImmutable(Ljava/util/Map;)Lcom/google/common/graph/UndirectedGraphConnections;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static copyOf(Lcom/google/common/graph/ImmutableValueGraph;)Lcom/google/common/graph/ImmutableValueGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ImmutableValueGraph<",
            "TN;TV;>;)",
            "Lcom/google/common/graph/ImmutableValueGraph<",
            "TN;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    .local p0, "graph":Lcom/google/common/graph/ImmutableValueGraph;, "Lcom/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/ImmutableValueGraph;

    return-object v0
.end method

.method public static copyOf(Lcom/google/common/graph/ValueGraph;)Lcom/google/common/graph/ImmutableValueGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ValueGraph<",
            "TN;TV;>;)",
            "Lcom/google/common/graph/ImmutableValueGraph<",
            "TN;TV;>;"
        }
    .end annotation

    .line 52
    .local p0, "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    instance-of v0, p0, Lcom/google/common/graph/ImmutableValueGraph;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/common/graph/ImmutableValueGraph;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/graph/ImmutableValueGraph;

    invoke-direct {v0, p0}, Lcom/google/common/graph/ImmutableValueGraph;-><init>(Lcom/google/common/graph/ValueGraph;)V

    :goto_0
    return-object v0
.end method

.method private static getNodeConnections(Lcom/google/common/graph/ValueGraph;)Lcom/google/common/collect/ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ValueGraph<",
            "TN;TV;>;)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TN;",
            "Lcom/google/common/graph/GraphConnections<",
            "TN;TV;>;>;"
        }
    .end annotation

    .line 72
    .local p0, "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 73
    .local v0, "nodeConnections":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TN;Lcom/google/common/graph/GraphConnections<TN;TV;>;>;"
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 74
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-static {p0, v2}, Lcom/google/common/graph/ImmutableValueGraph;->connectionsOf(Lcom/google/common/graph/ValueGraph;Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 75
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    goto :goto_0

    .line 76
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public edgeValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "nodeU"    # Ljava/lang/Object;
    .param p2, "nodeV"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 97
    .local p0, "this":Lcom/google/common/graph/ImmutableValueGraph;, "Lcom/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    iget-object v0, p0, Lcom/google/common/graph/ImmutableValueGraph;->backingValueGraph:Lcom/google/common/graph/ValueGraph;

    invoke-interface {v0, p1, p2}, Lcom/google/common/graph/ValueGraph;->edgeValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "nodeU"    # Ljava/lang/Object;
    .param p2, "nodeV"    # Ljava/lang/Object;
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lcom/google/common/graph/ImmutableValueGraph;, "Lcom/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/graph/ImmutableValueGraph;->backingValueGraph:Lcom/google/common/graph/ValueGraph;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/graph/ValueGraph;->edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 107
    .local p0, "this":Lcom/google/common/graph/ImmutableValueGraph;, "Lcom/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    iget-object v0, p0, Lcom/google/common/graph/ImmutableValueGraph;->backingValueGraph:Lcom/google/common/graph/ValueGraph;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
