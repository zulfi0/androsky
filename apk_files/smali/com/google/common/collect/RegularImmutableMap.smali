.class final Lcom/google/common/collect/RegularImmutableMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableMap$Values;,
        Lcom/google/common/collect/RegularImmutableMap$KeySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final MAX_LOAD_FACTOR:D = 1.2

.field private static final serialVersionUID:J


# instance fields
.field private final transient entries:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient mask:I

.field private final transient table:[Lcom/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([Ljava/util/Map$Entry;[Lcom/google/common/collect/ImmutableMapEntry;I)V
    .locals 0
    .param p3, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;[",
            "Lcom/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    .local p1, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    .local p2, "table":[Lcom/google/common/collect/ImmutableMapEntry;, "[Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    .line 93
    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 94
    iput p3, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/RegularImmutableMap;)[Ljava/util/Map$Entry;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/RegularImmutableMap;

    .line 38
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    return-object v0
.end method

.method static checkNoConflictInKeyBucket(Ljava/lang/Object;Ljava/util/Map$Entry;Lcom/google/common/collect/ImmutableMapEntry;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/Object;
    .param p2    # Lcom/google/common/collect/ImmutableMapEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map$Entry<",
            "**>;",
            "Lcom/google/common/collect/ImmutableMapEntry<",
            "**>;)V"
        }
    .end annotation

    .line 99
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .local p2, "keyBucketHead":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<**>;"
    :goto_0
    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "key"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/collect/RegularImmutableMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 99
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInKeyBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object p2

    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method

.method static varargs fromEntries([Ljava/util/Map$Entry;)Lcom/google/common/collect/RegularImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/RegularImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 48
    .local p0, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    array-length v0, p0

    invoke-static {v0, p0}, Lcom/google/common/collect/RegularImmutableMap;->fromEntryArray(I[Ljava/util/Map$Entry;)Lcom/google/common/collect/RegularImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method static fromEntryArray(I[Ljava/util/Map$Entry;)Lcom/google/common/collect/RegularImmutableMap;
    .locals 12
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/RegularImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 57
    .local p1, "entryArray":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    array-length v0, p1

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 59
    array-length v0, p1

    if-ne p0, v0, :cond_0

    .line 60
    move-object v0, p1

    .local v0, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 62
    .end local v0    # "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/ImmutableMapEntry;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v0

    .line 64
    .restart local v0    # "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    :goto_0
    const-wide v1, 0x3ff3333333333333L    # 1.2

    invoke-static {p0, v1, v2}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v1

    .line 65
    .local v1, "tableSize":I
    invoke-static {v1}, Lcom/google/common/collect/ImmutableMapEntry;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v2

    .line 66
    .local v2, "table":[Lcom/google/common/collect/ImmutableMapEntry;, "[Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    add-int/lit8 v3, v1, -0x1

    .line 67
    .local v3, "mask":I
    const/4 v4, 0x0

    .local v4, "entryIndex":I
    :goto_1
    if-ge v4, p0, :cond_4

    .line 68
    aget-object v5, p1, v4

    .line 69
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 70
    .local v6, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 71
    .local v7, "value":Ljava/lang/Object;, "TV;"
    invoke-static {v6, v7}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v8

    and-int/2addr v8, v3

    .line 73
    .local v8, "tableIndex":I
    aget-object v9, v2, v8

    .line 76
    .local v9, "existing":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    if-nez v9, :cond_3

    .line 77
    instance-of v10, v5, Lcom/google/common/collect/ImmutableMapEntry;

    if-eqz v10, :cond_1

    move-object v10, v5

    check-cast v10, Lcom/google/common/collect/ImmutableMapEntry;

    invoke-virtual {v10}, Lcom/google/common/collect/ImmutableMapEntry;->isReusable()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    .line 79
    .local v10, "reusable":Z
    :goto_2
    if-eqz v10, :cond_2

    move-object v11, v5

    check-cast v11, Lcom/google/common/collect/ImmutableMapEntry;

    goto :goto_3

    :cond_2
    new-instance v11, Lcom/google/common/collect/ImmutableMapEntry;

    invoke-direct {v11, v6, v7}, Lcom/google/common/collect/ImmutableMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    move-object v10, v11

    .line 81
    .local v10, "newEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    goto :goto_4

    .line 82
    .end local v10    # "newEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :cond_3
    new-instance v10, Lcom/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry;

    invoke-direct {v10, v6, v7, v9}, Lcom/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ImmutableMapEntry;)V

    .line 84
    .restart local v10    # "newEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :goto_4
    aput-object v10, v2, v8

    .line 85
    aput-object v10, v0, v4

    .line 86
    invoke-static {v6, v10, v9}, Lcom/google/common/collect/RegularImmutableMap;->checkNoConflictInKeyBucket(Ljava/lang/Object;Ljava/util/Map$Entry;Lcom/google/common/collect/ImmutableMapEntry;)V

    .line 67
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v6    # "key":Ljava/lang/Object;, "TK;"
    .end local v7    # "value":Ljava/lang/Object;, "TV;"
    .end local v8    # "tableIndex":I
    .end local v9    # "existing":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .end local v10    # "newEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 88
    .end local v4    # "entryIndex":I
    :cond_4
    new-instance v4, Lcom/google/common/collect/RegularImmutableMap;

    invoke-direct {v4, v0, v2, v3}, Lcom/google/common/collect/RegularImmutableMap;-><init>([Ljava/util/Map$Entry;[Lcom/google/common/collect/ImmutableMapEntry;I)V

    return-object v4
.end method

.method static get(Ljava/lang/Object;[Lcom/google/common/collect/ImmutableMapEntry;I)Ljava/lang/Object;
    .locals 5
    .param p0, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[",
            "Lcom/google/common/collect/ImmutableMapEntry<",
            "*TV;>;I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 118
    .local p1, "keyTable":[Lcom/google/common/collect/ImmutableMapEntry;, "[Lcom/google/common/collect/ImmutableMapEntry<*TV;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 119
    return-object v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v1

    and-int/2addr v1, p2

    .line 122
    .local v1, "index":I
    aget-object v2, p1, v1

    .line 123
    .local v2, "entry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<*TV;>;"
    :goto_0
    if-eqz v2, :cond_2

    .line 125
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 133
    .local v3, "candidateKey":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 124
    .end local v3    # "candidateKey":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInKeyBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v2

    goto :goto_0

    .line 137
    .end local v2    # "entry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<*TV;>;"
    :cond_2
    return-object v0
.end method


# virtual methods
.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 152
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;-><init>(Lcom/google/common/collect/ImmutableMap;[Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method createKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 157
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$KeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableMap$KeySet;-><init>(Lcom/google/common/collect/RegularImmutableMap;)V

    return-object v0
.end method

.method createValues()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 212
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$Values;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableMap$Values;-><init>(Lcom/google/common/collect/RegularImmutableMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/ImmutableMapEntry;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    invoke-static {p1, v0, v1}, Lcom/google/common/collect/RegularImmutableMap;->get(Ljava/lang/Object;[Lcom/google/common/collect/ImmutableMapEntry;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 147
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 142
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    array-length v0, v0

    return v0
.end method
