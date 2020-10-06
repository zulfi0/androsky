.class public final Lcom/google/common/collect/MapConstraints;
.super Ljava/lang/Object;
.source "MapConstraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapConstraints$ConstrainedListMultimap;,
        Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries;,
        Lcom/google/common/collect/MapConstraints$ConstrainedEntrySet;,
        Lcom/google/common/collect/MapConstraints$ConstrainedEntries;,
        Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;,
        Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;,
        Lcom/google/common/collect/MapConstraints$ConstrainedMap;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Ljava/util/Set;
    .param p1, "x1"    # Lcom/google/common/collect/MapConstraint;

    .line 50
    invoke-static {p0, p1}, Lcom/google/common/collect/MapConstraints;->constrainedEntrySet(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/Map;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Ljava/util/Map;
    .param p1, "x1"    # Lcom/google/common/collect/MapConstraint;

    .line 50
    invoke-static {p0, p1}, Lcom/google/common/collect/MapConstraints;->checkMap(Ljava/util/Map;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Ljava/util/Set;
    .param p1, "x1"    # Lcom/google/common/collect/MapConstraint;

    .line 50
    invoke-static {p0, p1}, Lcom/google/common/collect/MapConstraints;->constrainedAsMapEntries(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/Collection;Lcom/google/common/collect/MapConstraint;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Ljava/util/Collection;
    .param p1, "x1"    # Lcom/google/common/collect/MapConstraint;

    .line 50
    invoke-static {p0, p1}, Lcom/google/common/collect/MapConstraints;->constrainedEntries(Ljava/util/Collection;Lcom/google/common/collect/MapConstraint;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/Object;Ljava/lang/Iterable;Lcom/google/common/collect/MapConstraint;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/Iterable;
    .param p2, "x2"    # Lcom/google/common/collect/MapConstraint;

    .line 50
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/MapConstraints;->checkValues(Ljava/lang/Object;Ljava/lang/Iterable;Lcom/google/common/collect/MapConstraint;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map$Entry;
    .locals 1
    .param p0, "x0"    # Ljava/util/Map$Entry;
    .param p1, "x1"    # Lcom/google/common/collect/MapConstraint;

    .line 50
    invoke-static {p0, p1}, Lcom/google/common/collect/MapConstraints;->constrainedEntry(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map$Entry;
    .locals 1
    .param p0, "x0"    # Ljava/util/Map$Entry;
    .param p1, "x1"    # Lcom/google/common/collect/MapConstraint;

    .line 50
    invoke-static {p0, p1}, Lcom/google/common/collect/MapConstraints;->constrainedAsMapEntry(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method private static checkMap(Ljava/util/Map;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Lcom/google/common/collect/MapConstraint<",
            "-TK;-TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 641
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p1, "constraint":Lcom/google/common/collect/MapConstraint;, "Lcom/google/common/collect/MapConstraint<-TK;-TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 642
    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 643
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Lcom/google/common/collect/MapConstraint;->checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 644
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 645
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method private static checkValues(Ljava/lang/Object;Ljava/lang/Iterable;Lcom/google/common/collect/MapConstraint;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;",
            "Lcom/google/common/collect/MapConstraint<",
            "-TK;-TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 632
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    .local p2, "constraint":Lcom/google/common/collect/MapConstraint;, "Lcom/google/common/collect/MapConstraint<-TK;-TV;>;"
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 633
    .local v0, "copy":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 634
    .local v2, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {p2, p0, v2}, Lcom/google/common/collect/MapConstraint;->checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 635
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_0

    .line 636
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method private static constrainedAsMapEntries(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;",
            "Lcom/google/common/collect/MapConstraint<",
            "-TK;-TV;>;)",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 167
    .local p0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    .local p1, "constraint":Lcom/google/common/collect/MapConstraint;, "Lcom/google/common/collect/MapConstraint<-TK;-TV;>;"
    new-instance v0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries;-><init>(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)V

    return-object v0
.end method

.method private static constrainedAsMapEntry(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lcom/google/common/collect/MapConstraint<",
            "-TK;-TV;>;)",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 130
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    .local p1, "constraint":Lcom/google/common/collect/MapConstraint;, "Lcom/google/common/collect/MapConstraint<-TK;-TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v0, Lcom/google/common/collect/MapConstraints$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapConstraints$2;-><init>(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)V

    return-object v0
.end method

.method private static constrainedEntries(Ljava/util/Collection;Lcom/google/common/collect/MapConstraint;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Lcom/google/common/collect/MapConstraint<",
            "-TK;-TV;>;)",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 184
    .local p0, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    .local p1, "constraint":Lcom/google/common/collect/MapConstraint;, "Lcom/google/common/collect/MapConstraint<-TK;-TV;>;"
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 185
    move-object v0, p0

    check-cast v0, Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/google/common/collect/MapConstraints;->constrainedEntrySet(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 187
    :cond_0
    new-instance v0, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;-><init>(Ljava/util/Collection;Lcom/google/common/collect/MapConstraint;)V

    return-object v0
.end method

.method private static constrainedEntry(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapConstraint<",
            "-TK;-TV;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 102
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .local p1, "constraint":Lcom/google/common/collect/MapConstraint;, "Lcom/google/common/collect/MapConstraint<-TK;-TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v0, Lcom/google/common/collect/MapConstraints$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapConstraints$1;-><init>(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)V

    return-object v0
.end method

.method private static constrainedEntrySet(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Lcom/google/common/collect/MapConstraint<",
            "-TK;-TV;>;)",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 206
    .local p0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    .local p1, "constraint":Lcom/google/common/collect/MapConstraint;, "Lcom/google/common/collect/MapConstraint<-TK;-TV;>;"
    new-instance v0, Lcom/google/common/collect/MapConstraints$ConstrainedEntrySet;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedEntrySet;-><init>(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)V

    return-object v0
.end method

.method public static constrainedListMultimap(Lcom/google/common/collect/ListMultimap;Lcom/google/common/collect/MapConstraint;)Lcom/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ListMultimap<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapConstraint<",
            "-TK;-TV;>;)",
            "Lcom/google/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 88
    .local p0, "multimap":Lcom/google/common/collect/ListMultimap;, "Lcom/google/common/collect/ListMultimap<TK;TV;>;"
    .local p1, "constraint":Lcom/google/common/collect/MapConstraint;, "Lcom/google/common/collect/MapConstraint<-TK;-TV;>;"
    new-instance v0, Lcom/google/common/collect/MapConstraints$ConstrainedListMultimap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedListMultimap;-><init>(Lcom/google/common/collect/ListMultimap;Lcom/google/common/collect/MapConstraint;)V

    return-object v0
.end method

.method public static constrainedMap(Ljava/util/Map;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapConstraint<",
            "-TK;-TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 67
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "constraint":Lcom/google/common/collect/MapConstraint;, "Lcom/google/common/collect/MapConstraint<-TK;-TV;>;"
    new-instance v0, Lcom/google/common/collect/MapConstraints$ConstrainedMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedMap;-><init>(Ljava/util/Map;Lcom/google/common/collect/MapConstraint;)V

    return-object v0
.end method
