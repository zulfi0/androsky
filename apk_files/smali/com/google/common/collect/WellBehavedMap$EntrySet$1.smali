.class Lcom/google/common/collect/WellBehavedMap$EntrySet$1;
.super Lcom/google/common/collect/TransformedIterator;
.source "WellBehavedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/WellBehavedMap$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedIterator<",
        "TK;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/WellBehavedMap$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/WellBehavedMap$EntrySet;Ljava/util/Iterator;)V
    .locals 0

    .line 78
    .local p0, "this":Lcom/google/common/collect/WellBehavedMap$EntrySet$1;, "Lcom/google/common/collect/WellBehavedMap$EntrySet.1;"
    .local p2, "x0":Ljava/util/Iterator;, "Ljava/util/Iterator<+TK;>;"
    iput-object p1, p0, Lcom/google/common/collect/WellBehavedMap$EntrySet$1;->this$1:Lcom/google/common/collect/WellBehavedMap$EntrySet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 78
    .local p0, "this":Lcom/google/common/collect/WellBehavedMap$EntrySet$1;, "Lcom/google/common/collect/WellBehavedMap$EntrySet.1;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/WellBehavedMap$EntrySet$1;->transform(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method transform(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lcom/google/common/collect/WellBehavedMap$EntrySet$1;, "Lcom/google/common/collect/WellBehavedMap$EntrySet.1;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    new-instance v0, Lcom/google/common/collect/WellBehavedMap$EntrySet$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/WellBehavedMap$EntrySet$1$1;-><init>(Lcom/google/common/collect/WellBehavedMap$EntrySet$1;Ljava/lang/Object;)V

    return-object v0
.end method
