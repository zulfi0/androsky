.class public final Lcom/google/common/collect/TreeMultiset;
.super Lcom/google/common/collect/AbstractSortedMultiset;
.source "TreeMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/TreeMultiset$AvlNode;,
        Lcom/google/common/collect/TreeMultiset$Reference;,
        Lcom/google/common/collect/TreeMultiset$Aggregate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractSortedMultiset<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient header:Lcom/google/common/collect/TreeMultiset$AvlNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final transient range:Lcom/google/common/collect/GeneralRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/GeneralRange<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final transient rootReference:Lcom/google/common/collect/TreeMultiset$Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$Reference<",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeMultiset$Reference;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/TreeMultiset$AvlNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$Reference<",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;>;",
            "Lcom/google/common/collect/GeneralRange<",
            "TE;>;",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;)V"
        }
    .end annotation

    .line 115
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, "rootReference":Lcom/google/common/collect/TreeMultiset$Reference;, "Lcom/google/common/collect/TreeMultiset$Reference<Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;>;"
    .local p2, "range":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TE;>;"
    .local p3, "endLink":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    invoke-virtual {p2}, Lcom/google/common/collect/GeneralRange;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSortedMultiset;-><init>(Ljava/util/Comparator;)V

    .line 116
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    .line 117
    iput-object p2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    .line 118
    iput-object p3, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 119
    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 122
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;-><init>(Ljava/util/Comparator;)V

    .line 123
    invoke-static {p1}, Lcom/google/common/collect/GeneralRange;->all(Ljava/util/Comparator;)Lcom/google/common/collect/GeneralRange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    .line 124
    new-instance v0, Lcom/google/common/collect/TreeMultiset$AvlNode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeMultiset$AvlNode;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 125
    invoke-static {v0, v0}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    .line 126
    new-instance v0, Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-direct {v0, v1}, Lcom/google/common/collect/TreeMultiset$Reference;-><init>(Lcom/google/common/collect/TreeMultiset$1;)V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    .line 127
    return-void
.end method

