.class Lcom/android/server/supl/IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CSUPL_LP.java"


# instance fields
.field private observer:Lcom/android/server/supl/CSUPL_LP;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 842
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public IntentReceiver()V
    .locals 2

    .prologue
    .line 848
    const-string v0, "CSUPL_LP"

    const-string v1, "IntentReceiver Ctor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    return-void
.end method

.method public notify(Ljava/lang/Object;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 853
    check-cast p1, Landroid/content/Intent;

    .end local p1
    invoke-static {p1}, Lcom/android/server/supl/CSUPL_LP;->update(Landroid/content/Intent;)V

    .line 854
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 858
    const-string v0, "CSUPL_LP"

    const-string v1, "BroadcastReceiver onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-virtual {p0, p2}, Lcom/android/server/supl/IntentReceiver;->notify(Ljava/lang/Object;)V

    .line 860
    return-void
.end method
