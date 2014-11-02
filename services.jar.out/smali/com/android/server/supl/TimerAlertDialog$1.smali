.class Lcom/android/server/supl/TimerAlertDialog$1;
.super Ljava/lang/Object;
.source "CSUPL_LP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/supl/TimerAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/supl/TimerAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/server/supl/TimerAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 894
    iput-object p1, p0, Lcom/android/server/supl/TimerAlertDialog$1;->this$0:Lcom/android/server/supl/TimerAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/server/supl/TimerAlertDialog$1;->this$0:Lcom/android/server/supl/TimerAlertDialog;

    iget-boolean v0, v0, Lcom/android/server/supl/TimerAlertDialog;->cancel_flag:Z

    if-nez v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/android/server/supl/TimerAlertDialog$1;->this$0:Lcom/android/server/supl/TimerAlertDialog;

    iget-object v0, v0, Lcom/android/server/supl/TimerAlertDialog;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 901
    :cond_0
    return-void
.end method
