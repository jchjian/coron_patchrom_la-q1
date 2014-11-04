.class public Lcom/ti/fmrxapp/FmRxFreqInput;
.super Landroid/app/Activity;
.source "FmRxFreqInput.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/ti/fm/IFmConstants;


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnOk:Landroid/widget/Button;

.field private mBandRange:Landroid/widget/TextView;

.field private mUserText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static BaseFreq()F
    .locals 2

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 145
    .local v0, freq:F
    sget v1, Lcom/ti/fmrxapp/FmRxApp;->sBand:I

    packed-switch v1, :pswitch_data_0

    .line 159
    :goto_0
    return v0

    .line 147
    :pswitch_0
    const/high16 v0, 0x4298

    .line 148
    goto :goto_0

    .line 150
    :pswitch_1
    const/high16 v0, 0x42af

    .line 151
    goto :goto_0

    .line 153
    :pswitch_2
    const v0, 0x4283999a

    .line 154
    goto :goto_0

    .line 156
    :pswitch_3
    const v0, 0x43226666

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static LastFreq()F
    .locals 2

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, freq:F
    sget v1, Lcom/ti/fmrxapp/FmRxApp;->sBand:I

    packed-switch v1, :pswitch_data_0

    .line 179
    :goto_0
    return v0

    .line 167
    :pswitch_0
    const/high16 v0, 0x42b4

    .line 168
    goto :goto_0

    .line 170
    :pswitch_1
    const/high16 v0, 0x42d8

    .line 171
    goto :goto_0

    .line 173
    :pswitch_2
    const/high16 v0, 0x4294

    .line 174
    goto :goto_0

    .line 176
    :pswitch_3
    const v0, 0x43228ccd

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initControls()V
    .locals 2

    .prologue
    .line 56
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxFreqInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxFreqInput;->mUserText:Landroid/widget/EditText;

    .line 58
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxFreqInput;->mUserText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 59
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxFreqInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxFreqInput;->btnCancel:Landroid/widget/Button;

    .line 60
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxFreqInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxFreqInput;->btnOk:Landroid/widget/Button;

    .line 61
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxFreqInput;->btnOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxFreqInput;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxFreqInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxFreqInput;->mBandRange:Landroid/widget/TextView;

    .line 65
    sget v0, Lcom/ti/fmrxapp/FmRxApp;->sBand:I

    packed-switch v0, :pswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxFreqInput;->mBandRange:Landroid/widget/TextView;

    const v1, 0x7f050090

    invoke-virtual {p0, v1}, Lcom/ti/fmrxapp/FmRxFreqInput;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 70
    :pswitch_1
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxFreqInput;->mBandRange:Landroid/widget/TextView;

    const v1, 0x7f050023

    invoke-virtual {p0, v1}, Lcom/ti/fmrxapp/FmRxFreqInput;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 73
    :pswitch_2
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxFreqInput;->mBandRange:Landroid/widget/TextView;

    const v1, 0x7f050024

    invoke-virtual {p0, v1}, Lcom/ti/fmrxapp/FmRxFreqInput;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    :pswitch_3
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxFreqInput;->mBandRange:Landroid/widget/TextView;

    const v1, 0x7f050025

    invoke-virtual {p0, v1}, Lcom/ti/fmrxapp/FmRxFreqInput;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private writeFrequency()V
    .locals 12

    .prologue
    const v11, 0x1080027

    const v10, 0x104000a

    const/4 v9, 0x0

    .line 83
    iget-object v6, p0, Lcom/ti/fmrxapp/FmRxFreqInput;->mUserText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, text:Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 86
    .local v1, iFreq:F
    invoke-virtual {p0, v1}, Lcom/ti/fmrxapp/FmRxFreqInput;->UpdateFrequency(F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 87
    .local v5, validFreq:Ljava/lang/Float;
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    .line 89
    iget-object v6, p0, Lcom/ti/fmrxapp/FmRxFreqInput;->mUserText:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "FREQUENCY"

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 93
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v3, result:Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 95
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v3}, Lcom/ti/fmrxapp/FmRxFreqInput;->setResult(ILandroid/content/Intent;)V

    .line 96
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxFreqInput;->finish()V

    .line 114
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #iFreq:F
    .end local v3           #result:Landroid/content/Intent;
    .end local v5           #validFreq:Ljava/lang/Float;
    :goto_0
    return-void

    .line 99
    .restart local v1       #iFreq:F
    .restart local v5       #validFreq:Ljava/lang/Float;
    :cond_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x1080027

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f050079

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 103
    iget-object v6, p0, Lcom/ti/fmrxapp/FmRxFreqInput;->mUserText:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v1           #iFreq:F
    .end local v5           #validFreq:Ljava/lang/Float;
    :catch_0
    move-exception v2

    .line 106
    .local v2, nfe:Ljava/lang/NumberFormatException;
    const-string v6, "FmRxFreqInput"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NumberFormatException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v11}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f05007a

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 111
    iget-object v6, p0, Lcom/ti/fmrxapp/FmRxFreqInput;->mUserText:Landroid/widget/EditText;

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method UpdateFrequency(F)F
    .locals 3
    .parameter "freq"

    .prologue
    .line 184
    const-string v0, "FmRxFreqInput"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FM App: UpdateFrequency %d."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {}, Lcom/ti/fmrxapp/FmRxFreqInput;->BaseFreq()F

    move-result v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/ti/fmrxapp/FmRxFreqInput;->LastFreq()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 186
    :cond_0
    const/4 p1, 0x0

    .line 188
    :cond_1
    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 131
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 133
    :pswitch_0
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxFreqInput;->writeFrequency()V

    goto :goto_0

    .line 136
    :pswitch_1
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxFreqInput;->finish()V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x7f060008
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxFreqInput;->setContentView(I)V

    .line 51
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxFreqInput;->initControls()V

    .line 52
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 118
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 119
    sparse-switch p2, :sswitch_data_0

    .line 126
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 122
    :sswitch_0
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxFreqInput;->writeFrequency()V

    .line 123
    const/4 v0, 0x1

    goto :goto_0

    .line 119
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
