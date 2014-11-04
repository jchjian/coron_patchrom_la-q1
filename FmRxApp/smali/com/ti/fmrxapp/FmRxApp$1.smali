.class Lcom/ti/fmrxapp/FmRxApp$1;
.super Landroid/os/Handler;
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
.field sb:Ljava/lang/StringBuilder;

.field sbPs:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/ti/fmrxapp/FmRxApp;


# direct methods
.method constructor <init>(Lcom/ti/fmrxapp/FmRxApp;)V
    .locals 0
    .parameter

    .prologue
    .line 671
    iput-object p1, p0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 33
    .parameter "msg"

    .prologue
    .line 677
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v29, v0

    packed-switch v29, :pswitch_data_0

    .line 1130
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 685
    :pswitch_1
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_FM_ENABLED"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->pd:Landroid/app/ProgressDialog;
    invoke-static/range {v29 .. v29}, Lcom/ti/fmrxapp/FmRxApp;->access$000(Lcom/ti/fmrxapp/FmRxApp;)Landroid/app/ProgressDialog;

    move-result-object v29

    if-eqz v29, :cond_1

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->pd:Landroid/app/ProgressDialog;
    invoke-static/range {v29 .. v29}, Lcom/ti/fmrxapp/FmRxApp;->access$000(Lcom/ti/fmrxapp/FmRxApp;)Landroid/app/ProgressDialog;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/ProgressDialog;->dismiss()V

    .line 689
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    #calls: Lcom/ti/fmrxapp/FmRxApp;->loadDefaultConfiguration()V
    invoke-static/range {v29 .. v29}, Lcom/ti/fmrxapp/FmRxApp;->access$100(Lcom/ti/fmrxapp/FmRxApp;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    const v30, 0x7f030003

    invoke-virtual/range {v29 .. v30}, Lcom/ti/fmrxapp/FmRxApp;->setContentView(I)V

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    #setter for: Lcom/ti/fmrxapp/FmRxApp;->mToggleMute:Z
    invoke-static/range {v29 .. v30}, Lcom/ti/fmrxapp/FmRxApp;->access$202(Lcom/ti/fmrxapp/FmRxApp;Z)Z

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    #calls: Lcom/ti/fmrxapp/FmRxApp;->initControls()V
    invoke-static/range {v29 .. v29}, Lcom/ti/fmrxapp/FmRxApp;->access$300(Lcom/ti/fmrxapp/FmRxApp;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    #calls: Lcom/ti/fmrxapp/FmRxApp;->setButtonLabels()V
    invoke-static/range {v29 .. v29}, Lcom/ti/fmrxapp/FmRxApp;->access$400(Lcom/ti/fmrxapp/FmRxApp;)V

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->imgFmPower:Landroid/widget/ImageView;
    invoke-static/range {v29 .. v29}, Lcom/ti/fmrxapp/FmRxApp;->access$500(Lcom/ti/fmrxapp/FmRxApp;)Landroid/widget/ImageView;

    move-result-object v29

    const v30, 0x7f020013

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 699
    invoke-static {}, Lcom/ti/fmrxapp/FmRxApp;->access$600()Z

    move-result v29

    if-nez v29, :cond_0

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    sget-object v30, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    sget v31, Lcom/ti/fmrxapp/FmRxApp;->sBand:I

    invoke-virtual/range {v30 .. v31}, Lcom/ti/fm/FmRadio;->rxSetBand_nb(I)Z

    move-result v30

    #setter for: Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z
    invoke-static/range {v29 .. v30}, Lcom/ti/fmrxapp/FmRxApp;->access$702(Lcom/ti/fmrxapp/FmRxApp;Z)Z

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z
    invoke-static/range {v29 .. v29}, Lcom/ti/fmrxapp/FmRxApp;->access$700(Lcom/ti/fmrxapp/FmRxApp;)Z

    move-result v29

    if-nez v29, :cond_0

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    const v30, 0x7f050001

    const v31, 0x7f05007d

    invoke-virtual/range {v29 .. v31}, Lcom/ti/fmrxapp/FmRxApp;->showAlert(II)V

    goto/16 :goto_0

    .line 731
    :pswitch_2
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ---EVENT_MONO_STEREO_CHANGE"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mMode:I
    invoke-static/range {v29 .. v29}, Lcom/ti/fmrxapp/FmRxApp;->access$800(Lcom/ti/fmrxapp/FmRxApp;)I

    move-result v29

    if-nez v29, :cond_0

    goto/16 :goto_0

    .line 744
    :pswitch_3
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ---EVENT_MONO_STEREO_DISPLAY"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Integer;

    .line 748
    .local v17, mode:Ljava/lang/Integer;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v29

    if-nez v29, :cond_0

    goto/16 :goto_0

    .line 756
    .end local v17           #mode:Ljava/lang/Integer;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Integer;

    .line 757
    .local v16, isSpeaker:Ljava/lang/Integer;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v29

    if-nez v29, :cond_2

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->imgFmSpk:Landroid/widget/ImageView;
    invoke-static/range {v29 .. v29}, Lcom/ti/fmrxapp/FmRxApp;->access$900(Lcom/ti/fmrxapp/FmRxApp;)Landroid/widget/ImageView;

    move-result-object v29

    const v30, 0x7f020011

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 760
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->imgFmSpk:Landroid/widget/ImageView;
    invoke-static/range {v29 .. v29}, Lcom/ti/fmrxapp/FmRxApp;->access$900(Lcom/ti/fmrxapp/FmRxApp;)Landroid/widget/ImageView;

    move-result-object v29

    const v30, 0x7f02001b

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 768
    .end local v16           #isSpeaker:Ljava/lang/Integer;
    :pswitch_5
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ---EVENT_MUTE_CHANGE  "

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 774
    :pswitch_6
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ---EVENT_SEEK_STOPPED"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/Integer;

    .line 779
    .local v25, seekFreq:Ljava/lang/Integer;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x447a

    div-float v29, v29, v30

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    sput-object v29, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    .line 781
    sget-object v29, Lcom/ti/fmrxapp/FmRxApp;->txtFmRxTunedFreq:Landroid/widget/TextView;

    sget-object v30, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 787
    .end local v25           #seekFreq:Ljava/lang/Integer;
    :pswitch_7
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_FM_DISABLED"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lcom/ti/fmrxapp/FmRxApp;->access$602(Z)Z

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    #calls: Lcom/ti/fmrxapp/FmRxApp;->saveDefaultConfiguration()V
    invoke-static/range {v29 .. v29}, Lcom/ti/fmrxapp/FmRxApp;->access$1000(Lcom/ti/fmrxapp/FmRxApp;)V

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/ti/fmrxapp/FmRxApp;->finish()V

    goto/16 :goto_0

    .line 800
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 803
    .local v3, freq:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x447a

    div-float v29, v29, v30

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    sput-object v29, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    .line 805
    sget-object v29, Lcom/ti/fmrxapp/FmRxApp;->txtFmRxTunedFreq:Landroid/widget/TextView;

    sget-object v30, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    #setter for: Lcom/ti/fmrxapp/FmRxApp;->mSeekState:Z
    invoke-static/range {v29 .. v30}, Lcom/ti/fmrxapp/FmRxApp;->access$1102(Lcom/ti/fmrxapp/FmRxApp;Z)Z

    goto/16 :goto_0

    .line 826
    .end local v3           #freq:Ljava/lang/Integer;
    :pswitch_9
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_VOLUME_CHANGE"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    #setter for: Lcom/ti/fmrxapp/FmRxApp;->mVolState:Z
    invoke-static/range {v29 .. v30}, Lcom/ti/fmrxapp/FmRxApp;->access$1202(Lcom/ti/fmrxapp/FmRxApp;Z)Z

    goto/16 :goto_0

    .line 837
    :pswitch_a
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_COMPLETE_SCAN_PROGRESS"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/Integer;

    .line 843
    .local v21, progress:Ljava/lang/Integer;
    goto/16 :goto_0

    .line 850
    .end local v21           #progress:Ljava/lang/Integer;
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Ljava/lang/Integer;

    .line 851
    .local v27, tuneFreq:Ljava/lang/Integer;
    const-string v29, "FmRxApp"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "enter handleMessage ----EVENT_TUNE_COMPLETE tuneFreq"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x447a

    div-float v29, v29, v30

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    sput-object v29, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    .line 856
    sget-object v29, Lcom/ti/fmrxapp/FmRxApp;->txtFmRxTunedFreq:Landroid/widget/TextView;

    sget-object v30, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 858
    invoke-static {}, Lcom/ti/fmrxapp/FmRxApp;->access$600()Z

    move-result v29

    if-nez v29, :cond_0

    .line 860
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Lcom/ti/fmrxapp/FmRxApp;->access$602(Z)Z

    goto/16 :goto_0

    .line 867
    .end local v27           #tuneFreq:Ljava/lang/Integer;
    :pswitch_c
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_RDS_TEXT"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    .line 875
    .local v23, rds:Ljava/lang/String;
    const-string v29, "FmRxApp"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "enter handleMessage ----EVENT_RDS_TEXT rds"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "[RDS] "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ti/fmrxapp/FmRxApp$1;->sb:Ljava/lang/StringBuilder;

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->sb:Ljava/lang/StringBuilder;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    const-string v29, "FmRxApp"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "enter handleMessage ----EVENT_RDS_TEXT sb.toString()"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->sb:Ljava/lang/StringBuilder;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 887
    .end local v23           #rds:Ljava/lang/String;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    .line 888
    .local v20, pi:Ljava/lang/String;
    const-string v29, "FmRxApp"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "enter handleMessage ----EVENT_PI_CODE rds"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 893
    .end local v20           #pi:Ljava/lang/String;
    :pswitch_e
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_SET_CHANNELSPACE"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 897
    :pswitch_f
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_GET_CHANNEL_SPACE_CHANGE"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    .line 901
    .local v5, gChSpace:Ljava/lang/Long;
    goto/16 :goto_0

    .line 906
    .end local v5           #gChSpace:Ljava/lang/Long;
    :pswitch_10
    const-string v29, "FmRxApp"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "enter handleMessage ----EVENT_BAND_CHANGE "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget v31, Lcom/ti/fmrxapp/FmRxApp;->sBand:I

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-static {}, Lcom/ti/fmrxapp/FmRxApp;->access$600()Z

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_3

    .line 915
    sget v29, Lcom/ti/fmrxapp/FmRxApp;->sBand:I

    packed-switch v29, :pswitch_data_1

    .line 931
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    sget-object v30, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    sget-object v31, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Float;->floatValue()F

    move-result v31

    const/high16 v32, 0x447a

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/ti/fm/FmRadio;->rxTune_nb(I)Z

    move-result v30

    #setter for: Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z
    invoke-static/range {v29 .. v30}, Lcom/ti/fmrxapp/FmRxApp;->access$702(Lcom/ti/fmrxapp/FmRxApp;Z)Z

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z
    invoke-static/range {v29 .. v29}, Lcom/ti/fmrxapp/FmRxApp;->access$700(Lcom/ti/fmrxapp/FmRxApp;)Z

    move-result v29

    if-nez v29, :cond_0

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    const v30, 0x7f050001

    const v31, 0x7f05007e

    invoke-virtual/range {v29 .. v31}, Lcom/ti/fmrxapp/FmRxApp;->showAlert(II)V

    goto/16 :goto_0

    .line 917
    :pswitch_11
    const/high16 v29, 0x42af

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    sput-object v29, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    goto :goto_1

    .line 920
    :pswitch_12
    const/high16 v29, 0x4298

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    sput-object v29, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    goto :goto_1

    .line 923
    :pswitch_13
    const v29, 0x4283999a

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    sput-object v29, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    goto :goto_1

    .line 926
    :pswitch_14
    const v29, 0x43226666

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    sput-object v29, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    goto :goto_1

    .line 942
    :pswitch_15
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_ENABLE_RDS"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 946
    :pswitch_16
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_SET_WRAP_SEEK"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 951
    :pswitch_17
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_SET_RDS_AF"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 955
    :pswitch_18
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_SET_RDS_SYSTEM"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 959
    :pswitch_19
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_DISABLE_RDS"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 965
    :pswitch_1a
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_SET_DEEMP_FILTER"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 970
    :pswitch_1b
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_PS_CHANGED"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    .line 979
    .local v22, ps:Ljava/lang/String;
    const-string v29, "FmRxApp"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "ps  String is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "[PS] "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ti/fmrxapp/FmRxApp$1;->sbPs:Ljava/lang/StringBuilder;

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->sbPs:Ljava/lang/StringBuilder;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 987
    .end local v22           #ps:Ljava/lang/String;
    :pswitch_1c
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_SET_RSSI_THRESHHOLD"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    #setter for: Lcom/ti/fmrxapp/FmRxApp;->configurationState:I
    invoke-static/range {v29 .. v30}, Lcom/ti/fmrxapp/FmRxApp;->access$1302(Lcom/ti/fmrxapp/FmRxApp;I)I

    goto/16 :goto_0

    .line 995
    :pswitch_1d
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_SET_RF_DEPENDENT_MUTE"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1000
    :pswitch_1e
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_COMPLETE_SCAN_STOP"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->imgFmCompScan:Landroid/widget/ImageView;
    invoke-static/range {v29 .. v29}, Lcom/ti/fmrxapp/FmRxApp;->access$1400(Lcom/ti/fmrxapp/FmRxApp;)Landroid/widget/ImageView;

    move-result-object v29

    const v30, 0x7f02000c

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1005
    :pswitch_1f
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_COMPLETE_SCAN_DONE"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, [I

    move-object/from16 v2, v29

    check-cast v2, [I

    .line 1008
    .local v2, channelList:[I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v19, v0

    .line 1009
    .local v19, noOfChannels:I
    const/high16 v26, 0x42af

    .line 1011
    .local v26, station:F
    const-string v29, "FmRxApp"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "noOfChannels "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    sget-object v29, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequencyBeforeScan:Ljava/lang/Float;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v29

    const/high16 v30, 0x447a

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v18, v0

    .line 1026
    .local v18, mtunetation:I
    if-lez v19, :cond_4

    .line 1027
    add-int/lit8 v29, v19, -0x1

    aget v18, v2, v29

    .line 1030
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    #setter for: Lcom/ti/fmrxapp/FmRxApp;->mToggleCompScan:Z
    invoke-static/range {v29 .. v30}, Lcom/ti/fmrxapp/FmRxApp;->access$1502(Lcom/ti/fmrxapp/FmRxApp;Z)Z

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    #setter for: Lcom/ti/fmrxapp/FmRxApp;->mCompScanStat:Z
    invoke-static/range {v29 .. v30}, Lcom/ti/fmrxapp/FmRxApp;->access$1602(Lcom/ti/fmrxapp/FmRxApp;Z)Z

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    sget-object v30, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ti/fm/FmRadio;->rxTune_nb(I)Z

    move-result v30

    #setter for: Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z
    invoke-static/range {v29 .. v30}, Lcom/ti/fmrxapp/FmRxApp;->access$702(Lcom/ti/fmrxapp/FmRxApp;Z)Z

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    const/16 v30, 0x4

    invoke-virtual/range {v29 .. v30}, Lcom/ti/fmrxapp/FmRxApp;->finishActivity(I)V

    goto/16 :goto_0

    .line 1040
    .end local v2           #channelList:[I
    .end local v18           #mtunetation:I
    .end local v19           #noOfChannels:I
    .end local v26           #station:F
    :pswitch_20
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    .line 1041
    .local v4, gBand:Ljava/lang/Long;
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_GET_BAND"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const-string v29, "FmRxApp"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "enter handleMessage ----gBand"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1047
    .end local v4           #gBand:Ljava/lang/Long;
    :pswitch_21
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    .line 1048
    .local v8, gFreq:Ljava/lang/Integer;
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_GET_FREQUENCY"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1052
    .end local v8           #gFreq:Ljava/lang/Integer;
    :pswitch_22
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    .line 1053
    .local v15, gVol:Ljava/lang/Long;
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_GET_VOLUME"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const-string v29, "FmRxApp"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "enter handleMessage ----gVol"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1057
    .end local v15           #gVol:Ljava/lang/Long;
    :pswitch_23
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    .line 1058
    .local v9, gMode:Ljava/lang/Long;
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_GET_MODE"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    const-string v29, "FmRxApp"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "enter handleMessage ----gMode"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1063
    .end local v9           #gMode:Ljava/lang/Long;
    :pswitch_24
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    .line 1065
    .local v6, gCompScan:Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    const-wide/16 v31, 0x1

    cmp-long v29, v29, v31

    if-nez v29, :cond_5

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->imgFmCompScan:Landroid/widget/ImageView;
    invoke-static/range {v29 .. v29}, Lcom/ti/fmrxapp/FmRxApp;->access$1400(Lcom/ti/fmrxapp/FmRxApp;)Landroid/widget/ImageView;

    move-result-object v29

    const v30, 0x7f02000c

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1069
    :cond_5
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_GET_COMP_SCAN"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1073
    .end local v6           #gCompScan:Ljava/lang/Long;
    :pswitch_25
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    .line 1075
    .local v10, gMuteMode:Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    const-wide/16 v31, 0x1

    cmp-long v29, v29, v31

    if-nez v29, :cond_7

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->imgFmVolume:Landroid/widget/ImageView;
    invoke-static/range {v29 .. v29}, Lcom/ti/fmrxapp/FmRxApp;->access$1700(Lcom/ti/fmrxapp/FmRxApp;)Landroid/widget/ImageView;

    move-result-object v29

    const v30, 0x7f02000f

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1080
    :cond_6
    :goto_2
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_GET_MUTE_MODE"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1077
    :cond_7
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    const-wide/16 v31, 0x0

    cmp-long v29, v29, v31

    if-nez v29, :cond_6

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->imgFmVolume:Landroid/widget/ImageView;
    invoke-static/range {v29 .. v29}, Lcom/ti/fmrxapp/FmRxApp;->access$1700(Lcom/ti/fmrxapp/FmRxApp;)Landroid/widget/ImageView;

    move-result-object v29

    const v30, 0x7f020010

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1085
    .end local v10           #gMuteMode:Ljava/lang/Long;
    :pswitch_26
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Long;

    .line 1086
    .local v13, gRfMuteMode:Ljava/lang/Long;
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_GET_RF_MUTE_MODE"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1091
    .end local v13           #gRfMuteMode:Ljava/lang/Long;
    :pswitch_27
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Long;

    .line 1092
    .local v14, gRssi:Ljava/lang/Long;
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_GET_RSSI_THRESHHOLD"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const-string v29, "FmRxApp"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "enter handleMessage ----gRssi"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1097
    .end local v14           #gRssi:Ljava/lang/Long;
    :pswitch_28
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/Integer;

    .line 1098
    .local v24, rssi:Ljava/lang/Integer;
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_GET_RSSI"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const-string v29, "FmRxApp"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "enter handleMessage ----rssi"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1102
    .end local v24           #rssi:Ljava/lang/Integer;
    :pswitch_29
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    .line 1103
    .local v7, gFilter:Ljava/lang/Long;
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_GET_DEEMPHASIS_FILTER"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const-string v29, "FmRxApp"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "enter handleMessage ----gFilter"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1109
    .end local v7           #gFilter:Ljava/lang/Long;
    :pswitch_2a
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    .line 1110
    .local v12, gRdsSys:Ljava/lang/Long;
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_GET_RDS_SYSTEM"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const-string v29, "FmRxApp"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "enter handleMessage ----gRdsSys"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1114
    .end local v12           #gRdsSys:Ljava/lang/Long;
    :pswitch_2b
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    .line 1115
    .local v11, gRdsMask:Ljava/lang/Long;
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_GET_RDS_GROUPMASK"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    const-string v29, "FmRxApp"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "enter handleMessage ----gRdsMask"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1120
    .end local v11           #gRdsMask:Ljava/lang/Long;
    :pswitch_2c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/Integer;

    .line 1121
    .local v28, vol:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$1;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v30

    #setter for: Lcom/ti/fmrxapp/FmRxApp;->mVolume:I
    invoke-static/range {v29 .. v30}, Lcom/ti/fmrxapp/FmRxApp;->access$1802(Lcom/ti/fmrxapp/FmRxApp;I)I

    .line 1122
    const-string v29, "FmRxApp"

    const-string v30, "enter handleMessage ----EVENT_MASTER_VOLUME_CHANGED"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    const-string v29, "FmRxApp"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "enter handleMessage ----mVolume"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 677
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_5
        :pswitch_6
        :pswitch_c
        :pswitch_10
        :pswitch_3
        :pswitch_15
        :pswitch_18
        :pswitch_17
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_2c
        :pswitch_e
        :pswitch_1f
        :pswitch_1e
        :pswitch_f
        :pswitch_d
        :pswitch_0
        :pswitch_20
        :pswitch_22
        :pswitch_23
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_29
        :pswitch_28
        :pswitch_2a
        :pswitch_2b
        :pswitch_21
        :pswitch_a
        :pswitch_16
        :pswitch_24
        :pswitch_4
    .end packed-switch

    .line 915
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method
