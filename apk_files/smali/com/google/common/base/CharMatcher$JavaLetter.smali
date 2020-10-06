.class final Lcom/google/common/base/CharMatcher$JavaLetter;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JavaLetter"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/base/CharMatcher$JavaLetter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1481
    new-instance v0, Lcom/google/common/base/CharMatcher$JavaLetter;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$JavaLetter;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$JavaLetter;->INSTANCE:Lcom/google/common/base/CharMatcher$JavaLetter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1479
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 1479
    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-super {p0, v0}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 1485
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1490
    const-string v0, "CharMatcher.javaLetter()"

    return-object v0
.end method
