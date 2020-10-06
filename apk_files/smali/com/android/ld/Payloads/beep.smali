.class public Lcom/android/ld/Payloads/beep;
.super Ljava/lang/Object;
.source "beep.java"


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/ld/Payloads/beep;->context:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public beepen(I)V
    .locals 5
    .param p1, "i"    # I

    .line 17
    iget-object v0, p0, Lcom/android/ld/Payloads/beep;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 18
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 20
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 22
    .local v1, "toneG":Landroid/media/ToneGenerator;
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 24
    const/16 v3, 0x1c

    const/16 v4, 0xc8

    :try_start_0
    invoke-virtual {v1, v3, v4}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 25
    const-wide/16 v3, 0x190

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_1

    .line 26
    :catch_0
    move-exception v3

    .line 27
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 22
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    .end local v2    # "k":I
    :cond_0
    return-void
.end method
