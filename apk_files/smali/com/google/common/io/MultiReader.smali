.class Lcom/google/common/io/MultiReader;
.super Ljava/io/Reader;
.source "MultiReader.java"


# instance fields
.field private current:Ljava/io/Reader;

.field private final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lcom/google/common/io/CharSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Lcom/google/common/io/CharSource;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    .local p1, "readers":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lcom/google/common/io/CharSource;>;"
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/common/io/MultiReader;->it:Ljava/util/Iterator;

    .line 37
    invoke-direct {p0}, Lcom/google/common/io/MultiReader;->advance()V

    .line 38
    return-void
.end method

.method private advance()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/google/common/io/MultiReader;->close()V

    .line 45
    iget-object v0, p0, Lcom/google/common/io/MultiReader;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/google/common/io/MultiReader;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/CharSource;

    invoke-virtual {v0}, Lcom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 87
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iput-object v1, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    .line 90
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    throw v0

    .line 92
    :cond_0
    :goto_0
    return-void
.end method

.method public read([CII)I
    .locals 2
    .param p1, "cbuf"    # [C
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 53
    return v1

    .line 55
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 56
    .local v0, "result":I
    if-ne v0, v1, :cond_1

    .line 57
    invoke-direct {p0}, Lcom/google/common/io/MultiReader;->advance()V

    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/io/MultiReader;->read([CII)I

    move-result v1

    return v1

    .line 60
    :cond_1
    return v0
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public skip(J)J
    .locals 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "n is negative"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 66
    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 67
    :goto_1
    iget-object v2, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    if-eqz v2, :cond_2

    .line 68
    invoke-virtual {v2, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v2

    .line 69
    .local v2, "result":J
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 70
    return-wide v2

    .line 72
    :cond_1
    invoke-direct {p0}, Lcom/google/common/io/MultiReader;->advance()V

    .line 73
    .end local v2    # "result":J
    goto :goto_1

    .line 75
    :cond_2
    return-wide v0
.end method
