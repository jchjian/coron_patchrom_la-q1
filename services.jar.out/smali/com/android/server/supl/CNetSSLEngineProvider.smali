.class public Lcom/android/server/supl/CNetSSLEngineProvider;
.super Lcom/android/server/supl/CNetTLSProviderBase;
.source "CNetSSLEngineProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/supl/CNetSSLEngineProvider$1;,
        Lcom/android/server/supl/CNetSSLEngineProvider$ReceiveThread;,
        Lcom/android/server/supl/CNetSSLEngineProvider$ReHanshakeThread;
    }
.end annotation


# static fields
.field private static resultOnce:Z


# instance fields
.field private FromServAppData:Ljava/nio/ByteBuffer;

.field private FromServNetData:Ljava/nio/ByteBuffer;

.field private ReHandshakeResult:I

.field private ReHandshakeSynch:Ljava/lang/Object;

.field private ReadListener:Lcom/android/server/supl/CNetSSLEngineProvider$ReceiveThread;

.field private ToServAppData:Ljava/nio/ByteBuffer;

.field private ToServNetData:Ljava/nio/ByteBuffer;

.field private channel:Ljava/nio/channels/SocketChannel;

.field private engine:Ljavax/net/ssl/SSLEngine;

.field private readMessage:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/supl/CNetSSLEngineProvider;->resultOnce:Z

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 2
    .parameter "Context"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/supl/CNetTLSProviderBase;-><init>(Ljavax/net/ssl/SSLContext;)V

    .line 19
    iput-object v1, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    .line 20
    iput-object v1, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->readMessage:Ljava/nio/ByteBuffer;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReHandshakeSynch:Ljava/lang/Object;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReHandshakeResult:I

    .line 30
    iput-object v1, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReadListener:Lcom/android/server/supl/CNetSSLEngineProvider$ReceiveThread;

    .line 48
    return-void
.end method

