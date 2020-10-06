.class public final Lcom/google/common/graph/Graphs;
.super Ljava/lang/Object;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/Graphs$NodeVisitState;,
        Lcom/google/common/graph/Graphs$TransposedNetwork;,
        Lcom/google/common/graph/Graphs$TransposedValueGraph;,
        Lcom/google/common/graph/Graphs$TransposedGraph;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canTraverseWithoutReusingEdge(Lcom/google/common/graph/Graph;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "nextNode"    # Ljava/lang/Object;
    .param p2, "previousNode"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/Graph<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 131
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<*>;"
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->isDirected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 132
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static checkNonNegative(I)I
    .locals 2
    .param p0, "value"    # I

    .line 706
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not true that %s is non-negative."

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 707
    return p0
.end method

.method static checkNonNegative(J)J
    .locals 3
    .param p0, "value"    # J

    .line 718
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not true that %s is non-negative."

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 719
    return-wide p0
.end method

.method static checkPositive(I)I
    .locals 2
    .param p0, "value"    # I

    .line 712
    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not true that %s is positive."

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 713
    return p0
.end method

.method static checkPositive(J)J
    .locals 3
    .param p0, "value"    # J

    .line 724
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not true that %s is positive."

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 725
    return-wide p0
.end method

.method public static copyOf(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/MutableGraph;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph<",
            "TN;>;)",
            "Lcom/google/common/graph/MutableGraph<",
            "TN;>;"
        }
    .end annotation

    .line 664
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    invoke-static {p0}, Lcom/google/common/graph/GraphBuilder;->from(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/GraphBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/GraphBuilder;->expectedNodeCount(I)Lcom/google/common/graph/GraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/graph/GraphBuilder;->build()Lcom/google/common/graph/MutableGraph;

    move-result-object v0

    .line 665
    .local v0, "copy":Lcom/google/common/graph/MutableGraph;, "Lcom/google/common/graph/MutableGraph<TN;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

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

    .line 666
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v2}, Lcom/google/common/graph/MutableGraph;->addNode(Ljava/lang/Object;)Z

    .line 667
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    goto :goto_0

    .line 668
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->edges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/graph/EndpointPair;

    .line 669
    .local v2, "edge":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {v2}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/google/common/graph/MutableGraph;->putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 670
    .end local v2    # "edge":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    goto :goto_1

    .line 671
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method public static copyOf(Lcom/google/common/graph/Network;)Lcom/google/common/graph/MutableNetwork;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;)",
            "Lcom/google/common/graph/MutableNetwork<",
            "TN;TE;>;"
        }
    .end annotation

    .line 689
    .local p0, "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    invoke-static {p0}, Lcom/google/common/graph/NetworkBuilder;->from(Lcom/google/common/graph/Network;)Lcom/google/common/graph/NetworkBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/graph/Network;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/NetworkBuilder;->expectedNodeCount(I)Lcom/google/common/graph/NetworkBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/NetworkBuilder;->expectedEdgeCount(I)Lcom/google/common/graph/NetworkBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/graph/NetworkBuilder;->build()Lcom/google/common/graph/MutableNetwork;

    move-result-object v0

    .line 694
    .local v0, "copy":Lcom/google/common/graph/MutableNetwork;, "Lcom/google/common/graph/MutableNetwork<TN;TE;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Network;->nodes()Ljava/util/Set;

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

    .line 695
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v2}, Lcom/google/common/graph/MutableNetwork;->addNode(Ljava/lang/Object;)Z

    .line 696
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    goto :goto_0

    .line 697
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {p0}, Lcom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 698
    .local v2, "edge":Ljava/lang/Object;, "TE;"
    invoke-interface {p0, v2}, Lcom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v3

    .line 699
    .local v3, "endpointPair":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {v3}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5, v2}, Lcom/google/common/graph/MutableNetwork;->addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 700
    .end local v2    # "edge":Ljava/lang/Object;, "TE;"
    .end local v3    # "endpointPair":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    goto :goto_1

    .line 701
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method public static copyOf(Lcom/google/common/graph/ValueGraph;)Lcom/google/common/graph/MutableValueGraph;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ValueGraph<",
            "TN;TV;>;)",
            "Lcom/google/common/graph/MutableValueGraph<",
            "TN;TV;>;"
        }
    .end annotation

    .line 676
    .local p0, "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    invoke-static {p0}, Lcom/google/common/graph/ValueGraphBuilder;->from(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/ValueGraphBuilder;->expectedNodeCount(I)Lcom/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/graph/ValueGraphBuilder;->build()Lcom/google/common/graph/MutableValueGraph;

    move-result-object v0

    .line 678
    .local v0, "copy":Lcom/google/common/graph/MutableValueGraph;, "Lcom/google/common/graph/MutableValueGraph<TN;TV;>;"
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

    .line 679
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v2}, Lcom/google/common/graph/MutableValueGraph;->addNode(Ljava/lang/Object;)Z

    .line 680
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    goto :goto_0

    .line 681
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->edges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/graph/EndpointPair;

    .line 682
    .local v2, "edge":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {v2}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p0, v5, v6}, Lcom/google/common/graph/ValueGraph;->edgeValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v3, v4, v5}, Lcom/google/common/graph/MutableValueGraph;->putEdgeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    .end local v2    # "edge":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    goto :goto_1

    .line 684
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method public static equivalent(Lcom/google/common/graph/Graph;Lcom/google/common/graph/Graph;)Z
    .locals 4
    .param p0    # Lcom/google/common/graph/Graph;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/google/common/graph/Graph;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/Graph<",
            "*>;",
            "Lcom/google/common/graph/Graph<",
            "*>;)Z"
        }
    .end annotation

    .line 231
    .local p0, "graphA":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<*>;"
    .local p1, "graphB":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<*>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 232
    return v0

    .line 234
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 238
    :cond_1
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->isDirected()Z

    move-result v2

    invoke-interface {p1}, Lcom/google/common/graph/Graph;->isDirected()Z

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Lcom/google/common/graph/Graph;->edges()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/graph/Graph;->edges()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 235
    :cond_3
    :goto_1
    return v1
