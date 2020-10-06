.class public final Lcom/google/common/math/IntMath;
.super Ljava/lang/Object;
.source "IntMath.java"


# static fields
.field static final FLOOR_SQRT_MAX_INT:I = 0xb504

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:I = -0x4afb0ccd

.field static final MAX_SIGNED_POWER_OF_TWO:I = 0x40000000

.field static biggestBinomials:[I

.field private static final factorials:[I

.field static final halfPowersOf10:[I

.field static final maxLog10ForLeadingZeros:[B

.field static final powersOf10:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 202
    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/IntMath;->maxLog10ForLeadingZeros:[B

    .line 208
    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/common/math/IntMath;->powersOf10:[I

    .line 214
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/common/math/IntMath;->halfPowersOf10:[I

    .line 626
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    .line 676
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    return-void

    :array_0
    .array-data 1
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0x7fffffff
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
    .end array-data

    :array_4
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x10000
        0x929
        0x1dd
        0xc1
        0x6e
        0x4b
        0x3a
        0x31
        0x2b
        0x27
        0x25
        0x23
        0x22
        0x22
        0x21
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)I
    .locals 5
    .param p0, "n"    # I
    .param p1, "k"    # I

    .line 650
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 651
    const-string v0, "k"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 652
    const/4 v0, 0x1

    if-gt p1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "k (%s) > n (%s)"

    invoke-static {v1, v2, p1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 653
    shr-int/lit8 v1, p0, 0x1

    if-le p1, v1, :cond_1

    .line 654
    sub-int p1, p0, p1

    .line 656
    :cond_1
    sget-object v1, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    array-length v2, v1

    if-ge p1, v2, :cond_6

    aget v1, v1, p1

    if-le p0, v1, :cond_2

    goto :goto_2

    .line 659
    :cond_2
    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_4

    .line 665
    const-wide/16 v0, 0x1

    .line 666
    .local v0, "result":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p1, :cond_3

    .line 667
    sub-int v3, p0, v2

    int-to-long v3, v3

    mul-long v0, v0, v3

    .line 668
    add-int/lit8 v3, v2, 0x1

    int-to-long v3, v3

    div-long/2addr v0, v3

    .line 666
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 670
    .end local v2    # "i":I
    :cond_3
    long-to-int v2, v0

    return v2

    .line 663
    .end local v0    # "result":J
    :cond_4
    return p0

    .line 661
    :cond_5
    return v0

    .line 657
    :cond_6
    :goto_2
    const v0, 0x7fffffff

    return v0
.end method

.method public static ceilingPowerOfTwo(I)I
    .locals 3
    .param p0, "x"    # I

    .line 67
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 68
    const/high16 v0, 0x40000000    # 2.0f

    if-gt p0, v0, :cond_0

    .line 71
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ceilingPowerOfTwo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") not representable as an int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkedAdd(II)I
    .locals 5
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 454
    int-to-long v0, p0

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 455
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 456
    long-to-int v2, v0

    return v2
.end method

.method public static checkedMultiply(II)I
    .locals 5
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 476
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long v0, v0, v2

    .line 477
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 478
    long-to-int v2, v0

    return v2
.end method

.method public static checkedPow(II)I
    .locals 5
    .param p0, "b"    # I
    .param p1, "k"    # I

    .line 490
    const-string v0, "exponent"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 491
    const/4 v0, -0x2

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p0, v0, :cond_d

    if-eq p0, v1, :cond_b

    if-eqz p0, :cond_9

    if-eq p0, v3, :cond_8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    .line 507
    const/4 v0, 0x1

    .line 509
    .local v0, "accum":I
    :cond_0
    :goto_0
    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_4

    .line 515
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 516
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v0

    .line 518
    :cond_1
    shr-int/lit8 p1, p1, 0x1

    .line 519
    if-lez p1, :cond_0

    .line 520
    const v1, -0xb504

    if-gt v1, p0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const v4, 0xb504

    if-gt p0, v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    and-int/2addr v1, v4

    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 521
    mul-int p0, p0, p0

    goto :goto_0

    .line 513
    :cond_4
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v1

    return v1

    .line 511
    :cond_5
    return v0

    .line 499
    .end local v0    # "accum":I
    :cond_6
    const/16 v0, 0x1f

    if-ge p1, v0, :cond_7

    const/4 v2, 0x1

    :cond_7
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 500
    shl-int v0, v3, p1

    return v0

    .line 495
    :cond_8
    return v3

    .line 493
    :cond_9
    if-nez p1, :cond_a

    const/4 v2, 0x1

    :cond_a
    return v2

    .line 497
    :cond_b
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1

    .line 502
    :cond_d
    const/16 v0, 0x20

    if-ge p1, v0, :cond_e

    const/4 v2, 0x1

    :cond_e
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 503
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_f

    shl-int v0, v3, p1

    goto :goto_3

    :cond_f
    shl-int v0, v1, p1

    :goto_3
    return v0
.end method

.method public static checkedSubtract(II)I
    .locals 5
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 465
    int-to-long v0, p0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    .line 466
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 467
    long-to-int v2, v0

    return v2
.end method

.method public static divide(IILjava/math/RoundingMode;)I
    .locals 10
    .param p0, "p"    # I
    .param p1, "q"    # I
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 318
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    if-eqz p1, :cond_b

    .line 322
    div-int v0, p0, p1

    .line 323
    .local v0, "div":I
    mul-int v1, p1, v0

    sub-int v1, p0, v1

    .line 325
    .local v1, "rem":I
    if-nez v1, :cond_0

    .line 326
    return v0

    .line 336
    :cond_0
    xor-int v2, p0, p1

    shr-int/lit8 v2, v2, 0x1f

    const/4 v3, 0x1

    or-int/2addr v2, v3

    .line 338
    .local v2, "signum":I
    sget-object v4, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    move v3, v5

    .local v3, "increment":Z
    move v4, v5

    .line 368
    .local v4, "cmpRemToHalfDivisor":I
    .local v5, "absRem":I
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 338
    .end local v3    # "increment":Z
    .end local v4    # "cmpRemToHalfDivisor":I
    .end local v5    # "absRem":I
    :pswitch_0
    move v4, v5

    .line 357
    .local v4, "increment":Z
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 358
    .local v6, "absRem":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v7, v6

    sub-int v7, v6, v7

    .line 361
    .local v7, "cmpRemToHalfDivisor":I
    if-nez v7, :cond_5

    .line 362
    sget-object v8, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p2, v8, :cond_4

    sget-object v8, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p2, v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    and-int/lit8 v9, v0, 0x1

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    and-int/2addr v8, v9

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .end local v4    # "increment":Z
    .restart local v3    # "increment":Z
    :cond_4
    :goto_2
    goto :goto_7

    .line 364
    .end local v3    # "increment":Z
    :cond_5
    if-lez v7, :cond_6

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    .line 366
    .restart local v3    # "increment":Z
    :goto_3
    goto :goto_7

    .line 338
    .end local v3    # "increment":Z
    .end local v6    # "absRem":I
    .end local v7    # "cmpRemToHalfDivisor":I
    :pswitch_1
    move v4, v5

    .line 349
    .restart local v4    # "increment":Z
    if-lez v2, :cond_7

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    .line 350
    .end local v4    # "increment":Z
    .restart local v3    # "increment":Z
    :goto_4
    goto :goto_7

    .line 338
    .end local v3    # "increment":Z
    :pswitch_2
    move v3, v5

    .line 346
    .restart local v3    # "increment":Z
    const/4 v3, 0x1

    .line 347
    goto :goto_7

    .line 338
    .end local v3    # "increment":Z
    :pswitch_3
    move v4, v5

    .line 352
    .restart local v4    # "increment":Z
    if-gez v2, :cond_8

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    .line 353
    .end local v4    # "increment":Z
    .restart local v3    # "increment":Z
    :goto_5
    goto :goto_7

    .line 340
    .end local v3    # "increment":Z
    :pswitch_4
    if-nez v1, :cond_9

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    :goto_6
    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 343
    :pswitch_5
    const/4 v3, 0x0

    .line 344
    .restart local v3    # "increment":Z
    nop

    .line 370
    :goto_7
    if-eqz v3, :cond_a

    add-int v4, v0, v2

    goto :goto_8

    :cond_a
    move v4, v0

    :goto_8
    return v4

    .line 320
    .end local v0    # "div":I
    .end local v1    # "rem":I
    .end local v2    # "signum":I
    .end local v3    # "increment":Z
    :cond_b
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "/ by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

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

.method public static factorial(I)I
    .locals 2
    .param p0, "n"    # I

    .line 622
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 623
    sget-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget v0, v0, p0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    return v0
.end method

.method public static floorPowerOfTwo(I)I
    .locals 1
    .param p0, "x"    # I

    .line 83
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 84
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0
.end method

.method public static gcd(II)I
    .locals 5
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 409
    const-string v0, "a"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 410
    const-string v0, "b"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 411
    if-nez p0, :cond_0

    .line 414
    return p1

    .line 415
    :cond_0
    if-nez p1, :cond_1

    .line 416
    return p0

    .line 422
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    .line 423
    .local v0, "aTwos":I
    shr-int/2addr p0, v0

    .line 424
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    .line 425
    .local v1, "bTwos":I
    shr-int/2addr p1, v1

    .line 426
    :goto_0
    if-eq p0, p1, :cond_2

    .line 434
    sub-int v2, p0, p1

    .line 436
    .local v2, "delta":I
    shr-int/lit8 v3, v2, 0x1f

    and-int/2addr v3, v2

    .line 439
    .local v3, "minDeltaOrZero":I
    sub-int v4, v2, v3

    sub-int/2addr v4, v3

    .line 442
    .end local p0    # "a":I
    .local v4, "a":I
    add-int/2addr p1, v3

    .line 443
    invoke-static {v4}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p0

    shr-int p0, v4, p0

    .line 444
    .end local v2    # "delta":I
    .end local v3    # "minDeltaOrZero":I
    .end local v4    # "a":I
    .restart local p0    # "a":I
    goto :goto_0

    .line 445
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    shl-int v2, p0, v2

    return v2
.end method

.method public static isPowerOfTwo(I)Z
    .locals 4
    .param p0, "x"    # I

    .line 95
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, p0, -0x1

    and-int/2addr v3, p0

    if-nez v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    and-int/2addr v0, v2

    return v0
.end method

.method public static isPrime(I)Z
    .locals 2
    .param p0, "n"    # I

    .line 724
    int-to-long v0, p0

    invoke-static {v0, v1}, Lcom/google/common/math/LongMath;->isPrime(J)Z

    move-result v0

    return v0
.end method

.method static lessThanBranchFree(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 107
    sub-int v0, p0, p1

    xor-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    ushr-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static log10(ILjava/math/RoundingMode;)I
    .locals 4
    .param p0, "x"    # I
    .param p1, "mode"    # Ljava/math/RoundingMode;

    .line 161
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 162
    invoke-static {p0}, Lcom/google/common/math/IntMath;->log10Floor(I)I

    move-result v0

    .line 163
    .local v0, "logFloor":I
    sget-object v1, Lcom/google/common/math/IntMath;->powersOf10:[I

    aget v1, v1, v0

    .line 164
    .local v1, "floorPow":I
    sget-object v2, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 180
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 178
    :pswitch_0
    sget-object v2, Lcom/google/common/math/IntMath;->halfPowersOf10:[I

    aget v2, v2, v0

    invoke-static {v2, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v2

    add-int/2addr v2, v0

    return v2

    .line 173
    :pswitch_1
    invoke-static {v1, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v2

    add-int/2addr v2, v0

    return v2

    .line 166
    :pswitch_2
    if-ne p0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 170
    :pswitch_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static log10Floor(I)I
    .locals 2
    .param p0, "x"    # I

    .line 192
    sget-object v0, Lcom/google/common/math/IntMath;->maxLog10ForLeadingZeros:[B

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    aget-byte v0, v0, v1

    .line 197
    .local v0, "y":I
    sget-object v1, Lcom/google/common/math/IntMath;->powersOf10:[I

    aget v1, v1, v0

    invoke-static {p0, v1}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v1

    sub-int v1, v0, v1

    return v1
.end method

.method public static log2(ILjava/math/RoundingMode;)I
    .locals 4
    .param p0, "x"    # I
    .param p1, "mode"    # Ljava/math/RoundingMode;

    .line 120
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 121
    sget-object v0, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    move v1, v0

    .local v1, "leadingZeros":I
    move v2, v0

    .line 144
    .local v0, "cmp":I
    .local v2, "logFloor":I
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 137
    .end local v0    # "cmp":I
    .end local v1    # "leadingZeros":I
    .end local v2    # "logFloor":I
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    .line 138
    .local v0, "leadingZeros":I
    const v1, -0x4afb0ccd

    ushr-int/2addr v1, v0

    .line 140
    .local v1, "cmp":I
    rsub-int/lit8 v2, v0, 0x1f

    .line 141
    .restart local v2    # "logFloor":I
    invoke-static {v1, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v3

    add-int/2addr v3, v2

    return v3

    .line 131
    .end local v0    # "leadingZeros":I
    .end local v1    # "cmp":I
    .end local v2    # "logFloor":I
    :pswitch_1
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    return v0

    .line 123
    :pswitch_2
    invoke-static {p0}, Lcom/google/common/math/IntMath;->isPowerOfTwo(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 127
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static mean(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 706
    and-int v0, p0, p1

    xor-int v1, p0, p1

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public static mod(II)I
    .locals 3
    .param p0, "x"    # I
    .param p1, "m"    # I

    .line 390
    if-lez p1, :cond_1

    .line 393
    rem-int v0, p0, p1

    .line 394
    .local v0, "result":I
    if-ltz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    add-int v1, v0, p1

    :goto_0
    return v1

    .line 391
    .end local v0    # "result":I
    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modulus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " must be > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static pow(II)I
    .locals 4
    .param p0, "b"    # I
    .param p1, "k"    # I

    .line 229
    const-string v0, "exponent"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 230
    const/4 v0, -0x2

    const/16 v1, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p0, v0, :cond_a

    const/4 v0, -0x1

    if-eq p0, v0, :cond_8

    if-eqz p0, :cond_6

    if-eq p0, v3, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    .line 248
    const/4 v0, 0x1

    .line 249
    .local v0, "accum":I
    :goto_0
    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_1

    .line 255
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    move v1, p0

    :goto_1
    mul-int v0, v0, v1

    .line 256
    mul-int p0, p0, p0

    .line 248
    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 253
    :cond_1
    mul-int v1, p0, v0

    return v1

    .line 251
    :cond_2
    return v0

    .line 238
    .end local v0    # "accum":I
    :cond_3
    if-ge p1, v1, :cond_4

    shl-int v2, v3, p1

    :cond_4
    return v2

    .line 234
    :cond_5
    return v3

    .line 232
    :cond_6
    if-nez p1, :cond_7

    const/4 v2, 0x1

    :cond_7
    return v2

    .line 236
    :cond_8
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_9

    goto :goto_2

    :cond_9
    const/4 v3, -0x1

    :goto_2
    return v3

    .line 240
    :cond_a
    if-ge p1, v1, :cond_c

    .line 241
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_b

    shl-int v0, v3, p1

    goto :goto_3

    :cond_b
    shl-int v0, v3, p1

    neg-int v0, v0

    :goto_3
    return v0

    .line 243
    :cond_c
    return v2
.end method

.method public static saturatedAdd(II)I
    .locals 4
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 535
    int-to-long v0, p0

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public static saturatedMultiply(II)I
    .locals 4
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 557
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public static saturatedPow(II)I
    .locals 6
    .param p0, "b"    # I
    .param p1, "k"    # I

    .line 568
    const-string v0, "exponent"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 569
    const/4 v0, -0x2

    const v1, 0x7fffffff

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p0, v0, :cond_e

    if-eq p0, v2, :cond_c

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    if-eq p0, v3, :cond_9

    const/4 v2, 0x2

    if-eq p0, v2, :cond_7

    .line 589
    const/4 v2, 0x1

    .line 591
    .local v2, "accum":I
    ushr-int/lit8 v4, p0, 0x1f

    and-int/lit8 v5, p1, 0x1

    and-int/2addr v4, v5

    add-int/2addr v4, v1

    .line 593
    .local v4, "limit":I
    :cond_0
    :goto_0
    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    .line 599
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 600
    invoke-static {v2, p0}, Lcom/google/common/math/IntMath;->saturatedMultiply(II)I

    move-result v1

    move v2, v1

    .line 602
    :cond_1
    shr-int/lit8 p1, p1, 0x1

    .line 603
    if-lez p1, :cond_0

    .line 604
    const v1, -0xb504

    if-le v1, p0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const v5, 0xb504

    if-le p0, v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    or-int/2addr v1, v5

    if-eqz v1, :cond_4

    .line 605
    return v4

    .line 607
    :cond_4
    mul-int p0, p0, p0

    goto :goto_0

    .line 597
    :cond_5
    invoke-static {v2, p0}, Lcom/google/common/math/IntMath;->saturatedMultiply(II)I

    move-result v0

    return v0

    .line 595
    :cond_6
    return v2

    .line 577
    .end local v2    # "accum":I
    .end local v4    # "limit":I
    :cond_7
    const/16 v0, 0x1f

    if-lt p1, v0, :cond_8

    .line 578
    return v1

    .line 580
    :cond_8
    shl-int v0, v3, p1

    return v0

    .line 573
    :cond_9
    return v3

    .line 571
    :cond_a
    if-nez p1, :cond_b

    goto :goto_3

    :cond_b
    const/4 v3, 0x0

    :goto_3
    return v3

    .line 575
    :cond_c
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_d

    const/4 v2, 0x1

    :cond_d
    return v2

    .line 582
    :cond_e
    const/16 v0, 0x20

    if-lt p1, v0, :cond_f

    .line 583
    and-int/lit8 v0, p1, 0x1

    add-int/2addr v0, v1

    return v0

    .line 585
    :cond_f
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_10

    shl-int v0, v3, p1

    goto :goto_4

    :cond_10
    shl-int v0, v2, p1

    :goto_4
    return v0
.end method

.method public static saturatedSubtract(II)I
    .locals 4
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 546
    int-to-long v0, p0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public static sqrt(ILjava/math/RoundingMode;)I
    .locals 3
    .param p0, "x"    # I
    .param p1, "mode"    # Ljava/math/RoundingMode;

    .line 271
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 272
    invoke-static {p0}, Lcom/google/common/math/IntMath;->sqrtFloor(I)I

    move-result v0

    .line 273
    .local v0, "sqrtFloor":I
    sget-object v1, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    move v1, v2

    .line 299
    .local v1, "halfSquare":I
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 285
    .end local v1    # "halfSquare":I
    :pswitch_0
    mul-int v1, v0, v0

    add-int/2addr v1, v0

    .line 297
    .restart local v1    # "halfSquare":I
    invoke-static {v1, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v2

    add-int/2addr v2, v0

    return v2

    .line 281
    .end local v1    # "halfSquare":I
    :pswitch_1
    mul-int v1, v0, v0

    invoke-static {v1, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 275
    :pswitch_2
    mul-int v1, v0, v0

    if-ne v1, p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 278
    :pswitch_3
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static sqrtFloor(I)I
    .locals 2
    .param p0, "x"    # I

    .line 306
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method