.method private ReHandshake()V
    .locals 5

    .prologue
    .line 515
    iget-object v3, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReHandshakeSynch:Ljava/lang/Object;

    monitor-enter v3

    .line 517
    const/4 v1, 0x0

    .line 518
    .local v1, reHnd:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 519
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->readMessage:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 520
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 522
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 523
    :cond_0
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 524
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-gez v2, :cond_0

    .line 525
    new-instance v2, Ljava/io/IOException;

    const-string v4, "channel has reached end-of-stream."

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, e:Ljavax/net/ssl/SSLException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSL engine error ReHadshake:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 535
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReHandshakeSynch:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 536
    const/16 v2, -0xa

    iput v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReHandshakeResult:I

    .line 537
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    .end local v0           #e:Ljavax/net/ssl/SSLException;
    :goto_0
    return-void

    .line 529
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 530
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/supl/CNetSSLEngineProvider;->doHandshake(Z)I

    move-result v2

    iput v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReHandshakeResult:I

    .line 531
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReHandshakeSynch:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 545
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 539
    :catch_1
    move-exception v0

    .line 540
    .local v0, e:Ljava/io/IOException;
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I/0 Error ReHadshake:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 541
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReHandshakeSynch:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 542
    const/16 v2, -0xb

    iput v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReHandshakeResult:I

    .line 543
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized Read()Ljava/nio/ByteBuffer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 309
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lcom/android/server/supl/CNetTLSProviderBase;->InitialHandshakeComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    .line 381
    :goto_0
    monitor-exit p0

    return-object v5

    .line 313
    :cond_0
    const/4 v4, 0x0

    .line 315
    .local v4, res:Ljavax/net/ssl/SSLEngineResult;
    const/4 v3, 0x0

    .line 316
    .local v3, numRead:I
    const/4 v2, 0x0

    .line 318
    .local v2, exit:Z
    :cond_1
    :goto_1
    if-nez v2, :cond_6

    .line 319
    :try_start_1
    iget-object v5, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v6, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 320
    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    .line 321
    new-instance v5, Ljava/io/IOException;

    const-string v6, "channel has reached end-of-stream."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    .end local v2           #exit:Z
    .end local v3           #numRead:I
    .end local v4           #res:Ljavax/net/ssl/SSLEngineResult;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 324
    .restart local v2       #exit:Z
    .restart local v3       #numRead:I
    .restart local v4       #res:Ljavax/net/ssl/SSLEngineResult;
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 325
    iget-object v5, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v6, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6, v7}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v4

    .line 327
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v5

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v5, v6, :cond_4

    .line 328
    sget-object v5, Lcom/android/server/supl/CNetSSLEngineProvider$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 331
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-nez v5, :cond_3

    .line 332
    iget-object v5, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 333
    iget-object v5, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v6, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 334
    if-nez v3, :cond_1

    .line 335
    const/4 v2, 0x1

    goto :goto_1

    .line 339
    :cond_3
    iget-object v5, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 343
    :pswitch_1
    iget-object v5, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 344
    iget-object v5, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->readMessage:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 345
    iget-object v5, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 346
    iget-object v5, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 347
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/supl/CNetSSLEngineProvider;->resize_FromServAppData_Buffer(Z)V

    goto :goto_1

    .line 350
    :pswitch_2
    new-instance v5, Ljavax/net/ssl/SSLException;

    const-string v6, "SSL engine was closed."

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 356
    :cond_4
    iget-object v6, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReHandshakeSynch:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 357
    :try_start_3
    new-instance v0, Lcom/android/server/supl/CNetSSLEngineProvider$ReHanshakeThread;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/android/server/supl/CNetSSLEngineProvider$ReHanshakeThread;-><init>(Lcom/android/server/supl/CNetSSLEngineProvider;Lcom/android/server/supl/CNetSSLEngineProvider$1;)V

    .line 358
    .local v0, RH:Lcom/android/server/supl/CNetSSLEngineProvider$ReHanshakeThread;
    invoke-virtual {v0}, Lcom/android/server/supl/CNetSSLEngineProvider$ReHanshakeThread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 360
    :try_start_4
    iget-object v5, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReHandshakeSynch:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 366
    :try_start_5
    iget v5, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReHandshakeResult:I

    if-gez v5, :cond_5

    .line 367
    new-instance v1, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ReHandshake filed:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReHandshakeResult:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 369
    .local v1, e:Ljava/io/IOException;
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReHandshakeResult:I

    .line 370
    throw v1

    .line 372
    .end local v0           #RH:Lcom/android/server/supl/CNetSSLEngineProvider$ReHanshakeThread;
    .end local v1           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 362
    .restart local v0       #RH:Lcom/android/server/supl/CNetSSLEngineProvider$ReHanshakeThread;
    :catch_0
    move-exception v1

    .line 363
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_7
    new-instance v5, Ljava/io/IOException;

    const-string v7, "ReHandshake interrupted."

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 372
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_5
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    .line 376
    .end local v0           #RH:Lcom/android/server/supl/CNetSSLEngineProvider$ReHanshakeThread;
    :cond_6
    :try_start_8
    iget-object v5, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 377
    iget-object v5, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->readMessage:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 378
    iget-object v5, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 379
    iget-object v5, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 381
    iget-object v5, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->readMessage:Ljava/nio/ByteBuffer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private ReadProc()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 386
    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v8

    .line 387
    .local v8, selector:Ljava/nio/channels/Selector;
    iget-object v9, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    const/4 v10, 0x1

    invoke-virtual {v9, v8, v10}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    .line 389
    .local v3, keylisten:Ljava/nio/channels/SelectionKey;
    const/4 v7, 0x0

    .line 391
    .local v7, num:I
    :cond_0
    :goto_0
    iget-boolean v9, p0, Lcom/android/server/supl/CNetTLSProviderBase;->InitialHandshakeComplete:Z

    if-eqz v9, :cond_2

    .line 392
    const-string v9, "Select!"

    invoke-direct {p0, v9}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 393
    :cond_1
    invoke-virtual {v8}, Ljava/nio/channels/Selector;->select()I

    move-result v7

    if-eqz v7, :cond_1

    .line 394
    invoke-virtual {v8}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v4

    .line 395
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 396
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    const-string v9, "Ready for reading!"

    invoke-direct {p0, v9}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 397
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 398
    const/16 v9, 0x2800

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->readMessage:Ljava/nio/ByteBuffer;

    .line 399
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 400
    .local v2, key:Ljava/nio/channels/SelectionKey;
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v9

    and-int/lit8 v9, v9, 0x1

    if-ne v9, v12, :cond_3

    .line 402
    invoke-direct {p0}, Lcom/android/server/supl/CNetSSLEngineProvider;->Read()Ljava/nio/ByteBuffer;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 406
    iget-object v9, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->readMessage:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    new-array v5, v9, [B

    .line 407
    .local v5, mess:[B
    iget-object v9, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->readMessage:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 408
    iget-object v9, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->readMessage:Ljava/nio/ByteBuffer;

    const/4 v10, 0x0

    array-length v11, v5

    invoke-virtual {v9, v5, v10, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 409
    const/4 v9, 0x0

    aget-byte v9, v5, v9

    shl-int/lit8 v9, v9, 0x8

    const/4 v10, 0x1

    aget-byte v10, v5, v10

    or-int v6, v9, v10

    .line 410
    .local v6, messageSize:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Try PostSLPMessageToQueue length:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/length:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0, v5}, Lcom/android/server/supl/CNetSSLEngineProvider;->PostSLPMessageToQueue([B)Z

    .line 413
    invoke-virtual {p0, v5}, Lcom/android/server/supl/CNetSSLEngineProvider;->DumpMessage([B)Z

    .line 414
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->readMessage:Ljava/nio/ByteBuffer;

    .line 422
    .end local v5           #mess:[B
    .end local v6           #messageSize:I
    :goto_1
    invoke-interface {v4}, Ljava/util/Set;->clear()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 431
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v2           #key:Ljava/nio/channels/SelectionKey;
    .end local v3           #keylisten:Ljava/nio/channels/SelectionKey;
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .end local v7           #num:I
    .end local v8           #selector:Ljava/nio/channels/Selector;
    :catch_0
    move-exception v0

    .line 432
    .local v0, e:Ljavax/net/ssl/SSLException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ReadProc(): SSL engine exception, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 433
    invoke-direct {p0}, Lcom/android/server/supl/CNetSSLEngineProvider;->Reset()V

    .line 446
    .end local v0           #e:Ljavax/net/ssl/SSLException;
    :cond_2
    :goto_2
    return-void

    .line 420
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .restart local v2       #key:Ljava/nio/channels/SelectionKey;
    .restart local v3       #keylisten:Ljava/nio/channels/SelectionKey;
    .restart local v4       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .restart local v7       #num:I
    .restart local v8       #selector:Ljava/nio/channels/Selector;
    :cond_3
    :try_start_1
    const-string v9, "Select error"

    invoke-direct {p0, v9}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 436
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v2           #key:Ljava/nio/channels/SelectionKey;
    .end local v3           #keylisten:Ljava/nio/channels/SelectionKey;
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .end local v7           #num:I
    .end local v8           #selector:Ljava/nio/channels/Selector;
    :catch_1
    move-exception v0

    .line 437
    .local v0, e:Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ReadProc(): I/O Exception, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 438
    invoke-direct {p0}, Lcom/android/server/supl/CNetSSLEngineProvider;->Reset()V

    goto :goto_2

    .line 426
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .restart local v3       #keylisten:Ljava/nio/channels/SelectionKey;
    .restart local v4       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .restart local v7       #num:I
    .restart local v8       #selector:Ljava/nio/channels/Selector;
    :cond_4
    :try_start_2
    const-string v9, "Selector error: keys.iterator()"

    invoke-direct {p0, v9}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 441
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v3           #keylisten:Ljava/nio/channels/SelectionKey;
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .end local v7           #num:I
    .end local v8           #selector:Ljava/nio/channels/Selector;
    :catch_2
    move-exception v0

    .line 442
    .local v0, e:Ljava/nio/channels/ClosedSelectorException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ReadProc(): selector was closed,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/nio/channels/ClosedSelectorException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 443
    invoke-direct {p0}, Lcom/android/server/supl/CNetSSLEngineProvider;->Reset()V

    goto :goto_2
.end method

.method private Reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 479
    iput-boolean v4, p0, Lcom/android/server/supl/CNetTLSProviderBase;->InitialHandshakeComplete:Z

    .line 481
    :try_start_0
    iget-object v1, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    if-eqz v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 483
    iget-object v1, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V

    .line 484
    const-string v1, "channel != null: socket.close()!"

    invoke-direct {p0, v1}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client socket is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReadListener:Lcom/android/server/supl/CNetSSLEngineProvider$ReceiveThread;

    if-eqz v1, :cond_2

    .line 494
    iget-object v1, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReadListener:Lcom/android/server/supl/CNetSSLEngineProvider$ReceiveThread;

    invoke-virtual {v1}, Lcom/android/server/supl/CNetSSLEngineProvider$ReceiveThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    iget-object v1, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReadListener:Lcom/android/server/supl/CNetSSLEngineProvider$ReceiveThread;

    invoke-virtual {v1}, Lcom/android/server/supl/CNetSSLEngineProvider$ReceiveThread;->interrupt()V

    .line 497
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReadListener:Lcom/android/server/supl/CNetSSLEngineProvider$ReceiveThread;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 504
    :cond_2
    :goto_1
    iput-object v3, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    .line 505
    iput-object v3, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    .line 506
    iput-object v3, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->readMessage:Ljava/nio/ByteBuffer;

    .line 507
    iput-object v3, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    .line 508
    iput-object v3, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    .line 509
    iput-object v3, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    .line 510
    iput-object v3, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    .line 511
    iput v4, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReHandshakeResult:I

    .line 512
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset() I/O Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 500
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 501
    .local v0, e:Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t interrupt the listener task:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized Write([B)I
    .locals 10
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    iget-boolean v7, p0, Lcom/android/server/supl/CNetTLSProviderBase;->InitialHandshakeComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    .line 223
    const/4 v7, -0x1

    .line 304
    :goto_0
    monitor-exit p0

    return v7

    .line 226
    :cond_0
    const/4 v3, 0x0

    .line 227
    .local v3, numWrite:I
    const/4 v2, 0x0

    .line 228
    .local v2, exit:Z
    :try_start_1
    array-length v5, p1

    .line 229
    .local v5, remain:I
    const/4 v4, 0x0

    .line 230
    .local v4, off:I
    const/4 v6, 0x0

    .line 232
    .local v6, res:Ljavax/net/ssl/SSLEngineResult;
    :goto_1
    if-lez v5, :cond_8

    .line 233
    iget-object v7, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-le v5, v7, :cond_2

    .line 234
    iget-object v7, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-virtual {v7, p1, v4, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 235
    iget-object v7, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    add-int/2addr v4, v7

    .line 236
    array-length v7, p1

    sub-int v5, v7, v4

    .line 244
    :goto_2
    iget-object v7, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 245
    iget-object v7, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v8, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    iget-object v9, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v8, v9}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v6

    .line 247
    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v7

    sget-object v8, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v7, v8, :cond_6

    .line 248
    sget-object v7, Lcom/android/server/supl/CNetSSLEngineProvider$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 251
    :pswitch_0
    iget-object v7, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 252
    :cond_1
    iget-object v7, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 253
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "write(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 254
    iget-object v7, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v8, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v8}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v7

    if-gez v7, :cond_1

    .line 255
    new-instance v7, Ljava/io/IOException;

    const-string v8, "channel has reached end-of-stream."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    .end local v2           #exit:Z
    .end local v3           #numWrite:I
    .end local v4           #off:I
    .end local v5           #remain:I
    .end local v6           #res:Ljavax/net/ssl/SSLEngineResult;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 239
    .restart local v2       #exit:Z
    .restart local v3       #numWrite:I
    .restart local v4       #off:I
    .restart local v5       #remain:I
    .restart local v6       #res:Ljavax/net/ssl/SSLEngineResult;
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, p1, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 240
    add-int/2addr v4, v5

    .line 241
    const/4 v5, 0x0

    goto :goto_2

    .line 261
    :cond_3
    iget-object v7, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 262
    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v7

    sget-object v8, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v7, v8, :cond_4

    .line 264
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/server/supl/CNetSSLEngineProvider;->resize_ToServNetData_Buffer(Z)V

    .line 266
    :cond_4
    iget-object v7, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 269
    :pswitch_1
    if-nez v5, :cond_5

    iget-object v7, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-eqz v7, :cond_5

    .line 270
    new-instance v7, Ljavax/net/ssl/SSLException;

    const-string v8, "Write error: underflow at the wrap operation."

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 273
    :cond_5
    iget-object v7, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 277
    :pswitch_2
    new-instance v7, Ljavax/net/ssl/SSLException;

    const-string v8, "Write engine was closed."

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 282
    :cond_6
    iget-object v8, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReHandshakeSynch:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    :try_start_3
    new-instance v0, Lcom/android/server/supl/CNetSSLEngineProvider$ReHanshakeThread;

    const/4 v7, 0x0

    invoke-direct {v0, p0, v7}, Lcom/android/server/supl/CNetSSLEngineProvider$ReHanshakeThread;-><init>(Lcom/android/server/supl/CNetSSLEngineProvider;Lcom/android/server/supl/CNetSSLEngineProvider$1;)V

    .line 284
    .local v0, RH:Lcom/android/server/supl/CNetSSLEngineProvider$ReHanshakeThread;
    invoke-virtual {v0}, Lcom/android/server/supl/CNetSSLEngineProvider$ReHanshakeThread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 286
    :try_start_4
    iget-object v7, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReHandshakeSynch:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 292
    :try_start_5
    iget v7, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReHandshakeResult:I

    if-gez v7, :cond_7

    .line 293
    new-instance v1, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ReHandshake filed:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReHandshakeResult:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 295
    .local v1, e:Ljava/io/IOException;
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReHandshakeResult:I

    .line 296
    throw v1

    .line 298
    .end local v0           #RH:Lcom/android/server/supl/CNetSSLEngineProvider$ReHanshakeThread;
    .end local v1           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 288
    .restart local v0       #RH:Lcom/android/server/supl/CNetSSLEngineProvider$ReHanshakeThread;
    :catch_0
    move-exception v1

    .line 289
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_7
    new-instance v7, Ljava/io/IOException;

    const-string v9, "ReHandshake interrupted."

    invoke-direct {v7, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 298
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    .line 302
    .end local v0           #RH:Lcom/android/server/supl/CNetSSLEngineProvider$ReHanshakeThread;
    :cond_8
    :try_start_8
    iget-object v7, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 303
    iget-object v7, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 304
    array-length v7, p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/server/supl/CNetSSLEngineProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/server/supl/CNetSSLEngineProvider;->ReHandshake()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/supl/CNetSSLEngineProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/server/supl/CNetSSLEngineProvider;->ReadProc()V

    return-void
.end method

.method private createBuffers()V
    .locals 3

    .prologue
    .line 705
    const/16 v0, 0x64

    .line 706
    .local v0, pad:I
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 707
    .local v1, session:Ljavax/net/ssl/SSLSession;
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    .line 709
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    .line 711
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    .line 713
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    .line 715
    return-void
.end method

.method private doHandshake(Z)I
    .locals 13
    .parameter "initial"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 549
    iget-object v11, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v11}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v11

    invoke-interface {v11}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v11

    add-int/lit8 v2, v11, 0x64

    .line 552
    .local v2, appBufferSize:I
    const/4 v4, 0x0

    .line 553
    .local v4, bug_exitWithNOT_HANDSHAKING:Z
    const/4 v11, 0x1

    if-ne p1, v11, :cond_0

    .line 554
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 555
    .local v1, HToServAppData:Ljava/nio/ByteBuffer;
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 561
    .local v0, HFromServAppData:Ljava/nio/ByteBuffer;
    :goto_0
    iget-object v11, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v11}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 563
    iget-object v11, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v11}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    .line 564
    .local v6, hs:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    const/4 v8, 0x0

    .line 565
    .local v8, res:Ljavax/net/ssl/SSLEngineResult;
    const/4 v11, 0x1

    if-ne p1, v11, :cond_1

    .line 566
    const-string v11, "**INITIAL HANDSHAKE BEGIN**  "

    invoke-direct {p0, v11}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 571
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Start handshake status ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 573
    :goto_2
    sget-object v11, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v6, v11, :cond_b

    if-nez v4, :cond_b

    .line 574
    sget-object v11, Lcom/android/server/supl/CNetSSLEngineProvider$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    goto :goto_2

    .line 576
    :pswitch_0
    const/4 v7, 0x0

    .line 577
    .local v7, r:I
    iget-object v11, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v12, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v12}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v7

    if-gez v7, :cond_2

    .line 578
    new-instance v11, Ljava/io/IOException;

    const-string v12, "channel has reached end-of-stream."

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 557
    .end local v0           #HFromServAppData:Ljava/nio/ByteBuffer;
    .end local v1           #HToServAppData:Ljava/nio/ByteBuffer;
    .end local v6           #hs:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v7           #r:I
    .end local v8           #res:Ljavax/net/ssl/SSLEngineResult;
    :cond_0
    iget-object v1, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    .line 558
    .restart local v1       #HToServAppData:Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    .restart local v0       #HFromServAppData:Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 568
    .restart local v6       #hs:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v8       #res:Ljavax/net/ssl/SSLEngineResult;
    :cond_1
    const-string v11, "**ReHANDSHAKE BEGIN**  "

    invoke-direct {p0, v11}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 581
    .restart local v7       #r:I
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NEED_UNWRAP: was read "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "bytes"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 582
    iget-object v11, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 583
    iget-object v11, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v12, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v12, v0}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v8

    .line 584
    const-string v11, "after unwrap:"

    invoke-direct {p0, v11, v8}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;Ljavax/net/ssl/SSLEngineResult;)V

    .line 585
    sget-object v11, Lcom/android/server/supl/CNetSSLEngineProvider$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v12

    invoke-virtual {v12}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_1

    .line 628
    :cond_3
    :goto_3
    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    .line 629
    goto :goto_2

    .line 587
    :pswitch_1
    iget-object v11, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 591
    :pswitch_2
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/server/supl/CNetSSLEngineProvider;->resize_FromServNetData_Buffer(Z)V

    .line 592
    iget-object v11, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 593
    iget-object v11, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-nez v11, :cond_3

    .line 595
    new-instance v11, Ljavax/net/ssl/SSLException;

    const-string v12, "SSL error: underflow at the unwrapoperation at the handshake state!"

    invoke-direct {v11, v12}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 601
    :pswitch_3
    if-nez p1, :cond_5

    .line 602
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 603
    iget-object v11, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->readMessage:Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 604
    iget-object v11, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v11}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v11

    invoke-interface {v11}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v3

    .line 606
    .local v3, appSize:I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v11

    if-le v3, v11, :cond_4

    .line 607
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    .line 609
    iget-object v0, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    .line 614
    :goto_4
    iget-object v11, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 612
    :cond_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_4

    .line 618
    .end local v3           #appSize:I
    :cond_5
    new-instance v11, Ljavax/net/ssl/SSLException;

    const-string v12, "SSL initial handshake undefined error."

    invoke-direct {v11, v12}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 624
    :pswitch_4
    new-instance v11, Ljavax/net/ssl/SSLException;

    const-string v12, "SSL engine was closed at the handshake state(unwrap)."

    invoke-direct {v11, v12}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 632
    .end local v7           #r:I
    :pswitch_5
    iget-object v11, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v12, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v1, v12}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v8

    .line 633
    const-string v11, "after wrap:"

    invoke-direct {p0, v11, v8}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;Ljavax/net/ssl/SSLEngineResult;)V

    .line 634
    sget-object v11, Lcom/android/server/supl/CNetSSLEngineProvider$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v12

    invoke-virtual {v12}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_2

    .line 660
    :cond_6
    :goto_5
    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    .line 661
    goto/16 :goto_2

    .line 637
    :pswitch_6
    iget-object v11, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 638
    :cond_7
    iget-object v11, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 639
    iget-object v11, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v12, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v12}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v11

    if-gez v11, :cond_7

    .line 640
    new-instance v11, Ljava/io/IOException;

    const-string v12, "channel has reached end-of-stream."

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 643
    :cond_8
    iget-object v11, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 644
    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v11

    sget-object v12, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v11, v12, :cond_6

    .line 646
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/server/supl/CNetSSLEngineProvider;->resize_ToServNetData_Buffer(Z)V

    goto :goto_5

    .line 651
    :pswitch_7
    new-instance v11, Ljavax/net/ssl/SSLException;

    const-string v12, "SSL error: underflow at the wrap operationat the handshake state!"

    invoke-direct {v11, v12}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 656
    :pswitch_8
    new-instance v11, Ljavax/net/ssl/SSLException;

    const-string v12, "SSL engine was closed at the handshakestate (wrap)."

    invoke-direct {v11, v12}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 664
    :goto_6
    :pswitch_9
    iget-object v11, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v11}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v10

    .local v10, task:Ljava/lang/Runnable;
    if-eqz v10, :cond_9

    .line 665
    new-instance v9, Ljava/lang/Thread;

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 666
    .local v9, t:Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 668
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 670
    :catch_0
    move-exception v5

    .line 671
    .local v5, e:Ljava/lang/InterruptedException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error join handshake thread:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 674
    .end local v5           #e:Ljava/lang/InterruptedException;
    .end local v9           #t:Ljava/lang/Thread;
    :cond_9
    const-string v11, "Handshake in-between task is complete."

    invoke-direct {p0, v11}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 675
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 676
    goto/16 :goto_2

    .line 678
    .end local v10           #task:Ljava/lang/Runnable;
    :pswitch_a
    const/4 v11, 0x1

    if-ne p1, v11, :cond_a

    .line 679
    const-string v11, "Handshake NOT_HANDSHAKING engine status"

    invoke-direct {p0, v11}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 680
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\t   Host name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v12}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v12

    invoke-interface {v12}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 681
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\t   Host port: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v12}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v12

    invoke-interface {v12}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 682
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\t   Protocol : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v12}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v12

    invoke-interface {v12}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 683
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\t   Cipher suite : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v12}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v12

    invoke-interface {v12}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 685
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\t   Session Id   : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v12}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v12

    invoke-interface {v12}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 686
    const/4 v4, 0x1

    .line 687
    goto/16 :goto_2

    .line 690
    :cond_a
    const/4 v11, 0x0

    .line 701
    :goto_7
    return v11

    .line 695
    :cond_b
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 696
    const-string v11, "****"

    invoke-direct {p0, v11, v8}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;Ljavax/net/ssl/SSLEngineResult;)V

    .line 698
    if-eqz p1, :cond_c

    .line 699
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/supl/CNetTLSProviderBase;->InitialHandshakeComplete:Z

    .line 701
    :cond_c
    const/4 v11, 0x0

    goto :goto_7

    .line 574
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 585
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 634
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 760
    iget-boolean v0, p0, Lcom/android/server/supl/CNetTLSProviderBase;->logging:Z

    if-eqz v0, :cond_0

    .line 761
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 763
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;Ljavax/net/ssl/SSLEngineResult;)V
    .locals 4
    .parameter "str"
    .parameter "result"

    .prologue
    .line 718
    iget-boolean v2, p0, Lcom/android/server/supl/CNetTLSProviderBase;->logging:Z

    if-nez v2, :cond_1

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    sget-boolean v2, Lcom/android/server/supl/CNetSSLEngineProvider;->resultOnce:Z

    if-eqz v2, :cond_2

    .line 722
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/supl/CNetSSLEngineProvider;->resultOnce:Z

    .line 723
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "The format of the SSLEngineResult is: \n\t\"getStatus() / getHandshakeStatus()\" +\n\t\"bytesConsumed() / bytesProduced()\"\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 728
    :cond_2
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    .line 729
    .local v0, hsStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    .line 731
    .local v1, status:Ljavax/net/ssl/SSLEngineResult$Status;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 735
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_4

    .line 736
    const-string v2, "\t...buffer overflow"

    invoke-direct {p0, v2}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 748
    :cond_3
    :goto_1
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v2, :cond_0

    .line 749
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t...ready for application data, remaining data in net buffer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 751
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t   Host name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t   Host port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t   Protocol : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 754
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t   Cipher suite : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 755
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t   Session Id   : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 738
    :cond_4
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_5

    .line 739
    const-string v2, "\t...buffer underflow"

    invoke-direct {p0, v2}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 741
    :cond_5
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_6

    .line 742
    const-string v2, "\t...The operation just closed this side of the SSLEngine."

    invoke-direct {p0, v2}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 744
    :cond_6
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_3

    .line 745
    const-string v2, "\t...The SSLEngine completed the operation."

    invoke-direct {p0, v2}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private resize_FromServAppData_Buffer(Z)V
    .locals 3
    .parameter "need_flip"

    .prologue
    .line 181
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    .line 183
    .local v0, appBuffNeed:I
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 184
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 185
    .local v1, new_buffer:Ljava/nio/ByteBuffer;
    if-eqz p1, :cond_0

    .line 186
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 189
    iput-object v1, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    .line 191
    .end local v1           #new_buffer:Ljava/nio/ByteBuffer;
    :cond_1
    return-void
