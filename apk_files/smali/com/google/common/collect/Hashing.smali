.class final Lcom/google/common/collect/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# static fields
.field private static final C1:I = -0x3361d2af

.field private static final C2:I = 0x1b873593

.field private static final MAX_TABLE_SIZE:I = 0x40000000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static closedTableSize(ID)I
    .locals 3
    .param p0, "expectedEntries"    # I
    .param p1, "loadFactor"    # D

    .line 58
    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 59
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 61
    .local v0, "tableSize":I
    int-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, p1

    double-to-int v1, v1

    if-le p0, v1, :cond_1

    .line 62
    shl-int/lit8 v0, v0, 0x1

    .line 63
    if-lez v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    :goto_0
    return v1

    .line 65
    :cond_1
    return v0
.end method

.method static needsResizing(IID)Z
    .locals 5
    .param p0, "size"    # I
    .param p1, "tableSize"    # I
    .param p2, "loadFactor"    # D

    .line 69
    int-to-double v0, p0

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, p2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static smear(I)I
    .locals 2
    .param p0, "hashCode"    # I

    .line 46
    const v0, -0x3361d2af    # -8.2930312E7f

    mul-int v0, v0, p0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    const v1, 0x1b873593

    mul-int v0, v0, v1

    return v0
.end method

.method static smearedHash(Ljava/lang/Object;)I
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v0

    return v0
.end method
