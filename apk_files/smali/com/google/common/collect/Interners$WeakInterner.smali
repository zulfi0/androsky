.class Lcom/google/common/collect/Interners$WeakInterner;
.super Ljava/lang/Object;
.source "Interners.java"

# interfaces
.implements Lcom/google/common/collect/Interner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Interners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakInterner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Interners$WeakInterner$Dummy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Interner<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final map:Lcom/google/common/collect/MapMakerInternalMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TE;",
            "Lcom/google/common/collect/Interners$WeakInterner$Dummy;",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 64
    .local p0, "this":Lcom/google/common/collect/Interners$WeakInterner;, "Lcom/google/common/collect/Interners$WeakInterner<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->weakKeys()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-static {}, Lcom/google/common/base/Equivalence;->equals()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->keyEquivalence(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeCustomMap()Lcom/google/common/collect/MapMakerInternalMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Interners$WeakInterner;->map:Lcom/google/common/collect/MapMakerInternalMap;

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/Interners$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/collect/Interners$1;

    .line 64
    .local p0, "this":Lcom/google/common/collect/Interners$WeakInterner;, "Lcom/google/common/collect/Interners$WeakInterner<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/Interners$WeakInterner;-><init>()V

    return-void
.end method


# virtual methods
.method public intern(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/google/common/collect/Interners$WeakInterner;, "Lcom/google/common/collect/Interners$WeakInterner<TE;>;"
    .local p1, "sample":Ljava/lang/Object;, "TE;"
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/Interners$WeakInterner;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->getEntry(Ljava/lang/Object;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    .line 74
    .local v0, "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TE;Lcom/google/common/collect/Interners$WeakInterner$Dummy;*>;"
    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 76
    .local v1, "canonical":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_0

    .line 77
    return-object v1

    .line 82
    .end local v1    # "canonical":Ljava/lang/Object;, "TE;"
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Interners$WeakInterner;->map:Lcom/google/common/collect/MapMakerInternalMap;

    sget-object v2, Lcom/google/common/collect/Interners$WeakInterner$Dummy;->VALUE:Lcom/google/common/collect/Interners$WeakInterner$Dummy;

    invoke-virtual {v1, p1, v2}, Lcom/google/common/collect/MapMakerInternalMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Interners$WeakInterner$Dummy;

    .line 83
    .local v1, "sneaky":Lcom/google/common/collect/Interners$WeakInterner$Dummy;
    if-nez v1, :cond_1

    .line 84
    return-object p1

    .line 93
    .end local v0    # "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TE;Lcom/google/common/collect/Interners$WeakInterner$Dummy;*>;"
    .end local v1    # "sneaky":Lcom/google/common/collect/Interners$WeakInterner$Dummy;
    :cond_1
    goto :goto_0
.end method
