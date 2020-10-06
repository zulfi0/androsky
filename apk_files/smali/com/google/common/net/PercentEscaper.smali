.class public final Lcom/google/common/net/PercentEscaper;
.super Lcom/google/common/escape/UnicodeEscaper;
.source "PercentEscaper.java"


# static fields
.field private static final PLUS_SIGN:[C

.field private static final UPPER_HEX_DIGITS:[C


# instance fields
.field private final plusForSpace:Z

.field private final safeOctets:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x2b

    aput-char v2, v0, v1

    sput-object v0, Lcom/google/common/net/PercentEscaper;->PLUS_SIGN:[C

    .line 59
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "safeChars"    # Ljava/lang/String;
    .param p2, "plusForSpace"    # Z

    .line 86
    invoke-direct {p0}, Lcom/google/common/escape/UnicodeEscaper;-><init>()V

    .line 89
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v0, ".*[0-9A-Za-z].*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 98
    if-eqz p2, :cond_1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "plusForSpace cannot be specified when space is a \'safe\' character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/google/common/net/PercentEscaper;->plusForSpace:Z

    .line 103
    invoke-static {p1}, Lcom/google/common/net/PercentEscaper;->createSafeOctets(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/net/PercentEscaper;->safeOctets:[Z

    .line 104
    return-void

    .line 92
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Alphanumeric characters are always \'safe\' and should not be explicitly specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createSafeOctets(Ljava/lang/String;)[Z
    .locals 8
    .param p0, "safeChars"    # Ljava/lang/String;

    .line 112
    const/4 v0, -0x1

    .line 113
    .local v0, "maxChar":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 114
    .local v1, "safeCharArray":[C
    move-object v2, v1

    .local v2, "arr$":[C
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_0

    aget-char v5, v2, v4

    .line 115
    .local v5, "c":C
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 114
    .end local v5    # "c":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
    .end local v2    # "arr$":[C
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_0
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [Z

    .line 118
    .local v2, "octets":[Z
    move-object v3, v1

    .local v3, "arr$":[C
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v4, :cond_1

    aget-char v6, v3, v5

    .line 119
    .local v6, "c":C
    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 118
    .end local v6    # "c":C
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 121
    .end local v3    # "arr$":[C
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_1
    return-object v2
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .line 146
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 148
    .local v0, "slen":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 149
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 150
    .local v2, "c":C
    iget-object v3, p0, Lcom/google/common/net/PercentEscaper;->safeOctets:[Z

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-boolean v3, v3, v2

    if-nez v3, :cond_0

    goto :goto_1

    .line 148
    .end local v2    # "c":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .restart local v2    # "c":C
    :cond_1
    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/google/common/net/PercentEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 154
    .end local v1    # "index":I
    .end local v2    # "c":C
    :cond_2
    return-object p1
.end method

.method protected escape(I)[C
    .locals 12
    .param p1, "cp"    # I

    .line 164
    iget-object v0, p0, Lcom/google/common/net/PercentEscaper;->safeOctets:[Z

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x0

    return-object v0

    .line 166
    :cond_0
    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/google/common/net/PercentEscaper;->plusForSpace:Z

    if-eqz v0, :cond_1

    .line 167
    sget-object v0, Lcom/google/common/net/PercentEscaper;->PLUS_SIGN:[C

    return-object v0

    .line 168
    :cond_1
    const/16 v0, 0x7f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x25

    const/4 v5, 0x3

    if-gt p1, v0, :cond_2

    .line 171
    new-array v0, v5, [C

    .line 172
    .local v0, "dest":[C
    aput-char v4, v0, v2

    .line 173
    sget-object v2, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v4, p1, 0xf

    aget-char v4, v2, v4

    aput-char v4, v0, v3

    .line 174
    ushr-int/lit8 v3, p1, 0x4

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 175
    return-object v0

    .line 176
    .end local v0    # "dest":[C
    :cond_2
    const/16 v0, 0x7ff

    const/4 v6, 0x5

    const/4 v7, 0x6

    const/16 v8, 0x8

    const/4 v9, 0x4

    if-gt p1, v0, :cond_3

    .line 179
    new-array v0, v7, [C

    .line 180
    .restart local v0    # "dest":[C
    aput-char v4, v0, v2

    .line 181
    aput-char v4, v0, v5

    .line 182
    sget-object v2, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v4, p1, 0xf

    aget-char v4, v2, v4

    aput-char v4, v0, v6

    .line 183
    ushr-int/2addr p1, v9

    .line 184
    and-int/lit8 v4, p1, 0x3

    or-int/2addr v4, v8

    aget-char v4, v2, v4

    aput-char v4, v0, v9

    .line 185
    ushr-int/2addr p1, v3

    .line 186
    and-int/lit8 v4, p1, 0xf

    aget-char v4, v2, v4

    aput-char v4, v0, v3

    .line 187
    ushr-int/2addr p1, v9

    .line 188
    or-int/lit8 v3, p1, 0xc

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 189
    return-object v0

    .line 190
    .end local v0    # "dest":[C
    :cond_3
    const v0, 0xffff

    const/16 v10, 0x9

    const/4 v11, 0x7

    if-gt p1, v0, :cond_4

    .line 193
    new-array v0, v10, [C

    .line 194
    .restart local v0    # "dest":[C
    aput-char v4, v0, v2

    .line 195
    const/16 v2, 0x45

    aput-char v2, v0, v1

    .line 196
    aput-char v4, v0, v5

    .line 197
    aput-char v4, v0, v7

    .line 198
    sget-object v1, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v2, v1, v2

    aput-char v2, v0, v8

    .line 199
    ushr-int/2addr p1, v9

    .line 200
    and-int/lit8 v2, p1, 0x3

    or-int/2addr v2, v8

    aget-char v2, v1, v2

    aput-char v2, v0, v11

    .line 201
    ushr-int/2addr p1, v3

    .line 202
    and-int/lit8 v2, p1, 0xf

    aget-char v2, v1, v2

    aput-char v2, v0, v6

    .line 203
    ushr-int/2addr p1, v9

    .line 204
    and-int/lit8 v2, p1, 0x3

    or-int/2addr v2, v8

    aget-char v2, v1, v2

    aput-char v2, v0, v9

    .line 205
    ushr-int/2addr p1, v3

    .line 206
    aget-char v1, v1, p1

    aput-char v1, v0, v3

    .line 207
    return-object v0

    .line 208
    .end local v0    # "dest":[C
    :cond_4
    const v0, 0x10ffff

    if-gt p1, v0, :cond_5

    .line 209
    const/16 v0, 0xc

    new-array v0, v0, [C

    .line 212
    .restart local v0    # "dest":[C
    aput-char v4, v0, v2

    .line 213
    const/16 v2, 0x46

    aput-char v2, v0, v1

    .line 214
    aput-char v4, v0, v5

    .line 215
    aput-char v4, v0, v7

    .line 216
    aput-char v4, v0, v10

    .line 217
    const/16 v1, 0xb

    sget-object v2, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v4, p1, 0xf

    aget-char v4, v2, v4

    aput-char v4, v0, v1

    .line 218
    ushr-int/2addr p1, v9

    .line 219
    const/16 v1, 0xa

    and-int/lit8 v4, p1, 0x3

    or-int/2addr v4, v8

    aget-char v4, v2, v4

    aput-char v4, v0, v1

    .line 220
    ushr-int/2addr p1, v3

    .line 221
    and-int/lit8 v1, p1, 0xf

    aget-char v1, v2, v1

    aput-char v1, v0, v8

    .line 222
    ushr-int/2addr p1, v9

    .line 223
    and-int/lit8 v1, p1, 0x3

    or-int/2addr v1, v8

    aget-char v1, v2, v1

    aput-char v1, v0, v11

    .line 224
    ushr-int/2addr p1, v3

    .line 225
    and-int/lit8 v1, p1, 0xf

    aget-char v1, v2, v1

    aput-char v1, v0, v6

    .line 226
    ushr-int/2addr p1, v9

    .line 227
    and-int/lit8 v1, p1, 0x3

    or-int/2addr v1, v8

    aget-char v1, v2, v1

    aput-char v1, v0, v9

    .line 228
    ushr-int/2addr p1, v3

    .line 229
    and-int/lit8 v1, p1, 0x7

    aget-char v1, v2, v1

    aput-char v1, v0, v3

    .line 230
    return-object v0

    .line 233
    .end local v0    # "dest":[C
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid unicode character value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I
    .param p3, "end"    # I

    .line 130
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :goto_0
    if-ge p2, p3, :cond_1

    .line 132
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 133
    .local v0, "c":C
    iget-object v1, p0, Lcom/google/common/net/PercentEscaper;->safeOctets:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 134
    goto :goto_1

    .line 131
    .end local v0    # "c":C
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 137
    :cond_1
    :goto_1
    return p2
.end method
