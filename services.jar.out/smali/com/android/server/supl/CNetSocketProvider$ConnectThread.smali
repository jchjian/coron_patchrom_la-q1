.class Lcom/android/server/supl/CNetSocketProvider$ConnectThread;
.super Ljava/lang/Thread;
.source "CNetSocketProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/supl/CNetSocketProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectThread"
.end annotation


# instance fields
.field private Host_port:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/supl/CNetSocketProvider;


# direct methods
.method constructor <init>(Lcom/android/server/supl/CNetSocketProvider;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "Host_port"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/server/supl/CNetSocketProvider$ConnectThread;->this$0:Lcom/android/server/supl/CNetSocketProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/android/server/supl/CNetSocketProvider$ConnectThread;->Host_port:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/supl/CNetSocketProvider$ConnectThread;->this$0:Lcom/android/server/supl/CNetSocketProvider;

    iget-object v1, p0, Lcom/android/server/supl/CNetSocketProvider$ConnectThread;->Host_port:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/supl/CNetSocketProvider;->ConnectProc(Ljava/lang/String;)I

    .line 65
    return-void
.end method
