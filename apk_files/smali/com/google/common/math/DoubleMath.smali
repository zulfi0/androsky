.class public final Lcom/google/common/math/DoubleMath;
.super Ljava/lang/Object;
.source "DoubleMath.java"


# static fields
.field private static final LN_2:D

.field static final MAX_FACTORIAL:I = 0xaa

.field private static final MAX_INT_AS_DOUBLE:D = 2.147483647E9

.field private static final MAX_LONG_AS_DOUBLE_PLUS_ONE:D = 9.223372036854776E18

.field private static final MIN_INT_AS_DOUBLE:D = -2.147483648E9

.field private static final MIN_LONG_AS_DOUBLE:D = -9.223372036854776E18

.field static final everySixteenthFactorial:[D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 220
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/DoubleMath;->LN_2:D

    .line 312
    const/16 v0, 0xb

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/DoubleMath;->everySixteenthFactorial:[D

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x42b3077775800000L    # 2.0922789888E13
        0x474956ad0aae33a4L    # 2.631308369336935E35
        0x4c9ee69a78d72cb6L    # 1.2413915592536073E61
        0x526fe478ee34844aL    # 1.2688693218588417E89
        0x589c619094edabffL    # 7.156945704626381E118
        0x5f13638dd7bd6347L    # 9.916779348709496E149
        0x65c7cac197cfe503L    # 1.974506857221074E182
        0x6cb1e5dfc140e1e5L    # 3.856204823625804E215
        0x73c8ce85fadb707eL    # 5.5502938327393044E249
        0x7b095d5f3d928edeL    # 4.7147236359920616E284
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFinite(D)D
    .locals 1
    .param p0, "argument"    # D

    .line 515
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 516
    return-wide p0
.end method

.method public static factorial(I)D
    .locals 5
    .param p0, "n"    # I

    .line 295
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 296
    const/16 v0, 0xaa

    if-le p0, v0, :cond_0

    .line 297
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    .line 301
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 302
    .local v0, "accum":D
    and-int/lit8 v2, p0, -0x10

    add-int/lit8 v2, v2, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, p0, :cond_1

    .line 303
    int-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    .line 302
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 305
    .end local v2    # "i":I
    :cond_1
    sget-object v2, Lcom/google/common/math/DoubleMath;->everySixteenthFactorial:[D

    shr-int/lit8 v3, p0, 0x4

    aget-wide v3, v2, v3

    mul-double v3, v3, v0

    return-wide v3
.end method

.method public static fuzzyCompare(DDD)I
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "tolerance"    # D

    .line 373
    invoke-static/range {p0 .. p5}, Lcom/google/common/math/DoubleMath;->fuzzyEquals(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    const/4 v0, 0x0

    return v0

    .line 375
    :cond_0
    cmpg-double v0, p0, p2

    if-gez v0, :cond_1

    .line 376
    const/4 v0, -0x1

    return v0

    .line 377
    :cond_1
    cmpl-double v0, p0, p2

    if-lez v0, :cond_2

    .line 378
    const/4 v0, 0x1

    return v0

    .line 380
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Booleans;->compare(ZZ)I

    move-result v0

    return v0
.end method

.method public static fuzzyEquals(DDD)Z
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "tolerance"    # D

    .line 351
    const-string v0, "tolerance"

    invoke-static {v0, p4, p5}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;D)D

    .line 352
    sub-double v0, p0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    cmpg-double v2, v0, p4

    if-lez v2, :cond_1

    cmpl-double v0, p0, p2

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isMathematicalInteger(D)Z
    .locals 3
    .param p0, "x"    # D

    .line 280
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-eqz v2, :cond_0

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x34

    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPowerOfTwo(D)Z
    .locals 3
    .param p0, "x"    # D

    .line 198
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/math/LongMath;->isPowerOfTwo(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static log2(D)D
    .locals 4
    .param p0, "x"    # D

    .line 217
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lcom/google/common/math/DoubleMath;->LN_2:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static log2(DLjava/math/RoundingMode;)I
    .locals 11
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 234
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpl-double v4, p0, v0

    if-lez v4, :cond_0

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "x must be positive and finite"

    invoke-static {v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 235
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v4

    .line 236
    .local v4, "exponent":I
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isNormal(D)Z

    move-result v5

    if-nez v5, :cond_1

    .line 237
    const-wide/high16 v0, 0x4330000000000000L    # 4.503599627370496E15

    mul-double v0, v0, p0

    invoke-static {v0, v1, p2}, Lcom/google/common/math/DoubleMath;->log2(DLjava/math/RoundingMode;)I

    move-result v0

    add-int/lit8 v0, v0, -0x34

    return v0

    .line 242
    :cond_1
    sget-object v5, Lcom/google/common/math/DoubleMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 267
    .local v0, "xScaled":D
    .local v2, "increment":Z
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 242
    .end local v0    # "xScaled":D
    .end local v2    # "increment":Z
    :pswitch_0
    move v0, v2

    .line 261
    .local v0, "increment":Z
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->scaleNormalize(D)D

    move-result-wide v5

    .line 264
    .local v5, "xScaled":D
    mul-double v7, v5, v5

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    cmpl-double v1, v7, v9

    if-lez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    move v0, v2

    .line 265
    goto :goto_1

    .line 242
    .end local v0    # "increment":Z
    .end local v5    # "xScaled":D
    :pswitch_1
    move v0, v2

    .line 256
    .restart local v0    # "increment":Z
    if-ltz v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v1

    xor-int/2addr v1, v3

    and-int v0, v2, v1

    .line 257
    goto :goto_1

    .line 242
    .end local v0    # "increment":Z
    :pswitch_2
    move v0, v2

    .line 253
    .restart local v0    # "increment":Z
    if-gez v4, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v1

    xor-int/2addr v1, v3

    and-int v0, v2, v1

    .line 254
    goto :goto_1

    .line 242
    .end local v0    # "increment":Z
    :pswitch_3
    move v0, v2

    .line 250
    .restart local v0    # "increment":Z
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v1

    xor-int/2addr v1, v3

    move v0, v1

    .line 251
    goto :goto_1

    .line 244
    .end local v0    # "increment":Z
    :pswitch_4
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 247
    :pswitch_5
    const/4 v0, 0x0

    .line 248
    .restart local v0    # "increment":Z
    nop

    .line 269
    :goto_1
    if-eqz v0, :cond_5

    add-int/lit8 v1, v4, 0x1

    goto :goto_2

    :cond_5
    move v1, v4

    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static mean(Ljava/lang/Iterable;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 480
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Number;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/math/DoubleMath;->mean(Ljava/util/Iterator;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static mean(Ljava/util/Iterator;)D
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 500
    .local p0, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Number;>;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "Cannot take mean of 0 values"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 501
    const-wide/16 v0, 0x1

    .line 502
    .local v0, "count":J
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/math/DoubleMath;->checkFinite(D)D

    move-result-wide v2

    .line 503
    .local v2, "mean":D
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 504
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/common/math/DoubleMath;->checkFinite(D)D

    move-result-wide v4

    .line 505
    .local v4, "value":D
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    .line 507
    sub-double v6, v4, v2

    long-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 508
    .end local v4    # "value":D
    goto :goto_0

    .line 509
    :cond_0
    return-wide v2
.end method

.method public static varargs mean([D)D
    .locals 9
    .param p0, "values"    # [D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 400
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Cannot take mean of 0 values"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 401
    const-wide/16 v2, 0x1

    .line 402
    .local v2, "count":J
    aget-wide v0, p0, v1

    invoke-static {v0, v1}, Lcom/google/common/math/DoubleMath;->checkFinite(D)D

    move-result-wide v0

    .line 403
    .local v0, "mean":D
    const/4 v4, 0x1

    .local v4, "index":I
    :goto_1
    array-length v5, p0

    if-ge v4, v5, :cond_1

    .line 404
    aget-wide v5, p0, v4

    invoke-static {v5, v6}, Lcom/google/common/math/DoubleMath;->checkFinite(D)D

    .line 405
    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    .line 407
    aget-wide v5, p0, v4

    sub-double/2addr v5, v0

    long-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    add-double/2addr v0, v5

    .line 403
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 409
    .end local v4    # "index":I
    :cond_1
    return-wide v0
.end method

.method public static varargs mean([I)D
    .locals 6
    .param p0, "values"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 426
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cannot take mean of 0 values"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 430
    const-wide/16 v0, 0x0

    .line 431
    .local v0, "sum":J
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 432
    aget v3, p0, v2

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 431
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 434
    .end local v2    # "index":I
    :cond_1
    long-to-double v2, v0

    array-length v4, p0

    int-to-double v4, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    return-wide v2
.end method

.method public static varargs mean([J)D
    .locals 9
    .param p0, "values"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 452
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Cannot take mean of 0 values"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 453
    const-wide/16 v2, 0x1

    .line 454
    .local v2, "count":J
    aget-wide v0, p0, v1

    long-to-double v0, v0

    .line 455
    .local v0, "mean":D
    const/4 v4, 0x1

    .local v4, "index":I
    :goto_1
    array-length v5, p0

    if-ge v4, v5, :cond_1

    .line 456
    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    .line 458
    aget-wide v5, p0, v4

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v0

    long-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    add-double/2addr v0, v5

    .line 455
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 460
    .end local v4    # "index":I
    :cond_1
    return-wide v0
.end method

.method static roundIntermediate(DLjava/math/RoundingMode;)D
    .locals 7
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 56
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 59
    sget-object v0, Lcom/google/common/math/DoubleMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    const-wide/16 v5, 0x0

    packed-switch v0, :pswitch_data_0

    .line 112
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 103
    :pswitch_0
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    .line 104
    .local v0, "z":D
    sub-double v5, p0, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpl-double v2, v5, v3

    if-nez v2, :cond_0

    .line 105
    return-wide p0

    .line 107
    :cond_0
    return-wide v0

    .line 93
    .end local v0    # "z":D
    :pswitch_1
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    .line 94
    .restart local v0    # "z":D
    sub-double v5, p0, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpl-double v2, v5, v3

    if-nez v2, :cond_1

    .line 95
    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v2

    add-double/2addr v2, p0

    return-wide v2

    .line 97
    :cond_1
    return-wide v0

    .line 89
    .end local v0    # "z":D
    :pswitch_2
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    return-wide v0

    .line 82
    :pswitch_3
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    return-wide p0

    .line 85
    :cond_2
    double-to-long v0, p0

    cmpl-double v2, p0, v5

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    :goto_0
    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0

    .line 79
    :pswitch_4
    return-wide p0

    .line 72
    :pswitch_5
    cmpg-double v0, p0, v5

    if-lez v0, :cond_5

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 75
    :cond_4
    double-to-long v3, p0

    add-long/2addr v3, v1

    long-to-double v0, v3

    return-wide v0

    .line 73
    :cond_5
    :goto_1
    return-wide p0

    .line 65
    :pswitch_6
    cmpl-double v0, p0, v5

    if-gez v0, :cond_7

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 68
    :cond_6
    double-to-long v3, p0

    sub-long/2addr v3, v1

    long-to-double v0, v3

    return-wide v0

    .line 66
    :cond_7
    :goto_2
    return-wide p0

    .line 61
    :pswitch_7
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 62
    return-wide p0

    .line 57
    :cond_8
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "input is infinite or NaN"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static roundToBigInteger(DLjava/math/RoundingMode;)Ljava/math/BigInteger;
    .locals 7
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 182
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide p0

    .line 183
    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    sub-double/2addr v0, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v0, v4

    if-gez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/high16 v4, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v1, p0, v4

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 184
    double-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 186
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    .line 187
    .local v0, "exponent":I
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v1

    .line 188
    .local v1, "significand":J
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    add-int/lit8 v4, v0, -0x34

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 189
    .local v3, "result":Ljava/math/BigInteger;
    const-wide/16 v4, 0x0

    cmpg-double v6, p0, v4

    if-gez v6, :cond_3

    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    return-object v4
.end method

.method public static roundToInt(DLjava/math/RoundingMode;)I
    .locals 8
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 132
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide v0

    .line 133
    .local v0, "z":D
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide v4, -0x3e1fffffffe00000L    # -2.147483649E9

    cmpl-double v6, v0, v4

    if-lez v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-wide/high16 v5, 0x41e0000000000000L    # 2.147483648E9

    cmpg-double v7, v0, v5

    if-gez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    and-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkInRange(Z)V

    .line 134
    double-to-int v2, v0

    return v2
.end method

.method public static roundToLong(DLjava/math/RoundingMode;)J
    .locals 9
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 156
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide v0

    .line 157
    .local v0, "z":D
    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    sub-double/2addr v2, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v2, v6

    if-gez v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide/high16 v6, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v3, v0, v6

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    and-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkInRange(Z)V

    .line 158
    double-to-long v2, v0

    return-wide v2
.end method
