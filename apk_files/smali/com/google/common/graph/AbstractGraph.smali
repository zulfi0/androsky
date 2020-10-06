.class public abstract Lcom/google/common/graph/AbstractGraph;
.super Ljava/lang/Object;
.source "AbstractGraph.java"

# interfaces
.implements Lcom/google/common/graph/Graph;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/graph/Graph<",
        "TN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    .local p0, "this":Lcom/google/common/graph/AbstractGraph;, "Lcom/google/common/graph/AbstractGraph<TN;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public degree(Ljava/lang/Object;)I
    .locals 3
    .param p1, "node"    # Ljava/lang/Object;

    .line 88
    .local p0, "this":Lcom/google/common/graph/AbstractGraph;, "Lcom/google/common/graph/AbstractGraph<TN;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/math/IntMath;->saturatedAdd(II)I

    move-result v0

    return v0

    .line 91
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 92
    .local v0, "neighbors":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->allowsSelfLoops()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 93
    .local v1, "selfLoopCount":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2, v1}, Lcom/google/common/math/IntMath;->saturatedAdd(II)I

    move-result v2

    return v2
.end method

.method protected edgeCount()J
    .locals 8

    .line 47
    .local p0, "this":Lcom/google/common/graph/AbstractGraph;, "Lcom/google/common/graph/AbstractGraph<TN;>;"
    const-wide/16 v0, 0x0

    .line 48
    .local v0, "degreeSum":J
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->nodes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 49
    .local v3, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0, v3}, Lcom/google/common/graph/AbstractGraph;->degree(Ljava/lang/Object;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 50
    .end local v3    # "node":Ljava/lang/Object;, "TN;"
    goto :goto_0

    .line 52
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-nez v7, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 53
    ushr-long v2, v0, v6

    return-wide v2
.end method

.method public edges()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lcom/google/common/graph/AbstractGraph;, "Lcom/google/common/graph/AbstractGraph<TN;>;"
    new-instance v0, Lcom/google/common/graph/AbstractGraph$1;

    invoke-direct {v0, p0}, Lcom/google/common/graph/AbstractGraph$1;-><init>(Lcom/google/common/graph/AbstractGraph;)V

    return-object v0
.end method

.method public inDegree(Ljava/lang/Object;)I
    .locals 1
    .param p1, "node"    # Ljava/lang/Object;

    .line 99
    .local p0, "this":Lcom/google/common/graph/AbstractGraph;, "Lcom/google/common/graph/AbstractGraph<TN;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractGraph;->degree(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public outDegree(Ljava/lang/Object;)I
    .locals 1
    .param p1, "node"    # Ljava/lang/Object;

    .line 104
    .local p0, "this":Lcom/google/common/graph/AbstractGraph;, "Lcom/google/common/graph/AbstractGraph<TN;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractGraph;->degree(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 110
    .local p0, "this":Lcom/google/common/graph/AbstractGraph;, "Lcom/google/common/graph/AbstractGraph<TN;>;"
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->isDirected()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->allowsSelfLoops()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "isDirected: %s, allowsSelfLoops: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "propertiesString":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->nodes()Ljava/util/Set;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->edges()Ljava/util/Set;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "%s, nodes: %s, edges: %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
