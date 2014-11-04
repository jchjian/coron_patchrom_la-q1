.class public Lcom/ti/fmrxapp/FmRxHelp;
.super Landroid/app/Activity;
.source "FmRxHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initControls()V
    .locals 2

    .prologue
    .line 40
    const v1, 0x7f060013

    invoke-virtual {p0, v1}, Lcom/ti/fmrxapp/FmRxHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 41
    .local v0, btnBack:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 51
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 56
    :goto_0
    return-void

    .line 53
    :pswitch_0
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxHelp;->finish()V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x7f060013
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxHelp;->setContentView(I)V

    .line 35
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxHelp;->initControls()V

    .line 37
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method
