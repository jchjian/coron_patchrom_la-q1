.class public Lcom/nvidia/NvCPLSvc/NvAppProfiles;
.super Ljava/lang/Object;
.source "NvAppProfiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nvidia/NvCPLSvc/NvAppProfiles$NvCPLSvcConnection;
    }
.end annotation


# static fields
.field static final NV_APP_PROFILES_NAME:Ljava/lang/String; = "Frameworks_NvAppProfiles"

.field private static final TAG:Ljava/lang/String; = "NvAppProfiles"


# instance fields
.field private connCPLSvc:Lcom/nvidia/NvCPLSvc/NvAppProfiles$NvCPLSvcConnection;

.field private mContext:Landroid/content/Context;

.field private mNvCPLSvc:Lcom/nvidia/NvCPLSvc/INvCPLRemoteService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method static synthetic access$002(Lcom/nvidia/NvCPLSvc/NvAppProfiles;Lcom/nvidia/NvCPLSvc/INvCPLRemoteService;)Lcom/nvidia/NvCPLSvc/INvCPLRemoteService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->mNvCPLSvc:Lcom/nvidia/NvCPLSvc/INvCPLRemoteService;

    return-object p1
.end method

.method private checkBinding()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    :try_start_0
    iget-object v4, p0, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->mNvCPLSvc:Lcom/nvidia/NvCPLSvc/INvCPLRemoteService;

    if-nez v4, :cond_1

    .line 69
    iget-object v4, p0, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->mContext:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 81
    :goto_0
    return v2

    .line 72
    :cond_0
    new-instance v4, Lcom/nvidia/NvCPLSvc/NvAppProfiles$NvCPLSvcConnection;

    invoke-direct {v4, p0}, Lcom/nvidia/NvCPLSvc/NvAppProfiles$NvCPLSvcConnection;-><init>(Lcom/nvidia/NvCPLSvc/NvAppProfiles;)V

    iput-object v4, p0, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->connCPLSvc:Lcom/nvidia/NvCPLSvc/NvAppProfiles$NvCPLSvcConnection;

    .line 73
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v1, intentCPLSvc:Landroid/content/Intent;
    const-string v4, "com.nvidia.NvCPLSvc"

    const-string v5, "com.nvidia.NvCPLSvc.NvCPLService"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string/jumbo v4, "nvcplsvc_client_name"

    const-string v5, "Frameworks_NvAppProfiles"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object v4, p0, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->connCPLSvc:Lcom/nvidia/NvCPLSvc/NvAppProfiles$NvCPLSvcConnection;

    const/4 v6, 0x1

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #intentCPLSvc:Landroid/content/Intent;
    :cond_1
    move v2, v3

    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "NvAppProfiles"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App Profile: Failed to establish binding. Error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "packageName"
    .parameter "tag"

    .prologue
    const/4 v1, -0x1

    .line 87
    invoke-direct {p0}, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->checkBinding()Z

    move-result v2

    if-nez v2, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v1

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->mNvCPLSvc:Lcom/nvidia/NvCPLSvc/INvCPLRemoteService;

    if-eqz v2, :cond_0

    .line 99
    :try_start_0
    iget-object v2, p0, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->mNvCPLSvc:Lcom/nvidia/NvCPLSvc/INvCPLRemoteService;

    invoke-interface {v2, p1, p2}, Lcom/nvidia/NvCPLSvc/INvCPLRemoteService;->getAppProfileSettingInt(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NvAppProfiles"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App Profile: Failed to retrieve profile. Error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
