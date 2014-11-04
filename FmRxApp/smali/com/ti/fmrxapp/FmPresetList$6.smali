.class Lcom/ti/fmrxapp/FmPresetList$6;
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


# direct methods
.method constructor <init>(Lcom/ti/fmrxapp/FmPresetList;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/ti/fmrxapp/FmPresetList$6;->this$0:Lcom/ti/fmrxapp/FmPresetList;

    iput-object p2, p0, Lcom/ti/fmrxapp/FmPresetList$6;->val$index:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 303
    iget-object v1, p0, Lcom/ti/fmrxapp/FmPresetList$6;->this$0:Lcom/ti/fmrxapp/FmPresetList;

    iget-object v2, p0, Lcom/ti/fmrxapp/FmPresetList$6;->val$index:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/ti/fmrxapp/FmRxApp;->UpdateLoveStation(I)Z

    move-result v2

    #setter for: Lcom/ti/fmrxapp/FmPresetList;->updatelove:Z
    invoke-static {v1, v2}, Lcom/ti/fmrxapp/FmPresetList;->access$202(Lcom/ti/fmrxapp/FmPresetList;Z)Z

    .line 304
    iget-object v1, p0, Lcom/ti/fmrxapp/FmPresetList$6;->this$0:Lcom/ti/fmrxapp/FmPresetList;

    #getter for: Lcom/ti/fmrxapp/FmPresetList;->updatelove:Z
    invoke-static {v1}, Lcom/ti/fmrxapp/FmPresetList;->access$200(Lcom/ti/fmrxapp/FmPresetList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/ti/fmrxapp/FmPresetList$6;->this$0:Lcom/ti/fmrxapp/FmPresetList;

    const v2, 0x7f050067

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 306
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 308
    .end local v0           #toast:Landroid/widget/Toast;
    :cond_0
    iget-object v1, p0, Lcom/ti/fmrxapp/FmPresetList$6;->this$0:Lcom/ti/fmrxapp/FmPresetList;

    const/4 v2, 0x1

    #calls: Lcom/ti/fmrxapp/FmPresetList;->holdDialog(Landroid/content/DialogInterface;Z)V
    invoke-static {v1, p1, v2}, Lcom/ti/fmrxapp/FmPresetList;->access$000(Lcom/ti/fmrxapp/FmPresetList;Landroid/content/DialogInterface;Z)V

    .line 309
    iget-object v1, p0, Lcom/ti/fmrxapp/FmPresetList$6;->this$0:Lcom/ti/fmrxapp/FmPresetList;

    #calls: Lcom/ti/fmrxapp/FmPresetList;->refreshFavListItems()V
    invoke-static {v1}, Lcom/ti/fmrxapp/FmPresetList;->access$100(Lcom/ti/fmrxapp/FmPresetList;)V

    .line 311
    return-void
.end method
