.class public final Lcom/google/common/primitives/Chars;
.super Ljava/lang/Object;
.source "Chars.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Chars$CharArrayAsList;,
        Lcom/google/common/primitives/Chars$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([CCII)I
    .locals 1
    .param p0, "x0"    # [C
    .param p1, "x1"    # C
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Chars;->indexOf([CCII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([CCII)I
    .locals 1
    .param p0, "x0"    # [C
    .param p1, "x1"    # C
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Chars;->lastIndexOf([CCII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([C)Ljava/util/List;
    .locals 1
    .param p0, "backingArray"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 434
    array-length v0, p0

    if-nez v0, :cond_0

    .line 435
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 437
    :cond_0
    new-instance v0, Lcom/google/common/primitives/Chars$CharArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;-><init>([C)V

    return-object v0
.end method

.method public static checkedCast(J)C
    .locals 4
    .param p0, "value"    # J

    .line 80
    long-to-int v0, p0

    int-to-char v0, v0

    .line 81
    .local v0, "result":C
    int-to-long v1, v0

    cmp-long v3, v1, p0

    if-nez v3, :cond_0

    .line 85
    return v0

    .line 83
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static compare(CC)I
    .locals 1
    .param p0, "a"    # C
    .param p1, "b"    # C

    .line 119
    sub-int v0, p0, p1

    return v0
.end method

.method public static varargs concat([[C)[C
    .locals 9
    .param p0, "arrays"    # [[C

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "length":I
    move-object v1, p0

    .local v1, "arr$":[[C
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 262
    .local v4, "array":[C
    array-length v5, v4

    add-int/2addr v0, v5

    .line 261
    .end local v4    # "array":[C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 264
    .end local v1    # "arr$":[[C
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    new-array v1, v0, [C

    .line 265
    .local v1, "result":[C
    const/4 v2, 0x0

    .line 266
    .local v2, "pos":I
    move-object v3, p0

    .local v3, "arr$":[[C
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 267
    .local v6, "array":[C
    const/4 v7, 0x0

    array-length v8, v6

    invoke-static {v6, v7, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    array-length v7, v6

    add-int/2addr v2, v7

    .line 266
    .end local v6    # "array":[C
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 270
    .end local v3    # "arr$":[[C
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_1
    return-object v1
.end method

.method public static contains([CC)Z
    .locals 5
    .param p0, "array"    # [C
    .param p1, "target"    # C

    .line 131
    move-object v0, p0

    .local v0, "arr$":[C
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, v0, v2

    .line 132
    .local v3, "value":C
    if-ne v3, p1, :cond_0

    .line 133
    const/4 v4, 0x1

    return v4

    .line 131
    .end local v3    # "value":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "arr$":[C
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static ensureCapacity([CII)[C
    .locals 4
    .param p0, "array"    # [C
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .line 328
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Invalid minLength: %s"

    invoke-static {v2, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 329
    if-ltz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "Invalid padding: %s"

    invoke-static {v0, v1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 330
    array-length v0, p0

    if-ge v0, p1, :cond_2

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, p0

    :goto_2
    return-object v0
.end method

.method public static fromByteArray([B)C
    .locals 6
    .param p0, "bytes"    # [B

    .line 299
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v4, p0

    const-string v5, "array too small: %s < %s"

    invoke-static {v0, v5, v4, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 300
    aget-byte v0, p0, v2

    aget-byte v1, p0, v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Chars;->fromBytes(BB)C

    move-result v0

    return v0
.end method

.method public static fromBytes(BB)C
    .locals 2
    .param p0, "b1"    # B
    .param p1, "b2"    # B

    .line 311
    shl-int/lit8 v0, p0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static hashCode(C)I
    .locals 0
    .param p0, "value"    # C

    .line 68
    return p0
.end method

.method public static indexOf([CC)I
    .locals 2
    .param p0, "array"    # [C
    .param p1, "target"    # C

    .line 148
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Chars;->indexOf([CCII)I

    move-result v0

    return v0
.end method

.method private static indexOf([CCII)I
    .locals 2
    .param p0, "array"    # [C
    .param p1, "target"    # C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 153
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 154
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 155
    return v0

    .line 153
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf([C[C)I
    .locals 4
    .param p0, "array"    # [C
    .param p1, "target"    # [C

    .line 173
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    array-length v0, p1

    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x0

    return v0

    .line 180
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_3

    .line 181
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 182
    add-int v2, v0, v1

    aget-char v2, p0, v2

    aget-char v3, p1, v1

    if-eq v2, v3, :cond_1

    .line 183
    nop

    .line 180
    .end local v1    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    .restart local v1    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 186
    .end local v1    # "j":I
    :cond_2
    return v0

    .line 188
    .end local v0    # "i":I
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 4
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [C

    .line 342
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    array-length v0, p1

    .line 344
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 345
    const-string v1, ""

    return-object v1

    .line 348
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    mul-int v2, v2, v3

    add-int/2addr v2, v0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 349
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-char v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 351
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 353
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static lastIndexOf([CC)I
    .locals 2
    .param p0, "array"    # [C
    .param p1, "target"    # C

    .line 200
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Chars;->lastIndexOf([CCII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([CCII)I
    .locals 2
    .param p0, "array"    # [C
    .param p1, "target"    # C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 205
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 206
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 207
    return v0

    .line 205
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 210
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[C>;"
        }
    .end annotation

    .line 370
    sget-object v0, Lcom/google/common/primitives/Chars$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Chars$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([C)C
    .locals 3
    .param p0, "array"    # [C

    .line 241
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 242
    aget-char v0, p0, v1

    .line 243
    .local v0, "max":C
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 244
    aget-char v2, p0, v1

    if-le v2, v0, :cond_1

    .line 245
    aget-char v0, p0, v1

    .line 243
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 248
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static varargs min([C)C
    .locals 3
    .param p0, "array"    # [C

    .line 222
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 223
    aget-char v0, p0, v1

    .line 224
    .local v0, "min":C
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 225
    aget-char v2, p0, v1

    if-ge v2, v0, :cond_1

    .line 226
    aget-char v0, p0, v1

    .line 224
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 229
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static saturatedCast(J)C
    .locals 3
    .param p0, "value"    # J

    .line 97
    const-wide/32 v0, 0xffff

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    .line 98
    const v0, 0xffff

    return v0

    .line 100
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    .line 101
    const/4 v0, 0x0

    return v0

    .line 103
    :cond_1
    long-to-int v0, p0

    int-to-char v0, v0

    return v0
.end method

.method public static toArray(Ljava/util/Collection;)[C
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;)[C"
        }
    .end annotation

    .line 407
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    instance-of v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;

    if-eqz v0, :cond_0

    .line 408
    move-object v0, p0

    check-cast v0, Lcom/google/common/primitives/Chars$CharArrayAsList;

    invoke-virtual {v0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->toCharArray()[C

    move-result-object v0

    return-object v0

    .line 411
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 412
    .local v0, "boxedArray":[Ljava/lang/Object;
    array-length v1, v0

    .line 413
    .local v1, "len":I
    new-array v2, v1, [C

    .line 414
    .local v2, "array":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 416
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    aput-char v4, v2, v3

    .line 414
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 418
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public static toByteArray(C)[B
    .locals 3
    .param p0, "value"    # C

    .line 284
    const/4 v0, 0x2

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte v1, p0

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    return-object v0
.end method
