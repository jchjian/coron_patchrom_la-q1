.class Lcom/ti/fmrxapp/FmRxCompScan$1;
.super Ljava/lang/Object;
.source "FmRxCompScan.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ti/fmrxapp/FmRxCompScan;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ti/fmrxapp/FmRxCompScan;


# direct methods
.method constructor <init>(Lcom/ti/fmrxapp/FmRxCompScan;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/ti/fmrxapp/FmRxCompScan$1;->this$0:Lcom/ti/fmrxapp/FmRxCompScan;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 80
    const-string v0, "FmRxStopCompScan"

    const-string v1, "Stop Scan"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxCompScan$1;->this$0:Lcom/ti/fmrxapp/FmRxCompScan;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/FmRxCompScan;->finish()V

    .line 82
    return-void
.end method
