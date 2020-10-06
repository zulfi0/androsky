.class public final Lcom/google/common/io/ByteStreams;
.super Ljava/lang/Object;
.source "ByteStreams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/ByteStreams$LimitedInputStream;,
        Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;,
        Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;,
        Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;
    }
.end annotation


# static fields
.field private static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

.field private static final ZERO_COPY_CHUNK_SIZE:I = 0x80000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 594
    new-instance v0, Lcom/google/common/io/ByteStreams$1;

    invoke-direct {v0}, Lcom/google/common/io/ByteStreams$1;-><init>()V

    sput-object v0, Lcom/google/common/io/ByteStreams;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .param p0, "from"    # Ljava/io/InputStream;
    .param p1, "to"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {}, Lcom/google/common/io/ByteStreams;->createBuffer()[B

    move-result-object v0

    .line 104
    .local v0, "buf":[B
    const-wide/16 v1, 0x0

    .line 106
    .local v1, "total":J
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 107
    .local v3, "r":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 108
    nop

    .line 113
    .end local v3    # "r":I
    return-wide v1

    .line 110
    .restart local v3    # "r":I
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 111
    int-to-long v4, v3

    add-long/2addr v1, v4

    .line 112
    .end local v3    # "r":I
    goto :goto_0
.end method

.method public static copy(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/WritableByteChannel;)J
    .locals 11
    .param p0, "from"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "to"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    instance-of v0, p0, Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_1

    .line 130
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/FileChannel;

    .line 131
    .local v0, "sourceChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v7

    .line 132
    .local v7, "oldPosition":J
    move-wide v1, v7

    move-wide v9, v1

    .line 135
    .local v9, "position":J
    :cond_0
    const-wide/32 v4, 0x80000

    move-object v1, v0

    move-wide v2, v9

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v1

    .line 136
    .local v1, "copied":J
    add-long/2addr v9, v1

    .line 137
    invoke-virtual {v0, v9, v10}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 138
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    cmp-long v5, v9, v3

    if-ltz v5, :cond_0

    .line 139
    sub-long v3, v9, v7

    return-wide v3

    .line 142
    .end local v0    # "sourceChannel":Ljava/nio/channels/FileChannel;
    .end local v1    # "copied":J
    .end local v7    # "oldPosition":J
    .end local v9    # "position":J
    :cond_1
    invoke-static {}, Lcom/google/common/io/ByteStreams;->createBuffer()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 143
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const-wide/16 v1, 0x0

    .line 144
    .local v1, "total":J
    :goto_0
    invoke-interface {p0, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 145
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 146
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_1

    .line 149
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 151
    :cond_3
    return-wide v1
.end method

.method static createBuffer()[B
    .locals 1

    .line 56
    const/16 v0, 0x2000

    new-array v0, v0, [B

    return-object v0
.end method

.method public static exhaust(Ljava/io/InputStream;)J
    .locals 10
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    const-wide/16 v0, 0x0

    .line 230
    .local v0, "total":J
    invoke-static {}, Lcom/google/common/io/ByteStreams;->createBuffer()[B

    move-result-object v2

    .line 231
    .local v2, "buf":[B
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    int-to-long v3, v3

    move-wide v5, v3

    .local v5, "read":J
    const-wide/16 v7, -0x1

    cmp-long v9, v3, v7

    if-eqz v9, :cond_0

    .line 232
    add-long/2addr v0, v5

    goto :goto_0

    .line 234
    :cond_0
    return-wide v0
.end method

.method public static limit(Ljava/io/InputStream;J)Ljava/io/InputStream;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "limit"    # J

    .line 636
    new-instance v0, Lcom/google/common/io/ByteStreams$LimitedInputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/io/ByteStreams$LimitedInputStream;-><init>(Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public static newDataInput(Ljava/io/ByteArrayInputStream;)Lcom/google/common/io/ByteArrayDataInput;
    .locals 2
    .param p0, "byteArrayInputStream"    # Ljava/io/ByteArrayInputStream;

    .line 265
    new-instance v0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;-><init>(Ljava/io/ByteArrayInputStream;)V

    return-object v0
.end method

.method public static newDataInput([B)Lcom/google/common/io/ByteArrayDataInput;
    .locals 1
    .param p0, "bytes"    # [B

    .line 242
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataInput(Ljava/io/ByteArrayInputStream;)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v0

    return-object v0
.end method

.method public static newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "start"    # I

    .line 253
    array-length v0, p0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 254
    new-instance v0, Ljava/io/ByteArrayInputStream;

    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-direct {v0, p0, p1, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataInput(Ljava/io/ByteArrayInputStream;)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v0

    return-object v0
.end method

.method public static newDataOutput()Lcom/google/common/io/ByteArrayDataOutput;
    .locals 1

    .line 417
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataOutput(Ljava/io/ByteArrayOutputStream;)Lcom/google/common/io/ByteArrayDataOutput;

    move-result-object v0

    return-object v0
.end method

.method public static newDataOutput(I)Lcom/google/common/io/ByteArrayDataOutput;
    .locals 4
    .param p0, "size"    # I

    .line 429
    if-ltz p0, :cond_0

    .line 432
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataOutput(Ljava/io/ByteArrayOutputStream;)Lcom/google/common/io/ByteArrayDataOutput;

    move-result-object v0

    return-object v0

    .line 430
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Invalid size: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newDataOutput(Ljava/io/ByteArrayOutputStream;)Lcom/google/common/io/ByteArrayDataOutput;
    .locals 2
    .param p0, "byteArrayOutputSteam"    # Ljava/io/ByteArrayOutputStream;

    .line 448
    new-instance v0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;-><init>(Ljava/io/ByteArrayOutputStream;)V

    return-object v0
.end method

.method public static nullOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 624
    sget-object v0, Lcom/google/common/io/ByteStreams;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-object v0
.end method

.method public static read(Ljava/io/InputStream;[BII)I
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 852
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    if-ltz p3, :cond_2

    .line 857
    const/4 v0, 0x0

    .line 858
    .local v0, "total":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 859
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 860
    .local v1, "result":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 861
    goto :goto_1

    .line 863
    :cond_0
    add-int/2addr v0, v1

    .line 864
    .end local v1    # "result":I
    goto :goto_0

    .line 865
    :cond_1
    :goto_1
    return v0

    .line 855
    .end local v0    # "total":I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "len is negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public static readBytes(Ljava/io/InputStream;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lcom/google/common/io/ByteProcessor<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 814
    .local p1, "processor":Lcom/google/common/io/ByteProcessor;, "Lcom/google/common/io/ByteProcessor<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    invoke-static {}, Lcom/google/common/io/ByteStreams;->createBuffer()[B

    move-result-object v0

    .line 820
    .local v0, "buf":[B
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 821
    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/common/io/ByteProcessor;->processBytes([BII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 822
    :cond_1
    invoke-interface {p1}, Lcom/google/common/io/ByteProcessor;->getResult()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static readFully(Ljava/io/InputStream;[B)V
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 722
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/io/ByteStreams;->readFully(Ljava/io/InputStream;[BII)V

    .line 723
    return-void
.end method

.method public static readFully(Ljava/io/InputStream;[BII)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 738
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 739
    .local v0, "read":I
    if-ne v0, p3, :cond_0

    .line 743
    return-void

    .line 740
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reached end of stream after reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes expected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static skipFully(Ljava/io/InputStream;J)V
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 755
    invoke-static {p0, p1, p2}, Lcom/google/common/io/ByteStreams;->skipUpTo(Ljava/io/InputStream;J)J

    move-result-wide v0

    .line 756
    .local v0, "skipped":J
    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    .line 760
    return-void

    .line 757
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reached end of stream after skipping "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " bytes; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " bytes expected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static skipSafely(Ljava/io/InputStream;J)J
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 799
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 800
    .local v0, "available":I
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    int-to-long v1, v0

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method static skipUpTo(Ljava/io/InputStream;J)J
    .locals 13
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 768
    const-wide/16 v0, 0x0

    .line 769
    .local v0, "totalSkipped":J
    invoke-static {}, Lcom/google/common/io/ByteStreams;->createBuffer()[B

    move-result-object v2

    .line 771
    .local v2, "buf":[B
    :goto_0
    cmp-long v3, v0, p1

    if-gez v3, :cond_1

    .line 772
    sub-long v3, p1, v0

    .line 773
    .local v3, "remaining":J
    invoke-static {p0, v3, v4}, Lcom/google/common/io/ByteStreams;->skipSafely(Ljava/io/InputStream;J)J

    move-result-wide v5

    .line 775
    .local v5, "skipped":J
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    .line 778
    array-length v7, v2

    int-to-long v7, v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v8, v7

    .line 779
    .local v8, "skip":I
    const/4 v7, 0x0

    invoke-virtual {p0, v2, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    int-to-long v9, v7

    move-wide v5, v9

    const-wide/16 v11, -0x1

    cmp-long v7, v9, v11

    if-nez v7, :cond_0

    .line 781
    goto :goto_1

    .line 785
    .end local v8    # "skip":I
    :cond_0
    add-long/2addr v0, v5

    .line 786
    .end local v3    # "remaining":J
    .end local v5    # "skipped":J
    goto :goto_0

    .line 788
    :cond_1
    :goto_1
    return-wide v0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    const/16 v2, 0x20

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 166
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 167
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method static toByteArray(Ljava/io/InputStream;I)[B
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    new-array v0, p1, [B

    .line 177
    .local v0, "bytes":[B
    move v1, p1

    .line 179
    .local v1, "remaining":I
    :goto_0
    const/4 v2, -0x1

    if-lez v1, :cond_1

    .line 180
    sub-int v3, p1, v1

    .line 181
    .local v3, "off":I
    invoke-virtual {p0, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 182
    .local v4, "read":I
    if-ne v4, v2, :cond_0

    .line 185
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    return-object v2

    .line 187
    :cond_0
    sub-int/2addr v1, v4

    .line 188
    .end local v3    # "off":I
    .end local v4    # "read":I
    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 192
    .local v3, "b":I
    if-ne v3, v2, :cond_2

    .line 193
    return-object v0

    .line 197
    :cond_2
    new-instance v2, Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;-><init>(Lcom/google/common/io/ByteStreams$1;)V

    .line 198
    .local v2, "out":Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;
    invoke-virtual {v2, v3}, Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;->write(I)V

    .line 199
    invoke-static {p0, v2}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 201
    array-length v4, v0

    invoke-virtual {v2}, Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;->size()I

    move-result v5

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 202
    .local v4, "result":[B
    array-length v5, v0

    const/4 v6, 0x0

    invoke-static {v0, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    array-length v5, v0

    invoke-virtual {v2, v4, v5}, Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;->writeTo([BI)V

    .line 204
    return-object v4
.end method
