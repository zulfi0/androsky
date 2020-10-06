.class Lcom/google/common/collect/RegularImmutableBiMap;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableBiMap$InverseSerializedForm;,
        Lcom/google/common/collect/RegularImmutableBiMap$Inverse;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableBiMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Lcom/google/common/collect/RegularImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RegularImmutableBiMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final MAX_LOAD_FACTOR:D = 1.2


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

.field private final transient hashCode:I

.field private transient inverse:Lcom/google/common/collect/ImmutableBiMap;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end field

.field private final transient keyTable:[Lcom/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient mask:I

.field private final transient valueTable:[Lcom/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 40
    new-instance v6, Lcom/google/common/collect/RegularImmutableBiMap;

    sget-object v0, Lcom/google/common/collect/ImmutableMap;->EMPTY_ENTRY_ARRAY:[Ljava/util/Map$Entry;

    move-object v3, v0

    check-cast v3, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/common/collect/RegularImmutableBiMap;-><init>([Lcom/google/common/collect/ImmutableMapEntry;[Lcom/google/common/collect/ImmutableMapEntry;[Ljava/util/Map$Entry;II)V

    sput-object v6, Lcom/google/common/collect/RegularImmutableBiMap;->EMPTY:Lcom/google/common/collect/RegularImmutableBiMap;

    return-void
.end method

.method private constructor <init>([Lcom/google/common/collect/ImmutableMapEntry;[Lcom/google/common/collect/ImmutableMapEntry;[Ljava/util/Map$Entry;II)V
    .locals 0
    .param p4, "mask"    # I
    .param p5, "hashCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;[",
            "Lcom/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;II)V"
        }
    .end annotation

    .line 115
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    .local p1, "keyTable":[Lcom/google/common/collect/ImmutableMapEntry;, "[Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .local p2, "valueTable":[Lcom/google/common/collect/ImmutableMapEntry;, "[Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .local p3, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableBiMap;->keyTable:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 117
    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableBiMap;->valueTable:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 118
    iput-object p3, p0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Ljava/util/Map$Entry;

    .line 119
    iput p4, p0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    .line 120
    iput p5, p0, Lcom/google/common/collect/RegularImmutableBiMap;->hashCode:I

    .line 121
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/RegularImmutableBiMap;)[Lcom/google/common/collect/ImmutableMapEntry;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/RegularImmutableBiMap;

    .line 39
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->valueTable:[Lcom/google/common/collect/ImmutableMapEntry;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/RegularImmutableBiMap;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/RegularImmutableBiMap;

    .line 39
    iget v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/RegularImmutableBiMap;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/RegularImmutableBiMap;

    .line 39
    iget v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->hashCode:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/RegularImmutableBiMap;)[Ljava/util/Map$Entry;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/RegularImmutableBiMap;

    .line 39
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Ljava/util/Map$Entry;

    return-object v0
.end method

.method private static checkNoConflictInValueBucket(Ljava/lang/Object;Ljava/util/Map$Entry;Lcom/google/common/collect/ImmutableMapEntry;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;
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

    .line 127
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .local p2, "valueBucketHead":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<**>;"
    :goto_0
    if-eqz p2, :cond_0

    .line 128
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "value"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/collect/RegularImmutableBiMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 127
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInValueBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object p2

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method static varargs fromEntries([Ljava/util/Map$Entry;)Lcom/google/common/collect/RegularImmutableBiMap;
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
            "Lcom/google/common/collect/RegularImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 53
    .local p0, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    array-length v0, p0

    invoke-static {v0, p0}, Lcom/google/common/collect/RegularImmutableBiMap;->fromEntryArray(I[Ljava/util/Map$Entry;)Lcom/google/common/collect/RegularImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method static fromEntryArray(I[Ljava/util/Map$Entry;)Lcom/google/common/collect/RegularImmutableBiMap;
    .locals 19
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
            "Lcom/google/common/collect/RegularImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 57
    .local p1, "entryArray":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    move/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 58
    const-wide v2, 0x3ff3333333333333L    # 1.2

    invoke-static {v0, v2, v3}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v2

    .line 59
    .local v2, "tableSize":I
    add-int/lit8 v9, v2, -0x1

    .line 60
    .local v9, "mask":I
    invoke-static {v2}, Lcom/google/common/collect/ImmutableMapEntry;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v10

    .line 61
    .local v10, "keyTable":[Lcom/google/common/collect/ImmutableMapEntry;, "[Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-static {v2}, Lcom/google/common/collect/ImmutableMapEntry;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v11

    .line 63
    .local v11, "valueTable":[Lcom/google/common/collect/ImmutableMapEntry;, "[Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    array-length v3, v1

    if-ne v0, v3, :cond_0

    .line 64
    move-object/from16 v3, p1

    move-object v12, v3

    .local v3, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 66
    .end local v3    # "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/google/common/collect/ImmutableMapEntry;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v3

    move-object v12, v3

    .line 68
    .local v12, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    :goto_0
    const/4 v3, 0x0

    .line 70
    .local v3, "hashCode":I
    const/4 v4, 0x0

    move v13, v3

    .end local v3    # "hashCode":I
    .local v4, "i":I
    .local v13, "hashCode":I
    :goto_1
    if-ge v4, v0, :cond_4

    .line 72
    aget-object v3, v1, v4

    .line 73
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 74
    .local v5, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 75
    .local v6, "value":Ljava/lang/Object;, "TV;"
    invoke-static {v5, v6}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 77
    .local v7, "keyHash":I
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v8

    .line 78
    .local v8, "valueHash":I
    invoke-static {v7}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v14

    and-int/2addr v14, v9

    .line 79
    .local v14, "keyBucket":I
    invoke-static {v8}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v15

    and-int/2addr v15, v9

    .line 81
    .local v15, "valueBucket":I
    aget-object v0, v10, v14

    .line 82
    .local v0, "nextInKeyBucket":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-static {v5, v3, v0}, Lcom/google/common/collect/RegularImmutableMap;->checkNoConflictInKeyBucket(Ljava/lang/Object;Ljava/util/Map$Entry;Lcom/google/common/collect/ImmutableMapEntry;)V

    .line 83
    aget-object v1, v11, v15

    .line 84
    .local v1, "nextInValueBucket":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-static {v6, v3, v1}, Lcom/google/common/collect/RegularImmutableBiMap;->checkNoConflictInValueBucket(Ljava/lang/Object;Ljava/util/Map$Entry;Lcom/google/common/collect/ImmutableMapEntry;)V

    .line 86
    if-nez v1, :cond_3

    if-nez v0, :cond_3

    .line 93
    move/from16 v16, v2

    .end local v2    # "tableSize":I
    .local v16, "tableSize":I
    instance-of v2, v3, Lcom/google/common/collect/ImmutableMapEntry;

    if-eqz v2, :cond_1

    move-object v2, v3

    check-cast v2, Lcom/google/common/collect/ImmutableMapEntry;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMapEntry;->isReusable()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 95
    .local v2, "reusable":Z
    :goto_2
    if-eqz v2, :cond_2

    move-object/from16 v17, v3

    check-cast v17, Lcom/google/common/collect/ImmutableMapEntry;

    move-object/from16 v18, v17

    move/from16 v17, v2

    move-object/from16 v2, v18

    goto :goto_3

    :cond_2
    move/from16 v17, v2

    .end local v2    # "reusable":Z
    .local v17, "reusable":Z
    new-instance v2, Lcom/google/common/collect/ImmutableMapEntry;

    invoke-direct {v2, v5, v6}, Lcom/google/common/collect/ImmutableMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    .end local v17    # "reusable":Z
    .local v2, "newEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :goto_3
    goto :goto_4

    .line 86
    .end local v16    # "tableSize":I
    .local v2, "tableSize":I
    :cond_3
    move/from16 v16, v2

    .line 98
    .end local v2    # "tableSize":I
    .restart local v16    # "tableSize":I
    new-instance v2, Lcom/google/common/collect/ImmutableMapEntry$NonTerminalImmutableBiMapEntry;

    invoke-direct {v2, v5, v6, v0, v1}, Lcom/google/common/collect/ImmutableMapEntry$NonTerminalImmutableBiMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;)V

    .line 102
    .local v2, "newEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :goto_4
    aput-object v2, v10, v14

    .line 103
    aput-object v2, v11, v15

    .line 104
    aput-object v2, v12, v4

    .line 105
    xor-int v17, v7, v8

    add-int v13, v13, v17

    .line 70
    .end local v0    # "nextInKeyBucket":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .end local v1    # "nextInValueBucket":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .end local v2    # "newEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    .end local v7    # "keyHash":I
    .end local v8    # "valueHash":I
    .end local v14    # "keyBucket":I
    .end local v15    # "valueBucket":I
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    goto :goto_1

    .line 107
    .end local v4    # "i":I
    .end local v16    # "tableSize":I
    .local v2, "tableSize":I
    :cond_4
    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap;

    move-object v3, v0

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move v7, v9

    move v8, v13

    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/RegularImmutableBiMap;-><init>([Lcom/google/common/collect/ImmutableMapEntry;[Lcom/google/common/collect/ImmutableMapEntry;[Ljava/util/Map$Entry;II)V

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

    .line 140
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableBiMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Ljava/util/Map$Entry;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;-><init>(Lcom/google/common/collect/ImmutableMap;[Ljava/util/Map$Entry;)V

    :goto_0
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

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 135
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->keyTable:[Lcom/google/common/collect/ImmutableMapEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    invoke-static {p1, v0, v1}, Lcom/google/common/collect/RegularImmutableMap;->get(Ljava/lang/Object;[Lcom/google/common/collect/ImmutableMapEntry;I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 152
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->hashCode:I

    return v0
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    .line 37
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/ImmutableBiMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 171
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableBiMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->of()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    .line 175
    .local v0, "result":Lcom/google/common/collect/ImmutableBiMap;, "Lcom/google/common/collect/ImmutableBiMap<TV;TK;>;"
    if-nez v0, :cond_1

    new-instance v1, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;-><init>(Lcom/google/common/collect/RegularImmutableBiMap;Lcom/google/common/collect/RegularImmutableBiMap$1;)V

    iput-object v1, p0, Lcom/google/common/collect/RegularImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method isHashCodeFast()Z
    .locals 1

    .line 147
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .line 157
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 162
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Ljava/util/Map$Entry;

    array-length v0, v0

    return v0
.end method