.end method

.method public static equivalent(Lcom/google/common/graph/Network;Lcom/google/common/graph/Network;)Z
    .locals 6
    .param p0    # Lcom/google/common/graph/Network;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/google/common/graph/Network;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/Network<",
            "**>;",
            "Lcom/google/common/graph/Network<",
            "**>;)Z"
        }
    .end annotation

    .line 312
    .local p0, "networkA":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<**>;"
    .local p1, "networkB":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<**>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 313
    return v0

    .line 315
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_2

    .line 319
    :cond_1
    invoke-interface {p0}, Lcom/google/common/graph/Network;->isDirected()Z

    move-result v2

    invoke-interface {p1}, Lcom/google/common/graph/Network;->isDirected()Z

    move-result v3

    if-ne v2, v3, :cond_5

    invoke-interface {p0}, Lcom/google/common/graph/Network;->nodes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/graph/Network;->nodes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Lcom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 325
    :cond_2
    invoke-interface {p0}, Lcom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 326
    .local v3, "edge":Ljava/lang/Object;
    invoke-interface {p0, v3}, Lcom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v4

    invoke-interface {p1, v3}, Lcom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/graph/EndpointPair;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 327
    return v1

    .line 329
    .end local v3    # "edge":Ljava/lang/Object;
    :cond_3
    goto :goto_0

    .line 331
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    return v0

    .line 322
    :cond_5
    :goto_1
    return v1

    .line 316
    :cond_6
    :goto_2
    return v1
.end method

