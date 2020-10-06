.class final Lcom/google/common/io/ByteSource$SlicedByteSource;
.super Lcom/google/common/io/ByteSource;
.source "ByteSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SlicedByteSource"
.end annotation


# instance fields
.field final length:J

.field final offset:J

.field final synthetic this$0:Lcom/google/common/io/ByteSource;


# direct methods
.method constructor <init>(Lcom/google/common/io/ByteSource;JJ)V
    .locals 5
    .param p2, "offset"    # J
    .param p4, "length"    # J

    .line 473
    iput-object p1, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->this$0:Lcom/google/common/io/ByteSource;

    invoke-direct {p0}, Lcom/google/common/io/ByteSource;-><init>()V

    .line 474
    const/4 p1, 0x1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "offset (%s) may not be negative"

    invoke-static {v3, v4, p2, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 475
    cmp-long v3, p4, v1

    if-ltz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const-string v0, "length (%s) may not be negative"

    invoke-static {p1, v0, p4, p5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 476
    iput-wide p2, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->offset:J

    .line 477
    iput-wide p4, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->length:J

    .line 478
    return-void
.end method

.method private sliceStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    iget-wide v0, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->offset:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 494
    :try_start_0
    invoke-static {p1, v0, v1}, Lcom/google/common/io/ByteStreams;->skipUpTo(Ljava/io/InputStream;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    .local v0, "skipped":J
    nop

    .line 505
    iget-wide v2, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->offset:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 507
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 508
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v2

    .line 495
    .end local v0    # "skipped":J
    :catchall_0
    move-exception v0

    move-wide v1, v2

    .line 496
    .local v0, "e":Ljava/lang/Throwable;
    .local v1, "skipped":J
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v3

    .line 497
    .local v3, "closer":Lcom/google/common/io/Closer;
    invoke-virtual {v3, p1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    .line 499
    :try_start_1
    invoke-virtual {v3, v0}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "skipped":J
    .end local v3    # "closer":Lcom/google/common/io/Closer;
    .end local p1    # "in":Ljava/io/InputStream;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 501
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "skipped":J
    .restart local v3    # "closer":Lcom/google/common/io/Closer;
    .restart local p1    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    invoke-virtual {v3}, Lcom/google/common/io/Closer;->close()V

    throw v4

    .line 511
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "skipped":J
    .end local v3    # "closer":Lcom/google/common/io/Closer;
    :cond_0
    iget-wide v0, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->length:J

    invoke-static {p1, v0, v1}, Lcom/google/common/io/ByteStreams;->limit(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isEmpty()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    iget-wide v0, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->length:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-super {p0}, Lcom/google/common/io/ByteSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public openBufferedStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 487
    iget-object v0, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->this$0:Lcom/google/common/io/ByteSource;

    invoke-virtual {v0}, Lcom/google/common/io/ByteSource;->openBufferedStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/io/ByteSource$SlicedByteSource;->sliceStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->this$0:Lcom/google/common/io/ByteSource;

    invoke-virtual {v0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/io/ByteSource$SlicedByteSource;->sliceStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public sizeIfKnown()Lcom/google/common/base/Optional;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->this$0:Lcom/google/common/io/ByteSource;

    invoke-virtual {v0}, Lcom/google/common/io/ByteSource;->sizeIfKnown()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 530
    .local v0, "optionalUnslicedSize":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 532
    .local v1, "unslicedSize":J
    iget-wide v3, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->offset:J

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 533
    .local v3, "off":J
    iget-wide v5, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->length:J

    sub-long v7, v1, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v5

    return-object v5

    .line 535
    .end local v1    # "unslicedSize":J
    .end local v3    # "off":J
    :cond_0
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    return-object v1
.end method

.method public slice(JJ)Lcom/google/common/io/ByteSource;
    .locals 7
    .param p1, "offset"    # J
    .param p3, "length"    # J

    .line 516
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "offset (%s) may not be negative"

    invoke-static {v4, v5, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 517
    cmp-long v4, p3, v2

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "length (%s) may not be negative"

    invoke-static {v0, v1, p3, p4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 518
    iget-wide v0, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->length:J

    sub-long/2addr v0, p1

    .line 519
    .local v0, "maxLength":J
    iget-object v2, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->this$0:Lcom/google/common/io/ByteSource;

    iget-wide v3, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->offset:J

    add-long/2addr v3, p1

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/common/io/ByteSource;->slice(JJ)Lcom/google/common/io/ByteSource;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->this$0:Lcom/google/common/io/ByteSource;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".slice("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->offset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/common/io/ByteSource$SlicedByteSource;->length:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
