.class Lcom/android/server/supl/TimerAlertDialog;
.super Landroid/app/AlertDialog$Builder;
.source "CSUPL_LP.java"


# instance fields
.field private _handler:Landroid/os/Handler;

.field private _time:J

.field public b:Landroid/app/AlertDialog$Builder;

.field public cancel_flag:Z

.field public d:Landroid/app/AlertDialog;

.field private timerTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "time"

    .prologue
    .line 874
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 865
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/supl/TimerAlertDialog;->cancel_flag:Z

    .line 870
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/supl/TimerAlertDialog;->_handler:Landroid/os/Handler;

    .line 893
    new-instance v0, Lcom/android/server/supl/TimerAlertDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/supl/TimerAlertDialog$1;-><init>(Lcom/android/server/supl/TimerAlertDialog;)V

    iput-object v0, p0, Lcom/android/server/supl/TimerAlertDialog;->timerTask:Ljava/lang/Runnable;

    .line 875
    const-string v0, "CSUPL_LP"

    const-string v1, "TimerAlertDialog: Ctor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iput-wide p2, p0, Lcom/android/server/supl/TimerAlertDialog;->_time:J

    .line 877
    return-void
.end method


# virtual methods
.method public show()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 881
    const-string v0, "CSUPL_LP"

    const-string v1, "TimerAlertDialog: +Show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget-object v0, p0, Lcom/android/server/supl/TimerAlertDialog;->_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/supl/TimerAlertDialog;->timerTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 883
    iget-object v0, p0, Lcom/android/server/supl/TimerAlertDialog;->_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/supl/TimerAlertDialog;->timerTask:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/server/supl/TimerAlertDialog;->_time:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 885
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/supl/TimerAlertDialog;->d:Landroid/app/AlertDialog;

    .line 886
    iget-object v0, p0, Lcom/android/server/supl/TimerAlertDialog;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 888
    iget-object v0, p0, Lcom/android/server/supl/TimerAlertDialog;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 889
    const-string v0, "CSUPL_LP"

    const-string v1, "TimerAlertDialog: +Show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v0, p0, Lcom/android/server/supl/TimerAlertDialog;->d:Landroid/app/AlertDialog;

    return-object v0
.end method
