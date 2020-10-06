.class final Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "BinaryTreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/BinaryTreeTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PostOrderIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final hasExpanded:Ljava/util/BitSet;

.field private final stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/BinaryTreeTraverser;


# direct methods
.method constructor <init>(Lcom/google/common/collect/BinaryTreeTraverser;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 136
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>.PostOrderIterator;"
    .local p2, "root":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 137
    new-instance p1, Ljava/util/ArrayDeque;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/Deque;

    .line 138
    invoke-interface {p1, p2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 139
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->hasExpanded:Ljava/util/BitSet;

    .line 140
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 144
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>.PostOrderIterator;"
    iget-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>.PostOrderIterator;"
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    .line 151
    .local v0, "node":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->hasExpanded:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    .line 152
    .local v1, "expandedNode":Z
    if-eqz v1, :cond_0

    .line 153
    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 154
    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->hasExpanded:Ljava/util/BitSet;

    iget-object v3, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->clear(I)V

    .line 155
    return-object v0

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->hasExpanded:Ljava/util/BitSet;

    iget-object v3, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 158
    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/Deque;

    iget-object v3, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/BinaryTreeTraverser;->rightChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/BinaryTreeTraverser;->access$000(Ljava/util/Deque;Lcom/google/common/base/Optional;)V

    .line 159
    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/Deque;

    iget-object v3, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/BinaryTreeTraverser;->leftChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/BinaryTreeTraverser;->access$000(Ljava/util/Deque;Lcom/google/common/base/Optional;)V

    .line 161
    .end local v0    # "node":Ljava/lang/Object;, "TT;"
    .end local v1    # "expandedNode":Z
    goto :goto_0
.end method
