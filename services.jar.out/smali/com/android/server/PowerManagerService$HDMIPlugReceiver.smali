.class final Lcom/android/server/PowerManagerService$HDMIPlugReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HDMIPlugReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/server/PowerManagerService$HDMIPlugReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$HDMIPlugReceiver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 478
    iget-object v1, p0, Lcom/android/server/PowerManagerService$HDMIPlugReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHdmiPlugged:Z
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$1200(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    .line 479
    .local v0, oldStatus:Z
    iget-object v1, p0, Lcom/android/server/PowerManagerService$HDMIPlugReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/android/server/PowerManagerService;->mHdmiPlugged:Z
    invoke-static {v1, v2}, Lcom/android/server/PowerManagerService;->access$1202(Lcom/android/server/PowerManagerService;Z)Z

    .line 480
    iget-object v1, p0, Lcom/android/server/PowerManagerService$HDMIPlugReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHdmiPlugged:Z
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$1200(Lcom/android/server/PowerManagerService;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 481
    iget-object v1, p0, Lcom/android/server/PowerManagerService$HDMIPlugReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$1300(Lcom/android/server/PowerManagerService;)V

    .line 482
    :cond_0
    return-void
.end method
