.class final Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Helper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper<",
        "TK;TV;",
        "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
        "TK;TV;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 501
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;

    invoke-direct {v0}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 498
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instance()Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<",
            "TK;TV;>;"
        }
    .end annotation

    .line 505
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 3
    .param p1, "x0"    # Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .param p2, "x1"    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .param p3, "x2"    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 498
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    move-object v1, p2

    check-cast v1, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-object v2, p3

    check-cast v2, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->copy(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object v0

    return-object v0
.end method

.method public copy(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
    .locals 1
    .param p3    # Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 532
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    .local p2, "entry":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    .local p3, "newNext":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    invoke-static {p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    const/4 v0, 0x0

    return-object v0

    .line 535
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->access$100(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->copy(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object v0

    return-object v0
.end method

.method public keyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 510
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public bridge synthetic newEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 2
    .param p1, "x0"    # Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 498
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    move-object v1, p4

    check-cast v1, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->newEntry(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object v0

    return-object v0
.end method

.method public newEntry(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
    .locals 1
    .param p3, "hash"    # I
    .param p4    # Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 550
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;-><init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)V

    return-object v0
.end method

.method public bridge synthetic newSegment(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1
    .param p1, "x0"    # Lcom/google/common/collect/MapMakerInternalMap;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .line 498
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->newSegment(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    move-result-object v0

    return-object v0
.end method

.method public newSegment(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;
    .locals 1
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;>;II)",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 524
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    .local p1, "map":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;>;"
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method public bridge synthetic setValue(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 2
    .param p1, "x0"    # Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .param p2, "x1"    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .param p3, "x2"    # Ljava/lang/Object;

    .line 498
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    move-object v1, p2

    check-cast v1, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    invoke-virtual {p0, v0, v1, p3}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->setValue(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 541
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    .local p2, "entry":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->access$100(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->setValue(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 542
    return-void
.end method

.method public valueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 515
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method
