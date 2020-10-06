.class Lcom/android/ld/Payloads/locManager$3;
.super Ljava/lang/Object;
.source "locManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ld/Payloads/locManager;->geolocate()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ld/Payloads/locManager;


# direct methods
.method constructor <init>(Lcom/android/ld/Payloads/locManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ld/Payloads/locManager;

    .line 123
    iput-object p1, p0, Lcom/android/ld/Payloads/locManager$3;->this$0:Lcom/android/ld/Payloads/locManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/ld/Payloads/locManager$3;->this$0:Lcom/android/ld/Payloads/locManager;

    invoke-virtual {v0}, Lcom/android/ld/Payloads/locManager;->getNetworkLocation()V

    .line 127
    return-void
.end method
