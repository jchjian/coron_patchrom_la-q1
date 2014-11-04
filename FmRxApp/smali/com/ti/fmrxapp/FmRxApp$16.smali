.class Lcom/ti/fmrxapp/FmRxApp$16;
.super Landroid/content/BroadcastReceiver;
.source "FmRxApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ti/fmrxapp/FmRxApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ti/fmrxapp/FmRxApp;


# direct methods
.method constructor <init>(Lcom/ti/fmrxapp/FmRxApp;)V
    .locals 0
    .parameter

    .prologue
    .line 2875
    iput-object p1, p0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 39
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2879
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 2881
    .local v9, fmAction:Ljava/lang/String;
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "gms:enter onReceive"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2882
    const-string v34, "android.intent.action.HEADSET_PLUG"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 2883
    const-string v34, "state"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    .line 2884
    .local v29, state:I
    if-nez v29, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mFmOn:Z
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2200(Lcom/ti/fmrxapp/FmRxApp;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 2885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    sget-object v35, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual/range {v35 .. v35}, Lcom/ti/fm/FmRadio;->rxDisable()Z

    move-result v35

    #setter for: Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z
    invoke-static/range {v34 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$702(Lcom/ti/fmrxapp/FmRxApp;Z)Z

    .line 2886
    const-string v34, "FmRxApp"

    const-string v35, "gms: will disable fmradio"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->finish()V

    .line 2890
    .end local v29           #state:I
    :cond_0
    const-string v34, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1

    .line 2891
    const-string v34, "state"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 2892
    .local v7, enabled:Z
    if-eqz v7, :cond_1

    .line 2893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    sget-object v35, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual/range {v35 .. v35}, Lcom/ti/fm/FmRadio;->rxDisable()Z

    move-result v35

    #setter for: Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z
    invoke-static/range {v34 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$702(Lcom/ti/fmrxapp/FmRxApp;Z)Z

    .line 2894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->finish()V

    .line 2898
    .end local v7           #enabled:Z
    :cond_1
    const-string v34, "fm.rx.intent.action.FM_ENABLED"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2

    .line 2899
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive FM_ENABLED_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x1

    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2904
    :cond_2
    const-string v34, "fm.rx.intent.action.FM_DISABLED"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_3

    .line 2905
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive FM_DISABLED_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x2

    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2910
    :cond_3
    const-string v34, "fm.rx.intent.action.SET_MODE_MONOSTEREO"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_4

    .line 2911
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive SET_MODE_MONO_STEREO_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x3

    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2916
    :cond_4
    const-string v34, "fm.rx.intent.action.DISPLAY_MODE_MONO_STEREO_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_5

    .line 2917
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive DISPLAY_MODE_MONO_STEREO_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    const-string v34, "fm.rx.intent.MODE_MONO_STEREO"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 2921
    .local v23, modeDisplay:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0xb

    move-object/from16 v0, v35

    move/from16 v1, v36

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2925
    .end local v23           #modeDisplay:Ljava/lang/Integer;
    :cond_5
    const-string v34, "fm.rx.intent.action.RDS_TEXT_CHANGED"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_6

    .line 2926
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive RDS_TEXT_CHANGED_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2937
    const-string v34, "fm.rx.intent.RADIOTEXT_CONVERTED_VALUE"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 2939
    .local v28, rdstext:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x9

    move-object/from16 v0, v35

    move/from16 v1, v36

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2943
    .end local v28           #rdstext:Ljava/lang/String;
    :cond_6
    const-string v34, "fm.rx.intent.action.PI_CODE_CHANGED_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_7

    .line 2944
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive PI_CODE_CHANGED_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    const-string v34, "fm.rx.intent.PI"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 2948
    .local v26, pi:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x19

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2952
    .end local v26           #pi:Ljava/lang/Integer;
    :cond_7
    const-string v34, "fm.rx.intent.action.TUNE_COMPLETE_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_8

    .line 2953
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive TUNE_COMPLETE_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2955
    const-string v34, "fm.rx.intent.TUNED_FREQUENCY"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v33

    .line 2958
    .local v33, tuneFreq:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x6

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2963
    .end local v33           #tuneFreq:I
    :cond_8
    const-string v34, "fm.rx.intent.action.COMPLETE_SCAN_PROGRESS_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_9

    .line 2964
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive COMPLETE_SCAN_PROGRESS_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    const-string v34, "fm.rx.intent.SCAN_PROGRESS"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 2970
    .local v27, progress:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x26

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2975
    .end local v27           #progress:I
    :cond_9
    const-string v34, "fm.rx.intent.action.VOLUME_CHANGED_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_a

    .line 2976
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive VOLUME_CHANGED_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x5

    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2981
    :cond_a
    const-string v34, "fm.rx.intent.action.MUTE_CHANGE_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_b

    .line 2982
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive MUTE_CHANGE_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x7

    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2987
    :cond_b
    const-string v34, "fm.rx.intent.action.SEEK_STOP_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_c

    .line 2988
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive SEEK_STOP_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    const-string v34, "fm.rx.intent.SEEK_FREQUENCY"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 2992
    .local v10, freq:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2996
    .end local v10           #freq:I
    :cond_c
    const-string v34, "fm.rx.intent.action.SEEK_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_d

    .line 2997
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive SEEK_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    const-string v34, "fm.rx.intent.SEEK_FREQUENCY"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 3001
    .restart local v10       #freq:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3005
    .end local v10           #freq:I
    :cond_d
    const-string v34, "fm.rx.intent.action.BAND_CHANGE_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_e

    .line 3006
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive BAND_CHANGE_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0xa

    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3012
    :cond_e
    const-string v34, "fm.rx.intent.action.GET_CHANNEL_SPACE_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_f

    .line 3013
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive GET_CHANNEL_SPACE_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    const-string v34, "fm.rx.intent.GET_CHANNEL_SPACE"

    const-wide/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 3018
    .local v4, chSpace:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x18

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3022
    .end local v4           #chSpace:Ljava/lang/Long;
    :cond_f
    const-string v34, "fm.rx.intent.action.SET_CHANNEL_SPACE_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_10

    .line 3023
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive SET_CHANNEL_SPACE_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x15

    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3030
    :cond_10
    const-string v34, "fm.rx.intent.action.GET_RDS_AF_SWITCH_MODE_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_11

    .line 3031
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive GET_RDS_AF_SWITCH_MODE_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    const-string v34, "fm.rx.intent.GET_RDS_AF_SWITCHMODE"

    const-wide/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    .line 3036
    .local v32, switchMode:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x1a

    move-object/from16 v0, v35

    move/from16 v1, v36

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3040
    .end local v32           #switchMode:Ljava/lang/Long;
    :cond_11
    const-string v34, "fm.rx.intent.action.GET_VOLUME_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_12

    .line 3041
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive GET_VOLUME_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    const-string v34, "fm.rx.intent.GET_VOLUME"

    const-wide/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    .line 3044
    .local v21, gVolume:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x1c

    move-object/from16 v0, v35

    move/from16 v1, v36

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3048
    .end local v21           #gVolume:Ljava/lang/Long;
    :cond_12
    const-string v34, "fm.rx.intent.action.GET_MONO_STEREO_MODE_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_13

    .line 3049
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive GET_MONO_STEREO_MODE_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    const-string v34, "fm.rx.intent.GET_MODE"

    const-wide/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 3053
    .local v14, gMode:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x1d

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v0, v1, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3057
    .end local v14           #gMode:Ljava/lang/Long;
    :cond_13
    const-string v34, "fm.rx.intent.action.GET_COMP_SCAN_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_14

    .line 3058
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive GET_COMP_SCAN_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    const-string v34, "fm.rx.intent.GET_COMP_SCAN"

    const-wide/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 3062
    .local v15, gMuteMode:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x28

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v0, v1, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3066
    .end local v15           #gMuteMode:Ljava/lang/Long;
    :cond_14
    const-string v34, "fm.rx.intent.action.GET_MUTE_MODE_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_15

    .line 3067
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive GET_MUTE_MODE_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    const-string v34, "fm.rx.intent.GET_MUTE_MODE"

    const-wide/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 3071
    .restart local v15       #gMuteMode:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x1e

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v0, v1, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3075
    .end local v15           #gMuteMode:Ljava/lang/Long;
    :cond_15
    const-string v34, "fm.rx.intent.action.GET_BAND_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_16

    .line 3076
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive GET_BAND_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    const-string v34, "fm.rx.intent.GET_BAND"

    const-wide/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 3079
    .local v11, gBand:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x1b

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v0, v1, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3083
    .end local v11           #gBand:Ljava/lang/Long;
    :cond_16
    const-string v34, "fm.rx.intent.action.GET_FREQUENCY"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_17

    .line 3084
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive GET_FREQUENCY_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    const-string v34, "fm.rx.intent.TUNED_FREQUENCY"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 3088
    .local v13, gFreq:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x25

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3092
    .end local v13           #gFreq:I
    :cond_17
    const-string v34, "fm.rx.intent.action.GET_RF_MUTE_MODE_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_18

    .line 3093
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive GET_RF_MUTE_MODE_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    const-string v34, "fm.rx.intent.GET_RF_MUTE_MODE"

    const-wide/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 3098
    .local v18, gRfMuteMode:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x1f

    move-object/from16 v0, v35

    move/from16 v1, v36

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3102
    .end local v18           #gRfMuteMode:Ljava/lang/Long;
    :cond_18
    const-string v34, "fm.rx.intent.action.GET_RSSI_THRESHHOLD_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_19

    .line 3103
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive GET_RSSI_THRESHHOLD_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    const-string v34, "fm.rx.intent.GET_RSSI_THRESHHOLD"

    const-wide/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 3108
    .local v20, gRssiThreshhold:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x20

    move-object/from16 v0, v35

    move/from16 v1, v36

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3112
    .end local v20           #gRssiThreshhold:Ljava/lang/Long;
    :cond_19
    const-string v34, "fm.rx.intent.action.GET_DEEMPHASIS_FILTER_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1a

    .line 3113
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive GET_DEEMPHASIS_FILTER_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    const-string v34, "fm.rx.intent.GET_DEEMPHASIS_FILTER"

    const-wide/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 3118
    .local v12, gFilter:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x21

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v0, v1, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3122
    .end local v12           #gFilter:Ljava/lang/Long;
    :cond_1a
    const-string v34, "fm.rx.intent.action.GET_RSSI_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1b

    .line 3123
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive GET_RSSI_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    const-string v34, "fm.rx.intent.GET_RSSI"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 3126
    .local v19, gRssi:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x22

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3130
    .end local v19           #gRssi:I
    :cond_1b
    const-string v34, "fm.rx.intent.action.GET_RDS_SYSTEM_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1c

    .line 3131
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive GET_RDS_SYSTEM_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3133
    const-string v34, "fm.rx.intent.GET_RDS_SYSTEM"

    const-wide/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 3135
    .local v17, gRdsSystem:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x23

    move-object/from16 v0, v35

    move/from16 v1, v36

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3139
    .end local v17           #gRdsSystem:Ljava/lang/Long;
    :cond_1c
    const-string v34, "fm.rx.intent.action.GET_RDS_GROUPMASK_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1d

    .line 3140
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive GET_RDS_GROUPMASK_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3143
    const-string v34, "fm.rx.intent.GET_RDS_GROUPMASK"

    const-wide/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 3145
    .local v16, gRdsMask:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x24

    move-object/from16 v0, v35

    move/from16 v1, v36

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3149
    .end local v16           #gRdsMask:Ljava/lang/Long;
    :cond_1d
    const-string v34, "fm.rx.intent.action.ENABLE_RDS_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1e

    .line 3150
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive ENABLE_RDS_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0xc

    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3156
    :cond_1e
    const-string v34, "fm.rx.intent.action.DISABLE_RDS_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1f

    .line 3157
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive DISABLE_RDS_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0xf

    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3163
    :cond_1f
    const-string v34, "fm.rx.intent.action.SET_RDS_AF_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_20

    .line 3164
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive SET_RDS_AF_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0xe

    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3170
    :cond_20
    const-string v34, "fm.rx.intent.action.SET_WRAP_SEEK_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_21

    .line 3171
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive SET_WRAP_SEEK_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x27

    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3177
    :cond_21
    const-string v34, "fm.rx.intent.action.SET_RDS_SYSTEM_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_22

    .line 3178
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive SET_RDS_SYSTEM_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0xd

    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3184
    :cond_22
    const-string v34, "fm.rx.intent.action.SET_DEEMP_FILTER_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_23

    .line 3185
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive SET_DEEMP_FILTER_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x10

    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3192
    :cond_23
    const-string v34, "fm.rx.intent.action.PS_CHANGED"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_24

    .line 3193
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive PS_CHANGED_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    const-string v34, "fm.rx.intent.PS_CONVERTED_VALUE"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3207
    .local v24, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x11

    move-object/from16 v0, v35

    move/from16 v1, v36

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3212
    .end local v24           #name:Ljava/lang/String;
    :cond_24
    const-string v34, "fm.rx.intent.action.SET_RSSI_THRESHHOLD_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_25

    .line 3213
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive SET_RSSI_THRESHHOLD_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x12

    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3220
    :cond_25
    const-string v34, "fm.rx.intent.action.SET_RF_DEPENDENT_MUTE_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_26

    .line 3221
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive SET_RF_DEPENDENT_MUTE_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x13

    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3228
    :cond_26
    const-string v34, "fm.rx.intent.action.COMPLETE_SCAN_DONE_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_28

    .line 3229
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive COMPLETE_SCAN_DONE_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 3234
    .local v8, extras:Landroid/os/Bundle;
    const-string v34, "fm.rx.intent.SCAN_LIST"

    move-object/from16 v0, v34

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    .line 3236
    .local v5, channelList:[I
    const-string v34, "fm.rx.intent.SCAN_LIST_COUNT"

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 3238
    .local v25, noOfChannels:I
    sput v25, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    .line 3240
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "sChannelNo---------------------- "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    sget v36, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #calls: Lcom/ti/fmrxapp/FmRxApp;->saveDefaultConfiguration()V
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$1000(Lcom/ti/fmrxapp/FmRxApp;)V

    .line 3245
    const-string v34, "fm.rx.intent.STATUS"

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v31

    .line 3249
    .local v31, status:I
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "noOfChannels"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/ti/fmrxapp/DBAdapter;->open()Lcom/ti/fmrxapp/DBAdapter;

    .line 3252
    const/16 v22, 0x0

    .local v22, i:I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_27

    .line 3253
    aget v34, v5, v22

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x447a

    div-float v30, v34, v35

    .line 3254
    .local v30, station:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, ""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v36

    const-string v37, ""

    const-string v38, ""

    invoke-virtual/range {v34 .. v38}, Lcom/ti/fmrxapp/DBAdapter;->insertStation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 3252
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 3258
    .end local v30           #station:F
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/ti/fmrxapp/DBAdapter;->close()V

    .line 3259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->readObject()V

    .line 3261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->imgFmCompScan:Landroid/widget/ImageView;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$1400(Lcom/ti/fmrxapp/FmRxApp;)Landroid/widget/ImageView;

    move-result-object v34

    const v35, 0x7f02000c

    invoke-virtual/range {v34 .. v35}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x16

    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v31

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    #setter for: Lcom/ti/fmrxapp/FmRxApp;->mToggleCompScan:Z
    invoke-static/range {v34 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$1502(Lcom/ti/fmrxapp/FmRxApp;Z)Z

    .line 3267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    #setter for: Lcom/ti/fmrxapp/FmRxApp;->mCompScanStat:Z
    invoke-static/range {v34 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$1602(Lcom/ti/fmrxapp/FmRxApp;Z)Z

    .line 3268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    sget-object v35, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    sget-object v36, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Float;->floatValue()F

    move-result v36

    const/high16 v37, 0x447a

    mul-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lcom/ti/fm/FmRadio;->rxTune_nb(I)Z

    move-result v35

    #setter for: Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z
    invoke-static/range {v34 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$702(Lcom/ti/fmrxapp/FmRxApp;Z)Z

    .line 3270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    const/16 v35, 0x4

    invoke-virtual/range {v34 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->finishActivity(I)V

    .line 3273
    .end local v5           #channelList:[I
    .end local v8           #extras:Landroid/os/Bundle;
    .end local v22           #i:I
    .end local v25           #noOfChannels:I
    .end local v31           #status:I
    :cond_28
    const-string v34, "fm.rx.intent.action.COMPLETE_SCAN_STOP_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_29

    .line 3274
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive COMPLETE_SCAN_STOP_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 3277
    .restart local v8       #extras:Landroid/os/Bundle;
    const-string v34, "fm.rx.intent.STATUS"

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v31

    .line 3278
    .restart local v31       #status:I
    const-string v34, "fm.rx.intent.LAST_SCAN_CHANNEL"

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 3280
    .local v6, channelValue:I
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Last Scanned Channel Frequency before calling Stop Scan"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x17

    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3287
    .end local v6           #channelValue:I
    .end local v8           #extras:Landroid/os/Bundle;
    .end local v31           #status:I
    :cond_29
    const-string v34, "fm.rx.intent.action.MASTER_VOLUME_CHANGED_ACTION"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2a

    .line 3288
    const-string v34, "FmRxApp"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enter onReceive MASTER_VOLUME_CHANGED_ACTION "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    const-string v35, "fm.rx.intent.MASTER_VOLUME"

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v35

    #setter for: Lcom/ti/fmrxapp/FmRxApp;->mVolume:I
    invoke-static/range {v34 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$1802(Lcom/ti/fmrxapp/FmRxApp;I)I

    .line 3291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v34, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v35, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;
    invoke-static/range {v35 .. v35}, Lcom/ti/fmrxapp/FmRxApp;->access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;

    move-result-object v35

    const/16 v36, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$16;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v37, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mVolume:I
    invoke-static/range {v37 .. v37}, Lcom/ti/fmrxapp/FmRxApp;->access$1800(Lcom/ti/fmrxapp/FmRxApp;)I

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3295
    :cond_2a
    return-void
.end method
