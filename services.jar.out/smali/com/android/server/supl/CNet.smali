.class public Lcom/android/server/supl/CNet;
.super Ljava/lang/Object;
.source "CNet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/supl/CNet$WaitForCloseThread;
    }
.end annotation


# static fields
.field public static final ENGINE_IMPLEMENTATION:Ljava/lang/String; = "Engine"

.field private static Impl:Ljava/lang/String; = null

.field public static final NON_TLS_CONNECTION:Ljava/lang/String; = "Non_TLS"

.field private static Net:Lcom/android/server/supl/CNetTLSProviderBase; = null

.field private static Pass:Ljava/lang/String; = null

.field private static Path:Ljava/lang/String; = null

.field private static ProtocolType:Ljava/lang/String; = null

.field public static final SOCKET_IMPLEMENTATION:Ljava/lang/String; = "Socket"

.field public static final TAG:Ljava/lang/String; = "CNET"

.field public static final TLS_PROTOCOL:Ljava/lang/String; = "TLS"

.field private static Wait:Ljava/lang/Thread;

.field private static km:Lcom/android/server/supl/KeySecureManager;

.field public static localhost:Z

.field private static localhost_port:Ljava/lang/String;

.field private static network:Lcom/android/server/supl/CNet;

.field public static slphost_port:Ljava/lang/String;

.field private static tm:Lcom/android/server/supl/TrustSecureManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    sput-object v1, Lcom/android/server/supl/CNet;->tm:Lcom/android/server/supl/TrustSecureManager;

    .line 34
    sput-object v1, Lcom/android/server/supl/CNet;->km:Lcom/android/server/supl/KeySecureManager;

    .line 35
    sput-object v1, Lcom/android/server/supl/CNet;->Net:Lcom/android/server/supl/CNetTLSProviderBase;

    .line 36
    sput-object v1, Lcom/android/server/supl/CNet;->Path:Ljava/lang/String;

    .line 37
    const-string v0, "Socket"

    sput-object v0, Lcom/android/server/supl/CNet;->Impl:Ljava/lang/String;

    .line 38
    const-string v0, "Non_TLS"

    sput-object v0, Lcom/android/server/supl/CNet;->ProtocolType:Ljava/lang/String;

    .line 39
    const-string v0, "123456"

    sput-object v0, Lcom/android/server/supl/CNet;->Pass:Ljava/lang/String;

    .line 40
    const-string v0, "127.0.0.1:7275"

    sput-object v0, Lcom/android/server/supl/CNet;->localhost_port:Ljava/lang/String;

    .line 41
    sput-object v1, Lcom/android/server/supl/CNet;->network:Lcom/android/server/supl/CNet;

    .line 42
    sput-object v1, Lcom/android/server/supl/CNet;->Wait:Ljava/lang/Thread;

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/supl/CNet;->localhost:Z

    .line 53
    const-string v0, "208.8.164.7:7275"

    sput-object v0, Lcom/android/server/supl/CNet;->slphost_port:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-string v0, "===>> Inside CNet Constructor <<==="

    invoke-static {v0}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/android/server/supl/KeySecureManager;

    invoke-direct {v0}, Lcom/android/server/supl/KeySecureManager;-><init>()V

    sput-object v0, Lcom/android/server/supl/CNet;->km:Lcom/android/server/supl/KeySecureManager;

    .line 96
    new-instance v0, Lcom/android/server/supl/TrustSecureManager;

    invoke-direct {v0}, Lcom/android/server/supl/TrustSecureManager;-><init>()V

    sput-object v0, Lcom/android/server/supl/CNet;->tm:Lcom/android/server/supl/TrustSecureManager;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Net = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/supl/CNet;->Net:Lcom/android/server/supl/CNetTLSProviderBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "StorePath"

    .prologue
    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Lcom/android/server/supl/KeySecureManager;

    invoke-direct {v0}, Lcom/android/server/supl/KeySecureManager;-><init>()V

    sput-object v0, Lcom/android/server/supl/CNet;->km:Lcom/android/server/supl/KeySecureManager;

    .line 106
    new-instance v0, Lcom/android/server/supl/TrustSecureManager;

    invoke-direct {v0}, Lcom/android/server/supl/TrustSecureManager;-><init>()V

    sput-object v0, Lcom/android/server/supl/CNet;->tm:Lcom/android/server/supl/TrustSecureManager;

    .line 107
    return-void
