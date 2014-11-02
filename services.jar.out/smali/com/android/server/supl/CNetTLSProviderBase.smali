.class public abstract Lcom/android/server/supl/CNetTLSProviderBase;
.super Ljava/lang/Object;
.source "CNetTLSProviderBase.java"


# instance fields
.field protected Host:Ljava/lang/String;

.field protected InetAddr:Ljava/net/InetAddress;

.field protected InitialHandshakeComplete:Z

.field protected Port:I

.field protected logging:Z

.field protected sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1
    .parameter "Context"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/supl/CNetTLSProviderBase;->InitialHandshakeComplete:Z

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/supl/CNetTLSProviderBase;->logging:Z

    .line 31
    iput-object p1, p0, Lcom/android/server/supl/CNetTLSProviderBase;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 32
    return-void
.end method


# virtual methods
.method protected native ConnectionRespose(B)Z
.end method

.method public CreateConnection(Ljava/lang/String;)I
    .locals 4
    .parameter "Host_port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 41
    const/16 v2, 0x3a

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 42
    .local v0, Index:I
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/supl/CNetTLSProviderBase;->Host:Ljava/lang/String;

    .line 43
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, port:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/supl/CNetTLSProviderBase;->Port:I

    .line 46
    return v3
.end method

.method protected native DumpMessage([B)Z
.end method

.method public abstract FreeConnection()V
.end method

.method public abstract Init()I
.end method

.method public abstract IsActive()I
.end method

.method protected native PostSLPMessageToQueue([B)Z
.end method

.method public abstract Receive()I
.end method

.method public abstract ResetConnection()V
.end method

.method public abstract Send([B)I
.end method
