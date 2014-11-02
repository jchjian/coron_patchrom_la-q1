.class final Lcom/android/server/supl/CSUPL_LP$3;
.super Ljava/lang/Object;
.source "CSUPL_LP.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/supl/CSUPL_LP;->showSUPLInitDialog(ZLjava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$sessionId:I

.field final synthetic val$td:Lcom/android/server/supl/TimerAlertDialog;

.field final synthetic val$verification:Z


# direct methods
.method constructor <init>(Lcom/android/server/supl/TimerAlertDialog;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/server/supl/CSUPL_LP$3;->val$td:Lcom/android/server/supl/TimerAlertDialog;

    iput-boolean p2, p0, Lcom/android/server/supl/CSUPL_LP$3;->val$verification:Z

    iput p3, p0, Lcom/android/server/supl/CSUPL_LP$3;->val$sessionId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x3

    .line 528
    const-string v0, "showSUPLInitDialog: onCancel"

    invoke-static {v0}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/android/server/supl/CSUPL_LP$3;->val$td:Lcom/android/server/supl/TimerAlertDialog;

    iget-boolean v0, v0, Lcom/android/server/supl/TimerAlertDialog;->cancel_flag:Z

    if-nez v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/server/supl/CSUPL_LP$3;->val$td:Lcom/android/server/supl/TimerAlertDialog;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/supl/TimerAlertDialog;->cancel_flag:Z

    .line 532
    const-string v0, "showSUPLInitDialog: cancel_flag set to True"

    invoke-static {v0}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 533
    iget-boolean v0, p0, Lcom/android/server/supl/CSUPL_LP$3;->val$verification:Z

    if-eqz v0, :cond_1

    .line 535
    iget v0, p0, Lcom/android/server/supl/CSUPL_LP$3;->val$sessionId:I

    #calls: Lcom/android/server/supl/CSUPL_LP;->returnSUPLInitDialogResult(II)V
    invoke-static {v2, v0}, Lcom/android/server/supl/CSUPL_LP;->access$000(II)V

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    iget v0, p0, Lcom/android/server/supl/CSUPL_LP$3;->val$sessionId:I

    #calls: Lcom/android/server/supl/CSUPL_LP;->returnSUPLInitDialogResult(II)V
    invoke-static {v2, v0}, Lcom/android/server/supl/CSUPL_LP;->access$000(II)V

    goto :goto_0
.end method