.end method

.method public static CreateConnection(Ljava/lang/String;)I
    .locals 4
    .parameter "Host_port"

    .prologue
    const/4 v1, -0x1

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ===>>> CreateConnection: Entering Host_port =["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 412
    sget-object v2, Lcom/android/server/supl/CNet;->Net:Lcom/android/server/supl/CNetTLSProviderBase;

    if-eqz v2, :cond_2

    .line 413
    const-string v2, " CreateConnection: not null \n"

    invoke-static {v2}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 415
    :try_start_0
    sget-boolean v2, Lcom/android/server/supl/CNet;->localhost:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 416
    const-string v2, " CreateConnection: Host_port = localhost_port \n"

    invoke-static {v2}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 417
    sget-object p0, Lcom/android/server/supl/CNet;->localhost_port:Ljava/lang/String;

    .line 426
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " CreateConnection: Host_port=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 427
    const-string v2, " CreateConnection: Net.CreateConnection \n"

    invoke-static {v2}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 428
    sget-object v2, Lcom/android/server/supl/CNet;->Net:Lcom/android/server/supl/CNetTLSProviderBase;

    invoke-virtual {v2, p0}, Lcom/android/server/supl/CNetTLSProviderBase;->CreateConnection(Ljava/lang/String;)I

    move-result v1

    .line 437
    :goto_1
    return v1

    .line 420
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 422
    const-string v2, " CreateConnection: Host_port = NULL \n"

    invoke-static {v2}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 423
    sget-object p0, Lcom/android/server/supl/CNet;->slphost_port:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, e:Ljava/net/UnknownHostException;
    const-string v2, "CNET"

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 436
    .end local v0           #e:Ljava/net/UnknownHostException;
    :cond_2
    const-string v2, " CreateConnection:Net == null"

    invoke-static {v2}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static FreeConnection()V
    .locals 1

    .prologue
    .line 445
    sget-object v0, Lcom/android/server/supl/CNet;->Net:Lcom/android/server/supl/CNetTLSProviderBase;

    if-eqz v0, :cond_0

    .line 446
    sget-object v0, Lcom/android/server/supl/CNet;->Net:Lcom/android/server/supl/CNetTLSProviderBase;

    invoke-virtual {v0}, Lcom/android/server/supl/CNetTLSProviderBase;->FreeConnection()V

    .line 451
    :goto_0
    return-void

    .line 449
    :cond_0
    const-string v0, "Net == null"

    invoke-static {v0}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static Init()I
    .locals 6

    .prologue
    .line 359
    const-string v1, " ===>>> Init: Entering \n"

    invoke-static {v1}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 360
    sget-object v1, Lcom/android/server/supl/CNet;->network:Lcom/android/server/supl/CNet;

    if-nez v1, :cond_1

    .line 361
    new-instance v1, Lcom/android/server/supl/CNet;

    invoke-direct {v1}, Lcom/android/server/supl/CNet;-><init>()V

    sput-object v1, Lcom/android/server/supl/CNet;->network:Lcom/android/server/supl/CNet;

    .line 367
    sget-object v1, Lcom/android/server/supl/CNet;->network:Lcom/android/server/supl/CNet;

    sget-object v2, Lcom/android/server/supl/CNet;->Path:Ljava/lang/String;

    sget-object v3, Lcom/android/server/supl/CNet;->Pass:Ljava/lang/String;

    sget-object v4, Lcom/android/server/supl/CNet;->Impl:Ljava/lang/String;

    sget-object v5, Lcom/android/server/supl/CNet;->ProtocolType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/supl/CNet;->Init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 368
    .local v0, res:I
    if-gez v0, :cond_0

    .line 369
    const-string v1, "CNet->Init(): Error init network."

    invoke-static {v1}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 371
    :cond_0
    :goto_0
    return v0

    .line 364
    .end local v0           #res:I
    :cond_1
    const-string v1, "network is already initialized"

    invoke-static {v1}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 365
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsActive()I
    .locals 1

    .prologue
    .line 459
    sget-object v0, Lcom/android/server/supl/CNet;->Net:Lcom/android/server/supl/CNetTLSProviderBase;

    if-eqz v0, :cond_0

    .line 460
    const-string v0, "Net IsActive"

    invoke-static {v0}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 461
    sget-object v0, Lcom/android/server/supl/CNet;->Net:Lcom/android/server/supl/CNetTLSProviderBase;

    invoke-virtual {v0}, Lcom/android/server/supl/CNetTLSProviderBase;->IsActive()I

    move-result v0

    .line 464
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "Message"

    .prologue
    .line 534
    const-string v0, "CNet"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-void
.end method

.method private PrintAllProviders()V
    .locals 11

    .prologue
    .line 114
    const/4 v3, 0x0

    .line 115
    .local v3, i:I
    const/4 v5, 0x0

    .line 116
    .local v5, sslCtx:[Ljavax/net/ssl/SSLContext;
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v6

    .line 118
    .local v6, sysProviders:[Ljava/security/Provider;
    const/4 v2, 0x0

    .line 119
    .local v2, engine:Ljavax/net/ssl/SSLEngine;
    const/4 v4, 0x0

    .line 120
    .local v4, ssf:Ljavax/net/ssl/SSLSocketFactory;
    const/4 v0, 0x0

    .line 122
    .local v0, cipherSuites:[Ljava/lang/String;
    array-length v7, v6

    new-array v5, v7, [Ljavax/net/ssl/SSLContext;

    .line 124
    const-string v7, "Providers List:"

    invoke-static {v7}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 125
    const/4 v3, 0x0

    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_2

    .line 126
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Provider: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 127
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v3

    invoke-virtual {v8}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 128
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    info: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v3

    invoke-virtual {v8}, Ljava/security/Provider;->getInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 129
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    vers: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v3

    invoke-virtual {v8}, Ljava/security/Provider;->getVersion()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 130
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    class: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v3

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 133
    :try_start_0
    const-string v7, "TLS"

    aget-object v8, v6, v3

    invoke-static {v7, v8}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v7

    aput-object v7, v5, v3

    .line 134
    aget-object v7, v5, v3

    sget-object v8, Lcom/android/server/supl/CNet;->km:Lcom/android/server/supl/KeySecureManager;

    invoke-virtual {v8}, Lcom/android/server/supl/KeySecureManager;->getKetManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v8

    sget-object v9, Lcom/android/server/supl/CNet;->tm:Lcom/android/server/supl/TrustSecureManager;

    invoke-virtual {v9}, Lcom/android/server/supl/TrustSecureManager;->getKetManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 136
    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    .line 137
    aget-object v7, v5, v3

    const-string v8, "208.8.164.3"

    const/16 v9, 0x1c6b

    invoke-virtual {v7, v8, v9}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v2

    .line 138
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 140
    const-string v7, "SocketFactory supported suites:"

    invoke-static {v7}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 142
    const/4 v3, 0x0

    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_0

    .line 143
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Suite "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 146
    :cond_0
    const-string v7, "SSLEngine supported suites:"

    invoke-static {v7}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 148
    const/4 v3, 0x0

    :goto_2
    array-length v7, v0

    if-ge v3, v7, :cond_1

    .line 149
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Suite "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Algorithm is not found - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 125
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 155
    :catch_1
    move-exception v1

    .line 156
    .local v1, e:Ljava/security/GeneralSecurityException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GeneralSecurityException  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    goto :goto_3

    .line 159
    .end local v1           #e:Ljava/security/GeneralSecurityException;
    :cond_2
    return-void
.end method

.method public static ReInit()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 375
    sget-object v1, Lcom/android/server/supl/CNet;->network:Lcom/android/server/supl/CNet;

    if-nez v1, :cond_1

    .line 376
    invoke-static {}, Lcom/android/server/supl/CNet;->Init()I

    move-result v0

    .line 396
    .local v0, res:I
    :cond_0
    :goto_0
    return v0

    .line 379
    .end local v0           #res:I
    :cond_1
    invoke-static {}, Lcom/android/server/supl/CNet;->IsActive()I

    move-result v1

    if-eqz v1, :cond_2

    .line 380
    invoke-static {}, Lcom/android/server/supl/CNet;->FreeConnection()V

    .line 381
    sput-object v2, Lcom/android/server/supl/CNet;->Net:Lcom/android/server/supl/CNetTLSProviderBase;

    .line 382
    sget-object v1, Lcom/android/server/supl/CNet;->network:Lcom/android/server/supl/CNet;

    sget-object v2, Lcom/android/server/supl/CNet;->Path:Ljava/lang/String;

    sget-object v3, Lcom/android/server/supl/CNet;->Pass:Ljava/lang/String;

    sget-object v4, Lcom/android/server/supl/CNet;->Impl:Ljava/lang/String;

    sget-object v5, Lcom/android/server/supl/CNet;->ProtocolType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/supl/CNet;->Init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 383
    .restart local v0       #res:I
    if-gez v0, :cond_0

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReInit() error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    goto :goto_0

    .line 390
    .end local v0           #res:I
    :cond_2
    sput-object v2, Lcom/android/server/supl/CNet;->Net:Lcom/android/server/supl/CNetTLSProviderBase;

    .line 391
    sget-object v1, Lcom/android/server/supl/CNet;->network:Lcom/android/server/supl/CNet;

    sget-object v2, Lcom/android/server/supl/CNet;->Path:Ljava/lang/String;

    sget-object v3, Lcom/android/server/supl/CNet;->Pass:Ljava/lang/String;

    sget-object v4, Lcom/android/server/supl/CNet;->Impl:Ljava/lang/String;

    sget-object v5, Lcom/android/server/supl/CNet;->ProtocolType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/supl/CNet;->Init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 392
    .restart local v0       #res:I
    if-gez v0, :cond_0

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReInit() error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static Receive()I
    .locals 1

    .prologue
    .line 473
    sget-object v0, Lcom/android/server/supl/CNet;->Net:Lcom/android/server/supl/CNetTLSProviderBase;

    if-eqz v0, :cond_0

    .line 474
    const-string v0, "Net Receive"

    invoke-static {v0}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 475
    sget-object v0, Lcom/android/server/supl/CNet;->Net:Lcom/android/server/supl/CNetTLSProviderBase;

    invoke-virtual {v0}, Lcom/android/server/supl/CNetTLSProviderBase;->Receive()I

    move-result v0

    .line 478
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static ResetConnection()V
    .locals 1

    .prologue
    .line 486
    sget-object v0, Lcom/android/server/supl/CNet;->Net:Lcom/android/server/supl/CNetTLSProviderBase;

    if-eqz v0, :cond_0

    .line 487
    sget-object v0, Lcom/android/server/supl/CNet;->Net:Lcom/android/server/supl/CNetTLSProviderBase;

    invoke-virtual {v0}, Lcom/android/server/supl/CNetTLSProviderBase;->ResetConnection()V

    .line 489
    :cond_0
    return-void
.end method

.method public static Send([B)I
    .locals 1
    .parameter "data"

    .prologue
    .line 519
    sget-object v0, Lcom/android/server/supl/CNet;->Net:Lcom/android/server/supl/CNetTLSProviderBase;

    if-eqz v0, :cond_0

    .line 520
    const-string v0, "Net Send"

    invoke-static {v0}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 521
    sget-object v0, Lcom/android/server/supl/CNet;->Net:Lcom/android/server/supl/CNetTLSProviderBase;

    invoke-virtual {v0, p0}, Lcom/android/server/supl/CNetTLSProviderBase;->Send([B)I

    move-result v0

    .line 525
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static SetImpl(Ljava/lang/String;)V
    .locals 0
    .parameter "I"

    .prologue
    .line 77
    sput-object p0, Lcom/android/server/supl/CNet;->Impl:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public static SetPath(Ljava/lang/String;)V
    .locals 0
    .parameter "P"

    .prologue
    .line 69
    sput-object p0, Lcom/android/server/supl/CNet;->Path:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static SetProtocolType(Ljava/lang/String;)V
    .locals 0
    .parameter "protocol"

    .prologue
    .line 85
    sput-object p0, Lcom/android/server/supl/CNet;->ProtocolType:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private static native StartNativeUnitTest()V
.end method

.method public static UnitTest()V
    .locals 7

    .prologue
    .line 302
    const/16 v3, 0x1b

    new-array v2, v3, [B

    fill-array-data v2, :array_0

    .line 309
    .local v2, message:[B
    const-string v1, "208.8.164.7:7275"

    .line 311
    .local v1, host_port:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/supl/CNet;->Init()I

    move-result v3

    if-gez v3, :cond_0

    .line 312
    const-string v3, "UnitTest ():Unable to init network!"

    invoke-static {v3}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 351
    :goto_0
    return-void

    .line 315
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CreateConnection"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 316
    invoke-static {v1}, Lcom/android/server/supl/CNet;->CreateConnection(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    .line 317
    const-string v3, "UnitTest ():Unable to create network connection!"

    invoke-static {v3}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_1
    invoke-static {}, Lcom/android/server/supl/CNet;->IsActive()I

    move-result v3

    if-nez v3, :cond_2

    .line 321
    const-string v3, "UnitTest ():Connection is not active!"

    invoke-static {v3}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_2
    const-string v3, "UnitTest ():Connection active!"

    invoke-static {v3}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/android/server/supl/CNet;->Receive()I

    move-result v3

    if-gez v3, :cond_3

    .line 328
    const-string v3, "UnitTest ():Error Receive() call!"

    invoke-static {v3}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 329
    invoke-static {}, Lcom/android/server/supl/CNet;->FreeConnection()V

    goto :goto_0

    .line 332
    :cond_3
    invoke-static {v2}, Lcom/android/server/supl/CNet;->Send([B)I

    move-result v3

    if-gez v3, :cond_4

    .line 333
    const-string v3, "UnitTest ():Error send request to SLP server!"

    invoke-static {v3}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/android/server/supl/CNet;->FreeConnection()V

    goto :goto_0

    .line 338
    :cond_4
    const-string v3, "UnitTest ():Waiting 10 secs for SLP server response!"

    invoke-static {v3}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 341
    sget-object v4, Lcom/android/server/supl/CNet;->network:Lcom/android/server/supl/CNet;

    monitor-enter v4

    .line 343
    :try_start_0
    sget-object v3, Lcom/android/server/supl/CNet;->network:Lcom/android/server/supl/CNet;

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    const-string v3, "UnitTest ():FreeConnection()."

    invoke-static {v3}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 350
    invoke-static {}, Lcom/android/server/supl/CNet;->FreeConnection()V

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnitTest (): Interrupted exception"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    goto :goto_1

    .line 348
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 302
    :array_0
    .array-data 0x1
        0x0t
        0x1bt
        0x1t
        0x0t
        0x0t
        0x84t
        0xe2t
        0xet
        0x2t
        0x44t
        0x8dt
        0x15t
        0x9et
        0x24t
        0x7t
        0xfct
        0x41t
        0x4t
        0x40t
        0xft
        0xa0t
        0xet
        0x50t
        0x1ct
        0x22t
        0x1ct
        0x80t
    .end array-data
.end method

.method public static UnitTestWithLocalHost()V
    .locals 4

    .prologue
    .line 262
    const/16 v2, 0x1b

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    .line 269
    .local v1, message:[B
    const-string v0, "127.0.0.1:7275"

    .line 271
    .local v0, host_port:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/supl/CNet;->Init()I

    move-result v2

    if-gez v2, :cond_0

    .line 272
    const-string v2, "UnitTest ():Unable to init network!"

    invoke-static {v2}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 295
    :goto_0
    return-void

    .line 275
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CreateConnection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 276
    invoke-static {v0}, Lcom/android/server/supl/CNet;->CreateConnection(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    .line 277
    const-string v2, "UnitTest ():Unable to create network connection!"

    invoke-static {v2}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :cond_1
    invoke-static {}, Lcom/android/server/supl/CNet;->IsActive()I

    move-result v2

    if-nez v2, :cond_2

    .line 281
    const-string v2, "UnitTest ():Connection is not active!"

    invoke-static {v2}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_2
    const-string v2, "UnitTest ():Connection active!"

    invoke-static {v2}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/android/server/supl/CNet;->Receive()I

    move-result v2

    if-gez v2, :cond_3

    .line 288
    const-string v2, "UnitTest ():Error Receive() call!"

    invoke-static {v2}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 289
    invoke-static {}, Lcom/android/server/supl/CNet;->FreeConnection()V

    goto :goto_0

    .line 293
    :cond_3
    const-string v2, "UnitTest ():FreeConnection()."

    invoke-static {v2}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/android/server/supl/CNet;->FreeConnection()V

    goto :goto_0

    .line 262
    :array_0
    .array-data 0x1
        0x0t
        0x1bt
        0x1t
        0x0t
        0x0t
        0x84t
        0xe2t
        0xet
        0x2t
        0x44t
        0x8dt
        0x15t
        0x9et
        0x24t
        0x7t
        0xfct
        0x41t
        0x4t
        0x40t
        0xft
        0xa0t
        0xet
        0x50t
        0x1ct
        0x22t
        0x1ct
        0x80t
    .end array-data
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-static {p0}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 23
    invoke-static {}, Lcom/android/server/supl/CNet;->StartNativeUnitTest()V

    return-void
.end method

.method public static nativeUnitTest()V
    .locals 0

    .prologue
    .line 253
    invoke-static {}, Lcom/android/server/supl/CNet;->StartNativeUnitTest()V

    .line 254
    return-void
.end method


# virtual methods
.method public Init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "KeyStorePath"
    .parameter "Password"
    .parameter "Implementation"
    .parameter "protocol"

    .prologue
    const/4 v2, -0x1

    const/4 v6, 0x0

    .line 169
    const-string v3, "===>> Inside Init <<==="

    invoke-static {v3}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 170
    sget-object v3, Lcom/android/server/supl/CNet;->Net:Lcom/android/server/supl/CNetTLSProviderBase;

    if-eqz v3, :cond_0

    .line 171
    const-string v3, "Network is already created."

    invoke-static {v3}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 244
    :goto_0
    return v2

    .line 175
    :cond_0
    const-string v3, "Creating new Net"

    invoke-static {v3}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 177
    if-nez p3, :cond_1

    .line 178
    const-string p3, "Socket"

    .line 179
    const-string v3, "Defaulting to Implementation SOCKET_IMPLEMENTATION"

    invoke-static {v3}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 182
    :cond_1
    if-nez p4, :cond_2

    .line 184
    const-string p4, "Non_TLS"

    .line 185
    const-string v3, "Defaulting to protocol NON_TLS_CONNECTION"

    invoke-static {v3}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 190
    :cond_2
    :try_start_0
    const-string v3, "TLS"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 192
    const-string v3, "ProtocolType TLS_PROTOCOL"

    invoke-static {v3}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 195
    sget-object v3, Lcom/android/server/supl/CNet;->tm:Lcom/android/server/supl/TrustSecureManager;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/supl/TrustSecureManager;->Init(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    sget-object v3, Lcom/android/server/supl/CNet;->km:Lcom/android/server/supl/KeySecureManager;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/supl/KeySecureManager;->Init(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 198
    .local v1, sslCtx:Ljavax/net/ssl/SSLContext;
    sget-object v3, Lcom/android/server/supl/CNet;->km:Lcom/android/server/supl/KeySecureManager;

    invoke-virtual {v3}, Lcom/android/server/supl/KeySecureManager;->getKetManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v3

    sget-object v4, Lcom/android/server/supl/CNet;->tm:Lcom/android/server/supl/TrustSecureManager;

    invoke-virtual {v4}, Lcom/android/server/supl/TrustSecureManager;->getKetManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 199
    invoke-direct {p0}, Lcom/android/server/supl/CNet;->PrintAllProviders()V

    .line 201
    const-string v3, "Socket"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 203
    new-instance v3, Lcom/android/server/supl/CNetSSLSocketProvider;

    invoke-direct {v3, v1}, Lcom/android/server/supl/CNetSSLSocketProvider;-><init>(Ljavax/net/ssl/SSLContext;)V

    sput-object v3, Lcom/android/server/supl/CNet;->Net:Lcom/android/server/supl/CNetTLSProviderBase;

    .line 204
    const-string v3, "CNetSSLSocketProvider created!"

    invoke-static {v3}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 227
    .end local v1           #sslCtx:Ljavax/net/ssl/SSLContext;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network.Init(), Net = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/supl/CNet;->Net:Lcom/android/server/supl/CNetTLSProviderBase;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 228
    sget-object v3, Lcom/android/server/supl/CNet;->Net:Lcom/android/server/supl/CNetTLSProviderBase;

    invoke-virtual {v3}, Lcom/android/server/supl/CNetTLSProviderBase;->Init()I

    .line 229
    const/4 v2, 0x0

    goto :goto_0

    .line 209
    .restart local v1       #sslCtx:Ljavax/net/ssl/SSLContext;
    :cond_3
    new-instance v3, Lcom/android/server/supl/CNetSSLEngineProvider;

    invoke-direct {v3, v1}, Lcom/android/server/supl/CNetSSLEngineProvider;-><init>(Ljavax/net/ssl/SSLContext;)V

    sput-object v3, Lcom/android/server/supl/CNet;->Net:Lcom/android/server/supl/CNetTLSProviderBase;

    .line 210
    const-string v3, "CNetSSLEngineProvider created!"

    invoke-static {v3}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 230
    .end local v1           #sslCtx:Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v0

    .line 231
    .local v0, e:Ljava/io/IOException;
    const-string v3, "CNET"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CNet->Init(): I/O Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 233
    sput-object v6, Lcom/android/server/supl/CNet;->tm:Lcom/android/server/supl/TrustSecureManager;

    .line 234
    sput-object v6, Lcom/android/server/supl/CNet;->km:Lcom/android/server/supl/KeySecureManager;

    goto/16 :goto_0

    .line 213
    .end local v0           #e:Ljava/io/IOException;
    :cond_4
    :try_start_1
    const-string v3, "Socket"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "Non_TLS"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 215
    const-string v3, "ProtocolType NON_TLS_CONNECTION and Implementation SOCKET_IMPLEMENTATION"

    invoke-static {v3}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 216
    new-instance v3, Lcom/android/server/supl/CNetSocketProvider;

    invoke-direct {v3}, Lcom/android/server/supl/CNetSocketProvider;-><init>()V

    sput-object v3, Lcom/android/server/supl/CNet;->Net:Lcom/android/server/supl/CNetTLSProviderBase;

    .line 217
    const-string v3, "CNetSocketProvider created!"

    invoke-static {v3}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 236
    :catch_1
    move-exception v0

    .line 237
    .local v0, e:Ljava/security/GeneralSecurityException;
    const-string v3, "CNET"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CNet->Init(): General security exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    sput-object v6, Lcom/android/server/supl/CNet;->tm:Lcom/android/server/supl/TrustSecureManager;

    .line 240
    sput-object v6, Lcom/android/server/supl/CNet;->km:Lcom/android/server/supl/KeySecureManager;

    goto/16 :goto_0

    .line 221
    .end local v0           #e:Ljava/security/GeneralSecurityException;
    :cond_5
    :try_start_2
    const-string v3, "Defaulting to Implementation SOCKET_IMPLEMENTATION and ProtocolType NON_TLS_CONNECTION"

    invoke-static {v3}, Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V

    .line 222
    const-string p3, "Socket"

    .line 223
    const-string p4, "Non_TLS"

    .line 224
    new-instance v3, Lcom/android/server/supl/CNetSocketProvider;

    invoke-direct {v3}, Lcom/android/server/supl/CNetSocketProvider;-><init>()V

    sput-object v3, Lcom/android/server/supl/CNet;->Net:Lcom/android/server/supl/CNetTLSProviderBase;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 242
    :catch_2
    move-exception v0

    .line 243
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "CNET"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CNet->Init(): NullPointerException!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
