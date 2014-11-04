.class Lcom/ti/fmrxapp/FmPresetList$8;
.super Landroid/content/BroadcastReceiver;
.source "FmPresetList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ti/fmrxapp/FmPresetList;
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
    .line 331
    iput-object p1, p0, Lcom/ti/fmrxapp/FmPresetList$8;->this$0:Lcom/ti/fmrxapp/FmPresetList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 333
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 335
    const-string v3, "state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 336
    .local v2, state:I
    if-nez v2, :cond_0

    .line 337
    iget-object v3, p0, Lcom/ti/fmrxapp/FmPresetList$8;->this$0:Lcom/ti/fmrxapp/FmPresetList;

    #calls: Lcom/ti/fmrxapp/FmPresetList;->finishSelf()V
    invoke-static {v3}, Lcom/ti/fmrxapp/FmPresetList;->access$300(Lcom/ti/fmrxapp/FmPresetList;)V

    .line 340
    .end local v2           #state:I
    :cond_0
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 341
    const-string v3, "state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 342
    .local v1, enabled:Z
    if-eqz v1, :cond_1

    .line 343
    iget-object v3, p0, Lcom/ti/fmrxapp/FmPresetList$8;->this$0:Lcom/ti/fmrxapp/FmPresetList;

    #calls: Lcom/ti/fmrxapp/FmPresetList;->finishSelf()V
    invoke-static {v3}, Lcom/ti/fmrxapp/FmPresetList;->access$300(Lcom/ti/fmrxapp/FmPresetList;)V

    .line 346
    .end local v1           #enabled:Z
    :cond_1
    return-void
.end method
