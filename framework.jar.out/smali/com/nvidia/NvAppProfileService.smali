.class public Lcom/nvidia/NvAppProfileService;
.super Ljava/lang/Object;
.source "NvAppProfileService.java"

# interfaces
.implements Lcom/nvidia/NvAppProfileConstants;


# static fields
.field private static final TAG:Ljava/lang/String; = "NvAppProfileService"


# instance fields
.field private enableAppProfiles:Z

.field private initAppProfiles:Z

.field private mAppProfile:Lcom/nvidia/NvCPLSvc/NvAppProfiles;

.field private mAppSpecificHeuristics:Lcom/nvidia/NvAppSpecificHeuristics;

.field private mContext:Landroid/content/Context;

.field private mCpuClient:Lcom/nvidia/NvCpuClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/nvidia/NvCpuClient;

    invoke-direct {v0}, Lcom/nvidia/NvCpuClient;-><init>()V

    iput-object v0, p0, Lcom/nvidia/NvAppProfileService;->mCpuClient:Lcom/nvidia/NvCpuClient;

    .line 52
    new-instance v0, Lcom/nvidia/NvCPLSvc/NvAppProfiles;

    invoke-direct {v0, p1}, Lcom/nvidia/NvCPLSvc/NvAppProfiles;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nvidia/NvAppProfileService;->mAppProfile:Lcom/nvidia/NvCPLSvc/NvAppProfiles;

    .line 53
    new-instance v0, Lcom/nvidia/NvAppSpecificHeuristics;

    invoke-direct {v0}, Lcom/nvidia/NvAppSpecificHeuristics;-><init>()V

    iput-object v0, p0, Lcom/nvidia/NvAppProfileService;->mAppSpecificHeuristics:Lcom/nvidia/NvAppSpecificHeuristics;

    .line 54
    iput-object p1, p0, Lcom/nvidia/NvAppProfileService;->mContext:Landroid/content/Context;

    .line 55
    iput-boolean v1, p0, Lcom/nvidia/NvAppProfileService;->enableAppProfiles:Z

    .line 57
    iput-boolean v1, p0, Lcom/nvidia/NvAppProfileService;->initAppProfiles:Z

    .line 58
    return-void
.end method

