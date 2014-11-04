.class public Lcom/ti/fmrxapp/FmRxRdsConfig;
.super Landroid/app/Activity;
.source "FmRxRdsConfig.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private bandAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bandString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private btnCancel:Landroid/widget/Button;

.field private btnOk:Landroid/widget/Button;

.field private channelSpaceAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private channelSpaceString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private chbRdsMode:Landroid/widget/CheckBox;

.field private chbSetRdsAf:Landroid/widget/CheckBox;

.field private chbSetWrapSeek:Landroid/widget/CheckBox;

.field private deEmpStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private emptyAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private emptyStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fmConfigPreferences:Landroid/content/SharedPreferences;

.field public gItemSelectedHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private modeAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private modeStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rdsSystemAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rdsSystemStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private spnBand:Landroid/widget/Spinner;

.field private spnChannelSpacing:Landroid/widget/Spinner;

.field private spnMode:Landroid/widget/Spinner;

.field private spnRdsSystem:Landroid/widget/Spinner;

.field private textRssi:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->channelSpaceString:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->bandString:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->deEmpStrings:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->rdsSystemStrings:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->emptyStrings:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->modeStrings:Ljava/util/ArrayList;

    .line 205
    new-instance v0, Lcom/ti/fmrxapp/FmRxRdsConfig$1;

    invoke-direct {v0, p0}, Lcom/ti/fmrxapp/FmRxRdsConfig$1;-><init>(Lcom/ti/fmrxapp/FmRxRdsConfig;)V

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->gItemSelectedHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method private initControl()V
    .locals 1

    .prologue
    .line 94
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxRdsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->btnCancel:Landroid/widget/Button;

    .line 95
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 96
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxRdsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->btnOk:Landroid/widget/Button;

    .line 99
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->btnOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 100
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->btnOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v0, 0x7f060033

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxRdsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->spnRdsSystem:Landroid/widget/Spinner;

    .line 103
    const v0, 0x7f060036

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxRdsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->spnBand:Landroid/widget/Spinner;

    .line 105
    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxRdsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->spnMode:Landroid/widget/Spinner;

    .line 107
    const v0, 0x7f06003d

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxRdsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->spnChannelSpacing:Landroid/widget/Spinner;

    .line 109
    const v0, 0x7f060040

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxRdsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->textRssi:Landroid/widget/EditText;

    .line 111
    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxRdsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->chbRdsMode:Landroid/widget/CheckBox;

    .line 112
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->chbRdsMode:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 114
    const v0, 0x7f06002f

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxRdsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->chbSetRdsAf:Landroid/widget/CheckBox;

    .line 115
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->chbSetRdsAf:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxRdsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->chbSetWrapSeek:Landroid/widget/CheckBox;

    .line 118
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->chbSetWrapSeek:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 119
    return-void
.end method

.method private rssiValid(I)Z
    .locals 3
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    .line 485
    if-lt p1, v0, :cond_0

    const/16 v1, 0x7f

    if-le p1, v1, :cond_1

    .line 486
    :cond_0
    const-string v0, "FmRxRdsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAG,rssiValid %d."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v0, 0x0

    .line 490
    :cond_1
    return v0
.end method