.method public static equivalent(Lcom/google/common/graph/ValueGraph;Lcom/google/common/graph/ValueGraph;)Z
    .locals 7
    .param p0    # Lcom/google/common/graph/ValueGraph;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/google/common/graph/ValueGraph;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/ValueGraph<",
            "**>;",
            "Lcom/google/common/graph/ValueGraph<",
            "**>;)Z"
        }
    .end annotation

    .line 266
    .local p0, "graphA":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<**>;"
    .local p1, "graphB":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<**>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 267
    return v0

    .line 269
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_2

    .line 273
    :cond_1
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->isDirected()Z

    move-result v2

    invoke-interface {p1}, Lcom/google/common/graph/ValueGraph;->isDirected()Z

    move-result v3

    if-ne v2, v3, :cond_5

    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->nodes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/graph/ValueGraph;->nodes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->edges()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/graph/ValueGraph;->edges()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 279
    :cond_2
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->edges()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/graph/EndpointPair;

    .line 280
    .local v3, "edge":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<*>;"
    invoke-virtual {v3}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Lcom/google/common/graph/ValueGraph;->edgeValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Lcom/google/common/graph/ValueGraph;->edgeValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 283
    return v1

    .line 285
    .end local v3    # "edge":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<*>;"
    :cond_3
    goto :goto_0

    .line 287
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    return v0

    .line 276
    :cond_5
    :goto_1
    return v1

    .line 270
    :cond_6
    :goto_2
    return v1
.end method

.method public static hasCycle(Lcom/google/common/graph/Graph;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/Graph<",
            "*>;)Z"
        }
    .end annotation

    .line 58
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<*>;"
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->edges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 59
    .local v0, "numEdges":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 60
    return v1

    .line 62
    :cond_0
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->isDirected()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 63
    return v3

    .line 66
    :cond_1
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v2

    .line 68
    .local v2, "visitedNodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lcom/google/common/graph/Graphs$NodeVisitState;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 69
    .local v5, "node":Ljava/lang/Object;
    const/4 v6, 0x0

    invoke-static {p0, v2, v5, v6}, Lcom/google/common/graph/Graphs;->subgraphHasCycle(Lcom/google/common/graph/Graph;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 70
    return v3

    .line 72
    .end local v5    # "node":Ljava/lang/Object;
    :cond_2
    goto :goto_0

    .line 73
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    return v1
.end method

.method public static hasCycle(Lcom/google/common/graph/Network;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/Network<",
            "**>;)Z"
        }
    .end annotation

    .line 86
    .local p0, "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<**>;"
    invoke-interface {p0}, Lcom/google/common/graph/Network;->isDirected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/google/common/graph/Network;->allowsParallelEdges()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p0}, Lcom/google/common/graph/Network;->asGraph()Lcom/google/common/graph/Graph;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/graph/Graph;->edges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 89
    const/4 v0, 0x1

    return v0

    .line 91
    :cond_0
    invoke-interface {p0}, Lcom/google/common/graph/Network;->asGraph()Lcom/google/common/graph/Graph;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/graph/Graphs;->hasCycle(Lcom/google/common/graph/Graph;)Z

    move-result v0

    return v0
.end method

.method public static inducedSubgraph(Lcom/google/common/graph/Graph;Ljava/lang/Iterable;)Lcom/google/common/graph/MutableGraph;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph<",
            "TN;>;",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Lcom/google/common/graph/MutableGraph<",
            "TN;>;"
        }
    .end annotation

    .line 599
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    .local p1, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    invoke-static {p0}, Lcom/google/common/graph/GraphBuilder;->from(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/GraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/graph/GraphBuilder;->build()Lcom/google/common/graph/MutableGraph;

    move-result-object v0

    .line 600
    .local v0, "subgraph":Lcom/google/common/graph/MutableGraph;, "Lcom/google/common/graph/MutableGraph<TN;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 601
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v2}, Lcom/google/common/graph/MutableGraph;->addNode(Ljava/lang/Object;)Z

    .line 602
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    goto :goto_0

    .line 603
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Lcom/google/common/graph/MutableGraph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 604
    .restart local v2    # "node":Ljava/lang/Object;, "TN;"
    invoke-interface {p0, v2}, Lcom/google/common/graph/Graph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 605
    .local v4, "successorNode":Ljava/lang/Object;, "TN;"
    invoke-interface {v0}, Lcom/google/common/graph/MutableGraph;->nodes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 606
    invoke-interface {v0, v2, v4}, Lcom/google/common/graph/MutableGraph;->putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 608
    .end local v4    # "successorNode":Ljava/lang/Object;, "TN;"
    :cond_1
    goto :goto_2

    .line 609
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    goto :goto_1

    .line 610
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    return-object v0
.end method

