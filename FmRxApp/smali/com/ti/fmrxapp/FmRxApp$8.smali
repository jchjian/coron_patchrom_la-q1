.class Lcom/ti/fmrxapp/FmRxApp$8;
.super Ljava/lang/Object;
.source "FmRxApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ti/fmrxapp/FmRxApp;->createCmdFailedDlgNoHeadset(I)Landroid/app/Dialog;
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
    .line 2654
    iput-object p1, p0, Lcom/ti/fmrxapp/FmRxApp$8;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2656
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp$8;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ti/fmrxapp/FmRxApp;->removeDialog(I)V

    .line 2658
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v0}, Lcom/ti/fm/FmRadio;->rxDisable()Z

    .line 2659
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp$8;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/FmRxApp;->finish()V

    .line 2660
    return-void
.end method
