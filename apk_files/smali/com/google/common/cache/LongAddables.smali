.class final Lcom/google/common/cache/LongAddables;
.super Ljava/lang/Object;
.source "LongAddables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/LongAddables$PureJavaLongAddable;
    }
.end annotation


# static fields
.field private static final SUPPLIER:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/cache/LongAddable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/google/common/cache/LongAdder;

    invoke-direct {v1}, Lcom/google/common/cache/LongAdder;-><init>()V

    .line 34
    new-instance v1, Lcom/google/common/cache/LongAddables$1;

    invoke-direct {v1}, Lcom/google/common/cache/LongAddables$1;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 49
    .local v0, "supplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/common/cache/LongAddable;>;"
    goto :goto_0

    .line 41
    .end local v0    # "supplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/common/cache/LongAddable;>;"
    :catchall_0
    move-exception v1

    .line 42
    .restart local v0    # "supplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/common/cache/LongAddable;>;"
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Lcom/google/common/cache/LongAddables$2;

    invoke-direct {v2}, Lcom/google/common/cache/LongAddables$2;-><init>()V

    move-object v0, v2

    .line 50
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    sput-object v0, Lcom/google/common/cache/LongAddables;->SUPPLIER:Lcom/google/common/base/Supplier;

    .line 51
    .end local v0    # "supplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/common/cache/LongAddable;>;"
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static create()Lcom/google/common/cache/LongAddable;
    .locals 1

    .line 54
    sget-object v0, Lcom/google/common/cache/LongAddables;->SUPPLIER:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LongAddable;

    return-object v0
.end method
