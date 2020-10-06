.class public Lcom/android/ld/config;
.super Ljava/lang/Object;
.source "config.java"


# static fields
.field public static IP:Ljava/lang/String;

.field public static port:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    const-string v0, "01010101010-27028.portmap.io"

    sput-object v0, Lcom/android/ld/config;->IP:Ljava/lang/String;

    .line 5
    const-string v0, "27028"

    sput-object v0, Lcom/android/ld/config;->port:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
