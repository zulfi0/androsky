.class Lcom/google/common/collect/Lists$TransformingRandomAccessList$1;
.super Lcom/google/common/collect/TransformedListIterator;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Lists$TransformingRandomAccessList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedListIterator<",
        "TF;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Lists$TransformingRandomAccessList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Lists$TransformingRandomAccessList;Ljava/util/ListIterator;)V
    .locals 0

    .line 635
    .local p0, "this":Lcom/google/common/collect/Lists$TransformingRandomAccessList$1;, "Lcom/google/common/collect/Lists$TransformingRandomAccessList.1;"
    .local p2, "x0":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TF;>;"
    iput-object p1, p0, Lcom/google/common/collect/Lists$TransformingRandomAccessList$1;->this$0:Lcom/google/common/collect/Lists$TransformingRandomAccessList;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedListIterator;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation

    .line 638
    .local p0, "this":Lcom/google/common/collect/Lists$TransformingRandomAccessList$1;, "Lcom/google/common/collect/Lists$TransformingRandomAccessList.1;"
    .local p1, "from":Ljava/lang/Object;, "TF;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$TransformingRandomAccessList$1;->this$0:Lcom/google/common/collect/Lists$TransformingRandomAccessList;

    iget-object v0, v0, Lcom/google/common/collect/Lists$TransformingRandomAccessList;->function:Lcom/google/common/base/Function;

    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
