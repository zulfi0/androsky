.class public final Lcom/google/common/hash/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;,
        Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;,
        Lcom/google/common/hash/Hashing$FarmHashFingerprint64Holder;,
        Lcom/google/common/hash/Hashing$ChecksumType;,
        Lcom/google/common/hash/Hashing$Adler32Holder;,
        Lcom/google/common/hash/Hashing$Crc32Holder;,
        Lcom/google/common/hash/Hashing$Crc32cHolder;,
        Lcom/google/common/hash/Hashing$Sha512Holder;,
        Lcom/google/common/hash/Hashing$Sha384Holder;,
        Lcom/google/common/hash/Hashing$Sha256Holder;,
        Lcom/google/common/hash/Hashing$Sha1Holder;,
        Lcom/google/common/hash/Hashing$Md5Holder;,
        Lcom/google/common/hash/Hashing$SipHash24Holder;,
        Lcom/google/common/hash/Hashing$Murmur3_128Holder;,
        Lcom/google/common/hash/Hashing$Murmur3_32Holder;
    }
.end annotation


# static fields
.field private static final GOOD_FAST_HASH_SEED:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .line 47
    sget v0, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/common/hash/Hashing$ChecksumType;Ljava/lang/String;)Lcom/google/common/hash/HashFunction;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/hash/Hashing$ChecksumType;
    .param p1, "x1"    # Ljava/lang/String;

    .line 47
    invoke-static {p0, p1}, Lcom/google/common/hash/Hashing;->checksumHashFunction(Lcom/google/common/hash/Hashing$ChecksumType;Ljava/lang/String;)Lcom/google/common/hash/HashFunction;

    move-result-object v0

    return-object v0
.end method

.method public static adler32()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 400
    sget-object v0, Lcom/google/common/hash/Hashing$Adler32Holder;->ADLER_32:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method static checkPositiveAndMakeMultipleOf32(I)I
    .locals 2
    .param p0, "bits"    # I

    .line 592
    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Number of bits must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 593
    add-int/lit8 v0, p0, 0x1f

    and-int/lit8 v0, v0, -0x20

    return v0
.end method