.method public static inducedSubgraph(Lcom/google/common/graph/Network;Ljava/lang/Iterable;)Lcom/google/common/graph/MutableNetwork;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Lcom/google/common/graph/MutableNetwork<",
            "TN;TE;>;"
        }
    .end annotation

    .line 647
    .local p0, "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    .local p1, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    invoke-static {p0}, Lcom/google/common/graph/NetworkBuilder;->from(Lcom/google/common/graph/Network;)Lcom/google/common/graph/NetworkBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/graph/NetworkBuilder;->build()Lcom/google/common/graph/MutableNetwork;

    move-result-object v0

    .line 648
    .local v0, "subgraph":Lcom/google/common/graph/MutableNetwork;, "Lcom/google/common/graph/MutableNetwork<TN;TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 649
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v2}, Lcom/google/common/graph/MutableNetwork;->addNode(Ljava/lang/Object;)Z

    .line 650
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    goto :goto_0

    .line 651
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Lcom/google/common/graph/MutableNetwork;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 652
    .restart local v2    # "node":Ljava/lang/Object;, "TN;"
    invoke-interface {p0, v2}, Lcom/google/common/graph/Network;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 653
    .local v4, "edge":Ljava/lang/Object;, "TE;"
    invoke-interface {p0, v4}, Lcom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/common/graph/EndpointPair;->adjacentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 654
    .local v5, "successorNode":Ljava/lang/Object;, "TN;"
    invoke-interface {v0}, Lcom/google/common/graph/MutableNetwork;->nodes()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 655
    invoke-interface {v0, v2, v5, v4}, Lcom/google/common/graph/MutableNetwork;->addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 657
    .end local v4    # "edge":Ljava/lang/Object;, "TE;"
    .end local v5    # "successorNode":Ljava/lang/Object;, "TN;"
    :cond_1
    goto :goto_2

    .line 658
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    goto :goto_1

    .line 659
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    return-object v0
.end method

.method public static inducedSubgraph(Lcom/google/common/graph/ValueGraph;Ljava/lang/Iterable;)Lcom/google/common/graph/MutableValueGraph;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ValueGraph<",
            "TN;TV;>;",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Lcom/google/common/graph/MutableValueGraph<",
            "TN;TV;>;"
        }
    .end annotation

    .line 623
    .local p0, "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    .local p1, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    invoke-static {p0}, Lcom/google/common/graph/ValueGraphBuilder;->from(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/graph/ValueGraphBuilder;->build()Lcom/google/common/graph/MutableValueGraph;

    move-result-object v0

    .line 624
    .local v0, "subgraph":Lcom/google/common/graph/MutableValueGraph;, "Lcom/google/common/graph/MutableValueGraph<TN;TV;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 625
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v2}, Lcom/google/common/graph/MutableValueGraph;->addNode(Ljava/lang/Object;)Z

    .line 626
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    goto :goto_0

    .line 627
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Lcom/google/common/graph/MutableValueGraph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 628
    .restart local v2    # "node":Ljava/lang/Object;, "TN;"
    invoke-interface {p0, v2}, Lcom/google/common/graph/ValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 629
    .local v4, "successorNode":Ljava/lang/Object;, "TN;"
    invoke-interface {v0}, Lcom/google/common/graph/MutableValueGraph;->nodes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 630
    invoke-interface {p0, v2, v4}, Lcom/google/common/graph/ValueGraph;->edgeValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v2, v4, v5}, Lcom/google/common/graph/MutableValueGraph;->putEdgeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    .end local v4    # "successorNode":Ljava/lang/Object;, "TN;"
    :cond_1
    goto :goto_2

    .line 633
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    goto :goto_1

    .line 634
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    return-object v0
.end method

