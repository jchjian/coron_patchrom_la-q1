.class Lcom/ti/fmrxapp/FmRxApp$11;
.super Ljava/lang/Object;
.source "FmRxApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ti/fmrxapp/FmRxApp;->createCmdFailedDlgCallOn(I)Landroid/app/Dialog;
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
    .line 2701
    iput-object p1, p0, Lcom/ti/fmrxapp/FmRxApp$11;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2703
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp$11;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ti/fmrxapp/FmRxApp;->removeDialog(I)V

    .line 2705
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp$11;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/FmRxApp;->finish()V

    .line 2706
    return-void
.end method
