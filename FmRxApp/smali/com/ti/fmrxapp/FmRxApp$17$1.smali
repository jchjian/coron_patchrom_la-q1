.class Lcom/ti/fmrxapp/FmRxApp$17$1;
.super Ljava/lang/Object;
.source "FmRxApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ti/fmrxapp/FmRxApp$17;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ti/fmrxapp/FmRxApp$17;

.field final synthetic val$presetfreq:I


# direct methods
.method constructor <init>(Lcom/ti/fmrxapp/FmRxApp$17;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3342
    iput-object p1, p0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    iput p2, p0, Lcom/ti/fmrxapp/FmRxApp$17$1;->val$presetfreq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 25
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 3347
    move-object/from16 v0, p0

    iget v11, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->val$presetfreq:I

    .line 3348
    .local v11, id:I
    sget-object v21, Lcom/ti/fmrxapp/FmRxApp;->sStationbtn:[Ljava/lang/String;

    const/16 v22, 0x0

    aget-object v15, v21, v22

    .line 3349
    .local v15, stationbtn1:Ljava/lang/String;
    sget-object v21, Lcom/ti/fmrxapp/FmRxApp;->sStationbtn:[Ljava/lang/String;

    const/16 v22, 0x1

    aget-object v16, v21, v22

    .line 3350
    .local v16, stationbtn2:Ljava/lang/String;
    sget-object v21, Lcom/ti/fmrxapp/FmRxApp;->sStationbtn:[Ljava/lang/String;

    const/16 v22, 0x2

    aget-object v17, v21, v22

    .line 3351
    .local v17, stationbtn3:Ljava/lang/String;
    sget-object v21, Lcom/ti/fmrxapp/FmRxApp;->sStationbtn:[Ljava/lang/String;

    const/16 v22, 0x3

    aget-object v18, v21, v22

    .line 3352
    .local v18, stationbtn4:Ljava/lang/String;
    sget-object v21, Lcom/ti/fmrxapp/FmRxApp;->sStationbtn:[Ljava/lang/String;

    const/16 v22, 0x4

    aget-object v19, v21, v22

    .line 3353
    .local v19, stationbtn5:Ljava/lang/String;
    sget-object v21, Lcom/ti/fmrxapp/FmRxApp;->sStationbtn:[Ljava/lang/String;

    const/16 v22, 0x5

    aget-object v20, v21, v22

    .line 3354
    .local v20, stationbtn6:Ljava/lang/String;
    sget-object v21, Lcom/ti/fmrxapp/FmRxApp;->stations:Ljava/util/ArrayList;

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 3355
    .local v14, stationIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 3356
    .local v12, noloveindexb:Ljava/lang/Integer;
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 3357
    .local v13, noloveindexs:Ljava/lang/Integer;
    packed-switch v11, :pswitch_data_0

    .line 3427
    :goto_0
    :pswitch_0
    return-void

    .line 3359
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ti/fmrxapp/DBAdapter;->open()Lcom/ti/fmrxapp/DBAdapter;

    .line 3360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/ti/fmrxapp/DBAdapter;->getStationByFreq(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 3361
    .local v5, cur1:Landroid/database/Cursor;
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 3362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string v24, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v15, v2, v3}, Lcom/ti/fmrxapp/DBAdapter;->updateStation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3364
    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ti/fmrxapp/DBAdapter;->close()V

    .line 3366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ti/fmrxapp/FmRxApp;->readObject()V

    .line 3367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    #calls: Lcom/ti/fmrxapp/FmRxApp;->setButtonLabels()V
    invoke-static/range {v21 .. v21}, Lcom/ti/fmrxapp/FmRxApp;->access$400(Lcom/ti/fmrxapp/FmRxApp;)V

    goto/16 :goto_0

    .line 3370
    .end local v5           #cur1:Landroid/database/Cursor;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ti/fmrxapp/DBAdapter;->open()Lcom/ti/fmrxapp/DBAdapter;

    .line 3371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ti/fmrxapp/DBAdapter;->getStationByFreq(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3372
    .local v6, cur2:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 3373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string v24, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ti/fmrxapp/DBAdapter;->updateStation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3375
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ti/fmrxapp/DBAdapter;->close()V

    .line 3377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ti/fmrxapp/FmRxApp;->readObject()V

    .line 3378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    #calls: Lcom/ti/fmrxapp/FmRxApp;->setButtonLabels()V
    invoke-static/range {v21 .. v21}, Lcom/ti/fmrxapp/FmRxApp;->access$400(Lcom/ti/fmrxapp/FmRxApp;)V

    goto/16 :goto_0

    .line 3381
    .end local v6           #cur2:Landroid/database/Cursor;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ti/fmrxapp/DBAdapter;->open()Lcom/ti/fmrxapp/DBAdapter;

    .line 3382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ti/fmrxapp/DBAdapter;->getStationByFreq(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3383
    .local v7, cur3:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 3384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string v24, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ti/fmrxapp/DBAdapter;->updateStation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3386
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ti/fmrxapp/DBAdapter;->close()V

    .line 3388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ti/fmrxapp/FmRxApp;->readObject()V

    .line 3389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    #calls: Lcom/ti/fmrxapp/FmRxApp;->setButtonLabels()V
    invoke-static/range {v21 .. v21}, Lcom/ti/fmrxapp/FmRxApp;->access$400(Lcom/ti/fmrxapp/FmRxApp;)V

    goto/16 :goto_0

    .line 3392
    .end local v7           #cur3:Landroid/database/Cursor;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ti/fmrxapp/DBAdapter;->open()Lcom/ti/fmrxapp/DBAdapter;

    .line 3393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ti/fmrxapp/DBAdapter;->getStationByFreq(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3394
    .local v8, cur4:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 3395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string v24, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ti/fmrxapp/DBAdapter;->updateStation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3397
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ti/fmrxapp/DBAdapter;->close()V

    .line 3399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ti/fmrxapp/FmRxApp;->readObject()V

    .line 3400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    #calls: Lcom/ti/fmrxapp/FmRxApp;->setButtonLabels()V
    invoke-static/range {v21 .. v21}, Lcom/ti/fmrxapp/FmRxApp;->access$400(Lcom/ti/fmrxapp/FmRxApp;)V

    goto/16 :goto_0

    .line 3404
    .end local v8           #cur4:Landroid/database/Cursor;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ti/fmrxapp/DBAdapter;->open()Lcom/ti/fmrxapp/DBAdapter;

    .line 3405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/ti/fmrxapp/DBAdapter;->getStationByFreq(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3406
    .local v9, cur5:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 3407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string v24, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ti/fmrxapp/DBAdapter;->updateStation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3409
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ti/fmrxapp/DBAdapter;->close()V

    .line 3411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ti/fmrxapp/FmRxApp;->readObject()V

    .line 3412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    #calls: Lcom/ti/fmrxapp/FmRxApp;->setButtonLabels()V
    invoke-static/range {v21 .. v21}, Lcom/ti/fmrxapp/FmRxApp;->access$400(Lcom/ti/fmrxapp/FmRxApp;)V

    goto/16 :goto_0

    .line 3415
    .end local v9           #cur5:Landroid/database/Cursor;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ti/fmrxapp/DBAdapter;->open()Lcom/ti/fmrxapp/DBAdapter;

    .line 3416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/ti/fmrxapp/DBAdapter;->getStationByFreq(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3417
    .local v10, cur6:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 3418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string v24, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ti/fmrxapp/DBAdapter;->updateStation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3420
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ti/fmrxapp/DBAdapter;->close()V

    .line 3422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ti/fmrxapp/FmRxApp;->readObject()V

    .line 3423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17$1;->this$1:Lcom/ti/fmrxapp/FmRxApp$17;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    move-object/from16 v21, v0

    #calls: Lcom/ti/fmrxapp/FmRxApp;->setButtonLabels()V
    invoke-static/range {v21 .. v21}, Lcom/ti/fmrxapp/FmRxApp;->access$400(Lcom/ti/fmrxapp/FmRxApp;)V

    goto/16 :goto_0

    .line 3357
    :pswitch_data_0
    .packed-switch 0x7f060026
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
