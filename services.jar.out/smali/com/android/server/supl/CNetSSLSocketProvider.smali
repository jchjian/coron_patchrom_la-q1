.class public Lcom/android/server/supl/CNetSSLSocketProvider;
.super Lcom/android/server/supl/CNetTLSProviderBase;
.source "CNetSSLSocketProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/supl/CNetSSLSocketProvider$ConnectThread;,
        Lcom/android/server/supl/CNetSSLSocketProvider$ReceiveThread;
    }
.end annotation


# static fields
.field private static AutoFqdnStorePath:Ljava/lang/String; = null

.field private static final CON_FAILURE:I = 0x1

.field private static final CON_SSL_ERR_RETRY:I = 0x2

.field private static final CON_SUCCESS:I = 0x0

.field private static FqdnPhoneStorePath:Ljava/lang/String; = null

.field private static PACKET_LENGTH_SIZE:B = 0x0t

.field private static final SSL_CTIMEOUT:I = 0x2710

.field private static final SSL_HTIMEOUT:I = 0x9c40

.field private static final TAG:Ljava/lang/String; = "CNetSSLSocketProvider"


# instance fields
.field private ConnectListener:Lcom/android/server/supl/CNetSSLSocketProvider$ConnectThread;

.field private IsReset:Z

.field private ReadListener:Lcom/android/server/supl/CNetSSLSocketProvider$ReceiveThread;

.field private autoReceive:Z

.field private in:Ljava/io/InputStream;

.field private out:Ljava/io/OutputStream;