.method static synthetic access$1200(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset;

    .line 58
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->firstNode()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/GeneralRange;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset;

    .line 58
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset;
    .param p1, "x1"    # Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 58
    invoke-direct {p0, p1}, Lcom/google/common/collect/TreeMultiset;->wrapEntry(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset;

    .line 58
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset;

    .line 58
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->lastNode()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;
    .param p1, "x1"    # Lcom/google/common/collect/TreeMultiset$AvlNode;
    .param p2, "x2"    # Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 58
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;
    .param p1, "x1"    # Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 58
    invoke-static {p0, p1}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    return-void
.end method

.method private aggregateAboveRange(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$AvlNode;)J
    .locals 5
    .param p1, "aggr"    # Lcom/google/common/collect/TreeMultiset$Aggregate;
    .param p2    # Lcom/google/common/collect/TreeMultiset$AvlNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$Aggregate;",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;)J"
        }
    .end annotation

    .line 197
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p2, "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez p2, :cond_0

    .line 198
    const-wide/16 v0, 0x0

    return-wide v0

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v1}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$500(Lcom/google/common/collect/TreeMultiset$AvlNode;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 201
    .local v0, "cmp":I
    if-lez v0, :cond_1

    .line 202
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$700(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/TreeMultiset;->aggregateAboveRange(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v1

    return-wide v1

    .line 203
    :cond_1
    if-nez v0, :cond_4

    .line 204
    sget-object v1, Lcom/google/common/collect/TreeMultiset$4;->$SwitchMap$com$google$common$collect$BoundType:[I

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v2}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 208
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$700(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/common/collect/TreeMultiset$Aggregate;->treeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v1

    return-wide v1

    .line 210
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 206
    :cond_3
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->nodeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$700(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/common/collect/TreeMultiset$Aggregate;->treeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v3

    add-long/2addr v1, v3

    return-wide v1

    .line 213
    :cond_4
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$700(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/common/collect/TreeMultiset$Aggregate;->treeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v1

    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->nodeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$600(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/google/common/collect/TreeMultiset;->aggregateAboveRange(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v3

    add-long/2addr v1, v3

    return-wide v1
.end method

.method private aggregateBelowRange(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$AvlNode;)J
    .locals 5
    .param p1, "aggr"    # Lcom/google/common/collect/TreeMultiset$Aggregate;
    .param p2    # Lcom/google/common/collect/TreeMultiset$AvlNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$Aggregate;",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;)J"
        }
    .end annotation

    .line 174
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p2, "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez p2, :cond_0

    .line 175
    const-wide/16 v0, 0x0

    return-wide v0

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v1}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$500(Lcom/google/common/collect/TreeMultiset$AvlNode;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 178
    .local v0, "cmp":I
    if-gez v0, :cond_1

    .line 179
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$600(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/TreeMultiset;->aggregateBelowRange(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v1

    return-wide v1

    .line 180
    :cond_1
    if-nez v0, :cond_4

    .line 181
    sget-object v1, Lcom/google/common/collect/TreeMultiset$4;->$SwitchMap$com$google$common$collect$BoundType:[I

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v2}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 185
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$600(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/common/collect/TreeMultiset$Aggregate;->treeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v1

    return-wide v1

    .line 187
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 183
    :cond_3
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->nodeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$600(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/common/collect/TreeMultiset$Aggregate;->treeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v3

    add-long/2addr v1, v3

    return-wide v1

    .line 190
    :cond_4
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$600(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/common/collect/TreeMultiset$Aggregate;->treeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v1

    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->nodeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$700(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/google/common/collect/TreeMultiset;->aggregateBelowRange(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v3

    add-long/2addr v1, v3

    return-wide v1
.end method

.method private aggregateForEntries(Lcom/google/common/collect/TreeMultiset$Aggregate;)J
    .locals 5
    .param p1, "aggr"    # Lcom/google/common/collect/TreeMultiset$Aggregate;

    .line 162
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 163
    .local v0, "root":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    invoke-virtual {p1, v0}, Lcom/google/common/collect/TreeMultiset$Aggregate;->treeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v1

    .line 164
    .local v1, "total":J
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v3}, Lcom/google/common/collect/GeneralRange;->hasLowerBound()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->aggregateBelowRange(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 167
    :cond_0
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v3}, Lcom/google/common/collect/GeneralRange;->hasUpperBound()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->aggregateAboveRange(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 170
    :cond_1
    return-wide v1
.end method

.method public static create()Lcom/google/common/collect/TreeMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/TreeMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/TreeMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/TreeMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 105
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-static {}, Lcom/google/common/collect/TreeMultiset;->create()Lcom/google/common/collect/TreeMultiset;

    move-result-object v0

    .line 106
    .local v0, "multiset":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 107
    return-object v0
.end method

.method public static create(Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultiset;
    .locals 2
    .param p0    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Lcom/google/common/collect/TreeMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 90
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    :goto_0
    return-object v0
.end method

.method static distinctElements(Lcom/google/common/collect/TreeMultiset$AvlNode;)I
    .locals 1
    .param p0    # Lcom/google/common/collect/TreeMultiset$AvlNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "*>;)I"
        }
    .end annotation

    .line 509
    .local p0, "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<*>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$400(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private firstNode()Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 364
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 365
    .local v0, "root":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 366
    return-object v1

    .line 369
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v2}, Lcom/google/common/collect/GeneralRange;->hasLowerBound()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 370
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v2}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v2

    .line 371
    .local v2, "endpoint":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v3}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$800(Lcom/google/common/collect/TreeMultiset$AvlNode;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v3

    .line 372
    .local v3, "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez v3, :cond_1

    .line 373
    return-object v1

    .line 375
    :cond_1
    iget-object v4, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v4}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v4

    sget-object v5, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v4, v5, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/common/collect/TreeMultiset$AvlNode;->getElement()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_2

    .line 377
    invoke-static {v3}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$900(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v3

    .line 379
    .end local v2    # "endpoint":Ljava/lang/Object;, "TE;"
    :cond_2
    goto :goto_0

    .line 380
    .end local v3    # "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_3
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$900(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v3

    .line 382
    .restart local v3    # "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-eq v3, v2, :cond_5

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v3}, Lcom/google/common/collect/TreeMultiset$AvlNode;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v3

    :cond_5
    :goto_1
    return-object v1
.end method

.method private lastNode()Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 387
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 388
    .local v0, "root":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 389
    return-object v1

    .line 392
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v2}, Lcom/google/common/collect/GeneralRange;->hasUpperBound()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 393
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v2}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v2

    .line 394
    .local v2, "endpoint":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v3}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$1000(Lcom/google/common/collect/TreeMultiset$AvlNode;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v3

    .line 395
    .local v3, "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez v3, :cond_1

    .line 396
    return-object v1

    .line 398
    :cond_1
    iget-object v4, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v4}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v4

    sget-object v5, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v4, v5, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/common/collect/TreeMultiset$AvlNode;->getElement()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_2

    .line 400
    invoke-static {v3}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$1100(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v3

    .line 402
    .end local v2    # "endpoint":Ljava/lang/Object;, "TE;"
    :cond_2
    goto :goto_0

    .line 403
    .end local v3    # "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_3
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$1100(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v3

    .line 405
    .restart local v3    # "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-eq v3, v2, :cond_5

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v3}, Lcom/google/common/collect/TreeMultiset$AvlNode;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v3

    :cond_5
    :goto_1
    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 977
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    const-class v0, Lcom/google/common/collect/TreeMultiset;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 980
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Comparator;

    .line 981
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    const-class v2, Lcom/google/common/collect/AbstractSortedMultiset;

    const-string v3, "comparator"

    invoke-static {v2, v3}, Lcom/google/common/collect/Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 982
    const-string v2, "range"

    invoke-static {v0, v2}, Lcom/google/common/collect/Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    move-result-object v2

    invoke-static {v1}, Lcom/google/common/collect/GeneralRange;->all(Ljava/util/Comparator;)Lcom/google/common/collect/GeneralRange;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 984
    const-string v2, "rootReference"

    invoke-static {v0, v2}, Lcom/google/common/collect/Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    move-result-object v2

    new-instance v3, Lcom/google/common/collect/TreeMultiset$Reference;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/common/collect/TreeMultiset$Reference;-><init>(Lcom/google/common/collect/TreeMultiset$1;)V

    invoke-virtual {v2, p0, v3}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 986
    new-instance v2, Lcom/google/common/collect/TreeMultiset$AvlNode;

    const/4 v3, 0x1

    invoke-direct {v2, v4, v3}, Lcom/google/common/collect/TreeMultiset$AvlNode;-><init>(Ljava/lang/Object;I)V

    .line 987
    .local v2, "header":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    const-string v3, "header"

    invoke-static {v0, v3}, Lcom/google/common/collect/Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 988
    invoke-static {v2, v2}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    .line 989
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->populateMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectInputStream;)V

    .line 990
    return-void
.end method

.method private static successor(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TT;>;",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TT;>;)V"
        }
    .end annotation

    .line 949
    .local p0, "a":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TT;>;"
    .local p1, "b":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TT;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$902(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 950
    invoke-static {p1, p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$1102(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 951
    return-void
.end method

.method private static successor(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TT;>;",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TT;>;",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TT;>;)V"
        }
    .end annotation

    .line 954
    .local p0, "a":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TT;>;"
    .local p1, "b":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TT;>;"
    .local p2, "c":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TT;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    .line 955
    invoke-static {p1, p2}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    .line 956
    return-void
.end method

.method private wrapEntry(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;)",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 341
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, "baseEntry":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    new-instance v0, Lcom/google/common/collect/TreeMultiset$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/TreeMultiset$1;-><init>(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 970
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 971
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 972
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectOutputStream;)V

    .line 973
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 249
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 250
    if-nez p2, :cond_0

    .line 251
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 254
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 255
    .local v0, "root":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2, p1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 257
    new-instance v2, Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v2, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;-><init>(Ljava/lang/Object;I)V

    .line 258
    .local v2, "newRoot":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v3, v2, v3}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    .line 259
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v3, v0, v2}, Lcom/google/common/collect/TreeMultiset$Reference;->checkAndSet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 260
    return v1

    .line 262
    .end local v2    # "newRoot":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 263
    .local v2, "result":[I
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0, v3, p1, p2, v2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->add(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v3

    .line 264
    .local v3, "newRoot":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v4, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v4, v0, v3}, Lcom/google/common/collect/TreeMultiset$Reference;->checkAndSet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 265
    aget v1, v2, v1

    return v1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 57
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "x0"    # Ljava/util/Collection;

    .line 57
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .line 57
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->clear()V

    return-void
.end method

.method public bridge synthetic comparator()Ljava/util/Comparator;
    .locals 1

    .line 57
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 57
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 4
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 233
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    move-object v0, p1

    .line 234
    .local v0, "e":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v2}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 235
    .local v2, "root":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->count(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 236
    :cond_1
    :goto_0
    return v1

    .line 241
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v2    # "root":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/NullPointerException;
    return v1

    .line 239
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/ClassCastException;
    return v1
.end method

.method descendingEntryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 452
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/TreeMultiset$3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeMultiset$3;-><init>(Lcom/google/common/collect/TreeMultiset;)V

    return-object v0
.end method

.method public bridge synthetic descendingMultiset()Lcom/google/common/collect/SortedMultiset;
    .locals 1

    .line 57
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->descendingMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method distinctElements()I
    .locals 2

    .line 226
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    sget-object v0, Lcom/google/common/collect/TreeMultiset$Aggregate;->DISTINCT:Lcom/google/common/collect/TreeMultiset$Aggregate;

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeMultiset;->aggregateForEntries(Lcom/google/common/collect/TreeMultiset$Aggregate;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic elementSet()Ljava/util/NavigableSet;
    .locals 1

    .line 57
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 410
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/TreeMultiset$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeMultiset$2;-><init>(Lcom/google/common/collect/TreeMultiset;)V

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 57
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 57
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic firstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1

    .line 57
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->firstEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 57
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 494
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, "upperBound":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/google/common/collect/GeneralRange;->upTo(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/GeneralRange;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/GeneralRange;->intersect(Lcom/google/common/collect/GeneralRange;)Lcom/google/common/collect/GeneralRange;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/TreeMultiset;-><init>(Lcom/google/common/collect/TreeMultiset$Reference;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    return-object v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 57
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 57
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic lastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1

    .line 57
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->lastEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pollFirstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1

    .line 57
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->pollFirstEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pollLastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1

    .line 57
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->pollLastEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 6
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "occurrences"    # I

    .line 271
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 272
    if-nez p2, :cond_0

    .line 273
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 276
    .local v0, "root":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 280
    .local v1, "result":[I
    move-object v2, p1

    .line 281
    .local v2, "e":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v5, v2}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 284
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v5

    invoke-virtual {v0, v5, v2, p2, v1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->remove(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 289
    .local v2, "newRoot":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    nop

    .line 290
    iget-object v4, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v4, v0, v2}, Lcom/google/common/collect/TreeMultiset$Reference;->checkAndSet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 291
    aget v3, v1, v3

    return v3

    .line 282
    .local v2, "e":Ljava/lang/Object;, "TE;"
    :cond_2
    :goto_0
    return v3

    .line 287
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v2

    .line 288
    .local v2, "e":Ljava/lang/NullPointerException;
    .local v4, "newRoot":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    return v3

    .line 285
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .end local v4    # "newRoot":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :catch_1
    move-exception v2

    .line 286
    .local v2, "e":Ljava/lang/ClassCastException;
    .restart local v4    # "newRoot":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    return v3
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 57
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "x0"    # Ljava/util/Collection;

    .line 57
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "x0"    # Ljava/util/Collection;

    .line 57
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 297
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 299
    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 300
    return v2

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 304
    .local v0, "root":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez v0, :cond_3

    .line 305
    if-lez p2, :cond_2

    .line 306
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->add(Ljava/lang/Object;I)I

    .line 308
    :cond_2
    return v2

    .line 310
    :cond_3
    new-array v1, v1, [I

    .line 311
    .local v1, "result":[I
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0, v3, p1, p2, v1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->setCount(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v3

    .line 312
    .local v3, "newRoot":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v4, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v4, v0, v3}, Lcom/google/common/collect/TreeMultiset$Reference;->checkAndSet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 313
    aget v2, v1, v2

    return v2
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "oldCount"    # I
    .param p3, "newCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .line 319
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const-string v0, "newCount"

    invoke-static {p3, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 320
    const-string v0, "oldCount"

    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 323
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 324
    .local v0, "root":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v0, :cond_2

    .line 325
    if-nez p2, :cond_1

    .line 326
    if-lez p3, :cond_0

    .line 327
    invoke-virtual {p0, p1, p3}, Lcom/google/common/collect/TreeMultiset;->add(Ljava/lang/Object;I)I

    .line 329
    :cond_0
    return v8

    .line 331
    :cond_1
    return v7

    .line 334
    :cond_2
    new-array v9, v8, [I

    .line 335
    .local v9, "result":[I
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v2

    move-object v1, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/collect/TreeMultiset$AvlNode;->setCount(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    .line 336
    .local v1, "newRoot":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v2, v0, v1}, Lcom/google/common/collect/TreeMultiset$Reference;->checkAndSet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 337
    aget v2, v9, v7

    if-ne v2, p2, :cond_3

    const/4 v7, 0x1

    :cond_3
    return v7
.end method

.method public size()I
    .locals 2

    .line 221
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    sget-object v0, Lcom/google/common/collect/TreeMultiset$Aggregate;->SIZE:Lcom/google/common/collect/TreeMultiset$Aggregate;

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeMultiset;->aggregateForEntries(Lcom/google/common/collect/TreeMultiset$Aggregate;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/google/common/collect/BoundType;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Lcom/google/common/collect/BoundType;

    .line 57
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/AbstractSortedMultiset;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 502
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, "lowerBound":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/google/common/collect/GeneralRange;->downTo(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/GeneralRange;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/GeneralRange;->intersect(Lcom/google/common/collect/GeneralRange;)Lcom/google/common/collect/GeneralRange;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/TreeMultiset;-><init>(Lcom/google/common/collect/TreeMultiset$Reference;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 57
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
