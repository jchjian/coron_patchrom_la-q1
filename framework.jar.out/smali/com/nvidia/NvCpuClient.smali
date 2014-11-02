.class public Lcom/nvidia/NvCpuClient;
.super Ljava/lang/Object;
.source "NvCpuClient.java"

# interfaces
.implements Lcom/nvidia/NvCpuClientConstants;


# static fields
.field private static final TAG:Ljava/lang/String; = "NvCpuClient"


# instance fields
.field private mNativeNvCpuClient:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 168
    invoke-static {}, Lcom/nvidia/NvCpuClient;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 146
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/nvidia/NvCpuClient;->mNativeNvCpuClient:I

    .line 148
    invoke-direct {p0}, Lcom/nvidia/NvCpuClient;->init()V

    .line 149
    return-void
.end method

.method private native init()V
.end method

.method private static native nativeClassInit()V
.end method

.method private native release()V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 154
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget v0, p0, Lcom/nvidia/NvCpuClient;->mNativeNvCpuClient:I

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/nvidia/NvCpuClient;->release()V

    .line 160
    :cond_0
    return-void

    .line 156
    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/nvidia/NvCpuClient;->mNativeNvCpuClient:I

    if-eqz v1, :cond_1

    .line 157
    invoke-direct {p0}, Lcom/nvidia/NvCpuClient;->release()V

    :cond_1
    throw v0
.end method

.method public native getCpuCoreBias()I
.end method

.method public native getCpuHighFreqMinDelay()I
.end method

.method public native getCpuMaxNormalFreq()I
.end method

.method public native getCpuScalingMinFreq()I
.end method

.method public native getEnableAppProfiles()I
.end method

.method public native getGpuCbusCapLevel()I
.end method

.method public native getGpuCbusCapState()I
.end method

.method public native getGpuScalingEnable()I
.end method

.method public native pokeCPU(IJJ)V
.end method

.method public native requestCpuFreqMax(IJJ)V
.end method

.method public native requestCpuFreqMaxHandle(IJ)Ljava/io/FileDescriptor;
.end method

.method public native requestCpuFreqMin(IJJ)V
.end method

.method public native requestCpuFreqMinHandle(IJ)Ljava/io/FileDescriptor;
.end method

.method public native requestMaxOnlineCpuCount(IJJ)V
.end method

.method public native requestMaxOnlineCpuCountHandle(IJ)Ljava/io/FileDescriptor;
.end method

.method public native requestMinOnlineCpuCount(IJJ)V
.end method

.method public native requestMinOnlineCpuCountHandle(IJ)Ljava/io/FileDescriptor;
.end method

.method public native setCpuCoreBias(I)V
.end method

.method public native setCpuHighFreqMinDelay(I)V
.end method

.method public native setCpuMaxNormalFreq(I)V
.end method

.method public native setCpuScalingMinFreq(I)V
.end method

.method public native setEnableAppProfiles(I)V
.end method

.method public native setGpuCbusCapLevel(I)V
.end method

.method public native setGpuCbusCapState(I)V
.end method

.method public native setGpuScalingEnable(I)V
.end method
