.class Lcom/google/common/reflect/TypeToken$Bounds;
.super Ljava/lang/Object;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Bounds"
.end annotation


# instance fields
.field private final bounds:[Ljava/lang/reflect/Type;

.field private final target:Z


# direct methods
.method constructor <init>([Ljava/lang/reflect/Type;Z)V
    .locals 0
    .param p1, "bounds"    # [Ljava/lang/reflect/Type;
    .param p2, "target"    # Z

    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 972
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$Bounds;->bounds:[Ljava/lang/reflect/Type;

    .line 973
    iput-boolean p2, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    .line 974
    return-void
.end method


# virtual methods
.method isSubtypeOf(Ljava/lang/reflect/Type;)Z
    .locals 6
    .param p1, "supertype"    # Ljava/lang/reflect/Type;

    .line 977
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$Bounds;->bounds:[Ljava/lang/reflect/Type;

    .local v0, "arr$":[Ljava/lang/reflect/Type;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 978
    .local v3, "bound":Ljava/lang/reflect/Type;
    invoke-static {v3}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v4

    iget-boolean v5, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    if-ne v4, v5, :cond_0

    .line 979
    return v5

    .line 977
    .end local v3    # "bound":Ljava/lang/reflect/Type;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 982
    .end local v0    # "arr$":[Ljava/lang/reflect/Type;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    iget-boolean v0, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isSupertypeOf(Ljava/lang/reflect/Type;)Z
    .locals 7
    .param p1, "subtype"    # Ljava/lang/reflect/Type;

    .line 986
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 987
    .local v0, "type":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<*>;"
    iget-object v1, p0, Lcom/google/common/reflect/TypeToken$Bounds;->bounds:[Ljava/lang/reflect/Type;

    .local v1, "arr$":[Ljava/lang/reflect/Type;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 988
    .local v4, "bound":Ljava/lang/reflect/Type;
    invoke-virtual {v0, v4}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v5

    iget-boolean v6, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    if-ne v5, v6, :cond_0

    .line 989
    return v6

    .line 987
    .end local v4    # "bound":Ljava/lang/reflect/Type;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 992
    .end local v1    # "arr$":[Ljava/lang/reflect/Type;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    iget-boolean v1, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method
