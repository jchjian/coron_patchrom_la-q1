.class final Lcom/android/server/supl/CSUPL_LP$1;
.super Ljava/lang/Object;
.source "CSUPL_LP.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/server/supl/TimerAlertDialog;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/server/supl/CSUPL_LP$1;->val$td:Lcom/android/server/supl/TimerAlertDialog;

    iput p2, p0, Lcom/android/server/supl/CSUPL_LP$1;->val$sessionId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/server/supl/CSUPL_LP$1;->val$td:Lcom/android/server/supl/TimerAlertDialog;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/supl/TimerAlertDialog;->cancel_flag:Z

    .line 519
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/supl/CSUPL_LP$1;->val$sessionId:I

    #calls: Lcom/android/server/supl/CSUPL_LP;->returnSUPLInitDialogResult(II)V
    invoke-static {v0, v1}, Lcom/android/server/supl/CSUPL_LP;->access$000(II)V

    .line 520
    return-void
.end method