.method private setAppHeuristicsCpuScalingMinFreq(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 66
    iget-object v1, p0, Lcom/nvidia/NvAppProfileService;->mAppSpecificHeuristics:Lcom/nvidia/NvAppSpecificHeuristics;

    invoke-static {p1}, Lcom/nvidia/NvAppSpecificHeuristics;->getAppSpecificScalingMinFreq(Ljava/lang/String;)I

    move-result v0

    .line 68
    .local v0, freq:I
    iget-object v1, p0, Lcom/nvidia/NvAppProfileService;->mCpuClient:Lcom/nvidia/NvCpuClient;

    invoke-virtual {v1, v0}, Lcom/nvidia/NvCpuClient;->setCpuScalingMinFreq(I)V

    .line 69
    return-void
.end method

.method private setAppProfileCpuCoreBias(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 81
    iget-object v1, p0, Lcom/nvidia/NvAppProfileService;->mAppSpecificHeuristics:Lcom/nvidia/NvAppSpecificHeuristics;

    invoke-static {p1}, Lcom/nvidia/NvAppSpecificHeuristics;->getAppSpecificDisableCpuCoreBias(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/nvidia/NvAppProfileService;->mCpuClient:Lcom/nvidia/NvCpuClient;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/nvidia/NvCpuClient;->setCpuCoreBias(I)V

    .line 96
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-boolean v1, p0, Lcom/nvidia/NvAppProfileService;->enableAppProfiles:Z

    if-eqz v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/nvidia/NvAppProfileService;->mAppProfile:Lcom/nvidia/NvCPLSvc/NvAppProfiles;

    const-string v2, "core_bias"

    invoke-virtual {v1, p1, v2}, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 86
    .local v0, bias:I
    if-gez v0, :cond_1

    .line 87
    iget-object v1, p0, Lcom/nvidia/NvAppProfileService;->mCpuClient:Lcom/nvidia/NvCpuClient;

    invoke-virtual {v1, v3}, Lcom/nvidia/NvCpuClient;->setCpuCoreBias(I)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/nvidia/NvAppProfileService;->mCpuClient:Lcom/nvidia/NvCpuClient;

    invoke-virtual {v1, v0}, Lcom/nvidia/NvCpuClient;->setCpuCoreBias(I)V

    goto :goto_0

    .line 94
    .end local v0           #bias:I
    :cond_2
    iget-object v1, p0, Lcom/nvidia/NvAppProfileService;->mCpuClient:Lcom/nvidia/NvCpuClient;

    invoke-virtual {v1, v3}, Lcom/nvidia/NvCpuClient;->setCpuCoreBias(I)V

    goto :goto_0
.end method

.method private setAppProfileCpuMaxNormalFreq(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 120
    iget-boolean v1, p0, Lcom/nvidia/NvAppProfileService;->enableAppProfiles:Z

    if-nez v1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/nvidia/NvAppProfileService;->mAppProfile:Lcom/nvidia/NvCPLSvc/NvAppProfiles;

    const-string v2, "cpu_freq_bias"

    invoke-virtual {v1, p1, v2}, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 123
    .local v0, freq:I
    if-gez v0, :cond_1

    .line 124
    iget-object v1, p0, Lcom/nvidia/NvAppProfileService;->mCpuClient:Lcom/nvidia/NvCpuClient;

    const v2, 0x124f80

    invoke-virtual {v1, v2}, Lcom/nvidia/NvCpuClient;->setCpuMaxNormalFreq(I)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/nvidia/NvAppProfileService;->mCpuClient:Lcom/nvidia/NvCpuClient;

    invoke-virtual {v1, v0}, Lcom/nvidia/NvCpuClient;->setCpuMaxNormalFreq(I)V

    goto :goto_0
.end method

.method private setAppProfileGpuCbusCapLevel(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 132
    iget-boolean v1, p0, Lcom/nvidia/NvAppProfileService;->enableAppProfiles:Z

    if-nez v1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/nvidia/NvAppProfileService;->mAppProfile:Lcom/nvidia/NvCPLSvc/NvAppProfiles;

    const-string v2, "gpu_core_cap"

    invoke-virtual {v1, p1, v2}, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 135
    .local v0, bias:I
    if-gez v0, :cond_1

    .line 136
    iget-object v1, p0, Lcom/nvidia/NvAppProfileService;->mCpuClient:Lcom/nvidia/NvCpuClient;

    const v2, 0x1a0c1740

    invoke-virtual {v1, v2}, Lcom/nvidia/NvCpuClient;->setGpuCbusCapLevel(I)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/nvidia/NvAppProfileService;->mCpuClient:Lcom/nvidia/NvCpuClient;

    invoke-virtual {v1}, Lcom/nvidia/NvCpuClient;->getGpuCbusCapState()I

    move-result v1

    if-nez v1, :cond_2

    .line 140
    iget-object v1, p0, Lcom/nvidia/NvAppProfileService;->mCpuClient:Lcom/nvidia/NvCpuClient;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nvidia/NvCpuClient;->setGpuCbusCapState(I)V

    .line 141
    :cond_2
    iget-object v1, p0, Lcom/nvidia/NvAppProfileService;->mCpuClient:Lcom/nvidia/NvCpuClient;

    invoke-virtual {v1, v0}, Lcom/nvidia/NvCpuClient;->setGpuCbusCapLevel(I)V

    goto :goto_0
.end method

.method private setAppProfileGpuScaling(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nvidia/NvAppProfileService;->mAppSpecificHeuristics:Lcom/nvidia/NvAppSpecificHeuristics;

    invoke-static {p1}, Lcom/nvidia/NvAppSpecificHeuristics;->getAppSpecificDisableGpuScaling(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/nvidia/NvAppProfileService;->mCpuClient:Lcom/nvidia/NvCpuClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nvidia/NvCpuClient;->setGpuScalingEnable(I)V

    .line 117
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/nvidia/NvAppProfileService;->mCpuClient:Lcom/nvidia/NvCpuClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nvidia/NvCpuClient;->setGpuScalingEnable(I)V

    goto :goto_0
.end method


# virtual methods
.method public requestCpuFreqMax(IJJ)V
    .locals 6
    .parameter "strength"
    .parameter "timeoutNs"
    .parameter "nowNanoTime"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/nvidia/NvAppProfileService;->mCpuClient:Lcom/nvidia/NvCpuClient;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nvidia/NvCpuClient;->requestCpuFreqMax(IJJ)V

    .line 191
    return-void
.end method

.method public requestCpuFreqMin(IJJ)V
    .locals 6
    .parameter "strength"
    .parameter "timeoutNs"
    .parameter "nowNanoTime"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/nvidia/NvAppProfileService;->mCpuClient:Lcom/nvidia/NvCpuClient;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nvidia/NvCpuClient;->requestCpuFreqMin(IJJ)V

    .line 186
    return-void
.end method

.method public requestMaxOnlineCpuCount(IJJ)V
    .locals 6
    .parameter "numCpus"
    .parameter "timeoutNs"
    .parameter "nowNanoTime"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/nvidia/NvAppProfileService;->mCpuClient:Lcom/nvidia/NvCpuClient;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nvidia/NvCpuClient;->requestMaxOnlineCpuCount(IJJ)V

    .line 181
    return-void
.end method

.method public requestMinOnlineCpuCount(IJJ)V
    .locals 6
    .parameter "numCpus"
    .parameter "timeoutNs"
    .parameter "nowNanoTime"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/nvidia/NvAppProfileService;->mCpuClient:Lcom/nvidia/NvCpuClient;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nvidia/NvCpuClient;->requestMinOnlineCpuCount(IJJ)V

    .line 176
    return-void
.end method

.method public setAppProfile(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    const/4 v2, 0x1

    .line 150
    iget-boolean v0, p0, Lcom/nvidia/NvAppProfileService;->initAppProfiles:Z

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/nvidia/NvAppProfileService;->mCpuClient:Lcom/nvidia/NvCpuClient;

    invoke-virtual {v0}, Lcom/nvidia/NvCpuClient;->getEnableAppProfiles()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 152
    iput-boolean v2, p0, Lcom/nvidia/NvAppProfileService;->enableAppProfiles:Z

    .line 153
    iget-object v0, p0, Lcom/nvidia/NvAppProfileService;->mCpuClient:Lcom/nvidia/NvCpuClient;

    invoke-virtual {v0, v2}, Lcom/nvidia/NvCpuClient;->setGpuCbusCapState(I)V

    .line 154
    iget-object v0, p0, Lcom/nvidia/NvAppProfileService;->mCpuClient:Lcom/nvidia/NvCpuClient;

    const v1, 0x1a0c1740

    invoke-virtual {v0, v1}, Lcom/nvidia/NvCpuClient;->setGpuCbusCapLevel(I)V

    .line 155
    const-string v0, "NvAppProfileService"

    const-string v1, "App Profiles: Enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    iput-boolean v2, p0, Lcom/nvidia/NvAppProfileService;->initAppProfiles:Z

    .line 163
    :cond_0
    invoke-direct {p0, p1}, Lcom/nvidia/NvAppProfileService;->setAppHeuristicsCpuScalingMinFreq(Ljava/lang/String;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/nvidia/NvAppProfileService;->setAppProfileCpuCoreBias(Ljava/lang/String;)V

    .line 165
    invoke-direct {p0, p1}, Lcom/nvidia/NvAppProfileService;->setAppProfileCpuMaxNormalFreq(Ljava/lang/String;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/nvidia/NvAppProfileService;->setAppProfileGpuCbusCapLevel(Ljava/lang/String;)V

    .line 167
    invoke-direct {p0, p1}, Lcom/nvidia/NvAppProfileService;->setAppProfileGpuScaling(Ljava/lang/String;)V

    .line 168
    return-void

    .line 158
    :cond_1
    const-string v0, "NvAppProfileService"

    const-string v1, "App Profiles: Not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
