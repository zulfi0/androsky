.class public final Lcom/google/common/math/Quantiles$ScaleAndIndexes;
.super Ljava/lang/Object;
.source "Quantiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/Quantiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScaleAndIndexes"
.end annotation


# instance fields
.field private final indexes:[I

.field private final scale:I


# direct methods
.method private constructor <init>(I[I)V
    .locals 4
    .param p1, "scale"    # I
    .param p2, "indexes"    # [I

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 317
    .local v3, "index":I
    invoke-static {v3, p1}, Lcom/google/common/math/Quantiles;->access$300(II)V

    .line 316
    .end local v3    # "index":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    .end local v0    # "arr$":[I
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    iput p1, p0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    .line 320
    iput-object p2, p0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    .line 321
    return-void
.end method

.method synthetic constructor <init>(I[ILcom/google/common/math/Quantiles$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # [I
    .param p3, "x2"    # Lcom/google/common/math/Quantiles$1;

    .line 310
    invoke-direct {p0, p1, p2}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;-><init>(I[I)V

    return-void
.end method


# virtual methods
.method public compute(Ljava/util/Collection;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 333
    .local p1, "dataset":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    invoke-static {p1}, Lcom/google/common/primitives/Doubles;->toArray(Ljava/util/Collection;)[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs compute([D)Ljava/util/Map;
    .locals 1
    .param p1, "dataset"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 345
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs compute([I)Ljava/util/Map;
    .locals 1
    .param p1, "dataset"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 370
    invoke-static {p1}, Lcom/google/common/math/Quantiles;->access$500([I)[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs compute([J)Ljava/util/Map;
    .locals 1
    .param p1, "dataset"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 358
    invoke-static {p1}, Lcom/google/common/math/Quantiles;->access$400([J)[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs computeInPlace([D)Ljava/util/Map;
    .locals 22
    .param p1, "dataset"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 382
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    array-length v1, v7

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "Cannot calculate quantiles of an empty dataset"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 383
    invoke-static/range {p1 .. p1}, Lcom/google/common/math/Quantiles;->access$600([D)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 384
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 385
    .local v1, "nanMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    iget-object v2, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    .local v2, "arr$":[I
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    .line 386
    .local v5, "index":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v1, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .end local v5    # "index":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 388
    .end local v2    # "arr$":[I
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    return-object v2

    .line 396
    .end local v1    # "nanMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :cond_2
    iget-object v1, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v4, v1

    new-array v8, v4, [I

    .line 397
    .local v8, "quotients":[I
    array-length v4, v1

    new-array v9, v4, [I

    .line 399
    .local v9, "remainders":[I
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v10, v1, [I

    .line 400
    .local v10, "requiredSelections":[I
    const/4 v1, 0x0

    .line 401
    .local v1, "requiredSelectionsCount":I
    const/4 v4, 0x0

    move v11, v1

    .end local v1    # "requiredSelectionsCount":I
    .local v4, "i":I
    .local v11, "requiredSelectionsCount":I
    :goto_2
    iget-object v1, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v5, v1

    if-ge v4, v5, :cond_4

    .line 404
    aget v1, v1, v4

    int-to-long v5, v1

    array-length v1, v7

    sub-int/2addr v1, v3

    int-to-long v12, v1

    mul-long v5, v5, v12

    .line 409
    .local v5, "numerator":J
    iget v1, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    int-to-long v12, v1

    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static {v5, v6, v12, v13, v1}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v12

    long-to-int v1, v12

    .line 410
    .local v1, "quotient":I
    int-to-long v12, v1

    iget v14, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    int-to-long v14, v14

    mul-long v12, v12, v14

    sub-long v12, v5, v12

    long-to-int v13, v12

    .line 411
    .local v13, "remainder":I
    aput v1, v8, v4

    .line 412
    aput v13, v9, v4

    .line 413
    aput v1, v10, v11

    .line 414
    add-int/lit8 v11, v11, 0x1

    .line 415
    if-eqz v13, :cond_3

    .line 416
    add-int/lit8 v12, v1, 0x1

    aput v12, v10, v11

    .line 417
    add-int/lit8 v11, v11, 0x1

    .line 401
    .end local v1    # "quotient":I
    .end local v5    # "numerator":J
    .end local v13    # "remainder":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 420
    .end local v4    # "i":I
    :cond_4
    invoke-static {v10, v2, v11}, Ljava/util/Arrays;->sort([III)V

    .line 421
    const/4 v2, 0x0

    add-int/lit8 v4, v11, -0x1

    const/4 v5, 0x0

    array-length v1, v7

    add-int/lit8 v6, v1, -0x1

    move-object v1, v10

    move v3, v4

    move-object/from16 v4, p1

    invoke-static/range {v1 .. v6}, Lcom/google/common/math/Quantiles;->access$900([III[DII)V

    .line 423
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 424
    .local v1, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v3, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v4, v3

    if-ge v2, v4, :cond_6

    .line 425
    aget v4, v8, v2

    .line 426
    .local v4, "quotient":I
    aget v5, v9, v2

    .line 427
    .local v5, "remainder":I
    if-nez v5, :cond_5

    .line 428
    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-wide v12, v7, v4

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 430
    :cond_5
    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-wide v12, v7, v4

    add-int/lit8 v6, v4, 0x1

    aget-wide v14, v7, v6

    int-to-double v6, v5

    move/from16 v20, v4

    .end local v4    # "quotient":I
    .local v20, "quotient":I
    iget v4, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    move/from16 v21, v5

    .end local v5    # "remainder":I
    .local v21, "remainder":I
    int-to-double v4, v4

    move-wide/from16 v16, v6

    move-wide/from16 v18, v4

    invoke-static/range {v12 .. v19}, Lcom/google/common/math/Quantiles;->access$800(DDDD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .end local v20    # "quotient":I
    .end local v21    # "remainder":I
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v7, p1

    goto :goto_3

    .line 434
    .end local v2    # "i":I
    :cond_6
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method
