.class final Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;
.super Lcom/google/common/collect/Maps$KeySet;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap$Inverse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InverseKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$KeySet<",
        "TV;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/HashBiMap$Inverse;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$Inverse;)V
    .locals 0

    .line 588
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse.InverseKeySet;"
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;->this$1:Lcom/google/common/collect/HashBiMap$Inverse;

    .line 589
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    .line 590
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 605
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse.InverseKeySet;"
    new-instance v0, Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet$1;-><init>(Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 594
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse.InverseKeySet;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;->this$1:Lcom/google/common/collect/HashBiMap$Inverse;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/google/common/collect/HashBiMap;->access$400(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    .line 595
    .local v0, "entry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 596
    const/4 v1, 0x0

    return v1

    .line 598
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;->this$1:Lcom/google/common/collect/HashBiMap$Inverse;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 599
    const/4 v1, 0x1

    return v1
.end method