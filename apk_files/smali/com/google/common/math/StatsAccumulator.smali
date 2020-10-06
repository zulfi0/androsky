.class public final Lcom/google/common/math/StatsAccumulator;
.super Ljava/lang/Object;
.source "StatsAccumulator.java"


# instance fields
.field private count:J

.field private max:D

.field private mean:D

.field private min:D

.field private sumOfSquaresOfDeltas:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 43
    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 44
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 45
    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    return-void
.end method

.method static calculateNewMeanNonFinite(DD)D
    .locals 2
    .param p0, "previousMean"    # D
    .param p2, "value"    # D

    .line 369
    invoke-static {p0, p1}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    return-wide p2

    .line 372
    :cond_0
    invoke-static {p2, p3}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    cmpl-double v0, p0, p2

    if-nez v0, :cond_1

    goto :goto_0

    .line 377
    :cond_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 374
    :cond_2
    :goto_0
    return-wide p0
.end method


# virtual methods
.method public add(D)V
    .locals 9
    .param p1, "value"    # D

    .line 51
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-nez v8, :cond_0

    .line 52
    iput-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 53
    iput-wide p1, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 54
    iput-wide p1, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 55
    iput-wide p1, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    .line 56
    invoke-static {p1, p2}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    .line 57
    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    goto :goto_1

    .line 60
    :cond_0
    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 61
    invoke-static {p1, p2}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-static {v0, v1}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    sub-double v2, p1, v0

    .line 64
    .local v2, "delta":D
    iget-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double v4, v2, v4

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 65
    iget-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    sub-double v0, p1, v0

    mul-double v0, v0, v2

    add-double/2addr v4, v0

    iput-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 66
    .end local v2    # "delta":D
    goto :goto_0

    .line 67
    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/math/StatsAccumulator;->calculateNewMeanNonFinite(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 68
    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 70
    :goto_0
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 71
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    .line 73
    :cond_2
    :goto_1
    return-void
.end method

.method public addAll(Lcom/google/common/math/Stats;)V
    .locals 10
    .param p1, "values"    # Lcom/google/common/math/Stats;

    .line 138
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 139
    return-void

    .line 142
    :cond_0
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 143
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 144
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 145
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 146
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->min()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 147
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->max()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    goto/16 :goto_1

    .line 149
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 150
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-static {v0, v1}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    sub-double/2addr v0, v2

    .line 153
    .local v0, "delta":D
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v0

    iget-wide v6, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 154
    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    sub-double/2addr v6, v8

    mul-double v6, v6, v0

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v8

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    add-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 156
    .end local v0    # "delta":D
    goto :goto_0

    .line 157
    :cond_2
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/math/StatsAccumulator;->calculateNewMeanNonFinite(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 158
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 160
    :goto_0
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->min()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 161
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->max()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    .line 163
    :goto_1
    return-void
.end method

.method public addAll(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 82
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Number;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 83
    .local v1, "value":Ljava/lang/Number;
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 84
    .end local v1    # "value":Ljava/lang/Number;
    goto :goto_0

    .line 85
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public addAll(Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 94
    .local p1, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Number;>;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method public varargs addAll([D)V
    .locals 5
    .param p1, "values"    # [D

    .line 105
    move-object v0, p1

    .local v0, "arr$":[D
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    .line 106
    .local v3, "value":D
    invoke-virtual {p0, v3, v4}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 105
    .end local v3    # "value":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "arr$":[D
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method public varargs addAll([I)V
    .locals 6
    .param p1, "values"    # [I

    .line 116
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 117
    .local v3, "value":I
    int-to-double v4, v3

    invoke-virtual {p0, v4, v5}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 116
    .end local v3    # "value":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "arr$":[I
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method public varargs addAll([J)V
    .locals 7
    .param p1, "values"    # [J

    .line 128
    move-object v0, p1

    .local v0, "arr$":[J
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    .line 129
    .local v3, "value":J
    long-to-double v5, v3

    invoke-virtual {p0, v5, v6}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 128
    .end local v3    # "value":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "arr$":[J
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method public count()J
    .locals 2

    .line 176
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    return-wide v0
.end method

.method public max()D
    .locals 5

    .line 342
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 343
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    return-wide v0
.end method

.method public mean()D
    .locals 5

    .line 198
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 199
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    return-wide v0
.end method

.method public min()D
    .locals 5

    .line 324
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 325
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    return-wide v0
.end method

.method public final populationStandardDeviation()D
    .locals 2

    .line 261
    invoke-virtual {p0}, Lcom/google/common/math/StatsAccumulator;->populationVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final populationVariance()D
    .locals 5

    .line 234
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 235
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 238
    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 239
    const-wide/16 v0, 0x0

    return-wide v0

    .line 241
    :cond_2
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Lcom/google/common/math/DoubleUtils;->ensureNonNegative(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final sampleStandardDeviation()D
    .locals 2

    .line 307
    invoke-virtual {p0}, Lcom/google/common/math/StatsAccumulator;->sampleVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final sampleVariance()D
    .locals 6

    .line 281
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 282
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 285
    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Lcom/google/common/math/DoubleUtils;->ensureNonNegative(D)D

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    sub-long/2addr v4, v2

    long-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public snapshot()Lcom/google/common/math/Stats;
    .locals 12

    .line 169
    new-instance v11, Lcom/google/common/math/Stats;

    iget-wide v1, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    iget-wide v3, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    iget-wide v5, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    iget-wide v7, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    iget-wide v9, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/google/common/math/Stats;-><init>(JDDDD)V

    return-object v11
.end method

.method public final sum()D
    .locals 4

    .line 215
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    return-wide v0
.end method

.method sumOfSquaresOfDeltas()D
    .locals 2

    .line 347
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    return-wide v0
.end method
