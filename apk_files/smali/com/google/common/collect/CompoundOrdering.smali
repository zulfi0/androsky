.class final Lcom/google/common/collect/CompoundOrdering;
.super Lcom/google/common/collect/Ordering;
.source "CompoundOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Ordering<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final comparators:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/util/Comparator<",
            "-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Comparator<",
            "-TT;>;>;)V"
        }
    .end annotation

    .line 32
    .local p0, "this":Lcom/google/common/collect/CompoundOrdering;, "Lcom/google/common/collect/CompoundOrdering<TT;>;"
    .local p1, "comparators":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Comparator<-TT;>;>;"
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompoundOrdering;->comparators:Lcom/google/common/collect/ImmutableList;

    .line 34
    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 28
    .local p0, "this":Lcom/google/common/collect/CompoundOrdering;, "Lcom/google/common/collect/CompoundOrdering<TT;>;"
    .local p1, "primary":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p2, "secondary":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    .line 29
    invoke-static {p1, p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompoundOrdering;->comparators:Lcom/google/common/collect/ImmutableList;

    .line 30
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/google/common/collect/CompoundOrdering;, "Lcom/google/common/collect/CompoundOrdering<TT;>;"
    .local p1, "left":Ljava/lang/Object;, "TT;"
    .local p2, "right":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/common/collect/CompoundOrdering;->comparators:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    .line 40
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 41
    iget-object v2, p0, Lcom/google/common/collect/CompoundOrdering;->comparators:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Comparator;

    invoke-interface {v2, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 42
    .local v2, "result":I
    if-eqz v2, :cond_0

    .line 43
    return v2

    .line 40
    .end local v2    # "result":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 51
    .local p0, "this":Lcom/google/common/collect/CompoundOrdering;, "Lcom/google/common/collect/CompoundOrdering<TT;>;"
    if-ne p1, p0, :cond_0

    .line 52
    const/4 v0, 0x1

    return v0

    .line 54
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/CompoundOrdering;

    if-eqz v0, :cond_1

    .line 55
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/CompoundOrdering;

    .line 56
    .local v0, "that":Lcom/google/common/collect/CompoundOrdering;, "Lcom/google/common/collect/CompoundOrdering<*>;"
    iget-object v1, p0, Lcom/google/common/collect/CompoundOrdering;->comparators:Lcom/google/common/collect/ImmutableList;

    iget-object v2, v0, Lcom/google/common/collect/CompoundOrdering;->comparators:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 58
    .end local v0    # "that":Lcom/google/common/collect/CompoundOrdering;, "Lcom/google/common/collect/CompoundOrdering<*>;"
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 63
    .local p0, "this":Lcom/google/common/collect/CompoundOrdering;, "Lcom/google/common/collect/CompoundOrdering<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompoundOrdering;->comparators:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    .local p0, "this":Lcom/google/common/collect/CompoundOrdering;, "Lcom/google/common/collect/CompoundOrdering<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ordering.compound("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/collect/CompoundOrdering;->comparators:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
