.class Lcom/google/common/collect/RegularImmutableMultiset;
.super Lcom/google/common/collect/ImmutableMultiset;
.source "RegularImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableMultiset$ElementSet;,
        Lcom/google/common/collect/RegularImmutableMultiset$NonTerminalEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultiset<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Lcom/google/common/collect/RegularImmutableMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RegularImmutableMultiset<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient elementSet:Lcom/google/common/collect/ImmutableSet;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final transient entries:[Lcom/google/common/collect/Multisets$ImmutableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/Multisets$ImmutableEntry<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final transient hashCode:I

.field private final transient hashTable:[Lcom/google/common/collect/Multisets$ImmutableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/Multisets$ImmutableEntry<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final transient size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/google/common/collect/RegularImmutableMultiset;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/RegularImmutableMultiset;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/common/collect/RegularImmutableMultiset;->EMPTY:Lcom/google/common/collect/RegularImmutableMultiset;

    return-void
.end method

.method constructor <init>(Ljava/util/Collection;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/common/collect/Multiset$Entry<",
            "+TE;>;>;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMultiset;, "Lcom/google/common/collect/RegularImmutableMultiset<TE;>;"
    .local p1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/google/common/collect/Multiset$Entry<+TE;>;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/ImmutableMultiset;-><init>()V

    .line 49
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 51
    .local v1, "distinct":I
    new-array v2, v1, [Lcom/google/common/collect/Multisets$ImmutableEntry;

    .line 52
    .local v2, "entryArray":[Lcom/google/common/collect/Multisets$ImmutableEntry;, "[Lcom/google/common/collect/Multisets$ImmutableEntry<TE;>;"
    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 53
    iput-object v2, v0, Lcom/google/common/collect/RegularImmutableMultiset;->entries:[Lcom/google/common/collect/Multisets$ImmutableEntry;

    .line 54
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/google/common/collect/RegularImmutableMultiset;->hashTable:[Lcom/google/common/collect/Multisets$ImmutableEntry;

    .line 55
    iput v3, v0, Lcom/google/common/collect/RegularImmutableMultiset;->size:I

    .line 56
    iput v3, v0, Lcom/google/common/collect/RegularImmutableMultiset;->hashCode:I

    .line 57
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/collect/RegularImmutableMultiset;->elementSet:Lcom/google/common/collect/ImmutableSet;

    move/from16 v17, v1

    goto/16 :goto_4

    .line 59
    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v4, v5}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v4

    .line 60
    .local v4, "tableSize":I
    add-int/lit8 v5, v4, -0x1

    .line 62
    .local v5, "mask":I
    new-array v6, v4, [Lcom/google/common/collect/Multisets$ImmutableEntry;

    .line 64
    .local v6, "hashTable":[Lcom/google/common/collect/Multisets$ImmutableEntry;, "[Lcom/google/common/collect/Multisets$ImmutableEntry<TE;>;"
    const/4 v7, 0x0

    .line 65
    .local v7, "index":I
    const/4 v8, 0x0

    .line 66
    .local v8, "hashCode":I
    const-wide/16 v9, 0x0

    .line 67
    .local v9, "size":J
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/common/collect/Multiset$Entry;

    .line 68
    .local v12, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<+TE;>;"
    invoke-interface {v12}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 69
    .local v13, "element":Ljava/lang/Object;, "TE;"
    invoke-interface {v12}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v14

    .line 70
    .local v14, "count":I
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v15

    .line 71
    .local v15, "hash":I
    invoke-static {v15}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v16

    and-int v16, v16, v5

    .line 72
    .local v16, "bucket":I
    aget-object v3, v6, v16

    .line 74
    .local v3, "bucketHead":Lcom/google/common/collect/Multisets$ImmutableEntry;, "Lcom/google/common/collect/Multisets$ImmutableEntry<TE;>;"
    if-nez v3, :cond_3

    .line 75
    move/from16 v17, v1

    .end local v1    # "distinct":I
    .local v17, "distinct":I
    instance-of v1, v12, Lcom/google/common/collect/Multisets$ImmutableEntry;

    if-eqz v1, :cond_1

    instance-of v1, v12, Lcom/google/common/collect/RegularImmutableMultiset$NonTerminalEntry;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 77
    .local v1, "canReuseEntry":Z
    :goto_1
    if-eqz v1, :cond_2

    move-object/from16 v18, v12

    check-cast v18, Lcom/google/common/collect/Multisets$ImmutableEntry;

    move-object/from16 v21, v18

    move/from16 v18, v1

    move-object/from16 v1, v21

    goto :goto_2

    :cond_2
    move/from16 v18, v1

    .end local v1    # "canReuseEntry":Z
    .local v18, "canReuseEntry":Z
    new-instance v1, Lcom/google/common/collect/Multisets$ImmutableEntry;

    invoke-direct {v1, v13, v14}, Lcom/google/common/collect/Multisets$ImmutableEntry;-><init>(Ljava/lang/Object;I)V

    .line 81
    .end local v18    # "canReuseEntry":Z
    .local v1, "newEntry":Lcom/google/common/collect/Multisets$ImmutableEntry;, "Lcom/google/common/collect/Multisets$ImmutableEntry<TE;>;"
    :goto_2
    goto :goto_3

    .line 82
    .end local v17    # "distinct":I
    .local v1, "distinct":I
    :cond_3
    move/from16 v17, v1

    .end local v1    # "distinct":I
    .restart local v17    # "distinct":I
    new-instance v1, Lcom/google/common/collect/RegularImmutableMultiset$NonTerminalEntry;

    invoke-direct {v1, v13, v14, v3}, Lcom/google/common/collect/RegularImmutableMultiset$NonTerminalEntry;-><init>(Ljava/lang/Object;ILcom/google/common/collect/Multisets$ImmutableEntry;)V

    .line 84
    .local v1, "newEntry":Lcom/google/common/collect/Multisets$ImmutableEntry;, "Lcom/google/common/collect/Multisets$ImmutableEntry<TE;>;"
    :goto_3
    xor-int v18, v15, v14

    add-int v8, v8, v18

    .line 85
    add-int/lit8 v18, v7, 0x1

    .end local v7    # "index":I
    .local v18, "index":I
    aput-object v1, v2, v7

    .line 86
    aput-object v1, v6, v16

    .line 87
    move-object/from16 v20, v3

    move/from16 v19, v4

    .end local v3    # "bucketHead":Lcom/google/common/collect/Multisets$ImmutableEntry;, "Lcom/google/common/collect/Multisets$ImmutableEntry<TE;>;"
    .end local v4    # "tableSize":I
    .local v19, "tableSize":I
    .local v20, "bucketHead":Lcom/google/common/collect/Multisets$ImmutableEntry;, "Lcom/google/common/collect/Multisets$ImmutableEntry<TE;>;"
    int-to-long v3, v14

    add-long/2addr v9, v3

    .line 88
    .end local v1    # "newEntry":Lcom/google/common/collect/Multisets$ImmutableEntry;, "Lcom/google/common/collect/Multisets$ImmutableEntry<TE;>;"
    .end local v12    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<+TE;>;"
    .end local v13    # "element":Ljava/lang/Object;, "TE;"
    .end local v14    # "count":I
    .end local v15    # "hash":I
    .end local v16    # "bucket":I
    .end local v20    # "bucketHead":Lcom/google/common/collect/Multisets$ImmutableEntry;, "Lcom/google/common/collect/Multisets$ImmutableEntry<TE;>;"
    move/from16 v1, v17

    move/from16 v7, v18

    move/from16 v4, v19

    const/4 v3, 0x0

    goto :goto_0

    .line 67
    .end local v17    # "distinct":I
    .end local v18    # "index":I
    .end local v19    # "tableSize":I
    .local v1, "distinct":I
    .restart local v4    # "tableSize":I
    .restart local v7    # "index":I
    :cond_4
    move/from16 v17, v1

    move/from16 v19, v4

    .line 89
    .end local v1    # "distinct":I
    .end local v4    # "tableSize":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .restart local v17    # "distinct":I
    .restart local v19    # "tableSize":I
    iput-object v2, v0, Lcom/google/common/collect/RegularImmutableMultiset;->entries:[Lcom/google/common/collect/Multisets$ImmutableEntry;

    .line 90
    iput-object v6, v0, Lcom/google/common/collect/RegularImmutableMultiset;->hashTable:[Lcom/google/common/collect/Multisets$ImmutableEntry;

    .line 91
    invoke-static {v9, v10}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    iput v1, v0, Lcom/google/common/collect/RegularImmutableMultiset;->size:I

    .line 92
    iput v8, v0, Lcom/google/common/collect/RegularImmutableMultiset;->hashCode:I

    .line 94
    .end local v5    # "mask":I
    .end local v6    # "hashTable":[Lcom/google/common/collect/Multisets$ImmutableEntry;, "[Lcom/google/common/collect/Multisets$ImmutableEntry<TE;>;"
    .end local v7    # "index":I
    .end local v8    # "hashCode":I
    .end local v9    # "size":J
    .end local v19    # "tableSize":I
    :goto_4
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/RegularImmutableMultiset;)[Lcom/google/common/collect/Multisets$ImmutableEntry;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/RegularImmutableMultiset;

    .line 36
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->entries:[Lcom/google/common/collect/Multisets$ImmutableEntry;

    return-object v0
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 6
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 117
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMultiset;, "Lcom/google/common/collect/RegularImmutableMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->hashTable:[Lcom/google/common/collect/Multisets$ImmutableEntry;

    .line 118
    .local v0, "hashTable":[Lcom/google/common/collect/Multisets$ImmutableEntry;, "[Lcom/google/common/collect/Multisets$ImmutableEntry<TE;>;"
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    .line 121
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    .line 122
    .local v2, "hash":I
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    .line 123
    .local v3, "mask":I
    and-int v4, v2, v3

    aget-object v4, v0, v4

    .line 124
    .local v4, "entry":Lcom/google/common/collect/Multisets$ImmutableEntry;, "Lcom/google/common/collect/Multisets$ImmutableEntry<TE;>;"
    :goto_0
    if-eqz v4, :cond_2

    .line 126
    invoke-virtual {v4}, Lcom/google/common/collect/Multisets$ImmutableEntry;->getElement()Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 127
    invoke-virtual {v4}, Lcom/google/common/collect/Multisets$ImmutableEntry;->getCount()I

    move-result v1

    return v1

    .line 125
    :cond_1
    invoke-virtual {v4}, Lcom/google/common/collect/Multisets$ImmutableEntry;->nextInBucket()Lcom/google/common/collect/Multisets$ImmutableEntry;

    move-result-object v4

    goto :goto_0

    .line 130
    .end local v4    # "entry":Lcom/google/common/collect/Multisets$ImmutableEntry;, "Lcom/google/common/collect/Multisets$ImmutableEntry<TE;>;"
    :cond_2
    return v1

    .line 119
    .end local v2    # "hash":I
    .end local v3    # "mask":I
    :cond_3
    :goto_1
    return v1
.end method

.method public elementSet()Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMultiset;, "Lcom/google/common/collect/RegularImmutableMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->elementSet:Lcom/google/common/collect/ImmutableSet;

    .line 141
    .local v0, "result":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    if-nez v0, :cond_0

    new-instance v1, Lcom/google/common/collect/RegularImmutableMultiset$ElementSet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/RegularImmutableMultiset$ElementSet;-><init>(Lcom/google/common/collect/RegularImmutableMultiset;Lcom/google/common/collect/RegularImmutableMultiset$1;)V

    iput-object v1, p0, Lcom/google/common/collect/RegularImmutableMultiset;->elementSet:Lcom/google/common/collect/ImmutableSet;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 34
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMultiset;, "Lcom/google/common/collect/RegularImmutableMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMultiset;->elementSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method getEntry(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 170
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMultiset;, "Lcom/google/common/collect/RegularImmutableMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->entries:[Lcom/google/common/collect/Multisets$ImmutableEntry;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 175
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMultiset;, "Lcom/google/common/collect/RegularImmutableMultiset<TE;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->hashCode:I

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .line 112
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMultiset;, "Lcom/google/common/collect/RegularImmutableMultiset<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 135
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMultiset;, "Lcom/google/common/collect/RegularImmutableMultiset<TE;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->size:I

    return v0
.end method
