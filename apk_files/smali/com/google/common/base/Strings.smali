.class public final Lcom/google/common/base/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commonPrefix(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;

    .line 177
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 181
    .local v0, "maxPrefixLength":I
    const/4 v1, 0x0

    .line 182
    .local v1, "p":I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_0
    add-int/lit8 v2, v1, -0x1

    invoke-static {p0, v2}, Lcom/google/common/base/Strings;->validSurrogatePairAt(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v2, v1, -0x1

    invoke-static {p1, v2}, Lcom/google/common/base/Strings;->validSurrogatePairAt(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 188
    :cond_2
    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static commonSuffix(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;

    .line 200
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 204
    .local v0, "maxSuffixLength":I
    const/4 v1, 0x0

    .line 205
    .local v1, "s":I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p0, v2}, Lcom/google/common/base/Strings;->validSurrogatePairAt(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Lcom/google/common/base/Strings;->validSurrogatePairAt(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 210
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 212
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static emptyToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 52
    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    invoke-static {p0}, Lcom/google/common/base/Platform;->stringIsNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static nullToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static padEnd(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "minLength"    # I
    .param p2, "padChar"    # C

    .line 120
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 122
    return-object p0

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 125
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 127
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static padStart(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "minLength"    # I
    .param p2, "padChar"    # C

    .line 89
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 91
    return-object p0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 94
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 95
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "count"    # I

    .line 143
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p1, v0, :cond_2

    .line 146
    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "invalid count: %s"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 147
    if-nez p1, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    move-object v0, p0

    :goto_1
    return-object v0

    .line 151
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 152
    .local v0, "len":I
    int-to-long v2, v0

    int-to-long v4, p1

    mul-long v2, v2, v4

    .line 153
    .local v2, "longSize":J
    long-to-int v4, v2

    .line 154
    .local v4, "size":I
    int-to-long v5, v4

    cmp-long v7, v5, v2

    if-nez v7, :cond_4

    .line 158
    new-array v5, v4, [C

    .line 159
    .local v5, "array":[C
    invoke-virtual {p0, v1, v0, v5, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 161
    move v6, v0

    .local v6, "n":I
    :goto_2
    sub-int v7, v4, v6

    if-ge v6, v7, :cond_3

    .line 162
    invoke-static {v5, v1, v5, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    shl-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 164
    :cond_3
    sub-int v7, v4, v6

    invoke-static {v5, v1, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 155
    .end local v5    # "array":[C
    .end local v6    # "n":I
    :cond_4
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Required array size too large: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method static validSurrogatePairAt(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .line 221
    if-ltz p1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-gt p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
