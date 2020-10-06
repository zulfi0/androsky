.class final Lcom/google/common/util/concurrent/ServiceManager$1;
.super Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback<",
        "Lcom/google/common/util/concurrent/ServiceManager$Listener;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .line 126
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method call(Lcom/google/common/util/concurrent/ServiceManager$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/common/util/concurrent/ServiceManager$Listener;

    .line 129
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/ServiceManager$Listener;->healthy()V

    .line 130
    return-void
.end method

.method bridge synthetic call(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 126
    move-object v0, p1

    check-cast v0, Lcom/google/common/util/concurrent/ServiceManager$Listener;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/ServiceManager$1;->call(Lcom/google/common/util/concurrent/ServiceManager$Listener;)V

    return-void
.end method
