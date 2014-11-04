.class Lcom/ti/fmrxapp/FmRxApp$7;
.super Ljava/lang/Object;
.source "FmRxApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 2634
    iput-object p1, p0, Lcom/ti/fmrxapp/FmRxApp$7;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 2637
    const-string v0, "FmRxApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnKeyListener event received in ProgressDialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    packed-switch p2, :pswitch_data_0

    .line 2646
    :goto_0
    return v3

    .line 2643
    :pswitch_0
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp$7;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/FmRxApp;->finish()V

    goto :goto_0

    .line 2640
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
