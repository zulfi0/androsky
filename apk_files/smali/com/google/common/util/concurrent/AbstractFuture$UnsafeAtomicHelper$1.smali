.class final Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$1;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Lsun/misc/Unsafe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 951
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$1;->run()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

.method public run()Lsun/misc/Unsafe;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 954
    const-class v0, Lsun/misc/Unsafe;

    .line 955
    .local v0, "k":Ljava/lang/Class;, "Ljava/lang/Class<Lsun/misc/Unsafe;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 956
    .local v4, "f":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 957
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 958
    .local v5, "x":Ljava/lang/Object;
    invoke-virtual {v0, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 959
    invoke-virtual {v0, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/misc/Unsafe;

    return-object v6

    .line 955
    .end local v4    # "f":Ljava/lang/reflect/Field;
    .end local v5    # "x":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 962
    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    new-instance v1, Ljava/lang/NoSuchFieldError;

    const-string v2, "the Unsafe"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
