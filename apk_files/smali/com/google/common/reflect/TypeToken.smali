.class public abstract Lcom/google/common/reflect/TypeToken;
.super Lcom/google/common/reflect/TypeCapture;
.source "TypeToken.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/TypeToken$TypeCollector;,
        Lcom/google/common/reflect/TypeToken$SimpleTypeToken;,
        Lcom/google/common/reflect/TypeToken$Bounds;,
        Lcom/google/common/reflect/TypeToken$TypeFilter;,
        Lcom/google/common/reflect/TypeToken$ClassSet;,
        Lcom/google/common/reflect/TypeToken$InterfaceSet;,
        Lcom/google/common/reflect/TypeToken$TypeSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/reflect/TypeCapture<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final runtimeType:Ljava/lang/reflect/Type;

.field private transient typeResolver:Lcom/google/common/reflect/TypeResolver;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .line 116
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Lcom/google/common/reflect/TypeCapture;-><init>()V

    .line 117
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->capture()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 118
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Cannot construct a TypeToken for a type variable.\nYou probably meant to call new TypeToken<%s>(getClass()) that can resolve the type variable for you.\nIf you do need to create a TypeToken of a type variable, please use TypeToken.of() instead."

    invoke-static {v1, v2, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 144
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/google/common/reflect/TypeCapture;-><init>()V

    .line 145
    invoke-super {p0}, Lcom/google/common/reflect/TypeCapture;->capture()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 146
    .local v0, "captured":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 147
    iput-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/reflect/TypeToken;->resolveType(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    iput-object v1, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 151
    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .line 153
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Lcom/google/common/reflect/TypeCapture;-><init>()V

    .line 154
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    iput-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 155
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Type;Lcom/google/common/reflect/TypeToken$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/reflect/Type;
    .param p2, "x1"    # Lcom/google/common/reflect/TypeToken$1;

    .line 100
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/reflect/TypeToken;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/reflect/TypeToken;
    .param p1, "x1"    # [Ljava/lang/reflect/Type;

    .line 100
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken;->resolveInPlace([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/reflect/TypeToken;

    .line 100
    invoke-direct {p0}, Lcom/google/common/reflect/TypeToken;->getRawTypes()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/common/reflect/TypeToken;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/reflect/TypeToken;

    .line 100
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method private static any([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken$Bounds;
    .locals 2
    .param p0, "bounds"    # [Ljava/lang/reflect/Type;

    .line 964
    new-instance v0, Lcom/google/common/reflect/TypeToken$Bounds;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/reflect/TypeToken$Bounds;-><init>([Ljava/lang/reflect/Type;Z)V

    return-object v0
.end method

.method private boundAsSuperclass(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;
    .locals 2
    .param p1, "bound"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/TypeToken<",
            "-TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 301
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 302
    .local v0, "token":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<*>;"
    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    const/4 v1, 0x0

    return-object v1

    .line 306
    :cond_0
    move-object v1, v0

    .line 307
    .local v1, "superclass":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<-TT;>;"
    return-object v1
.end method

.method private boundsAsInterfaces([Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableList;
    .locals 7
    .param p1, "bounds"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/reflect/TypeToken<",
            "-TT;>;>;"
        }
    .end annotation

    .line 340
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 341
    .local v0, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/common/reflect/TypeToken<-TT;>;>;"
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/reflect/Type;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 343
    .local v4, "bound":Ljava/lang/reflect/Type;
    invoke-static {v4}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v5

    .line 344
    .local v5, "boundType":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<-TT;>;"
    invoke-virtual {v5}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 345
    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 341
    .end local v4    # "bound":Ljava/lang/reflect/Type;
    .end local v5    # "boundType":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<-TT;>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 348
    .end local v1    # "arr$":[Ljava/lang/reflect/Type;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method private static every([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken$Bounds;
    .locals 2
    .param p0, "bounds"    # [Ljava/lang/reflect/Type;

    .line 959
    new-instance v0, Lcom/google/common/reflect/TypeToken$Bounds;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/reflect/TypeToken$Bounds;-><init>([Ljava/lang/reflect/Type;Z)V

    return-object v0
.end method

.method private getArraySubtype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/common/reflect/TypeToken<",
            "+TT;>;"
        }
    .end annotation

    .line 1132
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getComponentType()Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken;->getSubtype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 1134
    .local v0, "componentSubtype":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<*>;"
    iget-object v1, v0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->newArrayClassOrGenericArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    .line 1138
    .local v1, "result":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<+TT;>;"
    return-object v1
.end method

.method private getArraySupertype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/google/common/reflect/TypeToken<",
            "-TT;>;"
        }
    .end annotation

    .line 1117
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getComponentType()Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    const-string v1, "%s isn\'t a super type of %s"

    invoke-static {v0, v1, p1, p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/reflect/TypeToken;

    .line 1121
    .local v0, "componentType":Lcom/google/common/reflect/TypeToken;
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken;->getSupertype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    .line 1123
    .local v1, "componentSupertype":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<*>;"
    iget-object v2, v1, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-static {v2}, Lcom/google/common/reflect/TypeToken;->newArrayClassOrGenericArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v2

    .line 1127
    .local v2, "result":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<-TT;>;"
    return-object v2
.end method

.method private getOwnerTypeIfPresent()Ljava/lang/reflect/Type;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1045
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    .line 1046
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0

    .line 1047
    :cond_0
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 1048
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 1050
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getRawTypes()Lcom/google/common/collect/ImmutableSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation

    .line 997
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 998
    .local v0, "builder":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Ljava/lang/Class<*>;>;"
    new-instance v1, Lcom/google/common/reflect/TypeToken$4;

    invoke-direct {v1, p0, v0}, Lcom/google/common/reflect/TypeToken$4;-><init>(Lcom/google/common/reflect/TypeToken;Lcom/google/common/collect/ImmutableSet$Builder;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    iget-object v3, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/google/common/reflect/TypeToken$4;->visit([Ljava/lang/reflect/Type;)V

    .line 1026
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    .line 1027
    .local v1, "result":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<Ljava/lang/Class<-TT;>;>;"
    return-object v1
.end method

.method private getSubtypeFromLowerBounds(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;
    .locals 6
    .param p2, "lowerBounds"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/TypeToken<",
            "+TT;>;"
        }
    .end annotation

    .line 1104
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/reflect/Type;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1106
    .local v3, "lowerBound":Ljava/lang/reflect/Type;
    invoke-static {v3}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v4

    .line 1108
    .local v4, "bound":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<+TT;>;"
    invoke-virtual {v4, p1}, Lcom/google/common/reflect/TypeToken;->getSubtype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v5

    return-object v5

    .line 1110
    .end local v0    # "arr$":[Ljava/lang/reflect/Type;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    .end local v3    # "lowerBound":Ljava/lang/reflect/Type;
    .end local v4    # "bound":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<+TT;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isn\'t a subclass of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSupertypeFromUpperBounds(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;
    .locals 6
    .param p2, "upperBounds"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "-TT;>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/TypeToken<",
            "-TT;>;"
        }
    .end annotation

    .line 1091
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/reflect/Type;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1093
    .local v3, "upperBound":Ljava/lang/reflect/Type;
    invoke-static {v3}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v4

    .line 1094
    .local v4, "bound":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<-TT;>;"
    invoke-virtual {v4, p1}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1096
    invoke-virtual {v4, p1}, Lcom/google/common/reflect/TypeToken;->getSupertype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v5

    .line 1097
    .local v5, "result":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<-TT;>;"
    return-object v5

    .line 1091
    .end local v3    # "upperBound":Ljava/lang/reflect/Type;
    .end local v4    # "bound":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<-TT;>;"
    .end local v5    # "result":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<-TT;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1100
    .end local v0    # "arr$":[Ljava/lang/reflect/Type;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isn\'t a super type of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private is(Ljava/lang/reflect/Type;)Z
    .locals 4
    .param p1, "formalType"    # Ljava/lang/reflect/Type;

    .line 942
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 943
    return v1

    .line 945
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 951
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->every([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken$Bounds;

    move-result-object v0

    iget-object v3, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v3}, Lcom/google/common/reflect/TypeToken$Bounds;->isSupertypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->every([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken$Bounds;

    move-result-object v0

    iget-object v3, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v3}, Lcom/google/common/reflect/TypeToken$Bounds;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 954
    :cond_2
    return v2
.end method

.method private isOwnedBySubtypeOf(Ljava/lang/reflect/Type;)Z
    .locals 4
    .param p1, "supertype"    # Ljava/lang/reflect/Type;

    .line 1031
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getTypes()Lcom/google/common/reflect/TypeToken$TypeSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken$TypeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/reflect/TypeToken;

    .line 1032
    .local v1, "type":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<*>;"
    invoke-direct {v1}, Lcom/google/common/reflect/TypeToken;->getOwnerTypeIfPresent()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1033
    .local v2, "ownerType":Ljava/lang/reflect/Type;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1034
    const/4 v3, 0x1

    return v3

    .line 1036
    .end local v1    # "type":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<*>;"
    .end local v2    # "ownerType":Ljava/lang/reflect/Type;
    :cond_0
    goto :goto_0

    .line 1037
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isSubtypeOfArrayType(Ljava/lang/reflect/GenericArrayType;)Z
    .locals 3
    .param p1, "supertype"    # Ljava/lang/reflect/GenericArrayType;

    .line 902
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/Class;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 903
    check-cast v0, Ljava/lang/Class;

    .line 904
    .local v0, "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    .line 905
    return v2

    .line 907
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v1

    return v1

    .line 908
    .end local v0    # "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_2

    .line 909
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 910
    .local v0, "fromArrayType":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v1

    return v1

    .line 913
    .end local v0    # "fromArrayType":Ljava/lang/reflect/GenericArrayType;
    :cond_2
    return v2
.end method

.method private isSubtypeOfParameterizedType(Ljava/lang/reflect/ParameterizedType;)Z
    .locals 7
    .param p1, "supertype"    # Ljava/lang/reflect/ParameterizedType;

    .line 875
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 876
    .local v0, "matchedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken;->someRawTypeIsSubclassOf(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 877
    return v2

    .line 879
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 880
    .local v1, "typeParams":[Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 881
    .local v3, "toTypeArgs":[Ljava/lang/reflect/Type;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 889
    aget-object v5, v1, v4

    invoke-virtual {p0, v5}, Lcom/google/common/reflect/TypeToken;->resolveType(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v5

    aget-object v6, v3, v4

    invoke-direct {v5, v6}, Lcom/google/common/reflect/TypeToken;->is(Ljava/lang/reflect/Type;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 890
    return v2

    .line 881
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 896
    .end local v4    # "i":I
    :cond_2
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/common/reflect/TypeToken;->isOwnedBySubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method private isSupertypeOfArray(Ljava/lang/reflect/GenericArrayType;)Z
    .locals 3
    .param p1, "subtype"    # Ljava/lang/reflect/GenericArrayType;

    .line 918
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 919
    check-cast v0, Ljava/lang/Class;

    .line 920
    .local v0, "thisClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    .line 921
    const-class v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    return v1

    .line 923
    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v1

    return v1

    .line 924
    .end local v0    # "thisClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    .line 925
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0

    .line 928
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isWrapper()Z
    .locals 2

    .line 528
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-static {}, Lcom/google/common/primitives/Primitives;->allWrapperTypes()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static newArrayClassOrGenericArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "componentType"    # Ljava/lang/reflect/Type;

    .line 1173
    sget-object v0, Lcom/google/common/reflect/Types$JavaVersion;->JAVA7:Lcom/google/common/reflect/Types$JavaVersion;

    invoke-virtual {v0, p0}, Lcom/google/common/reflect/Types$JavaVersion;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation

    .line 159
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/google/common/reflect/TypeToken$SimpleTypeToken;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/TypeToken$SimpleTypeToken;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/TypeToken<",
            "*>;"
        }
    .end annotation

    .line 164
    new-instance v0, Lcom/google/common/reflect/TypeToken$SimpleTypeToken;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/TypeToken$SimpleTypeToken;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private resolveInPlace([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 2
    .param p1, "types"    # [Ljava/lang/reflect/Type;

    .line 255
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 256
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/common/reflect/TypeToken;->resolveType(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    aput-object v1, p1, v0

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    .end local v0    # "i":I
    :cond_0
    return-object p1
.end method

.method private resolveSupertype(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/TypeToken<",
            "*>;"
        }
    .end annotation

    .line 262
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken;->resolveType(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 264
    .local v0, "supertype":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<*>;"
    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->typeResolver:Lcom/google/common/reflect/TypeResolver;

    iput-object v1, v0, Lcom/google/common/reflect/TypeToken;->typeResolver:Lcom/google/common/reflect/TypeResolver;

    .line 265
    return-object v0
.end method

.method private resolveTypeArgsForSubclass(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1146
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_1

    .line 1150
    :cond_0
    return-object p1

    .line 1159
    :cond_1
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->toGenericType(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 1161
    .local v0, "genericSubtype":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<*>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken;->getSupertype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 1163
    .local v1, "supertypeWithArgsFromSubtype":Ljava/lang/reflect/Type;
    new-instance v2, Lcom/google/common/reflect/TypeResolver;

    invoke-direct {v2}, Lcom/google/common/reflect/TypeResolver;-><init>()V

    iget-object v3, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v1, v3}, Lcom/google/common/reflect/TypeResolver;->where(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeResolver;

    move-result-object v2

    iget-object v3, v0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    return-object v2
.end method

.method private someRawTypeIsSubclassOf(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 866
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/google/common/reflect/TypeToken;->getRawTypes()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 867
    .local v1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 868
    const/4 v2, 0x1

    return v2

    .line 870
    .end local v1    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    goto :goto_0

    .line 871
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static toGenericType(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/common/reflect/TypeToken<",
            "+TT;>;"
        }
    .end annotation

    .line 1063
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->toGenericType(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/common/reflect/Types;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1069
    .local v0, "arrayOfGenericType":Ljava/lang/reflect/Type;
    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    .line 1070
    .local v1, "result":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<+TT;>;"
    return-object v1

    .line 1072
    .end local v0    # "arrayOfGenericType":Ljava/lang/reflect/Type;
    .end local v1    # "result":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<+TT;>;"
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    .line 1073
    .local v0, "typeParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/Class<TT;>;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->toGenericType(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1078
    .local v1, "ownerType":Ljava/lang/reflect/Type;
    :goto_0
    array-length v2, v0

    if-gtz v2, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    goto :goto_1

    .line 1085
    :cond_2
    invoke-static {p0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v2

    return-object v2

    .line 1080
    :cond_3
    :goto_1
    invoke-static {v1, p0, v0}, Lcom/google/common/reflect/Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v2

    .line 1083
    .local v2, "type":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<+TT;>;"
    return-object v2
.end method


# virtual methods
.method public final constructor(Ljava/lang/reflect/Constructor;)Lcom/google/common/reflect/Invokable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lcom/google/common/reflect/Invokable<",
            "TT;TT;>;"
        }
    .end annotation

    .line 604
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "%s not declared by %s"

    invoke-static {v0, v2, p1, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 609
    new-instance v0, Lcom/google/common/reflect/TypeToken$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/reflect/TypeToken$2;-><init>(Lcom/google/common/reflect/TypeToken;Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 808
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    instance-of v0, p1, Lcom/google/common/reflect/TypeToken;

    if-eqz v0, :cond_0

    .line 809
    move-object v0, p1

    check-cast v0, Lcom/google/common/reflect/TypeToken;

    .line 810
    .local v0, "that":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<*>;"
    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    iget-object v2, v0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 812
    .end local v0    # "that":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<*>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getComponentType()Lcom/google/common/reflect/TypeToken;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 552
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/common/reflect/Types;->getComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 553
    .local v0, "componentType":Ljava/lang/reflect/Type;
    if-nez v0, :cond_0

    .line 554
    const/4 v1, 0x0

    return-object v1

    .line 556
    :cond_0
    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    return-object v1
.end method

.method final getGenericInterfaces()Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/reflect/TypeToken<",
            "-TT;>;>;"
        }
    .end annotation

    .line 323
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_0

    .line 324
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken;->boundsAsInterfaces([Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 326
    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_1

    .line 327
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken;->boundsAsInterfaces([Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 329
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 330
    .local v0, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/common/reflect/TypeToken<-TT;>;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Type;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 332
    .local v4, "interfaceType":Ljava/lang/reflect/Type;
    invoke-direct {p0, v4}, Lcom/google/common/reflect/TypeToken;->resolveSupertype(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v5

    .line 334
    .local v5, "resolvedInterface":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<-TT;>;"
    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 330
    .end local v4    # "interfaceType":Ljava/lang/reflect/Type;
    .end local v5    # "resolvedInterface":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<-TT;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 336
    .end local v1    # "arr$":[Ljava/lang/reflect/Type;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method final getGenericSuperclass()Lcom/google/common/reflect/TypeToken;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "-TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 282
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 284
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken;->boundAsSuperclass(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0

    .line 286
    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_1

    .line 288
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken;->boundAsSuperclass(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0

    .line 290
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 291
    .local v0, "superclass":Ljava/lang/reflect/Type;
    if-nez v0, :cond_2

    .line 292
    const/4 v1, 0x0

    return-object v1

    .line 295
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken;->resolveSupertype(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    .line 296
    .local v1, "superToken":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<-TT;>;"
    return-object v1
.end method

.method public final getRawType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation

    .line 183
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Lcom/google/common/reflect/TypeToken;->getRawTypes()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 185
    .local v0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, v0

    .line 186
    .local v1, "result":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    return-object v1
.end method

.method public final getSubtype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/common/reflect/TypeToken<",
            "+TT;>;"
        }
    .end annotation

    .line 398
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot get subtype of type variable <%s>"

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 400
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_0

    .line 401
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/reflect/TypeToken;->getSubtypeFromLowerBounds(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken;->getArraySubtype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s isn\'t a subclass of %s"

    invoke-static {v0, v1, p1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 410
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken;->resolveTypeArgsForSubclass(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 412
    .local v0, "resolvedTypeArgs":Ljava/lang/reflect/Type;
    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    .line 413
    .local v1, "subtype":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<+TT;>;"
    return-object v1
.end method

.method public final getSupertype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/google/common/reflect/TypeToken<",
            "-TT;>;"
        }
    .end annotation

    .line 372
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken;->someRawTypeIsSubclassOf(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s is not a super class of %s"

    invoke-static {v0, v1, p1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 377
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_0

    .line 378
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/reflect/TypeToken;->getSupertypeFromUpperBounds(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0

    .line 380
    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_1

    .line 381
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/reflect/TypeToken;->getSupertypeFromUpperBounds(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0

    .line 383
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken;->getArraySupertype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0

    .line 387
    :cond_2
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->toGenericType(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken;->resolveSupertype(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 389
    .local v0, "supertype":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<-TT;>;"
    return-object v0
.end method

.method public final getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 191
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final getTypes()Lcom/google/common/reflect/TypeToken$TypeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    .line 363
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    new-instance v0, Lcom/google/common/reflect/TypeToken$TypeSet;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/TypeToken$TypeSet;-><init>(Lcom/google/common/reflect/TypeToken;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 817
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isArray()Z
    .locals 1

    .line 500
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getComponentType()Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPrimitive()Z
    .locals 2

    .line 509
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSubtypeOf(Lcom/google/common/reflect/TypeToken;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/TypeToken<",
            "*>;)Z"
        }
    .end annotation

    .line 449
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "type":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<*>;"
    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public final isSubtypeOf(Ljava/lang/reflect/Type;)Z
    .locals 3
    .param p1, "supertype"    # Ljava/lang/reflect/Type;

    .line 461
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    .line 466
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->any([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken$Bounds;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken$Bounds;->isSupertypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_1

    .line 472
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->any([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken$Bounds;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeToken$Bounds;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0

    .line 476
    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 477
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->any([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken$Bounds;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeToken$Bounds;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2

    .line 480
    :cond_4
    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_5

    .line 481
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    invoke-direct {v0, v1}, Lcom/google/common/reflect/TypeToken;->isSupertypeOfArray(Ljava/lang/reflect/GenericArrayType;)Z

    move-result v0

    return v0

    .line 484
    :cond_5
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_6

    .line 485
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken;->someRawTypeIsSubclassOf(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 486
    :cond_6
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_7

    .line 487
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken;->isSubtypeOfParameterizedType(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v0

    return v0

    .line 488
    :cond_7
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_8

    .line 489
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken;->isSubtypeOfArrayType(Ljava/lang/reflect/GenericArrayType;)Z

    move-result v0

    return v0

    .line 491
    :cond_8
    return v2
.end method

.method public final isSupertypeOf(Lcom/google/common/reflect/TypeToken;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/TypeToken<",
            "*>;)Z"
        }
    .end annotation

    .line 425
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "type":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<*>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public final isSupertypeOf(Ljava/lang/reflect/Type;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .line 437
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public final method(Ljava/lang/reflect/Method;)Lcom/google/common/reflect/Invokable;
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/google/common/reflect/Invokable<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 565
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken;->someRawTypeIsSubclassOf(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s not declared by %s"

    invoke-static {v0, v1, p1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 570
    new-instance v0, Lcom/google/common/reflect/TypeToken$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/reflect/TypeToken$1;-><init>(Lcom/google/common/reflect/TypeToken;Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method final rejectTypeVariables()Lcom/google/common/reflect/TypeToken;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation

    .line 838
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    new-instance v0, Lcom/google/common/reflect/TypeToken$3;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/TypeToken$3;-><init>(Lcom/google/common/reflect/TypeToken;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    iget-object v2, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken$3;->visit([Ljava/lang/reflect/Type;)V

    .line 862
    return-object p0
.end method

.method public final resolveType(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/TypeToken<",
            "*>;"
        }
    .end annotation

    .line 246
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->typeResolver:Lcom/google/common/reflect/TypeResolver;

    .line 248
    .local v0, "resolver":Lcom/google/common/reflect/TypeResolver;
    if-nez v0, :cond_0

    .line 249
    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/google/common/reflect/TypeResolver;->accordingTo(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/reflect/TypeToken;->typeResolver:Lcom/google/common/reflect/TypeResolver;

    move-object v0, v1

    .line 251
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 822
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/common/reflect/Types;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unwrap()Lcom/google/common/reflect/TypeToken;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation

    .line 538
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Lcom/google/common/reflect/TypeToken;->isWrapper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    .line 541
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {v0}, Lcom/google/common/primitives/Primitives;->unwrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    return-object v1

    .line 543
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_0
    return-object p0
.end method

.method public final where(Lcom/google/common/reflect/TypeParameter;Lcom/google/common/reflect/TypeToken;)Lcom/google/common/reflect/TypeToken;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/reflect/TypeParameter<",
            "TX;>;",
            "Lcom/google/common/reflect/TypeToken<",
            "TX;>;)",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation

    .line 210
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "typeParam":Lcom/google/common/reflect/TypeParameter;, "Lcom/google/common/reflect/TypeParameter<TX;>;"
    .local p2, "typeArg":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TX;>;"
    new-instance v0, Lcom/google/common/reflect/TypeResolver;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeResolver;-><init>()V

    new-instance v1, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;

    iget-object v2, p1, Lcom/google/common/reflect/TypeParameter;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-direct {v1, v2}, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;-><init>(Ljava/lang/reflect/TypeVariable;)V

    iget-object v2, p2, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeResolver;->where(Ljava/util/Map;)Lcom/google/common/reflect/TypeResolver;

    move-result-object v0

    .line 216
    .local v0, "resolver":Lcom/google/common/reflect/TypeResolver;
    new-instance v1, Lcom/google/common/reflect/TypeToken$SimpleTypeToken;

    iget-object v2, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v2}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/reflect/TypeToken$SimpleTypeToken;-><init>(Ljava/lang/reflect/Type;)V

    return-object v1
.end method

.method public final where(Lcom/google/common/reflect/TypeParameter;Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/reflect/TypeParameter<",
            "TX;>;",
            "Ljava/lang/Class<",
            "TX;>;)",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation

    .line 235
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "typeParam":Lcom/google/common/reflect/TypeParameter;, "Lcom/google/common/reflect/TypeParameter<TX;>;"
    .local p2, "typeArg":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    invoke-static {p2}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/reflect/TypeToken;->where(Lcom/google/common/reflect/TypeParameter;Lcom/google/common/reflect/TypeToken;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public final wrap()Lcom/google/common/reflect/TypeToken;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation

    .line 519
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    .line 522
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {v0}, Lcom/google/common/primitives/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    return-object v1

    .line 524
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_0
    return-object p0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 2

    .line 829
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    new-instance v0, Lcom/google/common/reflect/TypeResolver;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeResolver;-><init>()V

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0
.end method
