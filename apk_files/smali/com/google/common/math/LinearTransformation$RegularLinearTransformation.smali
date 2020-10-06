.class final Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;
.super Lcom/google/common/math/LinearTransformation;
.source "LinearTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LinearTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RegularLinearTransformation"
.end annotation


# instance fields
.field inverse:Lcom/google/common/math/LinearTransformation;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field

.field final slope:D

.field final yIntercept:D


# direct methods
.method constructor <init>(DD)V
    .locals 1
    .param p1, "slope"    # D
    .param p3, "yIntercept"    # D

    .line 170
    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation;-><init>()V

    .line 171
    iput-wide p1, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    .line 172
    iput-wide p3, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->yIntercept:D

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    .line 174
    return-void
.end method

.method constructor <init>(DDLcom/google/common/math/LinearTransformation;)V
    .locals 0
    .param p1, "slope"    # D
    .param p3, "yIntercept"    # D
    .param p5, "inverse"    # Lcom/google/common/math/LinearTransformation;

    .line 176
    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation;-><init>()V

    .line 177
    iput-wide p1, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    .line 178
    iput-wide p3, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->yIntercept:D

    .line 179
    iput-object p5, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    .line 180
    return-void
.end method

.method private createInverse()Lcom/google/common/math/LinearTransformation;
    .locals 11

    .line 214
    iget-wide v0, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    .line 215
    new-instance v0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iget-wide v3, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    div-double v6, v1, v3

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    iget-wide v8, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->yIntercept:D

    mul-double v8, v8, v1

    div-double/2addr v8, v3

    move-object v5, v0

    move-object v10, p0

    invoke-direct/range {v5 .. v10}, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;-><init>(DDLcom/google/common/math/LinearTransformation;)V

    return-object v0

    .line 217
    :cond_0
    new-instance v0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;

    iget-wide v1, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->yIntercept:D

    invoke-direct {v0, v1, v2, p0}, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;-><init>(DLcom/google/common/math/LinearTransformation;)V

    return-object v0
.end method


# virtual methods
.method public inverse()Lcom/google/common/math/LinearTransformation;
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    .line 205
    .local v0, "result":Lcom/google/common/math/LinearTransformation;
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->createInverse()Lcom/google/common/math/LinearTransformation;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public isHorizontal()Z
    .locals 5

    .line 189
    iget-wide v0, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVertical()Z
    .locals 1

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public slope()D
    .locals 2

    .line 194
    iget-wide v0, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 210
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->yIntercept:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "y = %g * x + %g"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(D)D
    .locals 4
    .param p1, "x"    # D

    .line 199
    iget-wide v0, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    mul-double v0, v0, p1

    iget-wide v2, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->yIntercept:D

    add-double/2addr v0, v2

    return-wide v0
.end method
