.class public abstract Lcom/google/common/escape/CharEscaper;
.super Lcom/google/common/escape/Escaper;
.source "CharEscaper.java"


# static fields
.field private static final DEST_PAD_MULTIPLIER:I = 0x2


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/google/common/escape/Escaper;-><init>()V

    return-void
.end method

.method private static growBuffer([CII)[C
    .locals 2
    .param p0, "dest"    # [C
    .param p1, "index"    # I
    .param p2, "size"    # I

    .line 163
    new-array v0, p2, [C

    .line 164
    .local v0, "copy":[C
    if-lez p1, :cond_0

    .line 165
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    :cond_0
    return-object v0
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 60
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v2

    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {p0, p1, v1}, Lcom/google/common/escape/CharEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 60
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "index":I
    :cond_1
    return-object p1
.end method

.method protected abstract escape(C)[C
.end method

.method protected final escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 83
    .local v0, "slen":I
    invoke-static {}, Lcom/google/common/escape/Platform;->charBufferFromThreadLocal()[C

    move-result-object v1

    .line 84
    .local v1, "dest":[C
    array-length v2, v1

    .line 85
    .local v2, "destSize":I
    const/4 v3, 0x0

    .line 86
    .local v3, "destIndex":I
    const/4 v4, 0x0

    .line 90
    .local v4, "lastEscape":I
    :goto_0
    const/4 v5, 0x0

    if-ge p2, v0, :cond_4

    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v6

    .line 96
    .local v6, "r":[C
    if-nez v6, :cond_0

    .line 97
    goto :goto_1

    .line 100
    :cond_0
    array-length v7, v6

    .line 101
    .local v7, "rlen":I
    sub-int v8, p2, v4

    .line 106
    .local v8, "charsSkipped":I
    add-int v9, v3, v8

    add-int/2addr v9, v7

    .line 107
    .local v9, "sizeNeeded":I
    if-ge v2, v9, :cond_1

    .line 108
    sub-int v10, v0, p2

    mul-int/lit8 v10, v10, 0x2

    add-int v2, v9, v10

    .line 109
    invoke-static {v1, v3, v2}, Lcom/google/common/escape/CharEscaper;->growBuffer([CII)[C

    move-result-object v1

    .line 113
    :cond_1
    if-lez v8, :cond_2

    .line 114
    invoke-virtual {p1, v4, p2, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 115
    add-int/2addr v3, v8

    .line 119
    :cond_2
    if-lez v7, :cond_3

    .line 120
    invoke-static {v6, v5, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    add-int/2addr v3, v7

    .line 123
    :cond_3
    add-int/lit8 v4, p2, 0x1

    .line 90
    .end local v6    # "r":[C
    .end local v7    # "rlen":I
    .end local v8    # "charsSkipped":I
    .end local v9    # "sizeNeeded":I
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 127
    :cond_4
    sub-int v6, v0, v4

    .line 128
    .local v6, "charsLeft":I
    if-lez v6, :cond_6

    .line 129
    add-int v7, v3, v6

    .line 130
    .local v7, "sizeNeeded":I
    if-ge v2, v7, :cond_5

    .line 133
    invoke-static {v1, v3, v7}, Lcom/google/common/escape/CharEscaper;->growBuffer([CII)[C

    move-result-object v1

    .line 135
    :cond_5
    invoke-virtual {p1, v4, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 136
    move v3, v7

    .line 138
    .end local v7    # "sizeNeeded":I
    :cond_6
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1, v5, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v7
.end method
