.class Lcom/android/server/supl/CNetSSLSocketProvider$ConnectThread;
.super Ljava/lang/Thread;
.source "CNetSSLSocketProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/supl/CNetSSLSocketProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectThread"
.end annotation


# instance fields
.field private Host_port:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/supl/CNetSSLSocketProvider;


# direct methods
.method constructor <init>(Lcom/android/server/supl/CNetSSLSocketProvider;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "Host_port"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/server/supl/CNetSSLSocketProvider$ConnectThread;->this$0:Lcom/android/server/supl/CNetSSLSocketProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 72
    iput-object p2, p0, Lcom/android/server/supl/CNetSSLSocketProvider$ConnectThread;->Host_port:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/supl/CNetSSLSocketProvider$ConnectThread;->this$0:Lcom/android/server/supl/CNetSSLSocketProvider;

    iget-object v1, p0, Lcom/android/server/supl/CNetSSLSocketProvider$ConnectThread;->Host_port:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/supl/CNetSSLSocketProvider;->ConnectProc(Ljava/lang/String;)I

    .line 76
    return-void
.end method
