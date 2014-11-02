.class Lcom/nvidia/NvCPLSvc/NvAppProfiles$NvCPLSvcConnection;
.super Ljava/lang/Object;
.source "NvAppProfiles.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/NvCPLSvc/NvAppProfiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NvCPLSvcConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/NvCPLSvc/NvAppProfiles;


# direct methods
.method constructor <init>(Lcom/nvidia/NvCPLSvc/NvAppProfiles;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/nvidia/NvCPLSvc/NvAppProfiles$NvCPLSvcConnection;->this$0:Lcom/nvidia/NvCPLSvc/NvAppProfiles;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 50
    if-nez p2, :cond_0

    .line 51
    const-string v0, "NvAppProfiles"

    const-string v1, "App Profile: Invalid Binder given"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/nvidia/NvCPLSvc/NvAppProfiles$NvCPLSvcConnection;->this$0:Lcom/nvidia/NvCPLSvc/NvAppProfiles;

    invoke-static {p2}, Lcom/nvidia/NvCPLSvc/INvCPLRemoteService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nvidia/NvCPLSvc/INvCPLRemoteService;

    move-result-object v1

    #setter for: Lcom/nvidia/NvCPLSvc/NvAppProfiles;->mNvCPLSvc:Lcom/nvidia/NvCPLSvc/INvCPLRemoteService;
    invoke-static {v0, v1}, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->access$002(Lcom/nvidia/NvCPLSvc/NvAppProfiles;Lcom/nvidia/NvCPLSvc/INvCPLRemoteService;)Lcom/nvidia/NvCPLSvc/INvCPLRemoteService;

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nvidia/NvCPLSvc/NvAppProfiles$NvCPLSvcConnection;->this$0:Lcom/nvidia/NvCPLSvc/NvAppProfiles;

    const/4 v1, 0x0

    #setter for: Lcom/nvidia/NvCPLSvc/NvAppProfiles;->mNvCPLSvc:Lcom/nvidia/NvCPLSvc/INvCPLRemoteService;
    invoke-static {v0, v1}, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->access$002(Lcom/nvidia/NvCPLSvc/NvAppProfiles;Lcom/nvidia/NvCPLSvc/INvCPLRemoteService;)Lcom/nvidia/NvCPLSvc/INvCPLRemoteService;

    .line 58
    return-void
.end method
