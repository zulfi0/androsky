.class final Lcom/google/common/collect/RegularImmutableMap$Values;
.super Lcom/google/common/collect/ImmutableList;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableMap$Values$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableList<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final map:Lcom/google/common/collect/RegularImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RegularImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RegularImmutableMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 219
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$Values;, "Lcom/google/common/collect/RegularImmutableMap$Values<TK;TV;>;"
    .local p1, "map":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 220
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap$Values;->map:Lcom/google/common/collect/RegularImmutableMap;

    .line 221
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 225
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$Values;, "Lcom/google/common/collect/RegularImmutableMap$Values<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$Values;->map:Lcom/google/common/collect/RegularImmutableMap;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableMap;->access$000(Lcom/google/common/collect/RegularImmutableMap;)[Ljava/util/Map$Entry;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 235
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$Values;, "Lcom/google/common/collect/RegularImmutableMap$Values<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 230
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$Values;, "Lcom/google/common/collect/RegularImmutableMap$Values<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$Values;->map:Lcom/google/common/collect/RegularImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/RegularImmutableMap;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 241
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$Values;, "Lcom/google/common/collect/RegularImmutableMap$Values<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$Values$SerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap$Values;->map:Lcom/google/common/collect/RegularImmutableMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/RegularImmutableMap$Values$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method
