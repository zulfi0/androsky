.class abstract Lcom/google/common/base/Splitter$SplittingIterator;
.super Lcom/google/common/base/AbstractIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SplittingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/AbstractIterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field limit:I

.field offset:I

.field final omitEmptyStrings:Z

.field final toSplit:Ljava/lang/CharSequence;

.field final trimmer:Lcom/google/common/base/CharMatcher;


# direct methods
.method protected constructor <init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "splitter"    # Lcom/google/common/base/Splitter;
    .param p2, "toSplit"    # Ljava/lang/CharSequence;

    .line 525
    invoke-direct {p0}, Lcom/google/common/base/AbstractIterator;-><init>()V

    .line 522
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 526
    invoke-static {p1}, Lcom/google/common/base/Splitter;->access$200(Lcom/google/common/base/Splitter;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    .line 527
    invoke-static {p1}, Lcom/google/common/base/Splitter;->access$300(Lcom/google/common/base/Splitter;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    .line 528
    invoke-static {p1}, Lcom/google/common/base/Splitter;->access$400(Lcom/google/common/base/Splitter;)I

    move-result v0

    iput v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    .line 529
    iput-object p2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    .line 530
    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 504
    invoke-virtual {p0}, Lcom/google/common/base/Splitter$SplittingIterator;->computeNext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/lang/String;
    .locals 8

    .line 539
    iget v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 540
    .local v0, "nextStart":I
    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 541
    move v3, v0

    .line 544
    .local v3, "start":I
    invoke-virtual {p0, v1}, Lcom/google/common/base/Splitter$SplittingIterator;->separatorStart(I)I

    move-result v1

    .line 545
    .local v1, "separatorPosition":I
    if-ne v1, v2, :cond_1

    .line 546
    iget-object v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 547
    .local v4, "end":I
    iput v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_1

    .line 549
    .end local v4    # "end":I
    :cond_1
    move v4, v1

    .line 550
    .restart local v4    # "end":I
    invoke-virtual {p0, v1}, Lcom/google/common/base/Splitter$SplittingIterator;->separatorEnd(I)I

    move-result v5

    iput v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 552
    :goto_1
    iget v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    if-ne v5, v0, :cond_2

    .line 559
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 560
    iget-object v6, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 561
    iput v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_0

    .line 566
    :cond_2
    :goto_2
    if-ge v3, v4, :cond_3

    iget-object v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v6, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v6, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 567
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 569
    :cond_3
    :goto_3
    if-le v4, v3, :cond_4

    iget-object v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v6, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v7, v4, -0x1

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 570
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 573
    :cond_4
    iget-boolean v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    if-eqz v5, :cond_5

    if-ne v3, v4, :cond_5

    .line 575
    iget v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 576
    goto :goto_0

    .line 579
    :cond_5
    iget v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 583
    iget-object v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 584
    iput v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 586
    :goto_4
    if-le v4, v3, :cond_7

    iget-object v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 587
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 590
    :cond_6
    sub-int/2addr v5, v6

    iput v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    .line 593
    :cond_7
    iget-object v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v2, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 595
    .end local v1    # "separatorPosition":I
    .end local v3    # "start":I
    .end local v4    # "end":I
    :cond_8
    invoke-virtual {p0}, Lcom/google/common/base/Splitter$SplittingIterator;->endOfData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method abstract separatorEnd(I)I
.end method

.method abstract separatorStart(I)I
.end method
