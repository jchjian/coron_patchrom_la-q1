.class Landroid/server/BluetoothAdapterStateMachine$HotOff;
.super Lcom/android/internal/util/State;
.source "BluetoothAdapterStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothAdapterStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HotOff"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothAdapterStateMachine;


# direct methods
.method private constructor <init>(Landroid/server/BluetoothAdapterStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothAdapterStateMachine;Landroid/server/BluetoothAdapterStateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 364
    invoke-direct {p0, p1}, Landroid/server/BluetoothAdapterStateMachine$HotOff;-><init>(Landroid/server/BluetoothAdapterStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "message"

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xb

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HotOff process message: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$600(Ljava/lang/String;)V

    .line 374
    const/4 v0, 0x1

    .line 375
    .local v0, retValue:Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    move v0, v2

    .line 453
    .end local v0           #retValue:Z
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 378
    .restart local v0       #retValue:Z
    :sswitch_1
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mPublicState:I
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$3300(Landroid/server/BluetoothAdapterStateMachine;)I

    move-result v1

    if-ne v1, v7, :cond_1

    .line 379
    const-string v1, "STATE_TURNING_OFF,not turn on++++ "

    #calls: Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$600(Ljava/lang/String;)V

    move v0, v2

    .line 380
    goto :goto_0

    .line 383
    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->broadcastState(I)V
    invoke-static {v1, v6}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 384
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 385
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->persistSwitchSetting(Z)V
    invoke-static {v1, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$1000(Landroid/server/BluetoothAdapterStateMachine;Z)V

    .line 390
    :cond_2
    :sswitch_2
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/server/BluetoothService;->switchConnectable(Z)V

    .line 391
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mSwitching:Landroid/server/BluetoothAdapterStateMachine$Switching;
    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$3400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$Switching;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$3500(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 395
    :sswitch_3
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->shutoffBluetooth()V
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$3000(Landroid/server/BluetoothAdapterStateMachine;)V

    .line 399
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0x6a

    const-wide/16 v3, 0x14

    invoke-virtual {v1, v2, v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 403
    :sswitch_4
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mPowerOff:Landroid/server/BluetoothAdapterStateMachine$PowerOff;
    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1200(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$PowerOff;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$3600(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 404
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mDelayBroadcastStateOff:Z
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2900(Landroid/server/BluetoothAdapterStateMachine;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->broadcastState(I)V
    invoke-static {v1, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Landroid/server/BluetoothAdapterStateMachine;I)V

    goto :goto_0

    .line 410
    :sswitch_5
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mPublicState:I
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$3300(Landroid/server/BluetoothAdapterStateMachine;)I

    move-result v1

    if-ne v1, v7, :cond_3

    .line 411
    const-string v1, "STATE_TURNING_OFF,not turn on++++ "

    #calls: Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$600(Ljava/lang/String;)V

    move v0, v2

    .line 412
    goto :goto_0

    .line 415
    :cond_3
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->getBluetoothPersistedSetting()Z
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$1500(Landroid/server/BluetoothAdapterStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->broadcastState(I)V
    invoke-static {v1, v6}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 417
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mSwitching:Landroid/server/BluetoothAdapterStateMachine$Switching;
    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$3400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$Switching;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$3700(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 418
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/server/BluetoothService;->switchConnectable(Z)V

    goto/16 :goto_0

    .line 422
    :sswitch_6
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mPerProcessState:Landroid/server/BluetoothAdapterStateMachine$PerProcessState;
    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$3800(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$PerProcessState;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$3900(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 426
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/server/BluetoothAdapterStateMachine;->access$4000(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    .line 428
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/server/BluetoothService;->switchConnectable(Z)V

    goto/16 :goto_0

    .line 431
    :sswitch_7
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothStateChangeCallback;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->perProcessCallback(ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V
    invoke-static {v3, v2, v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2300(Landroid/server/BluetoothAdapterStateMachine;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    goto/16 :goto_0

    .line 436
    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v2, 0x5

    const/4 v3, 0x0

    #calls: Landroid/server/BluetoothAdapterStateMachine;->recoverStateMachine(ILjava/lang/Object;)V
    invoke-static {v1, v2, v3}, Landroid/server/BluetoothAdapterStateMachine;->access$4100(Landroid/server/BluetoothAdapterStateMachine;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 441
    :sswitch_9
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/server/BluetoothAdapterStateMachine;->access$4200(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 445
    :sswitch_a
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->shutoffBluetooth()V
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$3000(Landroid/server/BluetoothAdapterStateMachine;)V

    .line 446
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mPowerOff:Landroid/server/BluetoothAdapterStateMachine$PowerOff;
    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1200(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$PowerOff;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$4300(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 447
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->broadcastState(I)V
    invoke-static {v1, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Landroid/server/BluetoothAdapterStateMachine;I)V

    goto/16 :goto_0

    .line 375
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_6
        0x4 -> :sswitch_7
        0x5 -> :sswitch_9
        0x36 -> :sswitch_8
        0x37 -> :sswitch_3
        0x38 -> :sswitch_5
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x6a -> :sswitch_4
        0x6b -> :sswitch_a
    .end sparse-switch
.end method
