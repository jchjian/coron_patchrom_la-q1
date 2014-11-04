.class Lcom/ti/fmrxapp/FmPresetList$4;
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
    .line 272
    iput-object p1, p0, Lcom/ti/fmrxapp/FmPresetList$4;->this$0:Lcom/ti/fmrxapp/FmPresetList;

    iput-object p2, p0, Lcom/ti/fmrxapp/FmPresetList$4;->val$index:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/ti/fmrxapp/FmPresetList$4;->val$index:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/ti/fmrxapp/FmRxApp;->DeleteLoveStation(I)V

    .line 276
    iget-object v0, p0, Lcom/ti/fmrxapp/FmPresetList$4;->this$0:Lcom/ti/fmrxapp/FmPresetList;

    const/4 v1, 0x1

    #calls: Lcom/ti/fmrxapp/FmPresetList;->holdDialog(Landroid/content/DialogInterface;Z)V
    invoke-static {v0, p1, v1}, Lcom/ti/fmrxapp/FmPresetList;->access$000(Lcom/ti/fmrxapp/FmPresetList;Landroid/content/DialogInterface;Z)V

    .line 277
    iget-object v0, p0, Lcom/ti/fmrxapp/FmPresetList$4;->this$0:Lcom/ti/fmrxapp/FmPresetList;

    #calls: Lcom/ti/fmrxapp/FmPresetList;->refreshFavListItems()V
    invoke-static {v0}, Lcom/ti/fmrxapp/FmPresetList;->access$100(Lcom/ti/fmrxapp/FmPresetList;)V

    .line 279
    return-void
.end method
