.class Lcom/ti/fmrxapp/FmPresetList$3;
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


# direct methods
.method constructor <init>(Lcom/ti/fmrxapp/FmPresetList;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/ti/fmrxapp/FmPresetList$3;->this$0:Lcom/ti/fmrxapp/FmPresetList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/ti/fmrxapp/FmPresetList$3;->this$0:Lcom/ti/fmrxapp/FmPresetList;

    const/4 v1, 0x1

    #calls: Lcom/ti/fmrxapp/FmPresetList;->holdDialog(Landroid/content/DialogInterface;Z)V
    invoke-static {v0, p1, v1}, Lcom/ti/fmrxapp/FmPresetList;->access$000(Lcom/ti/fmrxapp/FmPresetList;Landroid/content/DialogInterface;Z)V

    .line 260
    return-void
.end method
