.class public Lcom/ti/fmrxapp/FmRxCompScan;
.super Landroid/app/Activity;
.source "FmRxCompScan.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/ti/fmrxapp/FmRxCompScan;->setContentView(I)V

    .line 76
    const v1, 0x7f060001

    invoke-virtual {p0, v1}, Lcom/ti/fmrxapp/FmRxCompScan;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 78
    .local v0, press:Landroid/widget/Button;
    new-instance v1, Lcom/ti/fmrxapp/FmRxCompScan$1;

    invoke-direct {v1, p0}, Lcom/ti/fmrxapp/FmRxCompScan$1;-><init>(Lcom/ti/fmrxapp/FmRxCompScan;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method
