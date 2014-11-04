.class Lcom/ti/fmrxapp/FmPresetList$1;
.super Ljava/lang/Object;
.source "FmPresetList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ti/fmrxapp/FmPresetList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ti/fmrxapp/FmPresetList;


# direct methods
.method constructor <init>(Lcom/ti/fmrxapp/FmPresetList;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/ti/fmrxapp/FmPresetList$1;->this$0:Lcom/ti/fmrxapp/FmPresetList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 100
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->stations:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 102
    const-string v1, "value"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 104
    iget-object v2, p0, Lcom/ti/fmrxapp/FmPresetList$1;->this$0:Lcom/ti/fmrxapp/FmPresetList;

    const-class v3, Lcom/ti/fmrxapp/FmRxApp;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 105
    const-string v2, "ACTIVITY_RESULT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v0, "ACTIVITY_CLICK"

    const-string v2, "click"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v0, p0, Lcom/ti/fmrxapp/FmPresetList$1;->this$0:Lcom/ti/fmrxapp/FmPresetList;

    invoke-virtual {v0, v1}, Lcom/ti/fmrxapp/FmPresetList;->startActivity(Landroid/content/Intent;)V

    .line 109
    iget-object v0, p0, Lcom/ti/fmrxapp/FmPresetList$1;->this$0:Lcom/ti/fmrxapp/FmPresetList;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/FmPresetList;->finish()V

    .line 110
    return-void
.end method