.end method

.method private resize_FromServNetData_Buffer(Z)V
    .locals 3
    .parameter "need_flip"

    .prologue
    .line 207
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    .line 209
    .local v0, netBuffNeed:I
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 210
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 211
    .local v1, new_buffer:Ljava/nio/ByteBuffer;
    if-eqz p1, :cond_0

    .line 212
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 214
    :cond_0
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 215
    iput-object v1, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    .line 217
    .end local v1           #new_buffer:Ljava/nio/ByteBuffer;
    :cond_1
    return-void
.end method

.method private resize_ToServAppData_Buffer(Z)V
    .locals 3
    .parameter "need_flip"

    .prologue
    .line 168
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    .line 170
    .local v0, appBuffNeed:I
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 171
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 172
    .local v1, new_buffer:Ljava/nio/ByteBuffer;
    if-eqz p1, :cond_0

    .line 173
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 176
    iput-object v1, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    .line 178
    .end local v1           #new_buffer:Ljava/nio/ByteBuffer;
    :cond_1
    return-void
.end method

.method private resize_ToServNetData_Buffer(Z)V
    .locals 3
    .parameter "need_flip"

    .prologue
    .line 194
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    .line 196
    .local v0, netBuffNeed:I
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 197
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 198
    .local v1, new_buffer:Ljava/nio/ByteBuffer;
    if-eqz p1, :cond_0

    .line 199
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 202
    iput-object v1, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    .line 204
    .end local v1           #new_buffer:Ljava/nio/ByteBuffer;
    :cond_1
    return-void
