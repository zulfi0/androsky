.class public final Lcom/google/common/collect/Iterators;
.super Ljava/lang/Object;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Iterators$ConcatenatedIterator;,
        Lcom/google/common/collect/Iterators$MergingIterator;,
        Lcom/google/common/collect/Iterators$PeekingImpl;
    }
.end annotation


# static fields
.field static final EMPTY_LIST_ITERATOR:Lcom/google/common/collect/UnmodifiableListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/UnmodifiableListIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_MODIFIABLE_ITERATOR:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/google/common/collect/Iterators$1;

    invoke-direct {v0}, Lcom/google/common/collect/Iterators$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/Iterators;->EMPTY_LIST_ITERATOR:Lcom/google/common/collect/UnmodifiableListIterator;

    .line 127
    new-instance v0, Lcom/google/common/collect/Iterators$2;

    invoke-direct {v0}, Lcom/google/common/collect/Iterators$2;-><init>()V

    sput-object v0, Lcom/google/common/collect/Iterators;->EMPTY_MODIFIABLE_ITERATOR:Ljava/util/Iterator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 363
    .local p0, "addTo":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, "wasModified":Z
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 369
    :cond_0
    return v0
.end method

.method public static advance(Ljava/util/Iterator;I)I
    .locals 2
    .param p1, "numberToAdvance"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;I)I"
        }
    .end annotation

    .line 858
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "numberToAdvance must be nonnegative"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 862
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 863
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 862
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 865
    :cond_1
    return v0
.end method

