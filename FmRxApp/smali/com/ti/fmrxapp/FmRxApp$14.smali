.class Lcom/ti/fmrxapp/FmRxApp$14;
.super Ljava/lang/Object;
.source "FmRxApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ti/fmrxapp/FmRxApp;->createCmdTuneFreqByInput(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ti/fmrxapp/FmRxApp;

.field final synthetic val$textEntryView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ti/fmrxapp/FmRxApp;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2748
    iput-object p1, p0, Lcom/ti/fmrxapp/FmRxApp$14;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    iput-object p2, p0, Lcom/ti/fmrxapp/FmRxApp$14;->val$textEntryView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v6, 0x0

    .line 2750
    iget-object v4, p0, Lcom/ti/fmrxapp/FmRxApp$14;->val$textEntryView:Landroid/view/View;

    const v5, 0x7f060041

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2753
    .local v0, fmfreq:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    .line 2754
    .local v3, newFreq:Ljava/lang/CharSequence;
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2755
    .local v1, nFreq:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2756
    iget-object v4, p0, Lcom/ti/fmrxapp/FmRxApp$14;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    const v5, 0x7f05007a

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2757
    iget-object v4, p0, Lcom/ti/fmrxapp/FmRxApp$14;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    #calls: Lcom/ti/fmrxapp/FmRxApp;->holdDialog(Landroid/content/DialogInterface;Z)V
    invoke-static {v4, p1, v6}, Lcom/ti/fmrxapp/FmRxApp;->access$2100(Lcom/ti/fmrxapp/FmRxApp;Landroid/content/DialogInterface;Z)V

    .line 2770
    :goto_0
    return-void

    .line 2760
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2762
    .local v2, nFreq1:I
    const v4, 0x155cc

    if-lt v2, v4, :cond_1

    const v4, 0x1a5e0

    if-le v2, v4, :cond_2

    .line 2763
    :cond_1
    iget-object v4, p0, Lcom/ti/fmrxapp/FmRxApp$14;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    const v5, 0x7f050079

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2764
    iget-object v4, p0, Lcom/ti/fmrxapp/FmRxApp$14;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    #calls: Lcom/ti/fmrxapp/FmRxApp;->holdDialog(Landroid/content/DialogInterface;Z)V
    invoke-static {v4, p1, v6}, Lcom/ti/fmrxapp/FmRxApp;->access$2100(Lcom/ti/fmrxapp/FmRxApp;Landroid/content/DialogInterface;Z)V

    goto :goto_0

    .line 2767
    :cond_2
    iget-object v4, p0, Lcom/ti/fmrxapp/FmRxApp$14;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    sget-object v5, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    div-int/lit8 v6, v2, 0x64

    mul-int/lit8 v6, v6, 0x64

    invoke-virtual {v5, v6}, Lcom/ti/fm/FmRadio;->rxTune_nb(I)Z

    move-result v5

    #setter for: Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z
    invoke-static {v4, v5}, Lcom/ti/fmrxapp/FmRxApp;->access$702(Lcom/ti/fmrxapp/FmRxApp;Z)Z

    .line 2768
    iget-object v4, p0, Lcom/ti/fmrxapp/FmRxApp$14;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    const/4 v5, 0x1

    #calls: Lcom/ti/fmrxapp/FmRxApp;->holdDialog(Landroid/content/DialogInterface;Z)V
    invoke-static {v4, p1, v5}, Lcom/ti/fmrxapp/FmRxApp;->access$2100(Lcom/ti/fmrxapp/FmRxApp;Landroid/content/DialogInterface;Z)V

    .line 2769
    iget-object v4, p0, Lcom/ti/fmrxapp/FmRxApp$14;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/ti/fmrxapp/FmRxApp;->removeDialog(I)V

    goto :goto_0
.end method