.end method


# virtual methods
.method public CreateConnection(Ljava/lang/String;)I
    .locals 11
    .parameter "Host_port"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 53
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/supl/CNetTLSProviderBase;->CreateConnection(Ljava/lang/String;)I

    .line 54
    iget-object v8, p0, Lcom/android/server/supl/CNetTLSProviderBase;->sslContext:Ljavax/net/ssl/SSLContext;

    iget-object v9, p0, Lcom/android/server/supl/CNetTLSProviderBase;->InetAddr:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/android/server/supl/CNetTLSProviderBase;->Port:I

    invoke-virtual {v8, v9, v10}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    .line 55
    iget-object v8, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 56
    iget-object v8, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljavax/net/ssl/SSLEngine;->setEnableSessionCreation(Z)V

    .line 57
    iget-object v8, p0, Lcom/android/server/supl/CNetTLSProviderBase;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v8}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v3

    .line 58
    .local v3, prov:Ljava/security/Provider;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SSL context provider - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/security/Provider;->getInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 60
    iget-object v8, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngine;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, cipherSuites:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 62
    .local v4, rezult:I
    const-string v8, "names of the cipher suites which could be enabled: "

    invoke-direct {p0, v8}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 63
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v8, v0

    if-ge v2, v8, :cond_0

    .line 64
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Suite "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    .line 67
    iget-object v8, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v8}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v5

    .line 69
    .local v5, s:Ljava/net/Socket;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Try connect to server: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/supl/CNetTLSProviderBase;->InetAddr:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/supl/CNetTLSProviderBase;->Port:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 72
    new-instance v8, Ljava/net/InetSocketAddress;

    iget-object v9, p0, Lcom/android/server/supl/CNetTLSProviderBase;->InetAddr:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/android/server/supl/CNetTLSProviderBase;->Port:I

    invoke-direct {v8, v9, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v8}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 73
    invoke-virtual {v5}, Ljava/net/Socket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    .line 74
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "===>> Channel value is: <<==="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 75
    iget-object v8, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 76
    const-string v8, "===>> Creating Buffer <<==="

    invoke-direct {p0, v8}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/android/server/supl/CNetSSLEngineProvider;->createBuffers()V

    .line 79
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/server/supl/CNetSSLEngineProvider;->doHandshake(Z)I

    move-result v4

    if-gez v4, :cond_1

    .line 80
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Initial Handshake error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 101
    .end local v0           #cipherSuites:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #prov:Ljava/security/Provider;
    .end local v4           #rezult:I
    .end local v5           #s:Ljava/net/Socket;
    :goto_1
    return v6

    .line 84
    .restart local v0       #cipherSuites:[Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #prov:Ljava/security/Provider;
    .restart local v4       #rezult:I
    .restart local v5       #s:Ljava/net/Socket;
    :cond_1
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/supl/CNetTLSProviderBase;->InitialHandshakeComplete:Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move v6, v7

    .line 85
    goto :goto_1

    .line 87
    .end local v0           #cipherSuites:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #prov:Ljava/security/Provider;
    .end local v4           #rezult:I
    .end local v5           #s:Ljava/net/Socket;
    :catch_0
    move-exception v1

    .line 88
    .local v1, e:Ljava/net/UnknownHostException;
    invoke-direct {p0}, Lcom/android/server/supl/CNetSSLEngineProvider;->Reset()V

    .line 89
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CreateConnection(): Unknown host exception, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 93
    .end local v1           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v1

    .line 94
    .local v1, e:Ljavax/net/ssl/SSLException;
    invoke-direct {p0}, Lcom/android/server/supl/CNetSSLEngineProvider;->Reset()V

    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CreateConnection(): SSL engine exception, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljavax/net/ssl/SSLException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 98
    .end local v1           #e:Ljavax/net/ssl/SSLException;
    :catch_2
    move-exception v1

    .line 99
    .local v1, e:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/server/supl/CNetSSLEngineProvider;->Reset()V

    .line 100
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CreateConnection(): I/O Exception, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public declared-synchronized FreeConnection()V
    .locals 6

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/supl/CNetTLSProviderBase;->InitialHandshakeComplete:Z

    if-nez v3, :cond_0

    .line 108
    const-string v3, "InitialHandshakeComplete == false"

    invoke-direct {p0, v3}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :goto_0
    monitor-exit p0

    return-void

    .line 111
    :cond_0
    :try_start_1
    const-string v3, "<FreeConnection>"

    invoke-direct {p0, v3}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    const/4 v3, 0x0

    :try_start_2
    iput-boolean v3, p0, Lcom/android/server/supl/CNetTLSProviderBase;->InitialHandshakeComplete:Z

    .line 114
    iget-object v3, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 115
    iget-object v3, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 116
    iget-object v3, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 118
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v3

    if-nez v3, :cond_3

    .line 120
    iget-object v3, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v4, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v5}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    .line 122
    .local v2, res:Ljavax/net/ssl/SSLEngineResult;
    sget-object v3, Lcom/android/server/supl/CNetSSLEngineProvider$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 125
    :goto_2
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    iget-object v3, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 127
    .local v1, num:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    .line 132
    :cond_2
    :goto_3
    iget-object v3, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 145
    .end local v1           #num:I
    .end local v2           #res:Ljavax/net/ssl/SSLEngineResult;
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FreeConnection(): Incorrect close."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 148
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/supl/CNetSSLEngineProvider;->Reset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 129
    .restart local v1       #num:I
    .restart local v2       #res:Ljavax/net/ssl/SSLEngineResult;
    :cond_4
    if-nez v1, :cond_2

    goto :goto_3

    .line 137
    .end local v1           #num:I
    :pswitch_1
    :try_start_4
    const-string v3, "FreeConnection(): Incorrect close outbound."

    invoke-direct {p0, v3}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 139
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/supl/CNetSSLEngineProvider;->Reset()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public Init()I
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public IsActive()I
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/android/server/supl/CNetTLSProviderBase;->InitialHandshakeComplete:Z

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Receive()I
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReadListener:Lcom/android/server/supl/CNetSSLEngineProvider$ReceiveThread;

    if-nez v0, :cond_0

    .line 451
    new-instance v0, Lcom/android/server/supl/CNetSSLEngineProvider$ReceiveThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/supl/CNetSSLEngineProvider$ReceiveThread;-><init>(Lcom/android/server/supl/CNetSSLEngineProvider;Lcom/android/server/supl/CNetSSLEngineProvider$1;)V

    iput-object v0, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReadListener:Lcom/android/server/supl/CNetSSLEngineProvider$ReceiveThread;

    .line 452
    iget-object v0, p0, Lcom/android/server/supl/CNetSSLEngineProvider;->ReadListener:Lcom/android/server/supl/CNetSSLEngineProvider$ReceiveThread;

    invoke-virtual {v0}, Lcom/android/server/supl/CNetSSLEngineProvider$ReceiveThread;->start()V

    .line 454
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ResetConnection()V
    .locals 0

    .prologue
    .line 460
    return-void
.end method

.method public Send([B)I
    .locals 4
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 465
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/supl/CNetSSLEngineProvider;->DumpMessage([B)Z

    .line 466
    invoke-direct {p0, p1}, Lcom/android/server/supl/CNetSSLEngineProvider;->Write([B)I
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 474
    :goto_0
    return v1

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, e:Ljavax/net/ssl/SSLException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send() error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 472
    .end local v0           #e:Ljavax/net/ssl/SSLException;
    :catch_1
    move-exception v0

    .line 473
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send() error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/supl/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