.field private sslSocket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    const/4 v0, 0x2

    sput-byte v0, Lcom/android/server/supl/CNetSSLSocketProvider;->PACKET_LENGTH_SIZE:B

    .line 53
    sput-object v1, Lcom/android/server/supl/CNetSSLSocketProvider;->AutoFqdnStorePath:Ljava/lang/String;

    .line 54
    sput-object v1, Lcom/android/server/supl/CNetSSLSocketProvider;->FqdnPhoneStorePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 2
    .parameter "Context"

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/supl/CNetTLSProviderBase;-><init>(Ljavax/net/ssl/SSLContext;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->autoReceive:Z

    .line 43
    iput-object v1, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->ReadListener:Lcom/android/server/supl/CNetSSLSocketProvider$ReceiveThread;

    .line 44
    iput-object v1, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->ConnectListener:Lcom/android/server/supl/CNetSSLSocketProvider$ConnectThread;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->IsReset:Z

    .line 86
    return-void
.end method

.method private ReadMessage()[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 360
    sget-byte v6, Lcom/android/server/supl/CNetSSLSocketProvider;->PACKET_LENGTH_SIZE:B

    new-array v1, v6, [B

    .line 361
    .local v1, firstTwoBytes:[B
    const/4 v2, 0x0

    .line 362
    .local v2, message:[B
    const/4 v3, 0x0

    .line 363
    .local v3, messageSize:I
    const/4 v4, 0x0

    .line 367
    .local v4, read:I
    :goto_0
    sget-byte v6, Lcom/android/server/supl/CNetSSLSocketProvider;->PACKET_LENGTH_SIZE:B

    sub-int/2addr v6, v4

    if-lez v6, :cond_0

    .line 372
    :try_start_0
    iget-object v6, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->in:Ljava/io/InputStream;

    add-int/lit8 v7, v4, 0x0

    sget-byte v8, Lcom/android/server/supl/CNetSSLSocketProvider;->PACKET_LENGTH_SIZE:B

    sub-int/2addr v8, v4

    invoke-virtual {v6, v1, v7, v8}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    add-int/2addr v4, v6

    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    .line 377
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "CNetSSLSocketProvider"

    const-string v7, "===>>> ReadMessage: IndexOutOfBoundsException 1 \n"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :goto_1
    return-object v5

    .line 381
    :catch_1
    move-exception v0

    .line 383
    .local v0, e:Ljava/io/IOException;
    const-string v6, "CNetSSLSocketProvider"

    const-string v7, "===>>> ReadMessage: IOException 1 \n"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 390
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    aget-byte v6, v1, v9

    shl-int/lit8 v6, v6, 0x8

    const v7, 0xff00

    and-int v3, v6, v7

    .line 391
    aget-byte v6, v1, v10

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v3, v6

    .line 392
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ReadMessage (): SLP server message length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/supl/CNetSSLSocketProvider;->log(Ljava/lang/String;)V

    .line 394
    new-array v2, v3, [B

    .line 395
    aget-byte v6, v1, v9

    aput-byte v6, v2, v9

    .line 396
    aget-byte v6, v1, v10

    aput-byte v6, v2, v10

    .line 397
    const/4 v4, 0x0

    .line 400
    :goto_2
    sget-byte v6, Lcom/android/server/supl/CNetSSLSocketProvider;->PACKET_LENGTH_SIZE:B

    sub-int v6, v3, v6

    sub-int/2addr v6, v4

    if-lez v6, :cond_1

    .line 404
    :try_start_1
    iget-object v6, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->in:Ljava/io/InputStream;

    sget-byte v7, Lcom/android/server/supl/CNetSSLSocketProvider;->PACKET_LENGTH_SIZE:B

    add-int/2addr v7, v4

    sget-byte v8, Lcom/android/server/supl/CNetSSLSocketProvider;->PACKET_LENGTH_SIZE:B

    sub-int v8, v3, v8

    sub-int/2addr v8, v4

    invoke-virtual {v6, v2, v7, v8}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v6

    add-int/2addr v4, v6

    goto :goto_2

    .line 407
    :catch_2
    move-exception v0

    .line 409
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "CNetSSLSocketProvider"

    const-string v7, "===>>> ReadMessage: IndexOutOfBoundsException 2 \n"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 412
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_3
    move-exception v0

    .line 414
    .local v0, e:Ljava/io/IOException;
    const-string v6, "CNetSSLSocketProvider"

    const-string v7, "===>>> ReadMessage: IOException 2 \n"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    move-object v5, v2

    .line 420
    goto :goto_1
.end method

.method private ReadProc()V
    .locals 6

    .prologue
    .line 464
    const/4 v2, 0x0

    .line 466
    .local v2, num:I
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ===>>> ReadProc: Entering with InitialHandshakeComplete = %d \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/supl/CNetTLSProviderBase;->InitialHandshakeComplete:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/supl/CNetSSLSocketProvider;->log(Ljava/lang/String;)V

    .line 468
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/supl/CNetTLSProviderBase;->InitialHandshakeComplete:Z

    if-eqz v3, :cond_0

    .line 469
    invoke-direct {p0}, Lcom/android/server/supl/CNetSSLSocketProvider;->ReadMessage()[B

    move-result-object v1

    .line 470
    .local v1, mess:[B
    if-nez v1, :cond_1

    .line 471
    const-string v3, "error ReadMessage message, ReadProc() exit! "

    invoke-direct {p0, v3}, Lcom/android/server/supl/CNetSSLSocketProvider;->log(Ljava/lang/String;)V

    .line 472
    invoke-direct {p0}, Lcom/android/server/supl/CNetSSLSocketProvider;->Reset()V

    .line 488
    .end local v1           #mess:[B
    :cond_0
    :goto_1
    return-void

    .line 476
    .restart local v1       #mess:[B
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/supl/CNetSSLSocketProvider;->PostSLPMessageToQueue([B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 484
    .end local v1           #mess:[B
    :catch_0
    move-exception v0

    .line 485
    .local v0, e:Ljava/io/IOException;
    const-string v3, "CNetSSLSocketProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReadProc(): I/O Exception, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private Reset()V
    .locals 4

    .prologue
    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->IsReset:Z

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/supl/CNetTLSProviderBase;->InitialHandshakeComplete:Z

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->ConnectListener:Lcom/android/server/supl/CNetSSLSocketProvider$ConnectThread;

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->ConnectListener:Lcom/android/server/supl/CNetSSLSocketProvider$ConnectThread;

    invoke-virtual {v1}, Lcom/android/server/supl/CNetSSLSocketProvider$ConnectThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->ConnectListener:Lcom/android/server/supl/CNetSSLSocketProvider$ConnectThread;

    invoke-virtual {v1}, Lcom/android/server/supl/CNetSSLSocketProvider$ConnectThread;->interrupt()V

    .line 101
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->ConnectListener:Lcom/android/server/supl/CNetSSLSocketProvider$ConnectThread;

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->ReadListener:Lcom/android/server/supl/CNetSSLSocketProvider$ReceiveThread;

    if-eqz v1, :cond_3

    .line 105
    iget-object v1, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->ReadListener:Lcom/android/server/supl/CNetSSLSocketProvider$ReceiveThread;

    invoke-virtual {v1}, Lcom/android/server/supl/CNetSSLSocketProvider$ReceiveThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->ReadListener:Lcom/android/server/supl/CNetSSLSocketProvider$ReceiveThread;

    invoke-virtual {v1}, Lcom/android/server/supl/CNetSSLSocketProvider$ReceiveThread;->interrupt()V

    .line 108
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->ReadListener:Lcom/android/server/supl/CNetSSLSocketProvider$ReceiveThread;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_3
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_4

    .line 117
    iget-object v1, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 119
    :cond_4
    iget-object v1, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->out:Ljava/io/OutputStream;

    if-eqz v1, :cond_5

    .line 120
    iget-object v1, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 122
    :cond_5
    iget-object v1, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_6

    .line 123
    iget-object v1, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    :cond_6
    :goto_1
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "CNetSSLSocketProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t interrupt the listener task:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 127
    .local v0, e:Ljava/io/IOException;
    const-string v1, "CNetSSLSocketProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset() I/O Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static SetAutoFqdnStorePath(Ljava/lang/String;)V
    .locals 0
    .parameter "autoFqdnStorePath"

    .prologue
    .line 569
    sput-object p0, Lcom/android/server/supl/CNetSSLSocketProvider;->AutoFqdnStorePath:Ljava/lang/String;

    .line 570
    return-void
.end method

.method public static SetFqdnPhoneStorePath(Ljava/lang/String;)V
    .locals 0
    .parameter "fqdnPhoneStorePath"

    .prologue
    .line 577
    sput-object p0, Lcom/android/server/supl/CNetSSLSocketProvider;->FqdnPhoneStorePath:Ljava/lang/String;

    .line 578
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/supl/CNetSSLSocketProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/server/supl/CNetSSLSocketProvider;->ReadProc()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/supl/CNetSSLSocketProvider;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/server/supl/CNetSSLSocketProvider;->log(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 554
    iget-boolean v0, p0, Lcom/android/server/supl/CNetTLSProviderBase;->logging:Z

    if-eqz v0, :cond_0

    .line 557
    :cond_0
    return-void
.end method


# virtual methods
.method public ConnectProc(Ljava/lang/String;)I
    .locals 17
    .parameter "Host_port"

    .prologue
    .line 141
    const/4 v12, 0x3

    .line 142
    .local v12, totalRetryTimes:I
    const-string v3, "0.0.0.0:0"

    .line 143
    .local v3, dummy_host:Ljava/lang/String;
    const/4 v6, 0x0

    .line 144
    .local v6, hslp_addr:Ljava/lang/String;
    const/4 v8, 0x0

    .line 146
    .local v8, spirent_addr:Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/supl/CNetSSLSocketProvider;->IsReset:Z

    .line 149
    const/4 v10, 0x0

    .line 150
    .local v10, sslCtx:Ljavax/net/ssl/SSLContext;
    const/4 v1, 0x0

    .line 152
    .local v1, cer_path:Ljava/lang/String;
    const/4 v13, 0x0

    const/16 v14, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 153
    const-string v13, "h-slp.mnc"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 155
    sget-object v1, Lcom/android/server/supl/CNetSSLSocketProvider;->AutoFqdnStorePath:Ljava/lang/String;

    .line 158
    :cond_0
    const-string v13, "CNetSSLSocketProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " ===>>> [GPS] spirent_addr = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " hslp_addr = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    if-nez v1, :cond_1

    .line 163
    const-string v13, "CNetSSLSocketProvider"

    const-string v14, "[GPS] Using default certificate file"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v1, Lcom/android/server/supl/CNetSSLSocketProvider;->FqdnPhoneStorePath:Ljava/lang/String;

    .line 167
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 169
    const/4 v10, 0x0

    .line 171
    :try_start_0
    new-instance v11, Lcom/android/server/supl/TrustSecureManager;

    invoke-direct {v11}, Lcom/android/server/supl/TrustSecureManager;-><init>()V

    .line 172
    .local v11, tm:Lcom/android/server/supl/TrustSecureManager;
    new-instance v7, Lcom/android/server/supl/KeySecureManager;

    invoke-direct {v7}, Lcom/android/server/supl/KeySecureManager;-><init>()V

    .line 173
    .local v7, km:Lcom/android/server/supl/KeySecureManager;
    const-string v13, "123456"

    invoke-virtual {v11, v1, v13}, Lcom/android/server/supl/TrustSecureManager;->Init(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v13, "123456"

    invoke-virtual {v7, v1, v13}, Lcom/android/server/supl/KeySecureManager;->Init(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v13, "TLS"

    invoke-static {v13}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v10

    .line 176
    invoke-virtual {v7}, Lcom/android/server/supl/KeySecureManager;->getKetManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v13

    invoke-virtual {v11}, Lcom/android/server/supl/TrustSecureManager;->getKetManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v10, v13, v14, v15}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 197
    :try_start_1
    invoke-super/range {p0 .. p1}, Lcom/android/server/supl/CNetTLSProviderBase;->CreateConnection(Ljava/lang/String;)I

    .line 198
    invoke-virtual {v10}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v9

    .line 199
    .local v9, ssf:Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v9}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v13

    check-cast v13, Ljavax/net/ssl/SSLSocket;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/supl/CNetSSLSocketProvider;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 202
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/supl/CNetSSLSocketProvider;->sslSocket:Ljavax/net/ssl/SSLSocket;

    new-instance v14, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/supl/CNetTLSProviderBase;->Host:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/supl/CNetTLSProviderBase;->Port:I

    move/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v15, 0x2710

    invoke-virtual {v13, v14, v15}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 205
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/supl/CNetSSLSocketProvider;->sslSocket:Ljavax/net/ssl/SSLSocket;

    const/16 v14, 0x2710

    invoke-virtual {v13, v14}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 210
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/supl/CNetSSLSocketProvider;->sslSocket:Ljavax/net/ssl/SSLSocket;

    new-instance v14, Lcom/android/server/supl/CNetSSLSocketProvider$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/supl/CNetSSLSocketProvider$1;-><init>(Lcom/android/server/supl/CNetSSLSocketProvider;)V

    invoke-virtual {v13, v14}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 220
    const/16 v13, 0x12c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/supl/CNetSSLSocketProvider;->msleep(I)V

    .line 221
    const-string v13, "CNetSSLSocketProvider"

    const-string v14, "**INITIAL HANDSHAKE BEGIN**"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/supl/CNetSSLSocketProvider;->sslSocket:Ljavax/net/ssl/SSLSocket;

    const v14, 0x9c40

    invoke-virtual {v13, v14}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 223
    const-string v13, "CNetSSLSocket"

    const-string v14, "[GPS] before startHandshake"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/supl/CNetSSLSocketProvider;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v13}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 225
    const-string v13, "CNetSSLSocket"

    const-string v14, "[GPS] after startHandshake"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/16 v13, 0x1f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/supl/CNetSSLSocketProvider;->msleep(I)V

    .line 228
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/supl/CNetSSLSocketProvider;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v13}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/supl/CNetSSLSocketProvider;->in:Ljava/io/InputStream;

    .line 229
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/supl/CNetSSLSocketProvider;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v13}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/supl/CNetSSLSocketProvider;->out:Ljava/io/OutputStream;

    .line 231
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/supl/CNetTLSProviderBase;->InitialHandshakeComplete:Z

    .line 233
    const/4 v2, 0x0

    .line 236
    .local v2, conResult:B
    const-string v13, "CNetSSLSocketProvider"

    const-string v14, "**CONNECTION SUCCESSFUL**"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/supl/CNetSSLSocketProvider;->ConnectionRespose(B)Z

    .line 238
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/supl/CNetSSLSocketProvider;->ConnectListener:Lcom/android/server/supl/CNetSSLSocketProvider$ConnectThread;

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/supl/CNetSSLSocketProvider;->Receive()I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 295
    const/4 v13, 0x0

    .end local v2           #conResult:B
    .end local v7           #km:Lcom/android/server/supl/KeySecureManager;
    .end local v9           #ssf:Ljavax/net/ssl/SSLSocketFactory;
    .end local v11           #tm:Lcom/android/server/supl/TrustSecureManager;
    :goto_0
    return v13

    .line 178
    :catch_0
    move-exception v4

    .line 179
    .local v4, e:Ljava/security/GeneralSecurityException;
    const-string v13, "CNetSSLSocketProvider"

    const-string v14, "[GPS] ERR: GeneralSecurityException"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v4}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 181
    const/4 v13, -0x1

    goto :goto_0

    .line 183
    .end local v4           #e:Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v4

    .line 184
    .local v4, e:Ljava/net/UnknownHostException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[GPS] ERR: CreateConnection(): Unknown host exception, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/supl/CNetSSLSocketProvider;->log(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v4}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 186
    invoke-direct/range {p0 .. p0}, Lcom/android/server/supl/CNetSSLSocketProvider;->Reset()V

    .line 187
    const/4 v13, -0x1

    goto :goto_0

    .line 189
    .end local v4           #e:Ljava/net/UnknownHostException;
    :catch_2
    move-exception v4

    .line 190
    .local v4, e:Ljava/io/IOException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[GPS] ERR: CreateConnection(): I/O Exception, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/supl/CNetSSLSocketProvider;->log(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 192
    invoke-direct/range {p0 .. p0}, Lcom/android/server/supl/CNetSSLSocketProvider;->Reset()V

    .line 193
    const/4 v13, -0x1

    goto :goto_0

    .line 242
    .end local v4           #e:Ljava/io/IOException;
    .restart local v7       #km:Lcom/android/server/supl/KeySecureManager;
    .restart local v11       #tm:Lcom/android/server/supl/TrustSecureManager;
    :catch_3
    move-exception v4

    .line 244
    .local v4, e:Ljava/net/UnknownHostException;
    const-string v13, "CNetSSLSocketProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CreateConnection(): Unknown host exception, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v5, "www.spirent-lcs.com"

    .line 247
    .local v5, fqdn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/supl/CNetTLSProviderBase;->Host:Ljava/lang/String;

    const-string v14, "www.spirent-lcs.com"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 249
    const-string v13, "CNetSSLSocketProvider"

    const-string v14, "CreateConnection(): Changing Host to 192.168.0.35 "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v13, "192.168.0.35"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/supl/CNetTLSProviderBase;->Host:Ljava/lang/String;

    .line 251
    const-string v13, "192.168.0.35:7275"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/supl/CNetSSLSocketProvider;->ConnectProc(Ljava/lang/String;)I

    .line 261
    :goto_1
    const/4 v13, -0x1

    goto/16 :goto_0

    .line 255
    :cond_2
    const-string v13, "CNetSSLSocketProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CreateConnection(): Undefined hostHost "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/supl/CNetTLSProviderBase;->Host:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v2, 0x1

    .line 257
    .restart local v2       #conResult:B
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/supl/CNetSSLSocketProvider;->ConnectListener:Lcom/android/server/supl/CNetSSLSocketProvider$ConnectThread;

    .line 258
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/supl/CNetSSLSocketProvider;->ConnectionRespose(B)Z

    goto :goto_1

    .line 263
    .end local v2           #conResult:B
    .end local v4           #e:Ljava/net/UnknownHostException;
    .end local v5           #fqdn:Ljava/lang/String;
    :catch_4
    move-exception v4

    .line 265
    .local v4, e:Ljavax/net/ssl/SSLException;
    const-string v13, "CNetSSLSocketProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CreateConnection(): SSLException, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v2, 0x2

    .line 268
    .restart local v2       #conResult:B
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/supl/CNetSSLSocketProvider;->ConnectListener:Lcom/android/server/supl/CNetSSLSocketProvider$ConnectThread;

    .line 269
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/supl/CNetSSLSocketProvider;->ConnectionRespose(B)Z

    .line 271
    const/4 v13, -0x1

    goto/16 :goto_0

    .line 273
    .end local v2           #conResult:B
    .end local v4           #e:Ljavax/net/ssl/SSLException;
    :catch_5
    move-exception v4

    .line 275
    .local v4, e:Ljava/io/IOException;
    const-string v13, "CNetSSLSocketProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CreateConnection(): I/O Exception, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v5, "www.spirent-lcs.com"

    .line 279
    .restart local v5       #fqdn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/supl/CNetTLSProviderBase;->Host:Ljava/lang/String;

    const-string v14, "www.spirent-lcs.com"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 281
    const-string v13, "CNetSSLSocketProvider"

    const-string v14, "CreateConnection(): Changing Host to 192.168.0.35 "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v13, "192.168.0.35"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/supl/CNetTLSProviderBase;->Host:Ljava/lang/String;

    .line 283
    const-string v13, "192.168.0.35:7275"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/supl/CNetSSLSocketProvider;->ConnectProc(Ljava/lang/String;)I

    .line 293
    :goto_2
    const/4 v13, -0x1

    goto/16 :goto_0

    .line 287
    :cond_3
    const-string v13, "CNetSSLSocketProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CreateConnection(): I/O Exception,Undefined hostHost "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/supl/CNetTLSProviderBase;->Host:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v2, 0x1

    .line 289
    .restart local v2       #conResult:B
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/supl/CNetSSLSocketProvider;->ConnectListener:Lcom/android/server/supl/CNetSSLSocketProvider$ConnectThread;

    .line 290
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/supl/CNetSSLSocketProvider;->ConnectionRespose(B)Z

    goto :goto_2
.end method

.method public CreateConnection(Ljava/lang/String;)I
    .locals 1
    .parameter "Host_port"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->ConnectListener:Lcom/android/server/supl/CNetSSLSocketProvider$ConnectThread;

    if-nez v0, :cond_0

    .line 511
    new-instance v0, Lcom/android/server/supl/CNetSSLSocketProvider$ConnectThread;

    invoke-direct {v0, p0, p1}, Lcom/android/server/supl/CNetSSLSocketProvider$ConnectThread;-><init>(Lcom/android/server/supl/CNetSSLSocketProvider;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->ConnectListener:Lcom/android/server/supl/CNetSSLSocketProvider$ConnectThread;

    .line 512
    iget-object v0, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->ConnectListener:Lcom/android/server/supl/CNetSSLSocketProvider$ConnectThread;

    invoke-virtual {v0}, Lcom/android/server/supl/CNetSSLSocketProvider$ConnectThread;->start()V

    .line 514
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public FreeConnection()V
    .locals 1

    .prologue
    .line 428
    const-string v0, "<FreeConnection>"

    invoke-direct {p0, v0}, Lcom/android/server/supl/CNetSSLSocketProvider;->log(Ljava/lang/String;)V

    .line 435
    invoke-direct {p0}, Lcom/android/server/supl/CNetSSLSocketProvider;->Reset()V

    .line 436
    return-void
.end method

.method public Init()I
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public IsActive()I
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/android/server/supl/CNetTLSProviderBase;->InitialHandshakeComplete:Z

    if-eqz v0, :cond_0

    .line 454
    const/4 v0, 0x1

    .line 456
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Read([BII)I
    .locals 5
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 338
    iget-boolean v2, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->autoReceive:Z

    if-nez v2, :cond_0

    if-ltz p2, :cond_0

    if-gez p3, :cond_2

    .line 339
    :cond_0
    const/4 p3, -0x1

    .line 350
    .end local p3
    :cond_1
    :goto_0
    return p3

    .line 342
    .restart local p3
    :cond_2
    const/4 v1, 0x0

    .line 343
    .local v1, read:I
    :goto_1
    sub-int v2, p3, v1

    if-lez v2, :cond_1

    .line 344
    :try_start_0
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->in:Ljava/io/InputStream;

    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/server/supl/CNetSSLSocketProvider;->Reset()V

    .line 349
    const-string v2, "CNetSSLSocketProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read () I/O Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 p3, -0x2

    goto :goto_0
.end method

.method public Receive()I
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->ReadListener:Lcom/android/server/supl/CNetSSLSocketProvider$ReceiveThread;

    if-nez v0, :cond_0

    .line 497
    new-instance v0, Lcom/android/server/supl/CNetSSLSocketProvider$ReceiveThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/supl/CNetSSLSocketProvider$ReceiveThread;-><init>(Lcom/android/server/supl/CNetSSLSocketProvider;Lcom/android/server/supl/CNetSSLSocketProvider$1;)V

    iput-object v0, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->ReadListener:Lcom/android/server/supl/CNetSSLSocketProvider$ReceiveThread;

    .line 498
    iget-object v0, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->ReadListener:Lcom/android/server/supl/CNetSSLSocketProvider$ReceiveThread;

    invoke-virtual {v0}, Lcom/android/server/supl/CNetSSLSocketProvider$ReceiveThread;->start()V

    .line 500
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ResetConnection()V
    .locals 0

    .prologue
    .line 524
    return-void
.end method

.method public Send([B)I
    .locals 3
    .parameter "data"

    .prologue
    .line 535
    const/4 v0, 0x0

    .line 547
    .local v0, cnt:I
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/supl/CNetSSLSocketProvider;->Write([BII)I

    move-result v1

    return v1
.end method

.method public Write([BII)I
    .locals 5
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    const/4 v1, -0x1

    .line 308
    :try_start_0
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 309
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLSocketProvider;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 312
    const/4 v1, 0x0

    .line 323
    :goto_0
    return v1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/server/supl/CNetSSLSocketProvider;->Reset()V

    .line 316
    const-string v2, "CNetSSLSocketProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Write() I/O Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 319
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 321
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/android/server/supl/CNetSSLSocketProvider;->Reset()V

    .line 322
    const-string v2, "CNetSSLSocketProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Write() NullPointerException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public msleep(I)V
    .locals 2
    .parameter "millisecond"

    .prologue
    .line 561
    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :goto_0
    return-void

    .line 562
    :catch_0
    move-exception v0

    goto :goto_0
.end method
