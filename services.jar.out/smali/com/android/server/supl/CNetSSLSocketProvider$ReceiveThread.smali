.class Lcom/android/server/supl/CNetSSLSocketProvider$ReceiveThread;
.super Ljava/lang/Thread;
.source "CNetSSLSocketProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/supl/CNetSSLSocketProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiveThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/supl/CNetSSLSocketProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/supl/CNetSSLSocketProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/server/supl/CNetSSLSocketProvider$ReceiveThread;->this$0:Lcom/android/server/supl/CNetSSLSocketProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/supl/CNetSSLSocketProvider;Lcom/android/server/supl/CNetSSLSocketProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/supl/CNetSSLSocketProvider$ReceiveThread;-><init>(Lcom/android/server/supl/CNetSSLSocketProvider;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/supl/CNetSSLSocketProvider$ReceiveThread;->this$0:Lcom/android/server/supl/CNetSSLSocketProvider;

    #calls: Lcom/android/server/supl/CNetSSLSocketProvider;->ReadProc()V
    invoke-static {v0}, Lcom/android/server/supl/CNetSSLSocketProvider;->access$000(Lcom/android/server/supl/CNetSSLSocketProvider;)V

    .line 62
    return-void
.end method