.method public static all(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Lcom/google/common/base/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 650
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 653
    .local v0, "element":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 654
    const/4 v1, 0x0

    return v1

    .line 656
    .end local v0    # "element":Ljava/lang/Object;, "TT;"
    :cond_0
    goto :goto_0

    .line 657
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static any(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Lcom/google/common/base/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 641
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TT;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Iterators;->indexOf(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static asEnumeration(Ljava/util/Iterator;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)",
            "Ljava/util/Enumeration<",
            "TT;>;"
        }
    .end annotation

    .line 1076
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    new-instance v0, Lcom/google/common/collect/Iterators$13;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Iterators$13;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method static cast(Ljava/util/Iterator;)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 1304
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    move-object v0, p0

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method

.method static checkNonnegative(I)V
    .locals 3
    .param p0, "position"    # I

    .line 780
    if-ltz p0, :cond_0

    .line 783
    return-void

    .line 781
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") must not be negative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static clear(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;)V"
        }
    .end annotation

    .line 962
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 965
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 967
    :cond_0
    return-void
.end method

.method public static concat(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/util/Iterator<",
            "+TT;>;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 531
    .local p0, "inputs":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Iterator<+TT;>;>;"
    new-instance v0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Iterators$ConcatenatedIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static concat(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 461
    .local p0, "a":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .local p1, "b":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    new-instance v0, Lcom/google/common/collect/ConsumingQueueIterator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/Iterator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/collect/ConsumingQueueIterator;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->concat(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 477
    .local p0, "a":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .local p1, "b":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .local p2, "c":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    new-instance v0, Lcom/google/common/collect/ConsumingQueueIterator;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/util/Iterator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/collect/ConsumingQueueIterator;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->concat(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 497
    .local p0, "a":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .local p1, "b":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .local p2, "c":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .local p3, "d":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    new-instance v0, Lcom/google/common/collect/ConsumingQueueIterator;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/util/Iterator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/collect/ConsumingQueueIterator;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->concat(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static varargs concat([Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 515
    .local p0, "inputs":[Ljava/util/Iterator;, "[Ljava/util/Iterator<+TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Iterator;

    .local v0, "arr$":[Ljava/util/Iterator;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 516
    .local v3, "input":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .end local v3    # "input":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 518
    .end local v0    # "arr$":[Ljava/util/Iterator;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    new-instance v0, Lcom/google/common/collect/ConsumingQueueIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ConsumingQueueIterator;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->concat(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static consumingIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 920
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    new-instance v0, Lcom/google/common/collect/Iterators$9;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Iterators$9;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static contains(Ljava/util/Iterator;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 208
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-static {p1}, Lcom/google/common/base/Predicates;->equalTo(Ljava/lang/Object;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterators;->any(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public static cycle(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 398
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    new-instance v0, Lcom/google/common/collect/Iterators$4;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Iterators$4;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs cycle([Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 449
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->cycle(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static elementsEqual(Ljava/util/Iterator;Ljava/util/Iterator;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/util/Iterator<",
            "*>;)Z"
        }
    .end annotation

    .line 274
    .local p0, "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .local p1, "iterator2":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 276
    return v1

    .line 278
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 279
    .local v0, "o1":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 280
    .local v2, "o2":Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 281
    return v1

    .line 283
    .end local v0    # "o1":Ljava/lang/Object;
    .end local v2    # "o2":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 284
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 112
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyListIterator()Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method static emptyListIterator()Lcom/google/common/collect/UnmodifiableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/UnmodifiableListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/google/common/collect/Iterators;->EMPTY_LIST_ITERATOR:Lcom/google/common/collect/UnmodifiableListIterator;

    return-object v0
.end method

.method static emptyModifiableIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 154
    sget-object v0, Lcom/google/common/collect/Iterators;->EMPTY_MODIFIABLE_ITERATOR:Ljava/util/Iterator;

    return-object v0
.end method

.method public static filter(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Lcom/google/common/base/Predicate<",
            "-TT;>;)",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 610
    .local p0, "unfiltered":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p1, "retainIfTrue":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    new-instance v0, Lcom/google/common/collect/Iterators$6;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Iterators$6;-><init>(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public static filter(Ljava/util/Iterator;Ljava/lang/Class;)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 633
    .local p0, "unfiltered":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .local p1, "desiredType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Predicates;->instanceOf(Ljava/lang/Class;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterators;->filter(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public static find(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Lcom/google/common/base/Predicate<",
            "-TT;>;)TT;"
        }
    .end annotation

    .line 672
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TT;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Iterators;->filter(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static find(Ljava/util/Iterator;Lcom/google/common/base/Predicate;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Lcom/google/common/base/Predicate<",
            "-TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 688
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Iterators;->filter(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/common/collect/Iterators;->getNext(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs forArray([Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 984
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/google/common/collect/Iterators;->forArray([Ljava/lang/Object;III)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method static forArray([Ljava/lang/Object;III)Lcom/google/common/collect/UnmodifiableListIterator;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III)",
            "Lcom/google/common/collect/UnmodifiableListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 996
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 997
    add-int v0, p1, p2

    .line 1000
    .local v0, "end":I
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 1001
    invoke-static {p3, p2}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 1002
    if-nez p2, :cond_1

    .line 1003
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyListIterator()Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v1

    return-object v1

    .line 1011
    :cond_1
    new-instance v1, Lcom/google/common/collect/Iterators$10;

    invoke-direct {v1, p2, p3, p0, p1}, Lcom/google/common/collect/Iterators$10;-><init>(II[Ljava/lang/Object;I)V

    return-object v1
.end method

.method public static forEnumeration(Ljava/util/Enumeration;)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration<",
            "TT;>;)",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 1054
    .local p0, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    new-instance v0, Lcom/google/common/collect/Iterators$12;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Iterators$12;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public static frequency(Ljava/util/Iterator;Ljava/lang/Object;)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 380
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-static {p1}, Lcom/google/common/base/Predicates;->equalTo(Ljava/lang/Object;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterators;->filter(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public static get(Ljava/util/Iterator;I)Ljava/lang/Object;
    .locals 4
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 766
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-static {p1}, Lcom/google/common/collect/Iterators;->checkNonnegative(I)V

    .line 767
    invoke-static {p0, p1}, Lcom/google/common/collect/Iterators;->advance(Ljava/util/Iterator;I)I

    move-result v0

    .line 768
    .local v0, "skipped":I
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 776
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 769
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") must be less than the number of elements that remained ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static get(Ljava/util/Iterator;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;ITT;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 802
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lcom/google/common/collect/Iterators;->checkNonnegative(I)V

    .line 803
    invoke-static {p0, p1}, Lcom/google/common/collect/Iterators;->advance(Ljava/util/Iterator;I)I

    .line 804
    invoke-static {p0, p2}, Lcom/google/common/collect/Iterators;->getNext(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getLast(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 829
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 830
    .local v0, "current":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 831
    return-object v0

    .line 833
    .end local v0    # "current":Ljava/lang/Object;, "TT;"
    :cond_0
    goto :goto_0
.end method

.method public static getLast(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 846
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/common/collect/Iterators;->getLast(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public static getNext(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 818
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public static getOnlyElement(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 308
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 309
    .local v0, "first":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    return-object v0

    .line 313
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected one element but was: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 314
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 315
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 317
    .end local v2    # "i":I
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 318
    const-string v2, ", ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_2
    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 322
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public static getOnlyElement(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 335
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/common/collect/Iterators;->getOnlyElement(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public static indexOf(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Lcom/google/common/base/Predicate<",
            "-TT;>;)I"
        }
    .end annotation

    .line 726
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TT;>;"
    const-string v0, "predicate"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 728
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 729
    .local v1, "current":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 730
    return v0

    .line 727
    .end local v1    # "current":Ljava/lang/Object;, "TT;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 733
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static limit(Ljava/util/Iterator;I)Ljava/util/Iterator;
    .locals 2
    .param p1, "limitSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;I)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 880
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "limit is negative"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 882
    new-instance v0, Lcom/google/common/collect/Iterators$8;

    invoke-direct {v0, p1, p0}, Lcom/google/common/collect/Iterators$8;-><init>(ILjava/util/Iterator;)V

    return-object v0
.end method

.method public static mergeSorted(Ljava/lang/Iterable;Ljava/util/Comparator;)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Iterator<",
            "+TT;>;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 1211
    .local p0, "iterators":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Iterator<+TT;>;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const-string v0, "iterators"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    const-string v0, "comparator"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    new-instance v0, Lcom/google/common/collect/Iterators$MergingIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Iterators$MergingIterator;-><init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static paddedPartition(Ljava/util/Iterator;I)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;I)",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 570
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Iterators;->partitionImpl(Ljava/util/Iterator;IZ)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public static partition(Ljava/util/Iterator;I)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;I)",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 550
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Iterators;->partitionImpl(Ljava/util/Iterator;IZ)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method private static partitionImpl(Ljava/util/Iterator;IZ)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .param p1, "size"    # I
    .param p2, "pad"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;IZ)",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 575
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 577
    new-instance v0, Lcom/google/common/collect/Iterators$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/Iterators$5;-><init>(Ljava/util/Iterator;IZ)V

    return-object v0
.end method

.method public static peekingIterator(Lcom/google/common/collect/PeekingIterator;)Lcom/google/common/collect/PeekingIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/PeekingIterator<",
            "TT;>;)",
            "Lcom/google/common/collect/PeekingIterator<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1192
    .local p0, "iterator":Lcom/google/common/collect/PeekingIterator;, "Lcom/google/common/collect/PeekingIterator<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/PeekingIterator;

    return-object v0
.end method

.method public static peekingIterator(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Lcom/google/common/collect/PeekingIterator<",
            "TT;>;"
        }
    .end annotation

    .line 1174
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    instance-of v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;

    if-eqz v0, :cond_0

    .line 1178
    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/Iterators$PeekingImpl;

    .line 1179
    .local v0, "peeking":Lcom/google/common/collect/Iterators$PeekingImpl;, "Lcom/google/common/collect/Iterators$PeekingImpl<TT;>;"
    return-object v0

    .line 1181
    .end local v0    # "peeking":Lcom/google/common/collect/Iterators$PeekingImpl;, "Lcom/google/common/collect/Iterators$PeekingImpl<TT;>;"
    :cond_0
    new-instance v0, Lcom/google/common/collect/Iterators$PeekingImpl;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Iterators$PeekingImpl;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method static pollNext(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 947
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 949
    .local v0, "result":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 950
    return-object v0

    .line 952
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 222
    .local p0, "removeFrom":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .local p1, "elementsToRemove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterators;->removeIf(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public static removeIf(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Lcom/google/common/base/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 238
    .local p0, "removeFrom":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "modified":Z
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 243
    const/4 v0, 0x1

    goto :goto_0

    .line 246
    :cond_1
    return v0
.end method

.method public static retainAll(Ljava/util/Iterator;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 260
    .local p0, "removeFrom":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .local p1, "elementsToRetain":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterators;->removeIf(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public static singletonIterator(Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 1026
    .local p0, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/google/common/collect/Iterators$11;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Iterators$11;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static size(Ljava/util/Iterator;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;)I"
        }
    .end annotation

    .line 196
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const-wide/16 v0, 0x0

    .line 197
    .local v0, "count":J
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    .line 201
    :cond_0
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v2

    return v2
.end method

.method public static toArray(Ljava/util/Iterator;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 349
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 350
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static toString(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 293
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    sget-object v0, Lcom/google/common/collect/Collections2;->STANDARD_JOINER:Lcom/google/common/base/Joiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, p0}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TF;>;",
            "Lcom/google/common/base/Function<",
            "-TF;+TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 746
    .local p0, "fromIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TF;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TF;+TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    new-instance v0, Lcom/google/common/collect/Iterators$7;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Iterators$7;-><init>(Ljava/util/Iterator;Lcom/google/common/base/Function;)V

    return-object v0
.end method

.method public static tryFind(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Lcom/google/common/base/Predicate<",
            "-TT;>;)",
            "Lcom/google/common/base/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 705
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TT;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Iterators;->filter(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 706
    .local v0, "filteredIterator":Lcom/google/common/collect/UnmodifiableIterator;, "Lcom/google/common/collect/UnmodifiableIterator<TT;>;"
    invoke-virtual {v0}, Lcom/google/common/collect/UnmodifiableIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static unmodifiableIterator(Lcom/google/common/collect/UnmodifiableIterator;)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TT;>;)",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    .local p0, "iterator":Lcom/google/common/collect/UnmodifiableIterator;, "Lcom/google/common/collect/UnmodifiableIterator<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/UnmodifiableIterator;

    return-object v0
.end method

.method public static unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 160
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    instance-of v0, p0, Lcom/google/common/collect/UnmodifiableIterator;

    if-eqz v0, :cond_0

    .line 163
    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/UnmodifiableIterator;

    .line 164
    .local v0, "result":Lcom/google/common/collect/UnmodifiableIterator;, "Lcom/google/common/collect/UnmodifiableIterator<TT;>;"
    return-object v0

    .line 166
    .end local v0    # "result":Lcom/google/common/collect/UnmodifiableIterator;, "Lcom/google/common/collect/UnmodifiableIterator<TT;>;"
    :cond_0
    new-instance v0, Lcom/google/common/collect/Iterators$3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Iterators$3;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method
