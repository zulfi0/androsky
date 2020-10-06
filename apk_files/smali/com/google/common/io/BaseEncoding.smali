.class public abstract Lcom/google/common/io/BaseEncoding;
.super Ljava/lang/Object;
.source "BaseEncoding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;,
        Lcom/google/common/io/BaseEncoding$Base64Encoding;,
        Lcom/google/common/io/BaseEncoding$Base16Encoding;,
        Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;,
        Lcom/google/common/io/BaseEncoding$Alphabet;,
        Lcom/google/common/io/BaseEncoding$DecodingException;
    }
.end annotation


# static fields
.field private static final BASE16:Lcom/google/common/io/BaseEncoding;

.field private static final BASE32:Lcom/google/common/io/BaseEncoding;

.field private static final BASE32_HEX:Lcom/google/common/io/BaseEncoding;

.field private static final BASE64:Lcom/google/common/io/BaseEncoding;

.field private static final BASE64_URL:Lcom/google/common/io/BaseEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 314
    new-instance v0, Lcom/google/common/io/BaseEncoding$Base64Encoding;

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "base64()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/io/BaseEncoding$Base64Encoding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/BaseEncoding;->BASE64:Lcom/google/common/io/BaseEncoding;

    .line 335
    new-instance v0, Lcom/google/common/io/BaseEncoding$Base64Encoding;

    const-string v2, "base64Url()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/io/BaseEncoding$Base64Encoding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/BaseEncoding;->BASE64_URL:Lcom/google/common/io/BaseEncoding;

    .line 357
    new-instance v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    const-string v2, "base32()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/BaseEncoding;->BASE32:Lcom/google/common/io/BaseEncoding;

    .line 376
    new-instance v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    const-string v2, "base32Hex()"

    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/BaseEncoding;->BASE32_HEX:Lcom/google/common/io/BaseEncoding;

    .line 395
    new-instance v0, Lcom/google/common/io/BaseEncoding$Base16Encoding;

    const-string v1, "base16()"

    const-string v2, "0123456789ABCDEF"

    invoke-direct {v0, v1, v2}, Lcom/google/common/io/BaseEncoding$Base16Encoding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/io/BaseEncoding;->BASE16:Lcom/google/common/io/BaseEncoding;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base16()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .line 411
    sget-object v0, Lcom/google/common/io/BaseEncoding;->BASE16:Lcom/google/common/io/BaseEncoding;

    return-object v0
.end method

.method public static base32()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .line 373
    sget-object v0, Lcom/google/common/io/BaseEncoding;->BASE32:Lcom/google/common/io/BaseEncoding;

    return-object v0
.end method

.method public static base32Hex()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .line 392
    sget-object v0, Lcom/google/common/io/BaseEncoding;->BASE32_HEX:Lcom/google/common/io/BaseEncoding;

    return-object v0
.end method

.method public static base64()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .line 332
    sget-object v0, Lcom/google/common/io/BaseEncoding;->BASE64:Lcom/google/common/io/BaseEncoding;

    return-object v0
.end method

.method public static base64Url()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .line 354
    sget-object v0, Lcom/google/common/io/BaseEncoding;->BASE64_URL:Lcom/google/common/io/BaseEncoding;

    return-object v0
.end method