.method public static reachableNodes(Lcom/google/common/graph/Graph;Ljava/lang/Object;)Ljava/util/Set;
    .locals 6
    .param p1, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph<",
            "TN;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 195
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Node %s is not an element of this graph."

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 196
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 197
    .local v0, "visitedNodes":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 198
    .local v1, "queuedNodes":Ljava/util/Queue;, "Ljava/util/Queue<TN;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 201
    :goto_0
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 202
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    .line 203
    .local v2, "currentNode":Ljava/lang/Object;, "TN;"
    invoke-interface {p0, v2}, Lcom/google/common/graph/Graph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 204
    .local v4, "successor":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    invoke-interface {v1, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v4    # "successor":Ljava/lang/Object;, "TN;"
    :cond_0
    goto :goto_1

    .line 208
    .end local v2    # "currentNode":Ljava/lang/Object;, "TN;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    goto :goto_0

    .line 209
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method private static subgraphHasCycle(Lcom/google/common/graph/Graph;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p2, "node"    # Ljava/lang/Object;
    .param p3, "previousNode"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/Graph<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/common/graph/Graphs$NodeVisitState;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 104
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<*>;"
    .local p1, "visitedNodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lcom/google/common/graph/Graphs$NodeVisitState;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/Graphs$NodeVisitState;

    .line 105
    .local v0, "state":Lcom/google/common/graph/Graphs$NodeVisitState;
    sget-object v1, Lcom/google/common/graph/Graphs$NodeVisitState;->COMPLETE:Lcom/google/common/graph/Graphs$NodeVisitState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 106
    return v2

    .line 108
    :cond_0
    sget-object v1, Lcom/google/common/graph/Graphs$NodeVisitState;->PENDING:Lcom/google/common/graph/Graphs$NodeVisitState;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 109
    return v3

    .line 112
    :cond_1
    sget-object v1, Lcom/google/common/graph/Graphs$NodeVisitState;->PENDING:Lcom/google/common/graph/Graphs$NodeVisitState;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-interface {p0, p2}, Lcom/google/common/graph/Graph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 114
    .local v4, "nextNode":Ljava/lang/Object;
    invoke-static {p0, v4, p3}, Lcom/google/common/graph/Graphs;->canTraverseWithoutReusingEdge(Lcom/google/common/graph/Graph;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0, p1, v4, p2}, Lcom/google/common/graph/Graphs;->subgraphHasCycle(Lcom/google/common/graph/Graph;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 116
    return v3

    .line 118
    .end local v4    # "nextNode":Ljava/lang/Object;
    :cond_2
    goto :goto_0

    .line 119
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    sget-object v1, Lcom/google/common/graph/Graphs$NodeVisitState;->COMPLETE:Lcom/google/common/graph/Graphs$NodeVisitState;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return v2
.end method

.method public static transitiveClosure(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/Graph;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph<",
            "TN;>;)",
            "Lcom/google/common/graph/Graph<",
            "TN;>;"
        }
    .end annotation

    .line 150
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    invoke-static {p0}, Lcom/google/common/graph/GraphBuilder;->from(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/GraphBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/GraphBuilder;->allowsSelfLoops(Z)Lcom/google/common/graph/GraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/graph/GraphBuilder;->build()Lcom/google/common/graph/MutableGraph;

    move-result-object v0

    .line 154
    .local v0, "transitiveClosure":Lcom/google/common/graph/MutableGraph;, "Lcom/google/common/graph/MutableGraph<TN;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->isDirected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 157
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-static {p0, v2}, Lcom/google/common/graph/Graphs;->reachableNodes(Lcom/google/common/graph/Graph;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 158
    .local v4, "reachableNode":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v2, v4}, Lcom/google/common/graph/MutableGraph;->putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .end local v4    # "reachableNode":Ljava/lang/Object;, "TN;"
    goto :goto_1

    .line 160
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    goto :goto_5

    .line 164
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 165
    .local v1, "visitedNodes":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 166
    .local v3, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 167
    invoke-static {p0, v3}, Lcom/google/common/graph/Graphs;->reachableNodes(Lcom/google/common/graph/Graph;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    .line 168
    .local v4, "reachableNodes":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 169
    const/4 v5, 0x1

    .line 170
    .local v5, "pairwiseMatch":I
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 171
    .local v7, "nodeU":Ljava/lang/Object;, "TN;"
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "pairwiseMatch":I
    .local v8, "pairwiseMatch":I
    invoke-static {v4, v5}, Lcom/google/common/collect/Iterables;->limit(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 172
    .local v9, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v7, v9}, Lcom/google/common/graph/MutableGraph;->putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    .end local v9    # "nodeV":Ljava/lang/Object;, "TN;"
    goto :goto_4

    .line 174
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "nodeU":Ljava/lang/Object;, "TN;"
    :cond_3
    move v5, v8

    goto :goto_3

    .line 176
    .end local v3    # "node":Ljava/lang/Object;, "TN;"
    .end local v4    # "reachableNodes":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "pairwiseMatch":I
    :cond_4
    goto :goto_2

    .line 179
    .end local v1    # "visitedNodes":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_5
    return-object v0
.end method

.method public static transpose(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/Graph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph<",
            "TN;>;)",
            "Lcom/google/common/graph/Graph<",
            "TN;>;"
        }
    .end annotation

    .line 343
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->isDirected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    return-object p0

    .line 347
    :cond_0
    instance-of v0, p0, Lcom/google/common/graph/Graphs$TransposedGraph;

    if-eqz v0, :cond_1

    .line 348
    move-object v0, p0

    check-cast v0, Lcom/google/common/graph/Graphs$TransposedGraph;

    invoke-static {v0}, Lcom/google/common/graph/Graphs$TransposedGraph;->access$000(Lcom/google/common/graph/Graphs$TransposedGraph;)Lcom/google/common/graph/Graph;

    move-result-object v0

    return-object v0

    .line 351
    :cond_1
    new-instance v0, Lcom/google/common/graph/Graphs$TransposedGraph;

    invoke-direct {v0, p0}, Lcom/google/common/graph/Graphs$TransposedGraph;-><init>(Lcom/google/common/graph/Graph;)V

    return-object v0
.end method

.method public static transpose(Lcom/google/common/graph/Network;)Lcom/google/common/graph/Network;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;)",
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;"
        }
    .end annotation

    .line 489
    .local p0, "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Network;->isDirected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    return-object p0

    .line 493
    :cond_0
    instance-of v0, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;

    if-eqz v0, :cond_1

    .line 494
    move-object v0, p0

    check-cast v0, Lcom/google/common/graph/Graphs$TransposedNetwork;

    invoke-static {v0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->access$200(Lcom/google/common/graph/Graphs$TransposedNetwork;)Lcom/google/common/graph/Network;

    move-result-object v0

    return-object v0

    .line 497
    :cond_1
    new-instance v0, Lcom/google/common/graph/Graphs$TransposedNetwork;

    invoke-direct {v0, p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;-><init>(Lcom/google/common/graph/Network;)V

    return-object v0
.end method

.method public static transpose(Lcom/google/common/graph/ValueGraph;)Lcom/google/common/graph/ValueGraph;
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
            "Lcom/google/common/graph/ValueGraph<",
            "TN;TV;>;"
        }
    .end annotation

    .line 411
    .local p0, "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->isDirected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    return-object p0

    .line 415
    :cond_0
    instance-of v0, p0, Lcom/google/common/graph/Graphs$TransposedValueGraph;

    if-eqz v0, :cond_1

    .line 416
    move-object v0, p0

    check-cast v0, Lcom/google/common/graph/Graphs$TransposedValueGraph;

    invoke-static {v0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->access$100(Lcom/google/common/graph/Graphs$TransposedValueGraph;)Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    return-object v0

    .line 419
    :cond_1
    new-instance v0, Lcom/google/common/graph/Graphs$TransposedValueGraph;

    invoke-direct {v0, p0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;-><init>(Lcom/google/common/graph/ValueGraph;)V

    return-object v0
.end method
