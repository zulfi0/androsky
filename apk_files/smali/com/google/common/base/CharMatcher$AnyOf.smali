.class final Lcom/google/common/base/CharMatcher$AnyOf;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnyOf"
.end annotation


# instance fields
.field private final chars:[C


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "chars"    # Ljava/lang/CharSequence;

    .line 1828
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    .line 1829
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/CharMatcher$AnyOf;->chars:[C

    .line 1830
    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 1831
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 1824
    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-super {p0, v0}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 1835
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$AnyOf;->chars:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 4
    .param p1, "table"    # Ljava/util/BitSet;

    .line 1841
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$AnyOf;->chars:[C

    .local v0, "arr$":[C
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-char v3, v0, v2

    .line 1842
    .local v3, "c":C
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 1841
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1844
    .end local v0    # "arr$":[C
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1848
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CharMatcher.anyOf(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1849
    .local v0, "description":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/common/base/CharMatcher$AnyOf;->chars:[C

    .local v1, "arr$":[C
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-char v4, v1, v3

    .line 1850
    .local v4, "c":C
    invoke-static {v4}, Lcom/google/common/base/CharMatcher;->access$100(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1849
    .end local v4    # "c":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1852
    .end local v1    # "arr$":[C
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1853
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
