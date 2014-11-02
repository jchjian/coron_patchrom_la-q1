.class Lcom/android/server/supl/CNetSocketProvider$ReceiveThread;
.super Ljava/lang/Thread;
.source "CNetSocketProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/supl/CNetSocketProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiveThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/supl/CNetSocketProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/supl/CNetSocketProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/server/supl/CNetSocketProvider$ReceiveThread;->this$0:Lcom/android/server/supl/CNetSocketProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/supl/CNetSocketProvider;Lcom/android/server/supl/CNetSocketProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/supl/CNetSocketProvider$ReceiveThread;-><init>(Lcom/android/server/supl/CNetSocketProvider;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/supl/CNetSocketProvider$ReceiveThread;->this$0:Lcom/android/server/supl/CNetSocketProvider;

    #calls: Lcom/android/server/supl/CNetSocketProvider;->ReadProc()V
    invoke-static {v0}, Lcom/android/server/supl/CNetSocketProvider;->access$000(Lcom/android/server/supl/CNetSocketProvider;)V

    .line 51
    return-void
.end method
