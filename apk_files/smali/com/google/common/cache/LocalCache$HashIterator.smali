.class abstract Lcom/google/common/cache/LocalCache$HashIterator;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "HashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field currentSegment:Lcom/google/common/cache/LocalCache$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field lastReturned:Lcom/google/common/cache/LocalCache$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache<",
            "TK;TV;>.WriteThroughEntry;"
        }
    .end annotation
.end field

.field nextEntry:Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field nextExternal:Lcom/google/common/cache/LocalCache$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache<",
            "TK;TV;>.WriteThroughEntry;"
        }
    .end annotation
.end field

.field nextSegmentIndex:I

.field nextTableIndex:I

.field final synthetic this$0:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;)V
    .locals 0

    .line 4373
    .local p0, "this":Lcom/google/common/cache/LocalCache$HashIterator;, "Lcom/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$HashIterator;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4374
    iget-object p1, p1, Lcom/google/common/cache/LocalCache;->segments:[Lcom/google/common/cache/LocalCache$Segment;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextSegmentIndex:I

    .line 4375
    const/4 p1, -0x1

    iput p1, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextTableIndex:I

    .line 4376
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$HashIterator;->advance()V

    .line 4377
    return-void
.end method


# virtual methods
.method final advance()V
    .locals 3

    .line 4383
    .local p0, "this":Lcom/google/common/cache/LocalCache$HashIterator;, "Lcom/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextExternal:Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    .line 4385
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$HashIterator;->nextInChain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4386
    return-void

    .line 4389
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$HashIterator;->nextInTable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4390
    return-void

    .line 4393
    :cond_1
    iget v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextSegmentIndex:I

    if-ltz v0, :cond_2

    .line 4394
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->this$0:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->segments:[Lcom/google/common/cache/LocalCache$Segment;

    iget v1, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextSegmentIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextSegmentIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->currentSegment:Lcom/google/common/cache/LocalCache$Segment;

    .line 4395
    iget v0, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v0, :cond_1

    .line 4396
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->currentSegment:Lcom/google/common/cache/LocalCache$Segment;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4397
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextTableIndex:I

    .line 4398
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$HashIterator;->nextInTable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4399
    return-void

    .line 4403
    :cond_2
    return-void
.end method

.method advanceTo(Lcom/google/common/cache/LocalCache$ReferenceEntry;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 4439
    .local p0, "this":Lcom/google/common/cache/LocalCache$HashIterator;, "Lcom/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->this$0:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    .line 4440
    .local v0, "now":J
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 4441
    .local v2, "key":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$HashIterator;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v3, p1, v0, v1}, Lcom/google/common/cache/LocalCache;->getLiveValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v3

    .line 4442
    .local v3, "value":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_0

    .line 4443
    new-instance v4, Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    iget-object v5, p0, Lcom/google/common/cache/LocalCache$HashIterator;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-direct {v4, v5, v2, v3}, Lcom/google/common/cache/LocalCache$WriteThroughEntry;-><init>(Lcom/google/common/cache/LocalCache;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextExternal:Lcom/google/common/cache/LocalCache$WriteThroughEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4444
    const/4 v4, 0x1

    .line 4450
    :goto_0
    iget-object v5, p0, Lcom/google/common/cache/LocalCache$HashIterator;->currentSegment:Lcom/google/common/cache/LocalCache$Segment;

    invoke-virtual {v5}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    return v4

    .line 4447
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 4450
    .end local v0    # "now":J
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$HashIterator;->currentSegment:Lcom/google/common/cache/LocalCache$Segment;

    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public hasNext()Z
    .locals 1

    .line 4456
    .local p0, "this":Lcom/google/common/cache/LocalCache$HashIterator;, "Lcom/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextExternal:Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract next()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method nextEntry()Lcom/google/common/cache/LocalCache$WriteThroughEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache<",
            "TK;TV;>.WriteThroughEntry;"
        }
    .end annotation

    .line 4460
    .local p0, "this":Lcom/google/common/cache/LocalCache$HashIterator;, "Lcom/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextExternal:Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    if-eqz v0, :cond_0

    .line 4463
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->lastReturned:Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    .line 4464
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$HashIterator;->advance()V

    .line 4465
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->lastReturned:Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    return-object v0

    .line 4461
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method nextInChain()Z
    .locals 1

    .line 4409
    .local p0, "this":Lcom/google/common/cache/LocalCache$HashIterator;, "Lcom/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextEntry:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    if-eqz v0, :cond_1

    .line 4410
    nop

    :goto_0
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextEntry:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextEntry:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    if-eqz v0, :cond_1

    .line 4411
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$HashIterator;->advanceTo(Lcom/google/common/cache/LocalCache$ReferenceEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4412
    const/4 v0, 0x1

    return v0

    .line 4410
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextEntry:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    goto :goto_0

    .line 4416
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method nextInTable()Z
    .locals 3

    .line 4423
    .local p0, "this":Lcom/google/common/cache/LocalCache$HashIterator;, "Lcom/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    :cond_0
    iget v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextTableIndex:I

    if-ltz v0, :cond_2

    .line 4424
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextTableIndex:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextEntry:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    if-eqz v0, :cond_0

    .line 4425
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$HashIterator;->advanceTo(Lcom/google/common/cache/LocalCache$ReferenceEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$HashIterator;->nextInChain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4426
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 4430
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public remove()V
    .locals 2

    .line 4470
    .local p0, "this":Lcom/google/common/cache/LocalCache$HashIterator;, "Lcom/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->lastReturned:Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 4471
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->this$0:Lcom/google/common/cache/LocalCache;

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$HashIterator;->lastReturned:Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/cache/LocalCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->lastReturned:Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    .line 4473
    return-void
.end method
