.class Lcom/ti/fmrxapp/FmRxApp$2;
.super Ljava/lang/Thread;
.source "FmRxApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ti/fmrxapp/FmRxApp;->insertDelayThread()V
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
    .line 1680
    iput-object p1, p0, Lcom/ti/fmrxapp/FmRxApp$2;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1685
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Lcom/ti/fmrxapp/FmRxApp$2;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1690
    :goto_0
    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxApp$2;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    #getter for: Lcom/ti/fmrxapp/FmRxApp;->configPd:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/ti/fmrxapp/FmRxApp;->access$1900(Lcom/ti/fmrxapp/FmRxApp;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1691
    return-void

    .line 1686
    :catch_0
    move-exception v0

    .line 1687
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FmRxApp"

    const-string v2, "InsertDelayThread()-- Exception !!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
