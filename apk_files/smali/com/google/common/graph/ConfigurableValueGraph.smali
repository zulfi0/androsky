.class Lcom/google/common/graph/ConfigurableValueGraph;
.super Lcom/google/common/graph/AbstractValueGraph;
.source "ConfigurableValueGraph.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/AbstractValueGraph<",
        "TN;TV;>;"
    }
.end annotation


# instance fields
.field private final allowsSelfLoops:Z

.field protected edgeCount:J

.field private final isDirected:Z

.field protected final nodeConnections:Lcom/google/common/graph/MapIteratorCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/MapIteratorCache<",
            "TN;",
            "Lcom/google/common/graph/GraphConnections<",
            "TN;TV;>;>;"
        }
    .end annotation
.end field

.field private final nodeOrder:Lcom/google/common/graph/ElementOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/AbstractGraphBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/AbstractGraphBuilder<",
            "-TN;>;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/google/common/graph/ConfigurableValueGraph;, "Lcom/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    .local p1, "builder":Lcom/google/common/graph/AbstractGraphBuilder;, "Lcom/google/common/graph/AbstractGraphBuilder<-TN;>;"
    iget-object v0, p1, Lcom/google/common/graph/AbstractGraphBuilder;->nodeOrder:Lcom/google/common/graph/ElementOrder;

    iget-object v1, p1, Lcom/google/common/graph/AbstractGraphBuilder;->expectedNodeCount:Lcom/google/common/base/Optional;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/ElementOrder;->createMap(I)Ljava/util/Map;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/common/graph/ConfigurableValueGraph;-><init>(Lcom/google/common/graph/AbstractGraphBuilder;Ljava/util/Map;J)V

    .line 62
    return-void
.end method

.method constructor <init>(Lcom/google/common/graph/AbstractGraphBuilder;Ljava/util/Map;J)V
    .locals 2
    .param p3, "edgeCount"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/AbstractGraphBuilder<",
            "-TN;>;",
            "Ljava/util/Map<",
            "TN;",
            "Lcom/google/common/graph/GraphConnections<",
            "TN;TV;>;>;J)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lcom/google/common/graph/ConfigurableValueGraph;, "Lcom/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    .local p1, "builder":Lcom/google/common/graph/AbstractGraphBuilder;, "Lcom/google/common/graph/AbstractGraphBuilder<-TN;>;"
    .local p2, "nodeConnections":Ljava/util/Map;, "Ljava/util/Map<TN;Lcom/google/common/graph/GraphConnections<TN;TV;>;>;"
    invoke-direct {p0}, Lcom/google/common/graph/AbstractValueGraph;-><init>()V

    .line 72
    iget-boolean v0, p1, Lcom/google/common/graph/AbstractGraphBuilder;->directed:Z

    iput-boolean v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->isDirected:Z

    .line 73
    iget-boolean v0, p1, Lcom/google/common/graph/AbstractGraphBuilder;->allowsSelfLoops:Z

    iput-boolean v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->allowsSelfLoops:Z

    .line 74
    iget-object v0, p1, Lcom/google/common/graph/AbstractGraphBuilder;->nodeOrder:Lcom/google/common/graph/ElementOrder;

    invoke-virtual {v0}, Lcom/google/common/graph/ElementOrder;->cast()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->nodeOrder:Lcom/google/common/graph/ElementOrder;

    .line 76
    instance-of v0, p2, Ljava/util/TreeMap;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/graph/MapRetrievalCache;

    invoke-direct {v0, p2}, Lcom/google/common/graph/MapRetrievalCache;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/graph/MapIteratorCache;

    invoke-direct {v0, p2}, Lcom/google/common/graph/MapIteratorCache;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    .line 80
    invoke-static {p3, p4}, Lcom/google/common/graph/Graphs;->checkNonNegative(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->edgeCount:J

    .line 81
    return-void
.end method


# virtual methods
.method public adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lcom/google/common/graph/ConfigurableValueGraph;, "Lcom/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ConfigurableValueGraph;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/GraphConnections;->adjacentNodes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public allowsSelfLoops()Z
    .locals 1

    .line 95
    .local p0, "this":Lcom/google/common/graph/ConfigurableValueGraph;, "Lcom/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    iget-boolean v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->allowsSelfLoops:Z

    return v0
.end method

.method protected final checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;
    .locals 4
    .param p1, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/graph/GraphConnections<",
            "TN;TV;>;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lcom/google/common/graph/ConfigurableValueGraph;, "Lcom/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/GraphConnections;

    .line 138
    .local v0, "connections":Lcom/google/common/graph/GraphConnections;, "Lcom/google/common/graph/GraphConnections<TN;TV;>;"
    if-eqz v0, :cond_0

    .line 142
    return-object v0

    .line 139
    :cond_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Node %s is not an element of this graph."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final containsNode(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "node"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 146
    .local p0, "this":Lcom/google/common/graph/ConfigurableValueGraph;, "Lcom/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected edgeCount()J
    .locals 2

    .line 133
    .local p0, "this":Lcom/google/common/graph/ConfigurableValueGraph;, "Lcom/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    iget-wide v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->edgeCount:J

    return-wide v0
.end method

.method public edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    .line 120
    .local p0, "this":Lcom/google/common/graph/ConfigurableValueGraph;, "Lcom/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/GraphConnections;

    .line 121
    .local v0, "connectionsU":Lcom/google/common/graph/GraphConnections;, "Lcom/google/common/graph/GraphConnections<TN;TV;>;"
    if-nez v0, :cond_0

    .line 122
    return-object p3

    .line 124
    :cond_0
    invoke-interface {v0, p2}, Lcom/google/common/graph/GraphConnections;->value(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 125
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_1

    .line 126
    return-object p3

    .line 128
    :cond_1
    return-object v1
.end method

.method public isDirected()Z
    .locals 1

    .line 90
    .local p0, "this":Lcom/google/common/graph/ConfigurableValueGraph;, "Lcom/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    iget-boolean v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->isDirected:Z

    return v0
.end method

.method public nodeOrder()Lcom/google/common/graph/ElementOrder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lcom/google/common/graph/ConfigurableValueGraph;, "Lcom/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->nodeOrder:Lcom/google/common/graph/ElementOrder;

    return-object v0
.end method

.method public nodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 85
    .local p0, "this":Lcom/google/common/graph/ConfigurableValueGraph;, "Lcom/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    iget-object v0, p0, Lcom/google/common/graph/ConfigurableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0}, Lcom/google/common/graph/MapIteratorCache;->unmodifiableKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 110
    .local p0, "this":Lcom/google/common/graph/ConfigurableValueGraph;, "Lcom/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ConfigurableValueGraph;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/GraphConnections;->predecessors()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public successors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lcom/google/common/graph/ConfigurableValueGraph;, "Lcom/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ConfigurableValueGraph;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/GraphConnections;->successors()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
