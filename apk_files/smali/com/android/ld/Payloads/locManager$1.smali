.class Lcom/android/ld/Payloads/locManager$1;
.super Ljava/lang/Object;
.source "locManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ld/Payloads/locManager;->getNetworkLocation()V
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

    .line 40
    iput-object p1, p0, Lcom/android/ld/Payloads/locManager$1;->this$0:Lcom/android/ld/Payloads/locManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .line 42
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 51
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 48
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 45
    return-void
.end method
