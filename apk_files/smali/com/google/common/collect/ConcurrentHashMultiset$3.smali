.class Lcom/google/common/collect/ConcurrentHashMultiset$3;
.super Lcom/google/common/collect/ForwardingIterator;
.source "ConcurrentHashMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ConcurrentHashMultiset;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingIterator<",
        "Lcom/google/common/collect/Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private last:Lcom/google/common/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

.field final synthetic val$readOnlyIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Iterator;)V
    .locals 0

    .line 547
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset$3;, "Lcom/google/common/collect/ConcurrentHashMultiset.3;"
    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$3;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    iput-object p2, p0, Lcom/google/common/collect/ConcurrentHashMultiset$3;->val$readOnlyIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 547
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset$3;, "Lcom/google/common/collect/ConcurrentHashMultiset.3;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$3;->delegate()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 552
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset$3;, "Lcom/google/common/collect/ConcurrentHashMultiset.3;"
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$3;->val$readOnlyIterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public next()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 557
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset$3;, "Lcom/google/common/collect/ConcurrentHashMultiset.3;"
    invoke-super {p0}, Lcom/google/common/collect/ForwardingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    iput-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$3;->last:Lcom/google/common/collect/Multiset$Entry;

    .line 558
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 547
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset$3;, "Lcom/google/common/collect/ConcurrentHashMultiset.3;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$3;->next()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 563
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset$3;, "Lcom/google/common/collect/ConcurrentHashMultiset.3;"
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$3;->last:Lcom/google/common/collect/Multiset$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 564
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$3;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset$3;->last:Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v2}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ConcurrentHashMultiset;->setCount(Ljava/lang/Object;I)I

    .line 565
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$3;->last:Lcom/google/common/collect/Multiset$Entry;

    .line 566
    return-void
.end method