.method private savePrefernces()V
    .locals 11

    .prologue
    const v10, 0x1080027

    const v9, 0x104000a

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 406
    const-string v5, "FmRxRdsConfig"

    const-string v6, "savePrefernces()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v1, 0x2

    .line 410
    .local v1, mChannelSpacePos:I
    const-string v5, "fmConfigPreferences"

    invoke-virtual {p0, v5, v7}, Lcom/ti/fmrxapp/FmRxRdsConfig;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->fmConfigPreferences:Landroid/content/SharedPreferences;

    .line 413
    iget-object v5, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->fmConfigPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 415
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->chbRdsMode:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 416
    const-string v5, "RDSAF"

    iget-object v6, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->chbSetRdsAf:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 417
    const-string v5, "RDS"

    iget-object v6, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->chbRdsMode:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 418
    const-string v5, "RDSSYSTEM"

    iget-object v6, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->spnRdsSystem:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 425
    :goto_0
    iget-object v5, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->chbSetWrapSeek:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 426
    const-string v5, "WRAPSEEK"

    iget-object v6, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->chbSetWrapSeek:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 430
    :goto_1
    const-string v5, "BAND"

    iget-object v6, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->spnBand:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 434
    const-string v5, "MODE"

    iget-object v6, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->spnMode:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 436
    iget-object v5, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->spnChannelSpacing:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 450
    :goto_2
    const-string v5, "CHANNELSPACE"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 453
    :try_start_0
    iget-object v5, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->textRssi:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 454
    .local v3, rssiValue:I
    invoke-direct {p0, v3}, Lcom/ti/fmrxapp/FmRxRdsConfig;->rssiValid(I)Z

    move-result v4

    .line 455
    .local v4, valid:Z
    if-nez v4, :cond_0

    iget-object v5, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->textRssi:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    .line 456
    :cond_0
    const-string v5, "RSSI_STRING"

    iget-object v6, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->textRssi:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 457
    iget-object v5, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->textRssi:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 458
    const-string v5, "RSSI"

    const/16 v6, 0x8

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 462
    :goto_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 463
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxRdsConfig;->sendRdsIntent()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    .end local v3           #rssiValue:I
    .end local v4           #valid:Z
    :goto_4
    return-void

    .line 420
    :cond_1
    const-string v5, "RDSAF"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 421
    const-string v5, "RDS"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 422
    const-string v5, "RDSSYSTEM"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 428
    :cond_2
    const-string v5, "WRAPSEEK"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 438
    :pswitch_0
    const/4 v1, 0x1

    .line 439
    goto :goto_2

    .line 442
    :pswitch_1
    const/4 v1, 0x2

    .line 443
    goto :goto_2

    .line 446
    :pswitch_2
    const/4 v1, 0x4

    goto :goto_2

    .line 460
    .restart local v3       #rssiValue:I
    .restart local v4       #valid:Z
    :cond_3
    :try_start_1
    const-string v5, "RSSI"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 471
    .end local v3           #rssiValue:I
    .end local v4           #valid:Z
    :catch_0
    move-exception v2

    .line 472
    .local v2, nfe:Ljava/lang/NumberFormatException;
    const-string v5, "FmRxRdsConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NumberFormatException:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "Enter valid RSSI value in range 1-127!!"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v9, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 477
    iget-object v5, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->textRssi:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 465
    .end local v2           #nfe:Ljava/lang/NumberFormatException;
    .restart local v3       #rssiValue:I
    .restart local v4       #valid:Z
    :cond_4
    :try_start_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "Enter valid RSSI value in range 1-127!!"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 469
    iget-object v5, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->textRssi:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendRdsIntent()V
    .locals 2

    .prologue
    .line 244
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 245
    .local v0, rdsIntent:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/ti/fmrxapp/FmRxRdsConfig;->setResult(ILandroid/content/Intent;)V

    .line 246
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxRdsConfig;->finish()V

    .line 248
    return-void
.end method

.method private setEmptySpinner()V
    .locals 3

    .prologue
    .line 193
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    iget-object v2, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->emptyStrings:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->emptyAdapter:Landroid/widget/ArrayAdapter;

    .line 196
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->emptyAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x1090011

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 198
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->spnRdsSystem:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->emptyAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 199
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->emptyAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 200
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->emptyAdapter:Landroid/widget/ArrayAdapter;

    const-string v1, " RDS is Disabled "

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->spnRdsSystem:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->gItemSelectedHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 203
    return-void
.end method

