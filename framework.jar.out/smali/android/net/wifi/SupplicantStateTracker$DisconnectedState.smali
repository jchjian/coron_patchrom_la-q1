.class Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Landroid/net/wifi/SupplicantStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    .line 218
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    #calls: Landroid/net/wifi/SupplicantStateTracker;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v3}, Landroid/net/wifi/SupplicantStateTracker;->access$700(Landroid/net/wifi/SupplicantStateTracker;)Landroid/os/Message;

    move-result-object v1

    .line 219
    .local v1, message:Landroid/os/Message;
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/StateChangeResult;

    .line 221
    .local v2, stateChangeResult:Landroid/net/wifi/StateChangeResult;
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    #getter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v3}, Landroid/net/wifi/SupplicantStateTracker;->access$000(Landroid/net/wifi/SupplicantStateTracker;)I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 222
    const-string v3, "SupplicantStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to authenticate, disabling network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/net/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.net.wifi.AUTHEN_FAILED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x800

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 231
    const-string/jumbo v3, "networkId"

    iget v4, v2, Landroid/net/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    #getter for: Landroid/net/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/SupplicantStateTracker;->access$800(Landroid/net/wifi/SupplicantStateTracker;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 234
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    iget v4, v2, Landroid/net/wifi/StateChangeResult;->networkId:I

    #calls: Landroid/net/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(I)V
    invoke-static {v3, v4}, Landroid/net/wifi/SupplicantStateTracker;->access$900(Landroid/net/wifi/SupplicantStateTracker;I)V

    .line 235
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    const/4 v4, 0x0

    #setter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v3, v4}, Landroid/net/wifi/SupplicantStateTracker;->access$002(Landroid/net/wifi/SupplicantStateTracker;I)I

    .line 237
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
