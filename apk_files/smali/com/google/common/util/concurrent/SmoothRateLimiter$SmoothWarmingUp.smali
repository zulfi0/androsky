.class final Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;
.super Lcom/google/common/util/concurrent/SmoothRateLimiter;
.source "SmoothRateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/SmoothRateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SmoothWarmingUp"
.end annotation


# instance fields
.field private coldFactor:D

.field private slope:D

.field private thresholdPermits:D

.field private final warmupPeriodMicros:J


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;JLjava/util/concurrent/TimeUnit;D)V
    .locals 2
    .param p1, "stopwatch"    # Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;
    .param p2, "warmupPeriod"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "coldFactor"    # D

    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/SmoothRateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;Lcom/google/common/util/concurrent/SmoothRateLimiter$1;)V

    .line 208
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->warmupPeriodMicros:J

    .line 209
    iput-wide p5, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->coldFactor:D

    .line 210
    return-void
.end method

.method private permitsToTime(D)D
    .locals 4
    .param p1, "permits"    # D

    .line 250
    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->stableIntervalMicros:D

    iget-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->slope:D

    mul-double v2, v2, p1

    add-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method coolDownIntervalMicros()D
    .locals 4

    .line 255
    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->warmupPeriodMicros:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method doSetRate(DD)V
    .locals 10
    .param p1, "permitsPerSecond"    # D
    .param p3, "stableIntervalMicros"    # D

    .line 214
    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    .line 215
    .local v0, "oldMaxPermits":D
    iget-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->coldFactor:D

    mul-double v2, v2, p3

    .line 216
    .local v2, "coldIntervalMicros":D
    iget-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->warmupPeriodMicros:J

    long-to-double v6, v4

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    div-double/2addr v6, p3

    iput-wide v6, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->thresholdPermits:D

    .line 217
    long-to-double v4, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v8

    add-double v8, p3, v2

    div-double/2addr v4, v8

    add-double/2addr v6, v4

    iput-wide v6, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    .line 219
    sub-double v4, v2, p3

    iget-wide v6, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    iget-wide v8, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->thresholdPermits:D

    sub-double/2addr v6, v8

    div-double/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->slope:D

    .line 220
    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v8, v0, v6

    if-nez v8, :cond_0

    .line 222
    iput-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->storedPermits:D

    goto :goto_1

    .line 224
    :cond_0
    cmpl-double v6, v0, v4

    if-nez v6, :cond_1

    iget-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->storedPermits:D

    iget-wide v6, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    mul-double v4, v4, v6

    div-double/2addr v4, v0

    :goto_0
    iput-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->storedPermits:D

    .line 229
    :goto_1
    return-void
.end method

.method storedPermitsToWaitTime(DD)J
    .locals 15
    .param p1, "storedPermits"    # D
    .param p3, "permitsToTake"    # D

    .line 233
    move-object v0, p0

    move-wide/from16 v1, p3

    iget-wide v3, v0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->thresholdPermits:D

    sub-double v3, p1, v3

    .line 234
    .local v3, "availablePermitsAboveThreshold":D
    const-wide/16 v5, 0x0

    .line 236
    .local v5, "micros":J
    const-wide/16 v7, 0x0

    cmpl-double v9, v3, v7

    if-lez v9, :cond_0

    .line 237
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    .line 239
    .local v7, "permitsAboveThresholdToTake":D
    invoke-direct {p0, v3, v4}, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->permitsToTime(D)D

    move-result-wide v9

    sub-double v11, v3, v7

    invoke-direct {p0, v11, v12}, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->permitsToTime(D)D

    move-result-wide v11

    add-double/2addr v9, v11

    .line 241
    .local v9, "length":D
    mul-double v11, v7, v9

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v13

    double-to-long v5, v11

    .line 242
    sub-double/2addr v1, v7

    .line 245
    .end local v7    # "permitsAboveThresholdToTake":D
    .end local v9    # "length":D
    .end local p3    # "permitsToTake":D
    .local v1, "permitsToTake":D
    :cond_0
    long-to-double v7, v5

    iget-wide v9, v0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->stableIntervalMicros:D

    mul-double v9, v9, v1

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v9

    double-to-long v5, v7

    .line 246
    return-wide v5
.end method
