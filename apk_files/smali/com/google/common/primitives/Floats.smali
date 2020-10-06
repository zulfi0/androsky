.class public final Lcom/google/common/primitives/Floats;
.super Ljava/lang/Object;
.source "Floats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Floats$FloatArrayAsList;,
        Lcom/google/common/primitives/Floats$LexicographicalComparator;,
        Lcom/google/common/primitives/Floats$FloatConverter;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([FFII)I
    .locals 1
    .param p0, "x0"    # [F
    .param p1, "x1"    # F
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Floats;->indexOf([FFII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([FFII)I
    .locals 1
    .param p0, "x0"    # [F
    .param p1, "x1"    # F
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Floats;->lastIndexOf([FFII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([F)Ljava/util/List;
    .locals 1
    .param p0, "backingArray"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 426
    array-length v0, p0

    if-nez v0, :cond_0

    .line 427
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 429
    :cond_0
    new-instance v0, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;-><init>([F)V

    return-object v0
.end method

.method public static compare(FF)I
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 90
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public static varargs concat([[F)[F
    .locals 9
    .param p0, "arrays"    # [[F

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "length":I
    move-object v1, p0

    .local v1, "arr$":[[F
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 249
    .local v4, "array":[F
    array-length v5, v4

    add-int/2addr v0, v5

    .line 248
    .end local v4    # "array":[F
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 251
    .end local v1    # "arr$":[[F
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    new-array v1, v0, [F

    .line 252
    .local v1, "result":[F
    const/4 v2, 0x0

    .line 253
    .local v2, "pos":I
    move-object v3, p0

    .local v3, "arr$":[[F
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 254
    .local v6, "array":[F
    const/4 v7, 0x0

    array-length v8, v6

    invoke-static {v6, v7, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    array-length v7, v6

    add-int/2addr v2, v7

    .line 253
    .end local v6    # "array":[F
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 257
    .end local v3    # "arr$":[[F
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_1
    return-object v1
.end method

.method public static contains([FF)Z
    .locals 5
    .param p0, "array"    # [F
    .param p1, "target"    # F

    .line 116
    move-object v0, p0

    .local v0, "arr$":[F
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 117
    .local v3, "value":F
    cmpl-float v4, v3, p1

    if-nez v4, :cond_0

    .line 118
    const/4 v4, 0x1

    return v4

    .line 116
    .end local v3    # "value":F
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "arr$":[F
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static ensureCapacity([FII)[F
    .locals 4
    .param p0, "array"    # [F
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .line 311
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

    .line 312
    if-ltz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "Invalid padding: %s"

    invoke-static {v0, v1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 313
    array-length v0, p0

    if-ge v0, p1, :cond_2

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, p0

    :goto_2
    return-object v0
.end method

.method public static hashCode(F)I
    .locals 1
    .param p0, "value"    # F

    .line 73
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([FF)I
    .locals 2
    .param p0, "array"    # [F
    .param p1, "target"    # F

    .line 134
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Floats;->indexOf([FFII)I

    move-result v0

    return v0
.end method

.method private static indexOf([FFII)I
    .locals 2
    .param p0, "array"    # [F
    .param p1, "target"    # F
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 139
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 140
    aget v1, p0, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    .line 141
    return v0

    .line 139
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf([F[F)I
    .locals 4
    .param p0, "array"    # [F
    .param p1, "target"    # [F

    .line 161
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    array-length v0, p1

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x0

    return v0

    .line 168
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_3

    .line 169
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 170
    add-int v2, v0, v1

    aget v2, p0, v2

    aget v3, p1, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 171
    nop

    .line 168
    .end local v1    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    .restart local v1    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 174
    .end local v1    # "j":I
    :cond_2
    return v0

    .line 176
    .end local v0    # "i":I
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public static isFinite(F)Z
    .locals 4
    .param p0, "value"    # F

    .line 102
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    cmpg-float v2, v2, p0

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpg-float v3, p0, v3

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    and-int/2addr v0, v2

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[F)Ljava/lang/String;
    .locals 3
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [F

    .line 330
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    array-length v0, p1

    if-nez v0, :cond_0

    .line 332
    const-string v0, ""

    return-object v0

    .line 336
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 337
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 338
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 339
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static lastIndexOf([FF)I
    .locals 2
    .param p0, "array"    # [F
    .param p1, "target"    # F

    .line 189
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Floats;->lastIndexOf([FFII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([FFII)I
    .locals 2
    .param p0, "array"    # [F
    .param p1, "target"    # F
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 194
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 195
    aget v1, p0, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    .line 196
    return v0

    .line 194
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 199
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
            "[F>;"
        }
    .end annotation

    .line 358
    sget-object v0, Lcom/google/common/primitives/Floats$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Floats$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([F)F
    .locals 3
    .param p0, "array"    # [F

    .line 230
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 231
    aget v0, p0, v1

    .line 232
    .local v0, "max":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 233
    aget v2, p0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 235
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static varargs min([F)F
    .locals 3
    .param p0, "array"    # [F

    .line 212
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 213
    aget v0, p0, v1

    .line 214
    .local v0, "min":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 215
    aget v2, p0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 217
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static stringConverter()Lcom/google/common/base/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 294
    sget-object v0, Lcom/google/common/primitives/Floats$FloatConverter;->INSTANCE:Lcom/google/common/primitives/Floats$FloatConverter;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)[F"
        }
    .end annotation

    .line 396
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    instance-of v0, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    if-eqz v0, :cond_0

    .line 397
    move-object v0, p0

    check-cast v0, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    invoke-virtual {v0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->toFloatArray()[F

    move-result-object v0

    return-object v0

    .line 400
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 401
    .local v0, "boxedArray":[Ljava/lang/Object;
    array-length v1, v0

    .line 402
    .local v1, "len":I
    new-array v2, v1, [F

    .line 403
    .local v2, "array":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 405
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    aput v4, v2, v3

    .line 403
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 407
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public static tryParse(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 586
    sget-object v0, Lcom/google/common/primitives/Doubles;->FLOATING_POINT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 591
    :catch_0
    move-exception v0

    .line 596
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
