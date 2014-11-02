.class Lcom/android/server/supl/CNetSSLEngineProvider$ReceiveThread;
.super Ljava/lang/Thread;
.source "CNetSSLEngineProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/supl/CNetSSLEngineProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiveThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/supl/CNetSSLEngineProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/supl/CNetSSLEngineProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/server/supl/CNetSSLEngineProvider$ReceiveThread;->this$0:Lcom/android/server/supl/CNetSSLEngineProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/supl/CNetSSLEngineProvider;Lcom/android/server/supl/CNetSSLEngineProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/supl/CNetSSLEngineProvider$ReceiveThread;-><init>(Lcom/android/server/supl/CNetSSLEngineProvider;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/supl/CNetSSLEngineProvider$ReceiveThread;->this$0:Lcom/android/server/supl/CNetSSLEngineProvider;

    #calls: Lcom/android/server/supl/CNetSSLEngineProvider;->ReadProc()V
    invoke-static {v0}, Lcom/android/server/supl/CNetSSLEngineProvider;->access$100(Lcom/android/server/supl/CNetSSLEngineProvider;)V

    .line 43
    return-void
.end method
