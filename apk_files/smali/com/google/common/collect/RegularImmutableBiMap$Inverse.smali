.class final Lcom/google/common/collect/RegularImmutableBiMap$Inverse;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Inverse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableBiMap<",
        "TV;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/RegularImmutableBiMap;)V
    .locals 0

    .line 178
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap$Inverse;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 211
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/RegularImmutableBiMap;Lcom/google/common/collect/RegularImmutableBiMap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/collect/RegularImmutableBiMap;
    .param p2, "x1"    # Lcom/google/common/collect/RegularImmutableBiMap$1;

    .line 178
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap$Inverse;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;-><init>(Lcom/google/common/collect/RegularImmutableBiMap;)V

    return-void
.end method


# virtual methods
.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 208
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap$Inverse;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;-><init>(Lcom/google/common/collect/RegularImmutableBiMap$Inverse;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 192
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap$Inverse;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableBiMap;->access$100(Lcom/google/common/collect/RegularImmutableBiMap;)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 195
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-static {v2}, Lcom/google/common/collect/RegularImmutableBiMap;->access$200(Lcom/google/common/collect/RegularImmutableBiMap;)I

    move-result v2

    and-int/2addr v1, v2

    .line 196
    .local v1, "bucket":I
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-static {v2}, Lcom/google/common/collect/RegularImmutableBiMap;->access$100(Lcom/google/common/collect/RegularImmutableBiMap;)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v2

    aget-object v2, v2, v1

    .line 197
    .local v2, "entry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_2

    .line 199
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 198
    :cond_1
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInValueBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v2

    goto :goto_0

    .line 203
    .end local v2    # "entry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :cond_2
    return-object v0

    .line 193
    .end local v1    # "bucket":I
    :cond_3
    :goto_1
    return-object v0
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    .line 178
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap$Inverse;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/ImmutableBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 187
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap$Inverse;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 252
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap$Inverse;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 182
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap$Inverse;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 257
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap$Inverse;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap$InverseSerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/RegularImmutableBiMap$InverseSerializedForm;-><init>(Lcom/google/common/collect/ImmutableBiMap;)V

    return-object v0
.end method
