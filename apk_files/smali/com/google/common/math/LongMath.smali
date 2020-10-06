.class public final Lcom/google/common/math/LongMath;
.super Ljava/lang/Object;
.source "LongMath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/LongMath$MillerRabinTester;
    }
.end annotation


# static fields
.field static final FLOOR_SQRT_MAX_LONG:J = 0xb504f333L

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:J = -0x4afb0ccc06219b7cL

.field static final MAX_SIGNED_POWER_OF_TWO:J = 0x4000000000000000L

.field private static final SIEVE_30:I = -0x208a2883

.field static final biggestBinomials:[I

.field static final biggestSimpleBinomials:[I

.field static final factorials:[J

.field static final halfPowersOf10:[J

.field static final maxLog10ForLeadingZeros:[B

.field private static final millerRabinBaseSets:[[J

.field static final powersOf10:[J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 205
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/LongMath;->maxLog10ForLeadingZeros:[B

    .line 213
    const/16 v0, 0x13

    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/common/math/LongMath;->powersOf10:[J

    .line 238
    new-array v0, v0, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/common/math/LongMath;->halfPowersOf10:[J

    .line 778
    const/16 v0, 0x15

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    .line 886
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    .line 928
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/common/math/LongMath;->biggestSimpleBinomials:[I

    .line 1043
    const/4 v0, 0x7

    new-array v1, v0, [[J

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_6

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x3

    new-array v4, v3, [J

    fill-array-data v4, :array_7

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x4

    new-array v5, v4, [J

    fill-array-data v5, :array_8

    aput-object v5, v1, v2

    const/4 v2, 0x5

    new-array v5, v2, [J

    fill-array-data v5, :array_9

    aput-object v5, v1, v3

    const/4 v3, 0x6

    new-array v5, v3, [J

    fill-array-data v5, :array_a

    aput-object v5, v1, v4

    new-array v0, v0, [J

    fill-array-data v0, :array_b

    aput-object v0, v1, v2

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_c

    aput-object v0, v1, v3

    sput-object v1, Lcom/google/common/math/LongMath;->millerRabinBaseSets:[[J

    return-void

    :array_0
    .array-data 1
        0x13t
        0x12t
        0x12t
        0x12t
        0x12t
        0x11t
        0x11t
        0x11t
        0x10t
        0x10t
        0x10t
        0xft
        0xft
        0xft
        0xft
        0xet
        0xet
        0xet
        0xdt
        0xdt
        0xdt
        0xct
        0xct
        0xct
        0xct
        0xbt
        0xbt
        0xbt
        0xat
        0xat
        0xat
        0x9t
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
    .end array-data

    :array_1
    .array-data 8
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
        0x2540be400L
        0x174876e800L
        0xe8d4a51000L
        0x9184e72a000L
        0x5af3107a4000L
        0x38d7ea4c68000L
        0x2386f26fc10000L
        0x16345785d8a0000L
        0xde0b6b3a7640000L
    .end array-data

    :array_2
    .array-data 8
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0xbc7c871cL
        0x75cdd4719L
        0x49a0a4c700L
        0x2e0466fc608L
        0x1cc2c05dbc53L
        0x11f9b83a95b45L
        0xb3c13249d90bbL
        0x7058bf6e27a751L
        0x463777a4d8c892dL
        0x2be2aac7077d5bc3L    # 2.731041190138108E-97
    .end array-data

    :array_3
    .array-data 8
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
        0x17328cc00L
        0x144c3b2800L
        0x13077775800L
        0x130777758000L
        0x1437eeecd8000L
        0x16beecca730000L
        0x1b02b9306890000L
        0x21c3677c82b40000L
    .end array-data

    :array_4
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x3a25db
        0x1dc79
        0x3f2f
        0x10f1
        0x6c5
        0x377
        0x216
        0x169
        0x109
        0xce
        0xa9
        0x8f
        0x7d
        0x6f
        0x65
        0x5e
        0x58
        0x53
        0x4f
        0x4c
        0x4a
        0x48
        0x46
        0x45
        0x44
        0x43
        0x43
        0x42
        0x42
        0x42
        0x42
    .end array-data

    :array_5
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x285146
        0x150eb
        0x2dcc
        0xc92
        0x521
        0x2ac
        0x1a3
        0x11f
        0xd6
        0xa9
        0x8b
        0x77
        0x69
        0x5f
        0x57
        0x51
        0x4c
        0x49
        0x46
        0x44
        0x42
        0x40
        0x3f
        0x3e
        0x3e
        0x3d
        0x3d
        0x3d
    .end array-data

    :array_6
    .array-data 8
        0x473f6
        0x1c1111acd0b9428L    # 3.1855675420061E-300
    .end array-data

    :array_7
    .array-data 8
        0x34c91838
        0xa10ad7d5c6610c1L
        0x318a8c12ce9c70e7L    # 4.808051585655767E-70
    .end array-data

    :array_8
    .array-data 8
        0x3fc6e038e0L
        0xf
        0x1b6ebec62L
        0x386c87553e12cL
    .end array-data

    :array_9
    .array-data 8
        0x2b5343fd6a30L
        0x2
        0x273abc
        0xca2b9d9
        0xdf8286ccL
    .end array-data

    :array_a
    .array-data 8
        0x1c6b470864f682L
        0x2
        0x3c1c7396f6dL
        0x2142e2e3f22de5cL
        0x297105b6b7b29ddL
        0x370eb221a5f176ddL    # 1.7205605495331308E-43
    .end array-data

    :array_b
    .array-data 8
        0x81f23f390affe88L
        0x2
        0x70722e8f5cd0L
        0x20cd6bd5ace2d1L
        0x9bbc940c751630L
        0xa90404784bfcb4dL    # 8.45563543651314E-258
        0x1189b3f265c2b0c7L
    .end array-data

    :array_c
    .array-data 8
        0x7fffffffffffffffL
        0x2
        0x145
        0x249f
        0x6e12
        0x6e0d7
        0x953d18
        0x6b0191fe
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)J
    .locals 16
    .param p0, "n"    # I
    .param p1, "k"    # I

    .line 809
    move/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "n"

    invoke-static {v2, v0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 810
    const-string v2, "k"

    invoke-static {v2, v1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 811
    const/4 v2, 0x1

    if-gt v1, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "k (%s) > n (%s)"

    invoke-static {v3, v4, v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 812
    shr-int/lit8 v3, v0, 0x1

    if-le v1, v3, :cond_1

    .line 813
    sub-int v1, v0, v1

    .line 815
    .end local p1    # "k":I
    .local v1, "k":I
    :cond_1
    if-eqz v1, :cond_a

    if-eq v1, v2, :cond_9

    .line 821
    sget-object v2, Lcom/google/common/math/LongMath;->factorials:[J

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 822
    aget-wide v3, v2, v0

    aget-wide v5, v2, v1

    sub-int v7, v0, v1

    aget-wide v7, v2, v7

    mul-long v5, v5, v7

    div-long/2addr v3, v5

    return-wide v3

    .line 823
    :cond_2
    sget-object v2, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    array-length v3, v2

    if-ge v1, v3, :cond_8

    aget v2, v2, v1

    if-le v0, v2, :cond_3

    goto/16 :goto_4

    .line 825
    :cond_3
    sget-object v2, Lcom/google/common/math/LongMath;->biggestSimpleBinomials:[I

    array-length v3, v2

    if-ge v1, v3, :cond_5

    aget v2, v2, v1

    if-gt v0, v2, :cond_5

    .line 827
    add-int/lit8 v2, v0, -0x1

    .end local p0    # "n":I
    .local v2, "n":I
    int-to-long v3, v0

    .line 828
    .local v3, "result":J
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_1
    if-gt v0, v1, :cond_4

    .line 829
    int-to-long v5, v2

    mul-long v3, v3, v5

    .line 830
    int-to-long v5, v0

    div-long/2addr v3, v5

    .line 828
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 832
    .end local v0    # "i":I
    :cond_4
    return-wide v3

    .line 834
    .end local v2    # "n":I
    .end local v3    # "result":J
    .restart local p0    # "n":I
    :cond_5
    int-to-long v2, v0

    sget-object v4, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v2, v3, v4}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v2

    .line 836
    .local v2, "nBits":I
    const-wide/16 v3, 0x1

    .line 837
    .restart local v3    # "result":J
    add-int/lit8 v5, v0, -0x1

    .end local p0    # "n":I
    .local v5, "n":I
    int-to-long v6, v0

    .line 838
    .local v6, "numerator":J
    const-wide/16 v8, 0x1

    .line 840
    .local v8, "denominator":J
    move v0, v2

    .line 848
    .local v0, "numeratorBits":I
    const/4 v10, 0x2

    move v11, v5

    move-wide v12, v6

    move-wide v14, v8

    move v7, v10

    move-wide v9, v3

    .end local v3    # "result":J
    .end local v5    # "n":I
    .end local v6    # "numerator":J
    .end local v8    # "denominator":J
    .local v7, "i":I
    .local v9, "result":J
    .local v11, "n":I
    .local v12, "numerator":J
    .local v14, "denominator":J
    :goto_2
    if-gt v7, v1, :cond_7

    .line 849
    add-int v3, v0, v2

    const/16 v4, 0x3f

    if-ge v3, v4, :cond_6

    .line 851
    int-to-long v3, v11

    mul-long v12, v12, v3

    .line 852
    int-to-long v3, v7

    mul-long v14, v14, v3

    .line 853
    add-int/2addr v0, v2

    move-wide v3, v9

    move v9, v0

    move v0, v7

    goto :goto_3

    .line 857
    :cond_6
    move-wide v3, v9

    move-wide v5, v12

    move/from16 p0, v0

    move v0, v7

    .end local v7    # "i":I
    .local v0, "i":I
    .local p0, "numeratorBits":I
    move-wide v7, v14

    invoke-static/range {v3 .. v8}, Lcom/google/common/math/LongMath;->multiplyFraction(JJJ)J

    move-result-wide v3

    .line 858
    .end local v9    # "result":J
    .restart local v3    # "result":J
    int-to-long v5, v11

    .line 859
    .end local v12    # "numerator":J
    .local v5, "numerator":J
    int-to-long v7, v0

    .line 860
    .end local v14    # "denominator":J
    .local v7, "denominator":J
    move v9, v2

    move-wide v12, v5

    move-wide v14, v7

    .line 848
    .end local v5    # "numerator":J
    .end local v7    # "denominator":J
    .end local p0    # "numeratorBits":I
    .local v9, "numeratorBits":I
    .restart local v12    # "numerator":J
    .restart local v14    # "denominator":J
    :goto_3
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "i":I
    .local v7, "i":I
    add-int/lit8 v11, v11, -0x1

    move v0, v9

    move-wide v9, v3

    goto :goto_2

    .end local v3    # "result":J
    .local v0, "numeratorBits":I
    .local v9, "result":J
    :cond_7
    move/from16 p0, v0

    move v0, v7

    .line 863
    .end local v0    # "numeratorBits":I
    .end local v7    # "i":I
    .restart local p0    # "numeratorBits":I
    move-wide v3, v9

    move-wide v5, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v8}, Lcom/google/common/math/LongMath;->multiplyFraction(JJJ)J

    move-result-wide v3

    return-wide v3

    .line 824
    .end local v2    # "nBits":I
    .end local v9    # "result":J
    .end local v11    # "n":I
    .end local v12    # "numerator":J
    .end local v14    # "denominator":J
    .local p0, "n":I
    :cond_8
    :goto_4
    const-wide v2, 0x7fffffffffffffffL

    return-wide v2

    .line 819
    :cond_9
    int-to-long v2, v0

    return-wide v2

    .line 817
    :cond_a
    const-wide/16 v2, 0x1

    return-wide v2
.end method

.method public static ceilingPowerOfTwo(J)J
    .locals 4
    .param p0, "x"    # J

    .line 67
    const-string v0, "x"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 68
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    .line 71
    const-wide/16 v0, 0x1

    sub-long v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v2

    neg-int v2, v2

    shl-long/2addr v0, v2

    return-wide v0

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ceilingPowerOfTwo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") is not representable as a long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkedAdd(JJ)J
    .locals 10
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 546
    add-long v0, p0, p2

    .line 547
    .local v0, "result":J
    xor-long v2, p0, p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-gez v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    xor-long v8, p0, v0

    cmp-long v3, v8, v6

    if-ltz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    or-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 548
    return-wide v0
.end method

.method public static checkedMultiply(JJ)J
    .locals 9
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 571
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    const-wide/16 v1, -0x1

    xor-long v3, p0, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    add-int/2addr v0, v3

    xor-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 586
    .local v0, "leadingZeros":I
    const/16 v1, 0x41

    if-le v0, v1, :cond_0

    .line 587
    mul-long v1, p0, p2

    return-wide v1

    .line 589
    :cond_0
    const/16 v1, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 590
    const-wide/16 v4, 0x0

    cmp-long v1, p0, v4

    if-ltz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, p2, v6

    if-eqz v8, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    or-int/2addr v1, v6

    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 591
    mul-long v6, p0, p2

    .line 592
    .local v6, "result":J
    cmp-long v1, p0, v4

    if-eqz v1, :cond_5

    div-long v4, v6, p0

    cmp-long v1, v4, p2

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_3
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 593
    return-wide v6
.end method

.method public static checkedPow(JI)J
    .locals 8
    .param p0, "b"    # J
    .param p2, "k"    # I

    .line 604
    const-string v0, "exponent"

    invoke-static {v0, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 605
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, -0x2

    cmp-long v4, p0, v2

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide/16 v3, 0x2

    cmp-long v5, p0, v3

    if-gtz v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    and-int/2addr v2, v3

    if-eqz v2, :cond_c

    .line 606
    long-to-int v2, p0

    const/4 v3, -0x2

    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x1

    if-eq v2, v3, :cond_9

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    if-eqz v2, :cond_5

    if-eq v2, v1, :cond_4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 614
    const/16 v2, 0x3f

    if-ge p2, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 615
    shl-long v0, v6, p2

    return-wide v0

    .line 620
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 610
    :cond_4
    return-wide v6

    .line 608
    :cond_5
    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    const-wide/16 v6, 0x0

    :goto_2
    return-wide v6

    .line 612
    :cond_7
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_8

    move-wide v4, v6

    :cond_8
    return-wide v4

    .line 617
    :cond_9
    const/16 v2, 0x40

    if-ge p2, v2, :cond_a

    const/4 v0, 0x1

    :cond_a
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 618
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_b

    shl-long v0, v6, p2

    goto :goto_3

    :cond_b
    shl-long v0, v4, p2

    :goto_3
    return-wide v0

    .line 623
    :cond_c
    const-wide/16 v2, 0x1

    .line 625
    .local v2, "accum":J
    :cond_d
    :goto_4
    if-eqz p2, :cond_11

    if-eq p2, v1, :cond_10

    .line 631
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_e

    .line 632
    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v2

    .line 634
    :cond_e
    shr-int/lit8 p2, p2, 0x1

    .line 635
    if-lez p2, :cond_d

    .line 636
    const-wide v4, -0xb504f333L

    cmp-long v6, v4, p0

    if-gtz v6, :cond_f

    const-wide v4, 0xb504f333L

    cmp-long v6, p0, v4

    if-gtz v6, :cond_f

    const/4 v4, 0x1

    goto :goto_5

    :cond_f
    const/4 v4, 0x0

    :goto_5
    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 637
    mul-long p0, p0, p0

    goto :goto_4

    .line 629
    :cond_10
    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v0

    return-wide v0

    .line 627
    :cond_11
    return-wide v2
.end method

.method public static checkedSubtract(JJ)J
    .locals 10
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 558
    sub-long v0, p0, p2

    .line 559
    .local v0, "result":J
    xor-long v2, p0, p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-ltz v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    xor-long v8, p0, v0

    cmp-long v3, v8, v6

    if-ltz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    or-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 560
    return-wide v0
.end method

.method public static divide(JJLjava/math/RoundingMode;)J
    .locals 20
    .param p0, "p"    # J
    .param p2, "q"    # J
    .param p4, "mode"    # Ljava/math/RoundingMode;

    .line 385
    move-object/from16 v0, p4

    invoke-static/range {p4 .. p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    div-long v1, p0, p2

    .line 387
    .local v1, "div":J
    mul-long v3, p2, v1

    sub-long v3, p0, v3

    .line 389
    .local v3, "rem":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 390
    return-wide v1

    .line 400
    :cond_0
    xor-long v7, p0, p2

    const/16 v9, 0x3f

    shr-long/2addr v7, v9

    long-to-int v8, v7

    const/4 v7, 0x1

    or-int/2addr v8, v7

    .line 402
    .local v8, "signum":I
    sget-object v9, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual/range {p4 .. p4}, Ljava/math/RoundingMode;->ordinal()I

    move-result v10

    aget v9, v9, v10

    const/4 v10, 0x0

    packed-switch v9, :pswitch_data_0

    move-wide v11, v5

    .local v5, "absRem":J
    .local v11, "cmpRemToHalfDivisor":J
    move v7, v10

    .line 432
    .local v7, "increment":Z
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 402
    .end local v5    # "absRem":J
    .end local v7    # "increment":Z
    .end local v11    # "cmpRemToHalfDivisor":J
    :pswitch_0
    move v9, v10

    .line 421
    .local v9, "increment":Z
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    .line 422
    .local v11, "absRem":J
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    sub-long/2addr v13, v11

    sub-long v13, v11, v13

    .line 425
    .local v13, "cmpRemToHalfDivisor":J
    cmp-long v15, v13, v5

    if-nez v15, :cond_4

    .line 426
    sget-object v15, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-ne v0, v15, :cond_1

    const/4 v15, 0x1

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    :goto_0
    sget-object v7, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne v0, v7, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    const-wide/16 v17, 0x1

    and-long v17, v1, v17

    cmp-long v19, v17, v5

    if-eqz v19, :cond_3

    const/16 v16, 0x1

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    :goto_2
    and-int v5, v7, v16

    or-int/2addr v5, v15

    .end local v9    # "increment":Z
    .local v5, "increment":Z
    goto :goto_7

    .line 428
    .end local v5    # "increment":Z
    :cond_4
    cmp-long v7, v13, v5

    if-lez v7, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_3
    move v5, v7

    .line 430
    .restart local v5    # "increment":Z
    goto :goto_7

    .line 402
    .end local v5    # "increment":Z
    .end local v11    # "absRem":J
    .end local v13    # "cmpRemToHalfDivisor":J
    :pswitch_1
    move v5, v10

    .line 413
    .restart local v5    # "increment":Z
    if-lez v8, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :goto_4
    move v5, v7

    .line 414
    goto :goto_7

    .line 402
    .end local v5    # "increment":Z
    :pswitch_2
    move v5, v10

    .line 410
    .restart local v5    # "increment":Z
    const/4 v5, 0x1

    .line 411
    goto :goto_7

    .line 402
    .end local v5    # "increment":Z
    :pswitch_3
    move v5, v10

    .line 416
    .restart local v5    # "increment":Z
    if-gez v8, :cond_7

    const/4 v7, 0x1

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    :goto_5
    move v5, v7

    .line 417
    goto :goto_7

    .line 404
    .end local v5    # "increment":Z
    :pswitch_4
    cmp-long v7, v3, v5

    if-nez v7, :cond_8

    const/4 v7, 0x1

    goto :goto_6

    :cond_8
    const/4 v7, 0x0

    :goto_6
    invoke-static {v7}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 407
    :pswitch_5
    const/4 v5, 0x0

    .line 408
    .restart local v5    # "increment":Z
    nop

    .line 434
    :goto_7
    if-eqz v5, :cond_9

    int-to-long v6, v8

    add-long/2addr v6, v1

    goto :goto_8

    :cond_9
    move-wide v6, v1

    :goto_8
    return-wide v6

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

.method public static factorial(I)J
    .locals 3
    .param p0, "n"    # I

    .line 774
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 775
    sget-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-wide v1, v0, p0

    goto :goto_0

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    return-wide v1
.end method

.method static fitsInInt(J)Z
    .locals 3
    .param p0, "x"    # J

    .line 965
    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static floorPowerOfTwo(J)J
    .locals 3
    .param p0, "x"    # J

    .line 83
    const-string v0, "x"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 87
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3f

    const-wide/16 v1, 0x1

    shl-long v0, v1, v0

    return-wide v0
.end method

.method public static gcd(JJ)J
    .locals 8
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 500
    const-string v0, "a"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 501
    const-string v0, "b"

    invoke-static {v0, p2, p3}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 502
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    .line 505
    return-wide p2

    .line 506
    :cond_0
    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    .line 507
    return-wide p0

    .line 513
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    .line 514
    .local v0, "aTwos":I
    shr-long/2addr p0, v0

    .line 515
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    .line 516
    .local v1, "bTwos":I
    shr-long/2addr p2, v1

    .line 517
    :goto_0
    cmp-long v2, p0, p2

    if-eqz v2, :cond_2

    .line 525
    sub-long v2, p0, p2

    .line 527
    .local v2, "delta":J
    const/16 v4, 0x3f

    shr-long v4, v2, v4

    and-long/2addr v4, v2

    .line 530
    .local v4, "minDeltaOrZero":J
    sub-long v6, v2, v4

    sub-long/2addr v6, v4

    .line 533
    .end local p0    # "a":J
    .local v6, "a":J
    add-long/2addr p2, v4

    .line 534
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p0

    shr-long p0, v6, p0

    .line 535
    .end local v2    # "delta":J
    .end local v4    # "minDeltaOrZero":J
    .end local v6    # "a":J
    .restart local p0    # "a":J
    goto :goto_0

    .line 536
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    shl-long v2, p0, v2

    return-wide v2
.end method

.method public static isPowerOfTwo(J)Z
    .locals 8
    .param p0, "x"    # J

    .line 97
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-wide/16 v5, 0x1

    sub-long v5, p0, v5

    and-long/2addr v5, p0

    cmp-long v7, v5, v2

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    and-int/2addr v0, v4

    return v0
.end method

.method public static isPrime(J)Z
    .locals 11
    .param p0, "n"    # J

    .line 1005
    const-wide/16 v0, 0x2

    const/4 v2, 0x0

    cmp-long v3, p0, v0

    if-gez v3, :cond_0

    .line 1006
    const-string v0, "n"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 1007
    return v2

    .line 1009
    :cond_0
    const/4 v3, 0x1

    cmp-long v4, p0, v0

    if-eqz v4, :cond_a

    const-wide/16 v0, 0x3

    cmp-long v4, p0, v0

    if-eqz v4, :cond_a

    const-wide/16 v0, 0x5

    cmp-long v4, p0, v0

    if-eqz v4, :cond_a

    const-wide/16 v0, 0x7

    cmp-long v4, p0, v0

    if-eqz v4, :cond_a

    const-wide/16 v4, 0xb

    cmp-long v6, p0, v4

    if-eqz v6, :cond_a

    const-wide/16 v6, 0xd

    cmp-long v8, p0, v6

    if-nez v8, :cond_1

    goto :goto_3

    .line 1013
    :cond_1
    const v8, -0x208a2883

    const-wide/16 v9, 0x1e

    rem-long v9, p0, v9

    long-to-int v10, v9

    shl-int v9, v3, v10

    and-int/2addr v8, v9

    if-eqz v8, :cond_2

    .line 1014
    return v2

    .line 1016
    :cond_2
    rem-long v0, p0, v0

    const-wide/16 v8, 0x0

    cmp-long v10, v0, v8

    if-eqz v10, :cond_9

    rem-long v0, p0, v4

    cmp-long v4, v0, v8

    if-eqz v4, :cond_9

    rem-long v0, p0, v6

    cmp-long v4, v0, v8

    if-nez v4, :cond_3

    goto :goto_2

    .line 1019
    :cond_3
    const-wide/16 v0, 0x121

    cmp-long v4, p0, v0

    if-gez v4, :cond_4

    .line 1020
    return v3

    .line 1023
    :cond_4
    sget-object v0, Lcom/google/common/math/LongMath;->millerRabinBaseSets:[[J

    .local v0, "arr$":[[J
    array-length v1, v0

    .local v1, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v1, :cond_8

    aget-object v5, v0, v4

    .line 1024
    .local v5, "baseSet":[J
    aget-wide v6, v5, v2

    cmp-long v8, p0, v6

    if-gtz v8, :cond_7

    .line 1025
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_6

    .line 1026
    aget-wide v7, v5, v6

    invoke-static {v7, v8, p0, p1}, Lcom/google/common/math/LongMath$MillerRabinTester;->test(JJ)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1027
    return v2

    .line 1025
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1030
    .end local v6    # "i":I
    :cond_6
    return v3

    .line 1023
    .end local v5    # "baseSet":[J
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1033
    .end local v0    # "arr$":[[J
    .end local v1    # "len$":I
    .end local v4    # "i$":I
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1017
    :cond_9
    :goto_2
    return v2

    .line 1010
    :cond_a
    :goto_3
    return v3
.end method

.method static lessThanBranchFree(JJ)I
    .locals 4
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 108
    sub-long v0, p0, p2

    const-wide/16 v2, -0x1

    xor-long/2addr v0, v2

    xor-long/2addr v0, v2

    const/16 v2, 0x3f

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public static log10(JLjava/math/RoundingMode;)I
    .locals 6
    .param p0, "x"    # J
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 163
    const-string v0, "x"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 164
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->log10Floor(J)I

    move-result v0

    .line 165
    .local v0, "logFloor":I
    sget-object v1, Lcom/google/common/math/LongMath;->powersOf10:[J

    aget-wide v2, v1, v0

    .line 166
    .local v2, "floorPow":J
    sget-object v1, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 182
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 180
    :pswitch_0
    sget-object v1, Lcom/google/common/math/LongMath;->halfPowersOf10:[J

    aget-wide v4, v1, v0

    invoke-static {v4, v5, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 175
    :pswitch_1
    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 168
    :pswitch_2
    cmp-long v1, p0, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 172
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

.method static log10Floor(J)I
    .locals 4
    .param p0, "x"    # J

    .line 195
    sget-object v0, Lcom/google/common/math/LongMath;->maxLog10ForLeadingZeros:[B

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    aget-byte v0, v0, v1

    .line 200
    .local v0, "y":I
    sget-object v1, Lcom/google/common/math/LongMath;->powersOf10:[J

    aget-wide v2, v1, v0

    invoke-static {p0, p1, v2, v3}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v1

    sub-int v1, v0, v1

    return v1
.end method

.method public static log2(JLjava/math/RoundingMode;)I
    .locals 6
    .param p0, "x"    # J
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 121
    const-string v0, "x"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 122
    sget-object v0, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    move v1, v0

    .local v1, "logFloor":I
    const-wide/16 v2, 0x0

    .line 145
    .local v0, "leadingZeros":I
    .local v2, "cmp":J
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "impossible"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 138
    .end local v0    # "leadingZeros":I
    .end local v1    # "logFloor":I
    .end local v2    # "cmp":J
    :pswitch_0
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    .line 139
    .restart local v0    # "leadingZeros":I
    const-wide v1, -0x4afb0ccc06219b7cL    # -2.734104117489491E-53

    ushr-long/2addr v1, v0

    .line 141
    .local v1, "cmp":J
    rsub-int/lit8 v3, v0, 0x3f

    .line 142
    .local v3, "logFloor":I
    invoke-static {v1, v2, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v4

    add-int/2addr v4, v3

    return v4

    .line 132
    .end local v0    # "leadingZeros":I
    .end local v1    # "cmp":J
    .end local v3    # "logFloor":I
    :pswitch_1
    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    return v0

    .line 124
    :pswitch_2
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->isPowerOfTwo(J)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 128
    :pswitch_3
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3f

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

.method public static mean(JJ)J
    .locals 5
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 978
    and-long v0, p0, p2

    xor-long v2, p0, p2

    const/4 v4, 0x1

    shr-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static mod(JI)I
    .locals 2
    .param p0, "x"    # J
    .param p2, "m"    # I

    .line 458
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/math/LongMath;->mod(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public static mod(JJ)J
    .locals 5
    .param p0, "x"    # J
    .param p2, "m"    # J

    .line 481
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 484
    rem-long v2, p0, p2

    .line 485
    .local v2, "result":J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    move-wide v0, v2

    goto :goto_0

    :cond_0
    add-long v0, v2, p2

    :goto_0
    return-wide v0

    .line 482
    .end local v2    # "result":J
    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Modulus must be positive"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static multiplyFraction(JJJ)J
    .locals 4
    .param p0, "x"    # J
    .param p2, "numerator"    # J
    .param p4, "denominator"    # J

    .line 872
    const-wide/16 v0, 0x1

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    .line 873
    div-long v0, p2, p4

    return-wide v0

    .line 875
    :cond_0
    invoke-static {p0, p1, p4, p5}, Lcom/google/common/math/LongMath;->gcd(JJ)J

    move-result-wide v0

    .line 876
    .local v0, "commonDivisor":J
    div-long/2addr p0, v0

    .line 877
    div-long/2addr p4, v0

    .line 880
    div-long v2, p2, p4

    mul-long v2, v2, p0

    return-wide v2
.end method

.method public static pow(JI)J
    .locals 8
    .param p0, "b"    # J
    .param p2, "k"    # I

    .line 269
    const-string v0, "exponent"

    invoke-static {v0, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 270
    const/4 v0, 0x1

    const-wide/16 v1, 0x1

    const-wide/16 v3, -0x2

    cmp-long v5, v3, p0

    if-gtz v5, :cond_a

    const-wide/16 v3, 0x2

    cmp-long v5, p0, v3

    if-gtz v5, :cond_a

    .line 271
    long-to-int v3, p0

    const/4 v4, -0x2

    const/16 v5, 0x40

    const-wide/16 v6, 0x0

    if-eq v3, v4, :cond_7

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    if-eqz v3, :cond_3

    if-eq v3, v0, :cond_2

    const/4 v0, 0x2

    if-ne v3, v0, :cond_1

    .line 279
    if-ge p2, v5, :cond_0

    shl-long v6, v1, p2

    :cond_0
    return-wide v6

    .line 287
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 275
    :cond_2
    return-wide v1

    .line 273
    :cond_3
    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    move-wide v1, v6

    :goto_0
    return-wide v1

    .line 277
    :cond_5
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const-wide/16 v1, -0x1

    :goto_1
    return-wide v1

    .line 281
    :cond_7
    if-ge p2, v5, :cond_9

    .line 282
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_8

    shl-long v0, v1, p2

    goto :goto_2

    :cond_8
    shl-long v0, v1, p2

    neg-long v0, v0

    :goto_2
    return-wide v0

    .line 284
    :cond_9
    return-wide v6

    .line 290
    :cond_a
    const-wide/16 v3, 0x1

    .line 291
    .local v3, "accum":J
    :goto_3
    if-eqz p2, :cond_d

    if-eq p2, v0, :cond_c

    .line 297
    and-int/lit8 v5, p2, 0x1

    if-nez v5, :cond_b

    move-wide v5, v1

    goto :goto_4

    :cond_b
    move-wide v5, p0

    :goto_4
    mul-long v3, v3, v5

    .line 298
    mul-long p0, p0, p0

    .line 290
    shr-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 295
    :cond_c
    mul-long v0, v3, p0

    return-wide v0

    .line 293
    :cond_d
    return-wide v3
.end method

.method public static saturatedAdd(JJ)J
    .locals 10
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 651
    add-long v0, p0, p2

    .line 652
    .local v0, "naiveSum":J
    xor-long v2, p0, p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-gez v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    xor-long v8, p0, v0

    cmp-long v3, v8, v6

    if-ltz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    or-int/2addr v2, v4

    if-eqz v2, :cond_2

    .line 655
    return-wide v0

    .line 658
    :cond_2
    const-wide v2, 0x7fffffffffffffffL

    const/16 v4, 0x3f

    ushr-long v4, v0, v4

    const-wide/16 v6, 0x1

    xor-long/2addr v4, v6

    add-long/2addr v4, v2

    return-wide v4
.end method

.method public static saturatedMultiply(JJ)J
    .locals 12
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 688
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    const-wide/16 v1, -0x1

    xor-long v3, p0, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    add-int/2addr v0, v3

    xor-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 693
    .local v0, "leadingZeros":I
    const/16 v1, 0x41

    if-le v0, v1, :cond_0

    .line 694
    mul-long v1, p0, p2

    return-wide v1

    .line 697
    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    xor-long v3, p0, p2

    const/16 v5, 0x3f

    ushr-long/2addr v3, v5

    add-long/2addr v3, v1

    .line 698
    .local v3, "limit":J
    const/16 v1, 0x40

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v8, p0, v6

    if-gez v8, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v11, p2, v9

    if-nez v11, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    and-int/2addr v2, v8

    or-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 700
    return-wide v3

    .line 702
    :cond_4
    mul-long v1, p0, p2

    .line 703
    .local v1, "result":J
    cmp-long v5, p0, v6

    if-eqz v5, :cond_6

    div-long v5, v1, p0

    cmp-long v7, v5, p2

    if-nez v7, :cond_5

    goto :goto_3

    .line 706
    :cond_5
    return-wide v3

    .line 704
    :cond_6
    :goto_3
    return-wide v1
.end method

.method public static saturatedPow(JI)J
    .locals 10
    .param p0, "b"    # J
    .param p2, "k"    # I

    .line 717
    const-string v0, "exponent"

    invoke-static {v0, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 718
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, -0x2

    cmp-long v4, p0, v2

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide/16 v3, 0x2

    cmp-long v5, p0, v3

    if-gtz v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    and-int/2addr v2, v3

    const/16 v3, 0x3f

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v2, :cond_c

    .line 719
    long-to-int v0, p0

    const/4 v2, -0x2

    const-wide/16 v6, -0x1

    const-wide/16 v8, 0x1

    if-eq v0, v2, :cond_9

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 727
    if-lt p2, v3, :cond_2

    .line 728
    return-wide v4

    .line 730
    :cond_2
    shl-long v0, v8, p2

    return-wide v0

    .line 737
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 723
    :cond_4
    return-wide v8

    .line 721
    :cond_5
    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    const-wide/16 v8, 0x0

    :goto_2
    return-wide v8

    .line 725
    :cond_7
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_8

    move-wide v6, v8

    :cond_8
    return-wide v6

    .line 732
    :cond_9
    const/16 v0, 0x40

    if-lt p2, v0, :cond_a

    .line 733
    and-int/lit8 v0, p2, 0x1

    int-to-long v0, v0

    add-long/2addr v0, v4

    return-wide v0

    .line 735
    :cond_a
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_b

    shl-long v0, v8, p2

    goto :goto_3

    :cond_b
    shl-long v0, v6, p2

    :goto_3
    return-wide v0

    .line 740
    :cond_c
    const-wide/16 v6, 0x1

    .line 742
    .local v6, "accum":J
    ushr-long v2, p0, v3

    and-int/lit8 v8, p2, 0x1

    int-to-long v8, v8

    and-long/2addr v2, v8

    add-long/2addr v2, v4

    .line 744
    .local v2, "limit":J
    :cond_d
    :goto_4
    if-eqz p2, :cond_13

    if-eq p2, v1, :cond_12

    .line 750
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_e

    .line 751
    invoke-static {v6, v7, p0, p1}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v4

    move-wide v6, v4

    .line 753
    :cond_e
    shr-int/lit8 p2, p2, 0x1

    .line 754
    if-lez p2, :cond_d

    .line 755
    const-wide v4, -0xb504f333L

    cmp-long v8, v4, p0

    if-lez v8, :cond_f

    const/4 v4, 0x1

    goto :goto_5

    :cond_f
    const/4 v4, 0x0

    :goto_5
    const-wide v8, 0xb504f333L

    cmp-long v5, p0, v8

    if-lez v5, :cond_10

    const/4 v5, 0x1

    goto :goto_6

    :cond_10
    const/4 v5, 0x0

    :goto_6
    or-int/2addr v4, v5

    if-eqz v4, :cond_11

    .line 756
    return-wide v2

    .line 758
    :cond_11
    mul-long p0, p0, p0

    goto :goto_4

    .line 748
    :cond_12
    invoke-static {v6, v7, p0, p1}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v0

    return-wide v0

    .line 746
    :cond_13
    return-wide v6
.end method

.method public static saturatedSubtract(JJ)J
    .locals 10
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 669
    sub-long v0, p0, p2

    .line 670
    .local v0, "naiveDifference":J
    xor-long v2, p0, p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-ltz v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    xor-long v8, p0, v0

    cmp-long v3, v8, v6

    if-ltz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    or-int/2addr v2, v4

    if-eqz v2, :cond_2

    .line 673
    return-wide v0

    .line 676
    :cond_2
    const-wide v2, 0x7fffffffffffffffL

    const/16 v4, 0x3f

    ushr-long v4, v0, v4

    const-wide/16 v6, 0x1

    xor-long/2addr v4, v6

    add-long/2addr v4, v2

    return-wide v4
.end method

.method public static sqrt(JLjava/math/RoundingMode;)J
    .locals 10
    .param p0, "x"    # J
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 313
    const-string v0, "x"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 314
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->fitsInInt(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    long-to-int v0, p0

    invoke-static {v0, p2}, Lcom/google/common/math/IntMath;->sqrt(ILjava/math/RoundingMode;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 332
    :cond_0
    long-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-long v0, v0

    .line 334
    .local v0, "guess":J
    mul-long v2, v0, v0

    .line 337
    .local v2, "guessSquared":J
    sget-object v4, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const-wide/16 v5, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v4, :pswitch_data_0

    const-wide/16 v4, 0x0

    move-wide v6, v4

    .line 371
    .local v4, "sqrtFloor":J
    .local v6, "halfSquare":J
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 356
    .end local v4    # "sqrtFloor":J
    .end local v6    # "halfSquare":J
    :pswitch_0
    cmp-long v4, p0, v2

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    int-to-long v4, v7

    sub-long v4, v0, v4

    .line 357
    .restart local v4    # "sqrtFloor":J
    mul-long v6, v4, v4

    add-long/2addr v6, v4

    .line 369
    .restart local v6    # "halfSquare":J
    invoke-static {v6, v7, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v4

    return-wide v8

    .line 349
    .end local v4    # "sqrtFloor":J
    .end local v6    # "halfSquare":J
    :pswitch_1
    cmp-long v4, p0, v2

    if-lez v4, :cond_2

    .line 350
    add-long/2addr v5, v0

    return-wide v5

    .line 352
    :cond_2
    return-wide v0

    .line 343
    :pswitch_2
    cmp-long v4, p0, v2

    if-gez v4, :cond_3

    .line 344
    sub-long v5, v0, v5

    return-wide v5

    .line 346
    :cond_3
    return-wide v0

    .line 339
    :pswitch_3
    cmp-long v4, v2, p0

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    invoke-static {v7}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 340
    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
