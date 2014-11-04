.class Lcom/ti/fmrxapp/FmPresetList$2;
.super Ljava/lang/Object;
.source "FmPresetList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ti/fmrxapp/FmPresetList;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ti/fmrxapp/FmPresetList;

.field final synthetic val$index:Ljava/lang/Integer;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/ti/fmrxapp/FmPresetList;Landroid/widget/EditText;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/ti/fmrxapp/FmPresetList$2;->this$0:Lcom/ti/fmrxapp/FmPresetList;

    iput-object p2, p0, Lcom/ti/fmrxapp/FmPresetList$2;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/ti/fmrxapp/FmPresetList$2;->val$index:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x1

    .line 231
    iget-object v1, p0, Lcom/ti/fmrxapp/FmPresetList$2;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, value:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/ti/fmrxapp/FmPresetList$2;->this$0:Lcom/ti/fmrxapp/FmPresetList;

    const v2, 0x7f050073

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 236
    iget-object v1, p0, Lcom/ti/fmrxapp/FmPresetList$2;->this$0:Lcom/ti/fmrxapp/FmPresetList;

    const/4 v2, 0x0

    #calls: Lcom/ti/fmrxapp/FmPresetList;->holdDialog(Landroid/content/DialogInterface;Z)V
    invoke-static {v1, p1, v2}, Lcom/ti/fmrxapp/FmPresetList;->access$000(Lcom/ti/fmrxapp/FmPresetList;Landroid/content/DialogInterface;Z)V

    .line 251
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/ti/fmrxapp/FmPresetList$2;->val$index:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, v0}, Lcom/ti/fmrxapp/FmRxApp;->UpdateRenameStation(ILjava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/ti/fmrxapp/FmPresetList$2;->this$0:Lcom/ti/fmrxapp/FmPresetList;

    #calls: Lcom/ti/fmrxapp/FmPresetList;->holdDialog(Landroid/content/DialogInterface;Z)V
    invoke-static {v1, p1, v3}, Lcom/ti/fmrxapp/FmPresetList;->access$000(Lcom/ti/fmrxapp/FmPresetList;Landroid/content/DialogInterface;Z)V

    .line 249
    iget-object v1, p0, Lcom/ti/fmrxapp/FmPresetList$2;->this$0:Lcom/ti/fmrxapp/FmPresetList;

    #calls: Lcom/ti/fmrxapp/FmPresetList;->refreshFavListItems()V
    invoke-static {v1}, Lcom/ti/fmrxapp/FmPresetList;->access$100(Lcom/ti/fmrxapp/FmPresetList;)V

    goto :goto_0
.end method
