.class public final Lcom/google/common/base/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static badElementIndex(IILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "index"    # I
    .param p1, "size"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 1183
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-gez p0, :cond_0

    .line 1184
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "%s (%s) must not be negative"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1185
    :cond_0
    if-ltz p1, :cond_1

    .line 1188
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "%s (%s) must be less than size (%s)"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1186
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "negative size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static badPositionIndex(IILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "index"    # I
    .param p1, "size"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 1228
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-gez p0, :cond_0

    .line 1229
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "%s (%s) must not be negative"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1230
    :cond_0
    if-ltz p1, :cond_1

    .line 1233
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "%s (%s) must not be greater than size (%s)"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1231
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "negative size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static badPositionIndexes(III)Ljava/lang/String;
    .locals 3
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "size"    # I

    .line 1257
    if-ltz p0, :cond_3

    if-le p0, p2, :cond_0

    goto :goto_1

    .line 1260
    :cond_0
    if-ltz p1, :cond_2

    if-le p1, p2, :cond_1

    goto :goto_0

    .line 1264
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "end index (%s) must not be less than start index (%s)"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1261
    :cond_2
    :goto_0
    const-string v0, "end index"

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->badPositionIndex(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1258
    :cond_3
    :goto_1
    const-string v0, "start index"

    invoke-static {p0, p2, v0}, Lcom/google/common/base/Preconditions;->badPositionIndex(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkArgument(Z)V
    .locals 1
    .param p0, "expression"    # Z

    .line 107
    if-eqz p0, :cond_0

    .line 110
    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/Object;)V
    .locals 2
    .param p0, "expression"    # Z
    .param p1, "errorMessage"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 121
    if-eqz p0, :cond_0

    .line 124
    return-void

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/String;C)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # C

    .line 156
    if-eqz p0, :cond_0

    .line 159
    return-void

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/String;CC)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # C
    .param p3, "p2"    # C

    .line 202
    if-eqz p0, :cond_0

    .line 205
    return-void

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/String;CI)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # C
    .param p3, "p2"    # I

    .line 214
    if-eqz p0, :cond_0

    .line 217
    return-void

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/String;CJ)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # C
    .param p3, "p2"    # J

    .line 226
    if-eqz p0, :cond_0

    .line 229
    return-void

    .line 227
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/String;CLjava/lang/Object;)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # C
    .param p3, "p2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 238
    if-eqz p0, :cond_0

    .line 241
    return-void

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/String;I)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # I

    .line 167
    if-eqz p0, :cond_0

    .line 170
    return-void

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/String;IC)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # I
    .param p3, "p2"    # C

    .line 250
    if-eqz p0, :cond_0

    .line 253
    return-void

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/String;II)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # I
    .param p3, "p2"    # I

    .line 262
    if-eqz p0, :cond_0

    .line 265
    return-void

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/String;IJ)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # I
    .param p3, "p2"    # J

    .line 274
    if-eqz p0, :cond_0

    .line 277
    return-void

    .line 275
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # I
    .param p3, "p2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 286
    if-eqz p0, :cond_0

    .line 289
    return-void

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/String;J)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # J

    .line 178
    if-eqz p0, :cond_0

    .line 181
    return-void

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/String;JC)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # J
    .param p4, "p2"    # C

    .line 298
    if-eqz p0, :cond_0

    .line 301
    return-void

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/String;JI)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # J
    .param p4, "p2"    # I

    .line 310
    if-eqz p0, :cond_0

    .line 313
    return-void

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/String;JJ)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # J
    .param p4, "p2"    # J

    .line 322
    if-eqz p0, :cond_0

    .line 325
    return-void

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/String;JLjava/lang/Object;)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # J
    .param p4, "p2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 334
    if-eqz p0, :cond_0

    .line 337
    return-void

    .line 335
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 190
    if-eqz p0, :cond_0

    .line 193
    return-void

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/String;Ljava/lang/Object;C)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "p2"    # C

    .line 346
    if-eqz p0, :cond_0

    .line 349
    return-void

    .line 347
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/String;Ljava/lang/Object;I)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "p2"    # I

    .line 358
    if-eqz p0, :cond_0

    .line 361
    return-void

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/String;Ljava/lang/Object;J)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "p2"    # J

    .line 370
    if-eqz p0, :cond_0

    .line 373
    return-void

    .line 371
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "p2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 382
    if-eqz p0, :cond_0

    .line 385
    return-void

    .line 383
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "p2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "p3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 398
    if-eqz p0, :cond_0

    .line 401
    return-void

    .line 399
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "p2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "p3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "p4"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 415
    if-eqz p0, :cond_0

    .line 418
    return-void

    .line 416
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "expression"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "errorMessageArgs"    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 145
    if-eqz p0, :cond_0

    .line 148
    return-void

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkElementIndex(II)I
    .locals 1
    .param p0, "index"    # I
    .param p1, "size"    # I

    .line 1159
    const-string v0, "index"

    invoke-static {p0, p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static checkElementIndex(IILjava/lang/String;)I
    .locals 2
    .param p0, "index"    # I
    .param p1, "size"    # I
    .param p2, "desc"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1176
    if-ltz p0, :cond_0

    if-ge p0, p1, :cond_0

    .line 1179
    return p0

    .line 1177
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p0, p1, p2}, Lcom/google/common/base/Preconditions;->badElementIndex(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 769
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 772
    return-object p0

    .line 770
    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 786
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 789
    return-object p0

    .line 787
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;C)Ljava/lang/Object;
    .locals 4
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "C)TT;"
        }
    .end annotation

    .line 823
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 826
    return-object p0

    .line 824
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;CC)Ljava/lang/Object;
    .locals 4
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # C
    .param p3, "p2"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "CC)TT;"
        }
    .end annotation

    .line 876
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 879
    return-object p0

    .line 877
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;CI)Ljava/lang/Object;
    .locals 4
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # C
    .param p3, "p2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "CI)TT;"
        }
    .end annotation

    .line 889
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 892
    return-object p0

    .line 890
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;CJ)Ljava/lang/Object;
    .locals 4
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # C
    .param p3, "p2"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "CJ)TT;"
        }
    .end annotation

    .line 902
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 905
    return-object p0

    .line 903
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;CLjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # C
    .param p3, "p2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "C",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 916
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 919
    return-object p0

    .line 917
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 4
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .line 836
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 839
    return-object p0

    .line 837
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;IC)Ljava/lang/Object;
    .locals 4
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # I
    .param p3, "p2"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "IC)TT;"
        }
    .end annotation

    .line 929
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 932
    return-object p0

    .line 930
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/Object;
    .locals 4
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # I
    .param p3, "p2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "II)TT;"
        }
    .end annotation

    .line 942
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 945
    return-object p0

    .line 943
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;IJ)Ljava/lang/Object;
    .locals 4
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # I
    .param p3, "p2"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "IJ)TT;"
        }
    .end annotation

    .line 955
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 958
    return-object p0

    .line 956
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # I
    .param p3, "p2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 969
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 972
    return-object p0

    .line 970
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;
    .locals 4
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "J)TT;"
        }
    .end annotation

    .line 849
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 852
    return-object p0

    .line 850
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;JC)Ljava/lang/Object;
    .locals 4
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # J
    .param p4, "p2"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "JC)TT;"
        }
    .end annotation

    .line 982
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 985
    return-object p0

    .line 983
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;JI)Ljava/lang/Object;
    .locals 4
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # J
    .param p4, "p2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "JI)TT;"
        }
    .end annotation

    .line 995
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 998
    return-object p0

    .line 996
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;JJ)Ljava/lang/Object;
    .locals 4
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # J
    .param p4, "p2"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "JJ)TT;"
        }
    .end annotation

    .line 1008
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 1011
    return-object p0

    .line 1009
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # J
    .param p4, "p2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1022
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 1025
    return-object p0

    .line 1023
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 863
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 866
    return-object p0

    .line 864
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;C)Ljava/lang/Object;
    .locals 4
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "p2"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "C)TT;"
        }
    .end annotation

    .line 1036
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 1039
    return-object p0

    .line 1037
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "p2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "I)TT;"
        }
    .end annotation

    .line 1050
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 1053
    return-object p0

    .line 1051
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 4
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "p2"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 1064
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 1067
    return-object p0

    .line 1065
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "p2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1078
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 1081
    return-object p0

    .line 1079
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "p2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "p3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1096
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 1099
    return-object p0

    .line 1097
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "p2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "p3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "p4"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1115
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 1118
    return-object p0

    .line 1116
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "errorMessageArgs"    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 809
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 813
    return-object p0

    .line 811
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1, p2}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkPositionIndex(II)I
    .locals 1
    .param p0, "index"    # I
    .param p1, "size"    # I

    .line 1204
    const-string v0, "index"

    invoke-static {p0, p1, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static checkPositionIndex(IILjava/lang/String;)I
    .locals 2
    .param p0, "index"    # I
    .param p1, "size"    # I
    .param p2, "desc"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1221
    if-ltz p0, :cond_0

    if-gt p0, p1, :cond_0

    .line 1224
    return p0

    .line 1222
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p0, p1, p2}, Lcom/google/common/base/Preconditions;->badPositionIndex(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkPositionIndexes(III)V
    .locals 2
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "size"    # I

    .line 1251
    if-ltz p0, :cond_0

    if-lt p1, p0, :cond_0

    if-gt p1, p2, :cond_0

    .line 1254
    return-void

    .line 1252
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p0, p1, p2}, Lcom/google/common/base/Preconditions;->badPositionIndexes(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(Z)V
    .locals 1
    .param p0, "expression"    # Z

    .line 428
    if-eqz p0, :cond_0

    .line 431
    return-void

    .line 429
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static checkState(ZLjava/lang/Object;)V
    .locals 2
    .param p0, "expression"    # Z
    .param p1, "errorMessage"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 443
    if-eqz p0, :cond_0

    .line 446
    return-void

    .line 444
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(ZLjava/lang/String;C)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # C

    .line 480
    if-eqz p0, :cond_0

    .line 483
    return-void

    .line 481
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(ZLjava/lang/String;CC)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # C
    .param p3, "p2"    # C

    .line 530
    if-eqz p0, :cond_0

    .line 533
    return-void

    .line 531
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(ZLjava/lang/String;CI)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # C
    .param p3, "p2"    # I

    .line 542
    if-eqz p0, :cond_0

    .line 545
    return-void

    .line 543
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(ZLjava/lang/String;CJ)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # C
    .param p3, "p2"    # J

    .line 555
    if-eqz p0, :cond_0

    .line 558
    return-void

    .line 556
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(ZLjava/lang/String;CLjava/lang/Object;)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # C
    .param p3, "p2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 568
    if-eqz p0, :cond_0

    .line 571
    return-void

    .line 569
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(ZLjava/lang/String;I)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # I

    .line 492
    if-eqz p0, :cond_0

    .line 495
    return-void

    .line 493
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(ZLjava/lang/String;IC)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # I
    .param p3, "p2"    # C

    .line 580
    if-eqz p0, :cond_0

    .line 583
    return-void

    .line 581
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(ZLjava/lang/String;II)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # I
    .param p3, "p2"    # I

    .line 592
    if-eqz p0, :cond_0

    .line 595
    return-void

    .line 593
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(ZLjava/lang/String;IJ)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # I
    .param p3, "p2"    # J

    .line 604
    if-eqz p0, :cond_0

    .line 607
    return-void

    .line 605
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # I
    .param p3, "p2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 617
    if-eqz p0, :cond_0

    .line 620
    return-void

    .line 618
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(ZLjava/lang/String;J)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # J

    .line 504
    if-eqz p0, :cond_0

    .line 507
    return-void

    .line 505
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(ZLjava/lang/String;JC)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # J
    .param p4, "p2"    # C

    .line 630
    if-eqz p0, :cond_0

    .line 633
    return-void

    .line 631
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(ZLjava/lang/String;JI)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # J
    .param p4, "p2"    # I

    .line 642
    if-eqz p0, :cond_0

    .line 645
    return-void

    .line 643
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(ZLjava/lang/String;JJ)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # J
    .param p4, "p2"    # J

    .line 655
    if-eqz p0, :cond_0

    .line 658
    return-void

    .line 656
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(ZLjava/lang/String;JLjava/lang/Object;)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # J
    .param p4, "p2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 668
    if-eqz p0, :cond_0

    .line 671
    return-void

    .line 669
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 517
    if-eqz p0, :cond_0

    .line 520
    return-void

    .line 518
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(ZLjava/lang/String;Ljava/lang/Object;C)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "p2"    # C

    .line 681
    if-eqz p0, :cond_0

    .line 684
    return-void

    .line 682
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(ZLjava/lang/String;Ljava/lang/Object;I)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "p2"    # I

    .line 694
    if-eqz p0, :cond_0

    .line 697
    return-void

    .line 695
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(ZLjava/lang/String;Ljava/lang/Object;J)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "p2"    # J

    .line 707
    if-eqz p0, :cond_0

    .line 710
    return-void

    .line 708
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "p2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 720
    if-eqz p0, :cond_0

    .line 723
    return-void

    .line 721
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "p2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "p3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 737
    if-eqz p0, :cond_0

    .line 740
    return-void

    .line 738
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkState(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "b"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "p1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "p2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "p3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "p4"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 755
    if-eqz p0, :cond_0

    .line 758
    return-void

    .line 756
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs checkState(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "expression"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "errorMessageArgs"    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 468
    if-eqz p0, :cond_0

    .line 471
    return-void

    .line 469
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1, p2}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "template"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1279
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1283
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1284
    .local v1, "templateStart":I
    const/4 v2, 0x0

    .line 1285
    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 1286
    const-string v3, "%s"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 1287
    .local v3, "placeholderStart":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 1288
    goto :goto_1

    .line 1290
    :cond_0
    invoke-virtual {v0, p0, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1291
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1292
    add-int/lit8 v1, v3, 0x2

    .line 1293
    .end local v3    # "placeholderStart":I
    move v2, v4

    goto :goto_0

    .line 1294
    .end local v4    # "i":I
    .restart local v2    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, p0, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1297
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 1298
    const-string v3, " ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v2, v3

    .line 1300
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 1301
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v2, v3

    goto :goto_2

    .line 1304
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_2
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1307
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