.method private setRdsSystemSpinner()V
    .locals 3

    .prologue
    .line 178
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    iget-object v2, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->rdsSystemStrings:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->rdsSystemAdapter:Landroid/widget/ArrayAdapter;

    .line 181
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->rdsSystemAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 183
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->spnRdsSystem:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->rdsSystemAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 184
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->rdsSystemAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 185
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->rdsSystemAdapter:Landroid/widget/ArrayAdapter;

    const-string v1, "RDB"

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->spnRdsSystem:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->gItemSelectedHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 189
    return-void
.end method

.method private setSpinners()V
    .locals 4

    .prologue
    const v3, 0x1090009

    const v2, 0x1090008

    .line 127
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->bandString:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->bandAdapter:Landroid/widget/ArrayAdapter;

    .line 130
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->bandAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 132
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->spnBand:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->bandAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 133
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->bandAdapter:Landroid/widget/ArrayAdapter;

    const-string v1, "European"

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->bandAdapter:Landroid/widget/ArrayAdapter;

    const-string v1, "Japanese"

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->bandAdapter:Landroid/widget/ArrayAdapter;

    const-string v1, "Russian"

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->bandAdapter:Landroid/widget/ArrayAdapter;

    const-string v1, "Weather"

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->spnBand:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->gItemSelectedHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 140
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->channelSpaceString:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->channelSpaceAdapter:Landroid/widget/ArrayAdapter;

    .line 143
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->channelSpaceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 145
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->spnChannelSpacing:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->channelSpaceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 146
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->channelSpaceAdapter:Landroid/widget/ArrayAdapter;

    const-string v1, "50 KHZ"

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->channelSpaceAdapter:Landroid/widget/ArrayAdapter;

    const-string v1, "100 KHZ"

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->channelSpaceAdapter:Landroid/widget/ArrayAdapter;

    const-string v1, "200 KHZ"

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->spnChannelSpacing:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->gItemSelectedHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 163
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->modeStrings:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->modeAdapter:Landroid/widget/ArrayAdapter;

    .line 166
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->modeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 168
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->spnMode:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->modeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 169
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->modeAdapter:Landroid/widget/ArrayAdapter;

    const-string v1, "STEREO"

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->modeAdapter:Landroid/widget/ArrayAdapter;

    const-string v1, "MONO"

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->spnMode:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->gItemSelectedHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 173
    return-void
.end method

