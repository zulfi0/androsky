.class Lcom/google/common/primitives/Shorts$ShortArrayAsList;
.super Ljava/util/AbstractList;
.source "Shorts.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Shorts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Short;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[S

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([S)V
    .locals 2
    .param p1, "array"    # [S

    .line 496
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;-><init>([SII)V

    .line 497
    return-void
.end method

.method constructor <init>([SII)V
    .locals 0
    .param p1, "array"    # [S
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 499
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 500
    iput-object p1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    .line 501
    iput p2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    .line 502
    iput p3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    .line 503
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .line 524
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    move-object v1, p1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Shorts;->access$000([SSII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .line 572
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 573
    return v0

    .line 575
    :cond_0
    instance-of v1, p1, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    if-eqz v1, :cond_4

    .line 576
    move-object v1, p1

    check-cast v1, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    .line 577
    .local v1, "that":Lcom/google/common/primitives/Shorts$ShortArrayAsList;
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v2

    .line 578
    .local v2, "size":I
    invoke-virtual {v1}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eq v3, v2, :cond_1

    .line 579
    return v4

    .line 581
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 582
    iget-object v5, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v6, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int/2addr v6, v3

    aget-short v5, v5, v6

    iget-object v6, v1, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v7, v1, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int/2addr v7, v3

    aget-short v6, v6, v7

    if-eq v5, v6, :cond_2

    .line 583
    return v4

    .line 581
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 586
    .end local v3    # "i":I
    :cond_3
    return v0

    .line 588
    .end local v1    # "that":Lcom/google/common/primitives/Shorts$ShortArrayAsList;
    .end local v2    # "size":I
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .line 488
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->get(I)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Short;
    .locals 2
    .param p1, "index"    # I

    .line 517
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 518
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-short v0, v0, v1

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 593
    const/4 v0, 0x1

    .line 594
    .local v0, "result":I
    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    if-ge v1, v2, :cond_0

    .line 595
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    aget-short v3, v3, v1

    invoke-static {v3}, Lcom/google/common/primitives/Shorts;->hashCode(S)I

    move-result v3

    add-int v0, v2, v3

    .line 594
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 597
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .line 530
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    move-object v1, p1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Shorts;->access$000([SSII)I

    move-result v0

    .line 532
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 533
    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    sub-int v1, v0, v1

    return v1

    .line 536
    .end local v0    # "i":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 512
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .line 542
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    move-object v1, p1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Shorts;->access$100([SSII)I

    move-result v0

    .line 544
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 545
    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    sub-int v1, v0, v1

    return v1

    .line 548
    .end local v0    # "i":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .line 488
    move-object v0, p2

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->set(ILjava/lang/Short;)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/Short;)Ljava/lang/Short;
    .locals 4
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Short;

    .line 553
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 554
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int v2, v1, p1

    aget-short v2, v0, v2

    .line 556
    .local v2, "oldValue":S
    add-int/2addr v1, p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    aput-short v3, v0, v1

    .line 557
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 507
    iget v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 562
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v0

    .line 563
    .local v0, "size":I
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 564
    if-ne p1, p2, :cond_0

    .line 565
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 567
    :cond_0
    new-instance v1, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    iget-object v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int v4, v3, p1

    add-int/2addr v3, p2

    invoke-direct {v1, v2, v4, v3}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;-><init>([SII)V

    return-object v1
.end method

.method toShortArray()[S
    .locals 5

    .line 612
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v0

    .line 613
    .local v0, "size":I
    new-array v1, v0, [S

    .line 614
    .local v1, "result":[S
    iget-object v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 615
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 603
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    aget-short v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 604
    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int/lit8 v1, v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    if-ge v1, v2, :cond_0

    .line 605
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    aget-short v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 604
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 607
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
