.class Lcom/google/common/collect/TreeRangeMap$SubRangeMap;
.super Ljava/lang/Object;
.source "TreeRangeMap.java"

# interfaces
.implements Lcom/google/common/collect/RangeMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubRangeMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/RangeMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final subRange:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range<",
            "TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/TreeRangeMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeMap;Lcom/google/common/collect/Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TK;>;)V"
        }
    .end annotation

    .line 333
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    .local p2, "subRange":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p2, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;

    .line 335
    return-void
.end method

.method static synthetic access$200(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)Lcom/google/common/collect/Range;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    .line 329
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;

    return-object v0
.end method


# virtual methods
.method public asDescendingMapOfRanges()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 432
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1;-><init>(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)V

    return-object v0
.end method

.method public asMapOfRanges()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 427
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;-><init>(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)V

    return-object v0
.end method

.method public clear()V
    .locals 2

    .line 406
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/TreeRangeMap;->remove(Lcom/google/common/collect/Range;)V

    .line 407
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 465
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    instance-of v0, p1, Lcom/google/common/collect/RangeMap;

    if-eqz v0, :cond_0

    .line 466
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/RangeMap;

    .line 467
    .local v0, "rangeMap":Lcom/google/common/collect/RangeMap;, "Lcom/google/common/collect/RangeMap<**>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 469
    .end local v0    # "rangeMap":Lcom/google/common/collect/RangeMap;, "Lcom/google/common/collect/RangeMap<**>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 340
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/TreeRangeMap;->get(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 346
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/TreeRangeMap;->getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 348
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Range<TK;>;TV;>;"
    if-eqz v0, :cond_0

    .line 349
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    return-object v1

    .line 352
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Range<TK;>;TV;>;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 474
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public put(Lcom/google/common/collect/Range;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;)V"
        }
    .end annotation

    .line 385
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;

    const-string v2, "Cannot put range %s into a subRangeMap(%s)"

    invoke-static {v0, v2, p1, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 387
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/TreeRangeMap;->put(Lcom/google/common/collect/Range;Ljava/lang/Object;)V

    .line 388
    return-void
.end method

.method public putAll(Lcom/google/common/collect/RangeMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 392
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    .local p1, "rangeMap":Lcom/google/common/collect/RangeMap;, "Lcom/google/common/collect/RangeMap<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    return-void

    .line 395
    :cond_0
    invoke-interface {p1}, Lcom/google/common/collect/RangeMap;->span()Lcom/google/common/collect/Range;

    move-result-object v0

    .line 396
    .local v0, "span":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;

    const-string v3, "Cannot putAll rangeMap with span %s into a subRangeMap(%s)"

    invoke-static {v1, v3, v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 401
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/TreeRangeMap;->putAll(Lcom/google/common/collect/RangeMap;)V

    .line 402
    return-void
.end method

.method public remove(Lcom/google/common/collect/Range;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TK;>;)V"
        }
    .end annotation

    .line 411
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/TreeRangeMap;->remove(Lcom/google/common/collect/Range;)V

    .line 414
    :cond_0
    return-void
.end method

.method public span()Lcom/google/common/collect/Range;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Range<",
            "TK;>;"
        }
    .end annotation

    .line 358
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    invoke-static {v0}, Lcom/google/common/collect/TreeRangeMap;->access$000(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;

    iget-object v1, v1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 360
    .local v0, "lowerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TK;>;Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;

    invoke-virtual {v1}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getUpperBound()Lcom/google/common/collect/Cut;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v1

    if-lez v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;

    iget-object v1, v1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .local v1, "lowerBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TK;>;"
    goto :goto_0

    .line 364
    .end local v1    # "lowerBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TK;>;"
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    invoke-static {v1}, Lcom/google/common/collect/TreeRangeMap;->access$000(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Cut;

    .line 365
    .restart local v1    # "lowerBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TK;>;"
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v2

    if-gez v2, :cond_3

    .line 371
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    invoke-static {v2}, Lcom/google/common/collect/TreeRangeMap;->access$000(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;

    iget-object v3, v3, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-interface {v2, v3}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 373
    .local v2, "upperEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TK;>;Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;>;"
    if-eqz v2, :cond_2

    .line 375
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;

    invoke-virtual {v3}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getUpperBound()Lcom/google/common/collect/Cut;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;

    iget-object v4, v4, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v3, v4}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 376
    iget-object v3, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;

    iget-object v3, v3, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .local v3, "upperBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TK;>;"
    goto :goto_1

    .line 378
    .end local v3    # "upperBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TK;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;

    invoke-virtual {v3}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getUpperBound()Lcom/google/common/collect/Cut;

    move-result-object v3

    .line 380
    .restart local v3    # "upperBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TK;>;"
    :goto_1
    invoke-static {v1, v3}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v4

    return-object v4

    .line 374
    .end local v3    # "upperBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TK;>;"
    :cond_2
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    .line 366
    .end local v2    # "upperEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TK;>;Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;>;"
    :cond_3
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TK;>;)",
            "Lcom/google/common/collect/RangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 418
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    invoke-static {v0}, Lcom/google/common/collect/TreeRangeMap;->access$100(Lcom/google/common/collect/TreeRangeMap;)Lcom/google/common/collect/RangeMap;

    move-result-object v0

    return-object v0

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/TreeRangeMap;->subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeMap;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 479
    .local p0, "this":Lcom/google/common/collect/TreeRangeMap$SubRangeMap;, "Lcom/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