.method private updateUiFromPreference()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 350
    const-string v2, "fmConfigPreferences"

    invoke-virtual {p0, v2, v6}, Lcom/ti/fmrxapp/FmRxRdsConfig;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->fmConfigPreferences:Landroid/content/SharedPreferences;

    .line 352
    const-string v2, "FmRxRdsConfig"

    const-string v3, "updateUiFromPreference()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v2, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->chbRdsMode:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->fmConfigPreferences:Landroid/content/SharedPreferences;

    const-string v4, "RDS"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 355
    iget-object v2, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->fmConfigPreferences:Landroid/content/SharedPreferences;

    const-string v3, "RDS"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 357
    .local v1, rdsON:Z
    if-nez v1, :cond_0

    .line 359
    iget-object v2, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->chbSetRdsAf:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 361
    iget-object v2, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->chbSetRdsAf:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 363
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxRdsConfig;->setEmptySpinner()V

    .line 373
    :goto_0
    iget-object v2, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->chbSetWrapSeek:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->fmConfigPreferences:Landroid/content/SharedPreferences;

    const-string v4, "WRAPSEEK"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 376
    iget-object v2, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->textRssi:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->fmConfigPreferences:Landroid/content/SharedPreferences;

    const-string v4, "RSSI_STRING"

    const-string v5, "7"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v2, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->spnBand:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->fmConfigPreferences:Landroid/content/SharedPreferences;

    const-string v4, "BAND"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 382
    iget-object v2, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->spnMode:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->fmConfigPreferences:Landroid/content/SharedPreferences;

    const-string v4, "MODE"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 384
    const/4 v0, 0x1

    .line 385
    .local v0, pos:I
    iget-object v2, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->fmConfigPreferences:Landroid/content/SharedPreferences;

    const-string v3, "CHANNELSPACE"

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 400
    :goto_1
    :pswitch_0
    iget-object v2, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->spnChannelSpacing:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 402
    return-void

    .line 367
    .end local v0           #pos:I
    :cond_0
    iget-object v2, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->chbSetRdsAf:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->fmConfigPreferences:Landroid/content/SharedPreferences;

    const-string v4, "RDSAF"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 369
    iget-object v2, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->spnRdsSystem:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->fmConfigPreferences:Landroid/content/SharedPreferences;

    const-string v4, "RDSSYSTEM"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 388
    .restart local v0       #pos:I
    :pswitch_1
    const/4 v0, 0x0

    .line 389
    goto :goto_1

    .line 392
    :pswitch_2
    const/4 v0, 0x1

    .line 393
    goto :goto_1

    .line 396
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_1

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "view"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 251
    const-string v1, "FmRxRdsConfig"

    const-string v2, "onCheckedChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 253
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 281
    :goto_0
    :pswitch_0
    return-void

    .line 259
    :pswitch_1
    if-eqz p2, :cond_0

    .line 260
    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->chbSetRdsAf:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 261
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxRdsConfig;->setRdsSystemSpinner()V

    goto :goto_0

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->chbSetRdsAf:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 264
    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->chbSetRdsAf:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 265
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxRdsConfig;->setEmptySpinner()V

    goto :goto_0

    .line 269
    :pswitch_2
    if-eqz p2, :cond_1

    .line 270
    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->chbSetWrapSeek:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->chbSetWrapSeek:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 273
    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxRdsConfig;->chbSetWrapSeek:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x7f06002e
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 226
    const-string v1, "FmRxRdsConfig"

    const-string v2, "onClick()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 228
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 239
    :goto_0
    return-void

    .line 230
    :pswitch_0
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxRdsConfig;->finish()V

    goto :goto_0

    .line 233
    :pswitch_1
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxRdsConfig;->savePrefernces()V

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x7f060008
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxRdsConfig;->setContentView(I)V

    .line 86
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxRdsConfig;->initControl()V

    .line 87
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxRdsConfig;->setSpinners()V

    .line 88
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxRdsConfig;->setRdsSystemSpinner()V

    .line 90
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/4 v1, 0x1

    .line 284
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 286
    .local v0, action:I
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 287
    const-string v2, "FmRxRdsConfig"

    const-string v3, "KEYCODE_SOFT_RIGHT "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxRdsConfig;->finish()V

    .line 322
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 292
    :cond_1
    if-ne p2, v1, :cond_2

    .line 293
    const-string v2, "FmRxRdsConfig"

    const-string v3, "KEYCODE_SOFT_LEFT "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxRdsConfig;->savePrefernces()V

    goto :goto_0

    .line 299
    :cond_2
    const/16 v2, 0x17

    if-eq p2, v2, :cond_3

    const/16 v2, 0x13

    if-eq p2, v2, :cond_3

    const/16 v2, 0x14

    if-eq p2, v2, :cond_3

    const/16 v2, 0x42

    if-eq p2, v2, :cond_3

    .line 303
    const/4 v1, 0x0

    goto :goto_0

    .line 306
    :cond_3
    if-ne v0, v1, :cond_0

    .line 307
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 332
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 333
    const-string v0, "FmRxRdsConfig"

    const-string v1, "onPause()-Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 343
    const-string v0, "FmRxRdsConfig"

    const-string v1, "onRestart()-Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 346
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 326
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 327
    const-string v0, "FmRxRdsConfig"

    const-string v1, "onResume()-Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxRdsConfig;->updateUiFromPreference()V

    .line 329
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 338
    const-string v0, "FmRxRdsConfig"

    const-string v1, "onStop()-Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 340
    return-void
.end method
