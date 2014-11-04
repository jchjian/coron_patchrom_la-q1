.class Lcom/ti/fmrxapp/FmRxApp$17;
.super Ljava/lang/Object;
.source "FmRxApp.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ti/fmrxapp/FmRxApp;
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
    .line 3332
    iput-object p1, p0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 3334
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 3335
    .local v1, presetfreq:I
    const-string v2, "FmRxApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v.getTag()----------= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3336
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3431
    :goto_0
    return v5

    .line 3339
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ti/fmrxapp/FmRxApp$17;->this$0:Lcom/ti/fmrxapp/FmRxApp;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3340
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f050063

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3341
    const v2, 0x7f050066

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3342
    const v2, 0x7f050064

    new-instance v3, Lcom/ti/fmrxapp/FmRxApp$17$1;

    invoke-direct {v3, p0, v1}, Lcom/ti/fmrxapp/FmRxApp$17$1;-><init>(Lcom/ti/fmrxapp/FmRxApp$17;I)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3429
    const v2, 0x7f050065

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3430
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
