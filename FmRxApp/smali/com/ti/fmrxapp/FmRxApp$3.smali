.class Lcom/ti/fmrxapp/FmRxApp$3;
.super Ljava/lang/Object;
.source "FmRxApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ti/fmrxapp/FmRxApp;->onClick(Landroid/view/View;)V
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
    .line 2229
    iput-object p1, p0, Lcom/ti/fmrxapp/FmRxApp$3;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2232
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp$3;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    #calls: Lcom/ti/fmrxapp/FmRxApp;->compelteScan()V
    invoke-static {v0}, Lcom/ti/fmrxapp/FmRxApp;->access$2000(Lcom/ti/fmrxapp/FmRxApp;)V

    .line 2233
    return-void
.end method
