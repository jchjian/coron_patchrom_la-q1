.class public Lcom/android/server/supl/SUPLService$SUPLThread;
.super Ljava/lang/Thread;
.source "SUPLService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/supl/SUPLService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SUPLThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    const-string v0, "SUPL Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/android/server/supl/SUPLService$SUPLThread;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method public static getServiceInstance(Landroid/content/Context;)Lcom/android/server/supl/SUPLService;
    .locals 4
    .parameter "context"

    .prologue
    .line 73
    new-instance v1, Lcom/android/server/supl/SUPLService$SUPLThread;

    invoke-direct {v1, p0}, Lcom/android/server/supl/SUPLService$SUPLThread;-><init>(Landroid/content/Context;)V

    .line 75
    .local v1, thread:Lcom/android/server/supl/SUPLService$SUPLThread;
    invoke-virtual {v1}, Lcom/android/server/supl/SUPLService$SUPLThread;->start()V

    .line 76
    monitor-enter v1

    .line 77
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/server/supl/SUPLService;->access$000()Lcom/android/server/supl/SUPLService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    .line 80
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, ignore:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "SUPLService"

    const-string v3, "Unexpected InterruptedException while waiting for SUPLService Thread"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    .end local v0           #ignore:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    invoke-static {}, Lcom/android/server/supl/SUPLService;->access$000()Lcom/android/server/supl/SUPLService;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 56
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    new-instance v1, Lcom/android/server/supl/SUPLService;

    iget-object v2, p0, Lcom/android/server/supl/SUPLService$SUPLThread;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/supl/SUPLService;-><init>(Landroid/content/Context;Lcom/android/server/supl/SUPLService$1;)V

    invoke-static {v1}, Lcom/android/server/supl/SUPLService;->access$002(Lcom/android/server/supl/SUPLService;)Lcom/android/server/supl/SUPLService;

    .line 60
    new-instance v1, Lcom/android/server/supl/SUPLServer;

    invoke-static {}, Lcom/android/server/supl/SUPLService;->access$000()Lcom/android/server/supl/SUPLService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/supl/SUPLService$SUPLThread;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/server/supl/SUPLServer;-><init>(Lcom/android/server/supl/SUPLService;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/android/server/supl/SUPLService;->access$202(Lcom/android/server/supl/SUPLServer;)Lcom/android/server/supl/SUPLServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :try_start_1
    invoke-static {}, Lcom/android/server/supl/SUPLService;->access$200()Lcom/android/server/supl/SUPLServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/supl/SUPLServer;->start()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 67
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 69
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, ignore:Ljava/io/IOException;
    :try_start_3
    const-string v1, "SUPLService"

    const-string v2, "====>>> IO Exception  error with starting SUPL Server <<<==="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    .end local v0           #ignore:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