.method private static checksumHashFunction(Lcom/google/common/hash/Hashing$ChecksumType;Ljava/lang/String;)Lcom/google/common/hash/HashFunction;
    .locals 2
    .param p0, "type"    # Lcom/google/common/hash/Hashing$ChecksumType;
    .param p1, "toString"    # Ljava/lang/String;

    .line 409
    new-instance v0, Lcom/google/common/hash/ChecksumHashFunction;

    invoke-static {p0}, Lcom/google/common/hash/Hashing$ChecksumType;->access$300(Lcom/google/common/hash/Hashing$ChecksumType;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/common/hash/ChecksumHashFunction;-><init>(Lcom/google/common/base/Supplier;ILjava/lang/String;)V

    return-object v0
.end method

.method public static combineOrdered(Ljava/lang/Iterable;)Lcom/google/common/hash/HashCode;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/hash/HashCode;",
            ">;)",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    .line 549
    .local p0, "hashCodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/hash/HashCode;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 550
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/hash/HashCode;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Must be at least 1 hash code to combine."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 551
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/hash/HashCode;

    invoke-virtual {v1}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v1

    .line 552
    .local v1, "bits":I
    div-int/lit8 v2, v1, 0x8

    new-array v2, v2, [B

    .line 553
    .local v2, "resultBytes":[B
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/hash/HashCode;

    .line 554
    .local v4, "hashCode":Lcom/google/common/hash/HashCode;
    invoke-virtual {v4}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v5

    .line 555
    .local v5, "nextBytes":[B
    array-length v6, v5

    array-length v7, v2

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    const-string v7, "All hashcodes must have the same bit length."

    invoke-static {v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 557
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v7, v5

    if-ge v6, v7, :cond_1

    .line 558
    aget-byte v7, v2, v6

    mul-int/lit8 v7, v7, 0x25

    aget-byte v8, v5, v6

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    .line 557
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 560
    .end local v4    # "hashCode":Lcom/google/common/hash/HashCode;
    .end local v5    # "nextBytes":[B
    .end local v6    # "i":I
    :cond_1
    goto :goto_0

    .line 561
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-static {v2}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v3

    return-object v3
.end method

.method public static combineUnordered(Ljava/lang/Iterable;)Lcom/google/common/hash/HashCode;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/hash/HashCode;",
            ">;)",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    .line 574
    .local p0, "hashCodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/hash/HashCode;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 575
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/hash/HashCode;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Must be at least 1 hash code to combine."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 576
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/hash/HashCode;

    invoke-virtual {v1}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    .line 577
    .local v1, "resultBytes":[B
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/hash/HashCode;

    .line 578
    .local v3, "hashCode":Lcom/google/common/hash/HashCode;
    invoke-virtual {v3}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v4

    .line 579
    .local v4, "nextBytes":[B
    array-length v5, v4

    array-length v6, v1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    const-string v6, "All hashcodes must have the same bit length."

    invoke-static {v5, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 581
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 582
    aget-byte v6, v1, v5

    aget-byte v7, v4, v5

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 581
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 584
    .end local v3    # "hashCode":Lcom/google/common/hash/HashCode;
    .end local v4    # "nextBytes":[B
    .end local v5    # "i":I
    :cond_1
    goto :goto_0

    .line 585
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-static {v1}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v2

    return-object v2
.end method

.method public static varargs concatenating(Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/HashFunction;[Lcom/google/common/hash/HashFunction;)Lcom/google/common/hash/HashFunction;
    .locals 5
    .param p0, "first"    # Lcom/google/common/hash/HashFunction;
    .param p1, "second"    # Lcom/google/common/hash/HashFunction;
    .param p2, "rest"    # [Lcom/google/common/hash/HashFunction;

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/hash/HashFunction;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    move-object v1, p2

    .local v1, "arr$":[Lcom/google/common/hash/HashFunction;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 613
    .local v4, "hashFunc":Lcom/google/common/hash/HashFunction;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    .end local v4    # "hashFunc":Lcom/google/common/hash/HashFunction;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 615
    .end local v1    # "arr$":[Lcom/google/common/hash/HashFunction;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    new-instance v1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/common/hash/HashFunction;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/common/hash/HashFunction;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/Hashing$1;)V

    return-object v1
.end method

.method public static concatenating(Ljava/lang/Iterable;)Lcom/google/common/hash/HashFunction;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/hash/HashFunction;",
            ">;)",
            "Lcom/google/common/hash/HashFunction;"
        }
    .end annotation

    .line 629
    .local p0, "hashFunctions":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/hash/HashFunction;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/hash/HashFunction;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/hash/HashFunction;

    .line 633
    .local v2, "hashFunction":Lcom/google/common/hash/HashFunction;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    .end local v2    # "hashFunction":Lcom/google/common/hash/HashFunction;
    goto :goto_0

    .line 635
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "number of hash functions (%s) must be > 0"

    invoke-static {v1, v4, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 636
    new-instance v1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    new-array v2, v2, [Lcom/google/common/hash/HashFunction;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/common/hash/HashFunction;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/Hashing$1;)V

    return-object v1
.end method

.method public static consistentHash(JI)I
    .locals 6
    .param p0, "input"    # J
    .param p2, "buckets"    # I

    .line 523
    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "buckets must be positive: %s"

    invoke-static {v0, v1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 524
    new-instance v0, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;-><init>(J)V

    .line 525
    .local v0, "generator":Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;
    const/4 v1, 0x0

    .line 530
    .local v1, "candidate":I
    :goto_1
    add-int/lit8 v2, v1, 0x1

    int-to-double v2, v2

    invoke-virtual {v0}, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;->nextDouble()D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 531
    .local v2, "next":I
    if-ltz v2, :cond_1

    if-ge v2, p2, :cond_1

    .line 532
    move v1, v2

    goto :goto_1

    .line 534
    :cond_1
    return v1
.end method

.method public static consistentHash(Lcom/google/common/hash/HashCode;I)I
    .locals 2
    .param p0, "hashCode"    # Lcom/google/common/hash/HashCode;
    .param p1, "buckets"    # I

    .line 488
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->padToLong()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/common/hash/Hashing;->consistentHash(JI)I

    move-result v0

    return v0
.end method

.method public static crc32()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 383
    sget-object v0, Lcom/google/common/hash/Hashing$Crc32Holder;->CRC_32:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static crc32c()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 366
    sget-object v0, Lcom/google/common/hash/Hashing$Crc32cHolder;->CRC_32_C:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static farmHashFingerprint64()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 449
    sget-object v0, Lcom/google/common/hash/Hashing$FarmHashFingerprint64Holder;->FARMHASH_FINGERPRINT_64:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static goodFastHash(I)Lcom/google/common/hash/HashFunction;
    .locals 6
    .param p0, "minimumBits"    # I

    .line 64
    invoke-static {p0}, Lcom/google/common/hash/Hashing;->checkPositiveAndMakeMultipleOf32(I)I

    move-result v0

    .line 66
    .local v0, "bits":I
    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 67
    sget-object v1, Lcom/google/common/hash/Hashing$Murmur3_32Holder;->GOOD_FAST_HASH_FUNCTION_32:Lcom/google/common/hash/HashFunction;

    return-object v1

    .line 69
    :cond_0
    const/16 v1, 0x80

    if-gt v0, v1, :cond_1

    .line 70
    sget-object v1, Lcom/google/common/hash/Hashing$Murmur3_128Holder;->GOOD_FAST_HASH_FUNCTION_128:Lcom/google/common/hash/HashFunction;

    return-object v1

    .line 74
    :cond_1
    add-int/lit8 v2, v0, 0x7f

    div-int/2addr v2, v1

    .line 75
    .local v2, "hashFunctionsNeeded":I
    new-array v1, v2, [Lcom/google/common/hash/HashFunction;

    .line 76
    .local v1, "hashFunctions":[Lcom/google/common/hash/HashFunction;
    const/4 v3, 0x0

    sget-object v4, Lcom/google/common/hash/Hashing$Murmur3_128Holder;->GOOD_FAST_HASH_FUNCTION_128:Lcom/google/common/hash/HashFunction;

    aput-object v4, v1, v3

    .line 77
    sget v3, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    .line 78
    .local v3, "seed":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 79
    const v5, 0x596f0ddf

    add-int/2addr v3, v5

    .line 80
    invoke-static {v3}, Lcom/google/common/hash/Hashing;->murmur3_128(I)Lcom/google/common/hash/HashFunction;

    move-result-object v5

    aput-object v5, v1, v4

    .line 78
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 82
    .end local v4    # "i":I
    :cond_2
    new-instance v4, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/Hashing$1;)V

    return-object v4
.end method

.method public static hmacMd5(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;
    .locals 3
    .param p0, "key"    # Ljava/security/Key;

    .line 257
    new-instance v0, Lcom/google/common/hash/MacHashFunction;

    const-string v1, "hmacMd5"

    invoke-static {v1, p0}, Lcom/google/common/hash/Hashing;->hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HmacMD5"

    invoke-direct {v0, v2, p0, v1}, Lcom/google/common/hash/MacHashFunction;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacMd5([B)Lcom/google/common/hash/HashFunction;
    .locals 3
    .param p0, "key"    # [B

    .line 270
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "HmacMD5"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/hash/Hashing;->hmacMd5(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha1(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;
    .locals 3
    .param p0, "key"    # Ljava/security/Key;

    .line 283
    new-instance v0, Lcom/google/common/hash/MacHashFunction;

    const-string v1, "hmacSha1"

    invoke-static {v1, p0}, Lcom/google/common/hash/Hashing;->hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HmacSHA1"

    invoke-direct {v0, v2, p0, v1}, Lcom/google/common/hash/MacHashFunction;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha1([B)Lcom/google/common/hash/HashFunction;
    .locals 3
    .param p0, "key"    # [B

    .line 296
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "HmacSHA1"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/hash/Hashing;->hmacSha1(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha256(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;
    .locals 3
    .param p0, "key"    # Ljava/security/Key;

    .line 309
    new-instance v0, Lcom/google/common/hash/MacHashFunction;

    const-string v1, "hmacSha256"

    invoke-static {v1, p0}, Lcom/google/common/hash/Hashing;->hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HmacSHA256"

    invoke-direct {v0, v2, p0, v1}, Lcom/google/common/hash/MacHashFunction;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha256([B)Lcom/google/common/hash/HashFunction;
    .locals 3
    .param p0, "key"    # [B

    .line 322
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "HmacSHA256"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/hash/Hashing;->hmacSha256(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha512(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;
    .locals 3
    .param p0, "key"    # Ljava/security/Key;

    .line 335
    new-instance v0, Lcom/google/common/hash/MacHashFunction;

    const-string v1, "hmacSha512"

    invoke-static {v1, p0}, Lcom/google/common/hash/Hashing;->hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HmacSHA512"

    invoke-direct {v0, v2, p0, v1}, Lcom/google/common/hash/MacHashFunction;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha512([B)Lcom/google/common/hash/HashFunction;
    .locals 3
    .param p0, "key"    # [B

    .line 348
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "HmacSHA512"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/hash/Hashing;->hmacSha512(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;

    move-result-object v0

    return-object v0
.end method

.method private static hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;
    .locals 3
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/Key;

    .line 352
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Hashing.%s(Key[algorithm=%s, format=%s])"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 183
    sget-object v0, Lcom/google/common/hash/Hashing$Md5Holder;->MD5:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_128()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 139
    sget-object v0, Lcom/google/common/hash/Hashing$Murmur3_128Holder;->MURMUR3_128:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_128(I)Lcom/google/common/hash/HashFunction;
    .locals 1
    .param p0, "seed"    # I

    .line 128
    new-instance v0, Lcom/google/common/hash/Murmur3_128HashFunction;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Murmur3_128HashFunction;-><init>(I)V

    return-object v0
.end method

.method public static murmur3_32()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 110
    sget-object v0, Lcom/google/common/hash/Hashing$Murmur3_32Holder;->MURMUR3_32:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_32(I)Lcom/google/common/hash/HashFunction;
    .locals 1
    .param p0, "seed"    # I

    .line 99
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Murmur3_32HashFunction;-><init>(I)V

    return-object v0
.end method

.method public static sha1()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 199
    sget-object v0, Lcom/google/common/hash/Hashing$Sha1Holder;->SHA_1:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sha256()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 211
    sget-object v0, Lcom/google/common/hash/Hashing$Sha256Holder;->SHA_256:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sha384()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 226
    sget-object v0, Lcom/google/common/hash/Hashing$Sha384Holder;->SHA_384:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sha512()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 239
    sget-object v0, Lcom/google/common/hash/Hashing$Sha512Holder;->SHA_512:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sipHash24()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 156
    sget-object v0, Lcom/google/common/hash/Hashing$SipHash24Holder;->SIP_HASH_24:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sipHash24(JJ)Lcom/google/common/hash/HashFunction;
    .locals 8
    .param p0, "k0"    # J
    .param p2, "k1"    # J

    .line 171
    new-instance v7, Lcom/google/common/hash/SipHashFunction;

    const/4 v1, 0x2

    const/4 v2, 0x4

    move-object v0, v7

    move-wide v3, p0

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/common/hash/SipHashFunction;-><init>(IIJJ)V

    return-object v7
.end method
