.class public Lcom/android/server/supl/CNetSocketProvider;
.super Lcom/android/server/supl/CNetTLSProviderBase;
.source "CNetSocketProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/supl/CNetSocketProvider$1;,
        Lcom/android/server/supl/CNetSocketProvider$ConnectThread;,
        Lcom/android/server/supl/CNetSocketProvider$ReceiveThread;
    }
.end annotation


# static fields
.field private static PACKET_LENGTH_SIZE:B = 0x0t

.field private static final SSL_CTIMEOUT:I = 0x2710

.field private static final SSL_HTIMEOUT:I = 0x4e20

.field private static final TAG:Ljava/lang/String; = "CNetSocketProvider"


# instance fields
.field private ConnectListener:Lcom/android/server/supl/CNetSocketProvider$ConnectThread;

.field private ReadListener:Lcom/android/server/supl/CNetSocketProvider$ReceiveThread;

.field private autoReceive:Z

.field private in:Ljava/io/InputStream;

.field private isConnectionActive:Z

.field private nonSecureSocket:Ljava/net/Socket;

.field private out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x2

    sput-byte v0, Lcom/android/server/supl/CNetSocketProvider;->PACKET_LENGTH_SIZE:B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, v1}, Lcom/android/server/supl/CNetTLSProviderBase;-><init>(Ljavax/net/ssl/SSLContext;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/supl/CNetSocketProvider;->autoReceive:Z

    .line 39
    iput-object v1, p0, Lcom/android/server/supl/CNetSocketProvider;->ReadListener:Lcom/android/server/supl/CNetSocketProvider$ReceiveThread;

    .line 40
    iput-object v1, p0, Lcom/android/server/supl/CNetSocketProvider;->ConnectListener:Lcom/android/server/supl/CNetSocketProvider$ConnectThread;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/supl/CNetSocketProvider;->isConnectionActive:Z

    .line 74
    return-void
.end method

.method private ReadMessage()[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 232
    sget-byte v7, Lcom/android/server/supl/CNetSocketProvider;->PACKET_LENGTH_SIZE:B

    new-array v2, v7, [B

    .line 233
    .local v2, firstTwoBytes:[B
    const/4 v3, 0x0

    .line 234
    .local v3, message:[B
    const/4 v4, 0x0

    .line 235
    .local v4, messageSize:I
    const/4 v5, 0x0

    .line 236
    .local v5, read:I
    const/4 v0, 0x0

    .line 238
    .local v0, bytes_read:I
    const-string v7, "CNetSocketProvider"

    const-string v8, "===>>> ReadMessage: Entering \n"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v7, "CNetSocketProvider"

    const-string v8, "===>>> ReadMessage: Blocking on read 1\n"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_0
    sget-byte v7, Lcom/android/server/supl/CNetSocketProvider;->PACKET_LENGTH_SIZE:B

    sub-int/2addr v7, v5

    if-lez v7, :cond_0

    .line 250
    :try_start_0
    iget-object v7, p0, Lcom/android/server/supl/CNetSocketProvider;->in:Ljava/io/InputStream;

    sget-byte v8, Lcom/android/server/supl/CNetSocketProvider;->PACKET_LENGTH_SIZE:B

    sub-int/2addr v8, v5

    invoke-virtual {v7, v2, v5, v8}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    add-int/2addr v5, v7

    goto :goto_0

    .line 252
    :catch_0
    move-exception v1

    .line 254
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "CNetSocketProvider"

    const-string v8, "===>>> ReadMessage: IndexOutOfBoundsException 1 \n"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :goto_1
    return-object v6

    .line 258
    :catch_1
    move-exception v1

    .line 260
    .local v1, e:Ljava/io/IOException;
    const-string v7, "CNetSocketProvider"

    const-string v8, "===>>> ReadMessage: IOException 1 \n"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 265
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    const-string v7, "CNetSocketProvider"

    const-string v8, "===>>> ReadMessage: Outside while 1 \n"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    aget-byte v7, v2, v9

    shl-int/lit8 v7, v7, 0x8

    const v8, 0xff00

    and-int v4, v7, v8

    .line 268
    aget-byte v7, v2, v10

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v4, v7

    .line 269
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ReadMessage (): SLP server message length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/supl/CNetSocketProvider;->log(Ljava/lang/String;)V

    .line 271
    new-array v3, v4, [B

    .line 272
    aget-byte v7, v2, v9

    aput-byte v7, v3, v9

    .line 273
    aget-byte v7, v2, v10

    aput-byte v7, v3, v10

    .line 274
    const/4 v5, 0x0

    .line 275
    const/4 v0, 0x0

    .line 277
    const-string v7, "CNetSocketProvider"

    const-string v8, "===>>> ReadMessage: Blocking on read 2\n"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_2
    sget-byte v7, Lcom/android/server/supl/CNetSocketProvider;->PACKET_LENGTH_SIZE:B

    sub-int v7, v4, v7

    sub-int/2addr v7, v5

    if-lez v7, :cond_1

    .line 287
    :try_start_1
    iget-object v7, p0, Lcom/android/server/supl/CNetSocketProvider;->in:Ljava/io/InputStream;

    sget-byte v8, Lcom/android/server/supl/CNetSocketProvider;->PACKET_LENGTH_SIZE:B

    add-int/2addr v8, v5

    sget-byte v9, Lcom/android/server/supl/CNetSocketProvider;->PACKET_LENGTH_SIZE:B

    sub-int v9, v4, v9

    sub-int/2addr v9, v5

    invoke-virtual {v7, v3, v8, v9}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v7

    add-int/2addr v5, v7

    goto :goto_2

    .line 290
    :catch_2
    move-exception v1

    .line 292
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "CNetSocketProvider"

    const-string v8, "===>>> ReadMessage: IndexOutOfBoundsException 2 \n"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 295
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_3
    move-exception v1

    .line 297
    .local v1, e:Ljava/io/IOException;
    const-string v7, "CNetSocketProvider"

    const-string v8, "===>>> ReadMessage: IOException 2 \n"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 302
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    const-string v6, "CNetSocketProvider"

    const-string v7, "===>>> ReadMessage: Outside while 2 \n"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v3

    .line 304
    goto :goto_1
.end method

.method private ReadProc()V
    .locals 6

    .prologue
    .line 344
    const/4 v2, 0x0

    .line 346
    .local v2, num:I
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ===>>> ReadProc: Entering with isConnectionActive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/supl/CNetSocketProvider;->isConnectionActive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/supl/CNetSocketProvider;->log(Ljava/lang/String;)V

    .line 348
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/supl/CNetSocketProvider;->isConnectionActive:Z

    if-eqz v3, :cond_0

    .line 349
    invoke-direct {p0}, Lcom/android/server/supl/CNetSocketProvider;->ReadMessage()[B

    move-result-object v1

    .line 350
    .local v1, mess:[B
    if-nez v1, :cond_1

    .line 351
    const-string v3, "ReadMessage end of stream!"

    invoke-direct {p0, v3}, Lcom/android/server/supl/CNetSocketProvider;->log(Ljava/lang/String;)V

    .line 352
    invoke-direct {p0}, Lcom/android/server/supl/CNetSocketProvider;->Reset()V

    .line 368
    .end local v1           #mess:[B
    :cond_0
    :goto_1
    return-void

    .line 356
    .restart local v1       #mess:[B
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/supl/CNetSocketProvider;->PostSLPMessageToQueue([B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 360
    .end local v1           #mess:[B
    :catch_0
    move-exception v0

    .line 361
    .local v0, e:Ljava/io/IOException;
    const-string v3, "CNetSocketProvider"

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

    .line 362
    invoke-direct {p0}, Lcom/android/server/supl/CNetSocketProvider;->Reset()V

    goto :goto_1

    .line 364
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 365
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "CNetSocketProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReadProc(): ArrayIndexOutOfBoundsException, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-direct {p0}, Lcom/android/server/supl/CNetSocketProvider;->Reset()V

    goto :goto_1
.end method

.method private Reset()V
    .locals 4

    .prologue
    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/android/server/supl/CNetSocketProvider;->nonSecureSocket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/server/supl/CNetSocketProvider;->nonSecureSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/android/server/supl/CNetSocketProvider;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/android/server/supl/CNetSocketProvider;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/android/server/supl/CNetSocketProvider;->out:Ljava/io/OutputStream;

    if-eqz v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/android/server/supl/CNetSocketProvider;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 91
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/supl/CNetSocketProvider;->isConnectionActive:Z

    .line 92
    const-string v1, "Successfully resetting connection"

    invoke-direct {p0, v1}, Lcom/android/server/supl/CNetSocketProvider;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/supl/CNetSocketProvider;->ReadListener:Lcom/android/server/supl/CNetSocketProvider$ReceiveThread;

    if-eqz v1, :cond_4

    .line 100
    iget-object v1, p0, Lcom/android/server/supl/CNetSocketProvider;->ReadListener:Lcom/android/server/supl/CNetSocketProvider$ReceiveThread;

    invoke-virtual {v1}, Lcom/android/server/supl/CNetSocketProvider$ReceiveThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    iget-object v1, p0, Lcom/android/server/supl/CNetSocketProvider;->ReadListener:Lcom/android/server/supl/CNetSocketProvider$ReceiveThread;

    invoke-virtual {v1}, Lcom/android/server/supl/CNetSocketProvider$ReceiveThread;->interrupt()V

    .line 103
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/supl/CNetSocketProvider;->ReadListener:Lcom/android/server/supl/CNetSocketProvider$ReceiveThread;

    .line 106
    :cond_4
    iget-object v1, p0, Lcom/android/server/supl/CNetSocketProvider;->ConnectListener:Lcom/android/server/supl/CNetSocketProvider$ConnectThread;

    if-eqz v1, :cond_6

    .line 107
    iget-object v1, p0, Lcom/android/server/supl/CNetSocketProvider;->ConnectListener:Lcom/android/server/supl/CNetSocketProvider$ConnectThread;

    invoke-virtual {v1}, Lcom/android/server/supl/CNetSocketProvider$ConnectThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 108
    iget-object v1, p0, Lcom/android/server/supl/CNetSocketProvider;->ConnectListener:Lcom/android/server/supl/CNetSocketProvider$ConnectThread;

    invoke-virtual {v1}, Lcom/android/server/supl/CNetSocketProvider$ConnectThread;->interrupt()V

    .line 110
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/supl/CNetSocketProvider;->ConnectListener:Lcom/android/server/supl/CNetSocketProvider$ConnectThread;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    :cond_6
    :goto_1
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/io/IOException;
    const-string v1, "CNetSocketProvider"

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

    goto :goto_0

    .line 113
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "CNetSocketProvider"

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

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/supl/CNetSocketProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/server/supl/CNetSocketProvider;->ReadProc()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 418
    const-string v0, "CNetSocketProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void
.end method


# virtual methods
.method public ConnectProc(Ljava/lang/String;)I
    .locals 9
    .parameter "Host_port"

    .prologue
    const/4 v8, 0x0

    const/4 v3, -0x1

    .line 127
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/supl/CNetTLSProviderBase;->CreateConnection(Ljava/lang/String;)I

    .line 128
    const-string v4, "CNetSocketProvider :: CreateConnection :: Entering"

    invoke-direct {p0, v4}, Lcom/android/server/supl/CNetSocketProvider;->log(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v2

    .line 131
    .local v2, sf:Ljavax/net/SocketFactory;
    invoke-virtual {v2}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/supl/CNetSocketProvider;->nonSecureSocket:Ljava/net/Socket;

    .line 132
    iget-object v4, p0, Lcom/android/server/supl/CNetSocketProvider;->nonSecureSocket:Ljava/net/Socket;

    new-instance v5, Ljava/net/InetSocketAddress;

    iget-object v6, p0, Lcom/android/server/supl/CNetTLSProviderBase;->Host:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/supl/CNetTLSProviderBase;->Port:I

    invoke-direct {v5, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v6, 0x2710

    invoke-virtual {v4, v5, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 135
    iget-object v4, p0, Lcom/android/server/supl/CNetSocketProvider;->nonSecureSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/supl/CNetSocketProvider;->in:Ljava/io/InputStream;

    .line 136
    iget-object v4, p0, Lcom/android/server/supl/CNetSocketProvider;->nonSecureSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/supl/CNetSocketProvider;->out:Ljava/io/OutputStream;

    .line 138
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/supl/CNetSocketProvider;->isConnectionActive:Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, conResult:B
    const-string v3, "CNetSocketProvider"

    const-string v4, "**CONNECTION SUCCESSFUL**"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0, v0}, Lcom/android/server/supl/CNetSocketProvider;->ConnectionRespose(B)Z

    .line 160
    invoke-virtual {p0}, Lcom/android/server/supl/CNetSocketProvider;->Receive()I

    .line 161
    const-string v3, "CNetSocketProvider :: CreateConnection :: Exiting Successfully. "

    invoke-direct {p0, v3}, Lcom/android/server/supl/CNetSocketProvider;->log(Ljava/lang/String;)V

    .line 162
    const/4 v3, 0x0

    .end local v2           #sf:Ljavax/net/SocketFactory;
    :goto_0
    return v3

    .line 140
    .end local v0           #conResult:B
    :catch_0
    move-exception v1

    .line 141
    .local v1, e:Ljava/net/UnknownHostException;
    invoke-direct {p0}, Lcom/android/server/supl/CNetSocketProvider;->Reset()V

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CreateConnection(): Unknown host exception, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/supl/CNetSocketProvider;->log(Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x1

    .line 144
    .restart local v0       #conResult:B
    iput-object v8, p0, Lcom/android/server/supl/CNetSocketProvider;->ConnectListener:Lcom/android/server/supl/CNetSocketProvider$ConnectThread;

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/server/supl/CNetSocketProvider;->ConnectionRespose(B)Z

    goto :goto_0

    .line 148
    .end local v0           #conResult:B
    .end local v1           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v1

    .line 149
    .local v1, e:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/server/supl/CNetSocketProvider;->Reset()V

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CreateConnection(): I/O Exception, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/supl/CNetSocketProvider;->log(Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x1

    .line 152
    .restart local v0       #conResult:B
    iput-object v8, p0, Lcom/android/server/supl/CNetSocketProvider;->ConnectListener:Lcom/android/server/supl/CNetSocketProvider$ConnectThread;

    .line 153
    invoke-virtual {p0, v0}, Lcom/android/server/supl/CNetSocketProvider;->ConnectionRespose(B)Z

    goto :goto_0
.end method

.method public CreateConnection(Ljava/lang/String;)I
    .locals 1
    .parameter "Host_port"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/server/supl/CNetSocketProvider;->ConnectListener:Lcom/android/server/supl/CNetSocketProvider$ConnectThread;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lcom/android/server/supl/CNetSocketProvider$ConnectThread;

    invoke-direct {v0, p0, p1}, Lcom/android/server/supl/CNetSocketProvider$ConnectThread;-><init>(Lcom/android/server/supl/CNetSocketProvider;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/supl/CNetSocketProvider;->ConnectListener:Lcom/android/server/supl/CNetSocketProvider$ConnectThread;

    .line 391
    iget-object v0, p0, Lcom/android/server/supl/CNetSocketProvider;->ConnectListener:Lcom/android/server/supl/CNetSocketProvider$ConnectThread;

    invoke-virtual {v0}, Lcom/android/server/supl/CNetSocketProvider$ConnectThread;->start()V

    .line 393
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public FreeConnection()V
    .locals 1

    .prologue
    .line 312
    const-string v0, "[GPS_NET] <FreeConnection>"

    invoke-direct {p0, v0}, Lcom/android/server/supl/CNetSocketProvider;->log(Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Lcom/android/server/supl/CNetSocketProvider;->Reset()V

    .line 316
    return-void
.end method

.method public Init()I
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public IsActive()I
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/android/server/supl/CNetSocketProvider;->isConnectionActive:Z

    if-eqz v0, :cond_0

    .line 334
    const/4 v0, 0x1

    .line 336
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
    .line 207
    const-string v2, "CNetSocketProvider :: Read to Socket"

    invoke-direct {p0, v2}, Lcom/android/server/supl/CNetSocketProvider;->log(Ljava/lang/String;)V

    .line 209
    iget-boolean v2, p0, Lcom/android/server/supl/CNetSocketProvider;->autoReceive:Z

    if-nez v2, :cond_0

    if-ltz p2, :cond_0

    if-gez p3, :cond_2

    .line 210
    :cond_0
    const/4 p3, -0x1

    .line 221
    .end local p3
    :cond_1
    :goto_0
    return p3

    .line 213
    .restart local p3
    :cond_2
    const/4 v1, 0x0

    .line 214
    .local v1, read:I
    :goto_1
    sub-int v2, p3, v1

    if-lez v2, :cond_1

    .line 215
    :try_start_0
    iget-object v2, p0, Lcom/android/server/supl/CNetSocketProvider;->in:Ljava/io/InputStream;

    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/server/supl/CNetSocketProvider;->Reset()V

    .line 220
    const-string v2, "CNetSocketProvider"

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

    .line 221
    const/4 p3, -0x2

    goto :goto_0
.end method

.method public Receive()I
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/server/supl/CNetSocketProvider;->ReadListener:Lcom/android/server/supl/CNetSocketProvider$ReceiveThread;

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Lcom/android/server/supl/CNetSocketProvider$ReceiveThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/supl/CNetSocketProvider$ReceiveThread;-><init>(Lcom/android/server/supl/CNetSocketProvider;Lcom/android/server/supl/CNetSocketProvider$1;)V

    iput-object v0, p0, Lcom/android/server/supl/CNetSocketProvider;->ReadListener:Lcom/android/server/supl/CNetSocketProvider$ReceiveThread;

    .line 378
    iget-object v0, p0, Lcom/android/server/supl/CNetSocketProvider;->ReadListener:Lcom/android/server/supl/CNetSocketProvider$ReceiveThread;

    invoke-virtual {v0}, Lcom/android/server/supl/CNetSocketProvider$ReceiveThread;->start()V

    .line 380
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ResetConnection()V
    .locals 0

    .prologue
    .line 401
    return-void
.end method

.method public Send([B)I
    .locals 2
    .parameter "data"

    .prologue
    .line 411
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/supl/CNetSocketProvider;->Write([BII)I

    move-result v0

    return v0
.end method

.method public Write([BII)I
    .locals 5
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    const/4 v1, -0x1

    .line 174
    const-string v2, "CNetSocketProvider :: Write to Socket"

    invoke-direct {p0, v2}, Lcom/android/server/supl/CNetSocketProvider;->log(Ljava/lang/String;)V

    .line 177
    :try_start_0
    iget-object v2, p0, Lcom/android/server/supl/CNetSocketProvider;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 178
    iget-object v2, p0, Lcom/android/server/supl/CNetSocketProvider;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 180
    const-string v2, "CNetSocketProvider"

    const-string v3, " ===>>> Write: Exiting Successfully \n"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 181
    const/4 v1, 0x0

    .line 192
    :goto_0
    return v1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/io/IOException;
    const-string v2, "CNetSocketProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERR: Write() I/O Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {p0}, Lcom/android/server/supl/CNetSocketProvider;->Reset()V

    goto :goto_0

    .line 188
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/android/server/supl/CNetSocketProvider;->Reset()V

    .line 191
    const-string v2, "CNetSocketProvider"

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