.method private static extract([BI)[B
    .locals 2
    .param p0, "result"    # [B
    .param p1, "length"    # I

    .line 186
    array-length v0, p0

    if-ne p1, v0, :cond_0

    .line 187
    return-object p0

    .line 189
    :cond_0
    new-array v0, p1, [B

    .line 190
    .local v0, "trunc":[B
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    return-object v0
.end method

.method static ignoringReader(Ljava/io/Reader;Lcom/google/common/base/CharMatcher;)Ljava/io/Reader;
    .locals 1
    .param p0, "delegate"    # Ljava/io/Reader;
    .param p1, "toIgnore"    # Lcom/google/common/base/CharMatcher;

    .line 948
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    new-instance v0, Lcom/google/common/io/BaseEncoding$3;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$3;-><init>(Ljava/io/Reader;Lcom/google/common/base/CharMatcher;)V

    return-object v0
.end method

.method static separatingAppendable(Ljava/lang/Appendable;Ljava/lang/String;I)Ljava/lang/Appendable;
    .locals 1
    .param p0, "delegate"    # Ljava/lang/Appendable;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "afterEveryChars"    # I

    .line 974
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 977
    new-instance v0, Lcom/google/common/io/BaseEncoding$4;

    invoke-direct {v0, p2, p0, p1}, Lcom/google/common/io/BaseEncoding$4;-><init>(ILjava/lang/Appendable;Ljava/lang/String;)V

    return-object v0
.end method

.method static separatingWriter(Ljava/io/Writer;Ljava/lang/String;I)Ljava/io/Writer;
    .locals 2
    .param p0, "delegate"    # Ljava/io/Writer;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "afterEveryChars"    # I

    .line 1006
    invoke-static {p0, p1, p2}, Lcom/google/common/io/BaseEncoding;->separatingAppendable(Ljava/lang/Appendable;Ljava/lang/String;I)Ljava/lang/Appendable;

    move-result-object v0

    .line 1008
    .local v0, "seperatingAppendable":Ljava/lang/Appendable;
    new-instance v1, Lcom/google/common/io/BaseEncoding$5;

    invoke-direct {v1, v0, p0}, Lcom/google/common/io/BaseEncoding$5;-><init>(Ljava/lang/Appendable;Ljava/io/Writer;)V

    return-object v1
.end method


# virtual methods
.method public abstract canDecode(Ljava/lang/CharSequence;)Z
.end method

.method public final decode(Ljava/lang/CharSequence;)[B
    .locals 2
    .param p1, "chars"    # Ljava/lang/CharSequence;

    .line 212
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/io/BaseEncoding;->decodeChecked(Ljava/lang/CharSequence;)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/google/common/io/BaseEncoding$DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "badInput":Lcom/google/common/io/BaseEncoding$DecodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final decodeChecked(Ljava/lang/CharSequence;)[B
    .locals 3
    .param p1, "chars"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/BaseEncoding$DecodingException;
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/google/common/io/BaseEncoding;->padding()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 227
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/io/BaseEncoding;->maxDecodedSize(I)I

    move-result v0

    new-array v0, v0, [B

    .line 228
    .local v0, "tmp":[B
    invoke-virtual {p0, v0, p1}, Lcom/google/common/io/BaseEncoding;->decodeTo([BLjava/lang/CharSequence;)I

    move-result v1

    .line 229
    .local v1, "len":I
    invoke-static {v0, v1}, Lcom/google/common/io/BaseEncoding;->extract([BI)[B

    move-result-object v2

    return-object v2
.end method

.method abstract decodeTo([BLjava/lang/CharSequence;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/BaseEncoding$DecodingException;
        }
    .end annotation
.end method

.method public final decodingSource(Lcom/google/common/io/CharSource;)Lcom/google/common/io/ByteSource;
    .locals 1
    .param p1, "encodedSource"    # Lcom/google/common/io/CharSource;

    .line 246
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    new-instance v0, Lcom/google/common/io/BaseEncoding$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$2;-><init>(Lcom/google/common/io/BaseEncoding;Lcom/google/common/io/CharSource;)V

    return-object v0
.end method

.method public abstract decodingStream(Ljava/io/Reader;)Ljava/io/InputStream;
.end method

.method public encode([B)Ljava/lang/String;
    .locals 2
    .param p1, "bytes"    # [B

    .line 143
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/common/io/BaseEncoding;->encode([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final encode([BII)Ljava/lang/String;
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 151
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/google/common/io/BaseEncoding;->maxEncodedSize(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 154
    .local v0, "result":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/common/io/BaseEncoding;->encodeTo(Ljava/lang/Appendable;[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    nop

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "impossible":Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method abstract encodeTo(Ljava/lang/Appendable;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final encodingSink(Lcom/google/common/io/CharSink;)Lcom/google/common/io/ByteSink;
    .locals 1
    .param p1, "encodedSink"    # Lcom/google/common/io/CharSink;

    .line 174
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v0, Lcom/google/common/io/BaseEncoding$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$1;-><init>(Lcom/google/common/io/BaseEncoding;Lcom/google/common/io/CharSink;)V

    return-object v0
.end method

.method public abstract encodingStream(Ljava/io/Writer;)Ljava/io/OutputStream;
.end method

.method public abstract lowerCase()Lcom/google/common/io/BaseEncoding;
.end method

.method abstract maxDecodedSize(I)I
.end method

.method abstract maxEncodedSize(I)I
.end method

.method public abstract omitPadding()Lcom/google/common/io/BaseEncoding;
.end method

.method abstract padding()Lcom/google/common/base/CharMatcher;
.end method

.method public abstract upperCase()Lcom/google/common/io/BaseEncoding;
.end method

.method public abstract withPadChar(C)Lcom/google/common/io/BaseEncoding;
.end method

.method public abstract withSeparator(Ljava/lang/String;I)Lcom/google/common/io/BaseEncoding;
.end method
