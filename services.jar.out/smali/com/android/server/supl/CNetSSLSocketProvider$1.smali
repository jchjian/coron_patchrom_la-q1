.class Lcom/android/server/supl/CNetSSLSocketProvider$1;
.super Ljava/lang/Object;
.source "CNetSSLSocketProvider.java"

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/supl/CNetSSLSocketProvider;->ConnectProc(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/supl/CNetSSLSocketProvider;


# direct methods
.method constructor <init>(Lcom/android/server/supl/CNetSSLSocketProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/server/supl/CNetSSLSocketProvider$1;->this$0:Lcom/android/server/supl/CNetSSLSocketProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 213
    const-string v0, "CNetSSLSocketProvider"

    const-string v1, "**HANDSHAKE FINISHED**"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/android/server/supl/CNetSSLSocketProvider$1;->this$0:Lcom/android/server/supl/CNetSSLSocketProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t SessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/net/ssl/HandshakeCompletedEvent;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/supl/CNetSSLSocketProvider;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/supl/CNetSSLSocketProvider;->access$100(Lcom/android/server/supl/CNetSSLSocketProvider;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/server/supl/CNetSSLSocketProvider$1;->this$0:Lcom/android/server/supl/CNetSSLSocketProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t PeerHost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/net/ssl/HandshakeCompletedEvent;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/supl/CNetSSLSocketProvider;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/supl/CNetSSLSocketProvider;->access$100(Lcom/android/server/supl/CNetSSLSocketProvider;Ljava/lang/String;)V

    .line 216
    return-void
.end method
