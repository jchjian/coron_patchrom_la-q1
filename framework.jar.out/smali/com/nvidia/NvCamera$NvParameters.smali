.class public Lcom/nvidia/NvCamera$NvParameters;
.super Landroid/hardware/Camera$Parameters;
.source "NvCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/NvCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NvParameters"
.end annotation


# static fields
.field private static final NV_AUTOEXPOSURE_LOCK:Ljava/lang/String; = "auto-exposure-lock"

.field private static final NV_AUTOWHITEBALANCE_LOCK:Ljava/lang/String; = "auto-whitebalance-lock"

.field private static final NV_AUTO_ROTATION:Ljava/lang/String; = "nv-auto-rotation"

.field private static final NV_BURST_PICTURE_COUNT:Ljava/lang/String; = "nv-burst-picture-count"

.field private static final NV_CAPABILITY_FOR_VIDEO_SIZE:Ljava/lang/String; = "nv-capabilities-for-video-size"

.field private static final NV_CAPTURE_MODE:Ljava/lang/String; = "nv-capture-mode"

.field private static final NV_COLOR_CORRECTION:Ljava/lang/String; = "nv-color-correction"

.field private static final NV_CONTINUOUS_SHOT_MODE:Ljava/lang/String; = "shot2shot"

.field private static final NV_CONTRAST:Ljava/lang/String; = "nv-contrast"

.field private static final NV_EDGE_ENHANCEMENT:Ljava/lang/String; = "nv-edge-enhancement"

.field private static final NV_EV_BRACKET_CAPTURE:Ljava/lang/String; = "nv-ev-bracket-capture"

.field private static final NV_EXPOSURE_TIME:Ljava/lang/String; = "nv-exposure-time"

.field private static final NV_FOCUS_AREAS:Ljava/lang/String; = "focus-areas"

.field private static final NV_FOCUS_POSITION:Ljava/lang/String; = "nv-focus-position"

.field private static final NV_METERING_AREAS:Ljava/lang/String; = "metering-areas"

.field private static final NV_NORMAL_SHOT_MODE:Ljava/lang/String; = "normal"

.field private static final NV_NSL_BURST_PICTURE_COUNT:Ljava/lang/String; = "nv-nsl-burst-picture-count"

.field private static final NV_NSL_NUM_BUFFERS:Ljava/lang/String; = "nv-nsl-num-buffers"

.field private static final NV_NSL_SKIP_COUNT:Ljava/lang/String; = "nv-nsl-burst-skip-count"

.field private static final NV_PICTURE_ISO:Ljava/lang/String; = "nv-picture-iso"

.field private static final NV_RAW_DUMP_FLAG:Ljava/lang/String; = "nv-raw-dump-flag"

.field private static final NV_SATURATION:Ljava/lang/String; = "nv-saturation"

.field private static final NV_SENSOR_CAPTURE_RATE:Ljava/lang/String; = "nv-sensor-capture-rate"

.field private static final NV_SKIP_COUNT:Ljava/lang/String; = "nv-burst-skip-count"

.field private static final NV_STEREO_MODE:Ljava/lang/String; = "nv-stereo-mode"

.field private static final NV_STILL_HDR:Ljava/lang/String; = "nv-still-hdr"

.field private static final NV_SUPPORTED_VALUES_SUFFIX:Ljava/lang/String; = "-values"

.field private static final NV_VIDEO_SPEED:Ljava/lang/String; = "nv-video-speed"


# instance fields
.field final synthetic this$0:Lcom/nvidia/NvCamera;


# direct methods
.method protected constructor <init>(Lcom/nvidia/NvCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/nvidia/NvCamera$NvParameters;->this$0:Lcom/nvidia/NvCamera;

    .line 298
    invoke-direct {p0, p1}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;)V

    .line 299
    return-void
.end method

.method private StringToWindows(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nvidia/NvCamera$NvWindow;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1389
    .local p1, windowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvWindow;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1391
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, "("

    invoke-direct {v5, p2, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    .local v5, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1394
    new-instance v6, Lcom/nvidia/NvCamera$NvWindow;

    invoke-direct {v6}, Lcom/nvidia/NvCamera$NvWindow;-><init>()V

    .line 1395
    .local v6, window:Lcom/nvidia/NvCamera$NvWindow;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1396
    .local v4, token:Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v3, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    .local v3, subTokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1398
    .local v2, subToken:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/nvidia/NvCamera$NvWindow;->left:I

    .line 1399
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1400
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/nvidia/NvCamera$NvWindow;->top:I

    .line 1401
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1402
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/nvidia/NvCamera$NvWindow;->right:I

    .line 1403
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1404
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/nvidia/NvCamera$NvWindow;->bottom:I

    .line 1405
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1406
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v7, ")"

    invoke-direct {v1, v2, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    .local v1, endTokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1408
    .local v0, endToken:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/nvidia/NvCamera$NvWindow;->weight:I

    .line 1409
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1412
    .end local v0           #endToken:Ljava/lang/String;
    .end local v1           #endTokenizer:Ljava/util/StringTokenizer;
    .end local v2           #subToken:Ljava/lang/String;
    .end local v3           #subTokenizer:Ljava/util/StringTokenizer;
    .end local v4           #token:Ljava/lang/String;
    .end local v5           #tokenizer:Ljava/util/StringTokenizer;
    .end local v6           #window:Lcom/nvidia/NvCamera$NvWindow;
    :cond_0
    return-void
.end method

.method private WindowsToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nvidia/NvCamera$NvWindow;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1359
    .local p1, windowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvWindow;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1361
    :cond_0
    const/4 v4, 0x0

    .line 1384
    :goto_0
    return-object v4

    .line 1365
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1366
    .local v1, size:I
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1367
    .local v3, windowsString:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 1369
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nvidia/NvCamera$NvWindow;

    .line 1370
    .local v2, window:Lcom/nvidia/NvCamera$NvWindow;
    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    iget v4, v2, Lcom/nvidia/NvCamera$NvWindow;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1372
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    iget v4, v2, Lcom/nvidia/NvCamera$NvWindow;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1374
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    iget v4, v2, Lcom/nvidia/NvCamera$NvWindow;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1376
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    iget v4, v2, Lcom/nvidia/NvCamera$NvWindow;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1378
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    iget v4, v2, Lcom/nvidia/NvCamera$NvWindow;->weight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1380
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    add-int/lit8 v4, v1, -0x1

    if-eq v0, v4, :cond_2

    .line 1382
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1384
    .end local v2           #window:Lcom/nvidia/NvCamera$NvWindow;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public getAutoExposureLock()Z
    .locals 2

    .prologue
    .line 1254
    const-string v1, "auto-exposure-lock"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1255
    .local v0, v:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getAutoRotation()Z
    .locals 2

    .prologue
    .line 1278
    const-string/jumbo v1, "nv-auto-rotation"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1279
    .local v0, v:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getAutoWhiteBalanceLock()Z
    .locals 2

    .prologue
    .line 1238
    const-string v1, "auto-whitebalance-lock"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1239
    .local v0, v:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getBurstCount()I
    .locals 1

    .prologue
    .line 526
    const-string/jumbo v0, "nv-burst-picture-count"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCapabilitiesForVideoSizes()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nvidia/NvCamera$NvVideoPreviewFps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 793
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 797
    .local v1, VideoPreviewSizeFPS:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvVideoPreviewFps;>;"
    const-string/jumbo v9, "nv-capabilities-for-video-size-values"

    invoke-virtual {p0, v9}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 798
    .local v2, str:Ljava/lang/String;
    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 833
    .end local v1           #VideoPreviewSizeFPS:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvVideoPreviewFps;>;"
    :cond_0
    return-object v1

    .line 799
    .restart local v1       #VideoPreviewSizeFPS:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvVideoPreviewFps;>;"
    :cond_1
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v9, ","

    invoke-direct {v6, v2, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    .local v6, tokenizer1:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 802
    new-instance v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;

    invoke-direct {v0}, Lcom/nvidia/NvCamera$NvVideoPreviewFps;-><init>()V

    .line 804
    .local v0, TempVideoPreviewFps:Lcom/nvidia/NvCamera$NvVideoPreviewFps;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 807
    .local v3, token1:Ljava/lang/String;
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v9, ":"

    invoke-direct {v7, v3, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    .local v7, tokenizer2:Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 810
    .local v4, token2:Ljava/lang/String;
    new-instance v8, Ljava/util/StringTokenizer;

    const-string/jumbo v9, "x"

    invoke-direct {v8, v4, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    .local v8, tokenizer3:Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 814
    .local v5, token3:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->VideoWidth:I

    .line 815
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 816
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->VideoHeight:I

    .line 818
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 819
    new-instance v8, Ljava/util/StringTokenizer;

    .end local v8           #tokenizer3:Ljava/util/StringTokenizer;
    const-string/jumbo v9, "x"

    invoke-direct {v8, v4, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    .restart local v8       #tokenizer3:Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 823
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->MaxPreviewWidth:I

    .line 824
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 825
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->MaxPreviewHeight:I

    .line 827
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 829
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->MaxFps:I

    .line 831
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getColorCorrection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 986
    const-string/jumbo v0, "nv-color-correction"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorCorrection([F)V
    .locals 8
    .parameter "matrix"

    .prologue
    const/16 v7, 0x10

    .line 1004
    if-eqz p1, :cond_1

    array-length v6, p1

    if-ne v6, v7, :cond_1

    .line 1006
    const-string/jumbo v6, "nv-color-correction"

    invoke-virtual {p0, v6}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1007
    .local v3, str:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1009
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v7, :cond_1

    .line 1010
    const/4 v6, 0x0

    aput v6, p1, v0

    .line 1009
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1014
    .end local v0           #i:I
    :cond_0
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v5, v3, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    .local v5, tokenizer:Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .line 1016
    .local v1, index:I
    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1018
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1019
    .local v4, token:Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, p1, v1

    move v1, v2

    .line 1020
    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_1

    .line 1023
    .end local v1           #index:I
    .end local v3           #str:Ljava/lang/String;
    .end local v4           #token:Ljava/lang/String;
    .end local v5           #tokenizer:Ljava/util/StringTokenizer;
    :cond_1
    return-void
.end method

.method public getContrast()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1086
    const-string/jumbo v0, "nv-contrast"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEdgeEnhancement()I
    .locals 1

    .prologue
    .line 1114
    const-string/jumbo v0, "nv-edge-enhancement"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExposureTime()I
    .locals 1

    .prologue
    .line 1146
    const-string/jumbo v0, "nv-exposure-time"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFocusAreas(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nvidia/NvCamera$NvWindow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 892
    .local p1, windowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvWindow;>;"
    const-string v1, "focus-areas"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 893
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/nvidia/NvCamera$NvParameters;->StringToWindows(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 894
    return-void
.end method

.method public getFocusPosition()I
    .locals 1

    .prologue
    .line 1211
    const-string/jumbo v0, "nv-focus-position"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMeteringAreas(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nvidia/NvCamera$NvWindow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 951
    .local p1, windowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvWindow;>;"
    const-string/jumbo v1, "metering-areas"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 952
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/nvidia/NvCamera$NvParameters;->StringToWindows(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 953
    return-void
.end method

.method public getNSLBurstCount()I
    .locals 1

    .prologue
    .line 451
    const-string/jumbo v0, "nv-nsl-burst-picture-count"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNSLNumBuffers()I
    .locals 1

    .prologue
    .line 386
    const-string/jumbo v0, "nv-nsl-num-buffers"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNSLSkipCount()I
    .locals 1

    .prologue
    .line 422
    const-string/jumbo v0, "nv-nsl-burst-skip-count"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPictureISO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1176
    const-string/jumbo v0, "nv-picture-iso"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawDumpFlag()I
    .locals 1

    .prologue
    .line 628
    const-string/jumbo v0, "nv-raw-dump-flag"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSaturation()I
    .locals 1

    .prologue
    .line 1048
    const-string/jumbo v0, "nv-saturation"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSkipCount()I
    .locals 1

    .prologue
    .line 507
    const-string/jumbo v0, "nv-burst-skip-count"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStereoMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1337
    const-string/jumbo v0, "nv-stereo-mode"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStillHDR()Z
    .locals 2

    .prologue
    .line 1303
    const-string/jumbo v1, "nv-still-hdr"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1304
    .local v0, v:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getSupportedSensorCaptureRate()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 710
    const-string/jumbo v5, "nv-sensor-capture-rate-values"

    invoke-virtual {p0, v5}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 711
    .local v2, str:Ljava/lang/String;
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 721
    :cond_0
    return-object v0

    .line 713
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v0, SensorCaptureRate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v4, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    .local v4, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 717
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 718
    .local v3, token:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 719
    .local v1, r:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSupportedStereoModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1353
    const-string/jumbo v1, "nv-stereo-mode-values"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1354
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->splitCloned(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedVideoSpeeds()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 763
    const-string/jumbo v5, "nv-video-speed-values"

    invoke-virtual {p0, v5}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 764
    .local v1, str:Ljava/lang/String;
    if-nez v1, :cond_1

    const/4 v4, 0x0

    .line 774
    :cond_0
    return-object v4

    .line 766
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 767
    .local v4, videospeeds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v3, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    .local v3, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 770
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 771
    .local v2, token:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 772
    .local v0, s:F
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public inContinuousShotMode()Z
    .locals 2

    .prologue
    .line 580
    const-string/jumbo v1, "nv-capture-mode"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, nvCaptureMode:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 582
    const-string/jumbo v1, "shot2shot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 583
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAutoExposureLock(Z)V
    .locals 2
    .parameter "lock"

    .prologue
    .line 1246
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1247
    .local v0, v:Ljava/lang/String;
    const-string v1, "auto-exposure-lock"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    return-void
.end method

.method public setAutoRotation(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1270
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1271
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-auto-rotation"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    return-void
.end method

.method public setAutoWhiteBalanceLock(Z)V
    .locals 2
    .parameter "lock"

    .prologue
    .line 1230
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1231
    .local v0, v:Ljava/lang/String;
    const-string v1, "auto-whitebalance-lock"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    return-void
.end method

.method public setBurstCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 518
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-burst-picture-count"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method public setColorCorrection(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 978
    const-string/jumbo v0, "nv-color-correction"

    invoke-virtual {p0, v0, p1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    return-void
.end method

.method public setColorCorrection([F)V
    .locals 5
    .parameter "matrix"

    .prologue
    const/16 v4, 0xf

    .line 990
    if-eqz p1, :cond_1

    array-length v2, p1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    .line 992
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 993
    .local v1, matrixString:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 995
    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 996
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 998
    :cond_0
    aget v2, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 999
    const-string/jumbo v2, "nv-color-correction"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    .end local v0           #i:I
    .end local v1           #matrixString:Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method public setContrast(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 1078
    const-string/jumbo v0, "nv-contrast"

    invoke-virtual {p0, v0, p1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    return-void
.end method

.method public setEdgeEnhancement(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1105
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1106
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-edge-enhancement"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    return-void
.end method

.method public setEvBracketCapture([F)V
    .locals 4
    .parameter "evValues"

    .prologue
    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 658
    .local v0, evString:Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    .line 660
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    :goto_0
    const-string/jumbo v2, "nv-ev-bracket-capture"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    return-void

    .line 664
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 666
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 667
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 669
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public setExposureTime(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1138
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1139
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-exposure-time"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    return-void
.end method

.method public setFocusAreas(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nvidia/NvCamera$NvWindow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 880
    .local p1, windowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvWindow;>;"
    invoke-direct {p0, p1}, Lcom/nvidia/NvCamera$NvParameters;->WindowsToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 882
    const-string v1, "focus-areas"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    :cond_0
    return-void
.end method

.method public setFocusPosition(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1203
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1204
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-focus-position"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    return-void
.end method

.method public setMeteringAreas(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nvidia/NvCamera$NvWindow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 939
    .local p1, windowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvWindow;>;"
    invoke-direct {p0, p1}, Lcom/nvidia/NvCamera$NvParameters;->WindowsToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 940
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 941
    const-string/jumbo v1, "metering-areas"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    :cond_0
    return-void
.end method

.method public setNSLBurstCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 443
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-nsl-burst-picture-count"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public setNSLNumBuffers(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 367
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-nsl-num-buffers"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public setNSLSkipCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 414
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-nsl-burst-skip-count"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public setNVShotMode(Ljava/lang/String;)Z
    .locals 3
    .parameter "mode"

    .prologue
    .line 562
    const/4 v0, 0x0

    .line 563
    .local v0, retVal:Z
    if-eqz p1, :cond_0

    .line 564
    const-string/jumbo v1, "shot2shot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 565
    const-string/jumbo v1, "nv-capture-mode"

    const-string/jumbo v2, "shot2shot"

    invoke-virtual {p0, v1, v2}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const/4 v0, 0x1

    .line 573
    :cond_0
    :goto_0
    return v0

    .line 568
    :cond_1
    const-string/jumbo v1, "normal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    const-string/jumbo v1, "nv-capture-mode"

    const-string/jumbo v2, "normal"

    invoke-virtual {p0, v1, v2}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPictureISO(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 1169
    const-string/jumbo v0, "nv-picture-iso"

    invoke-virtual {p0, v0, p1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    return-void
.end method

.method public setRawDumpFlag(I)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 620
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-raw-dump-flag"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    return-void
.end method

.method public setSaturation(I)V
    .locals 2
    .parameter "saturation"

    .prologue
    .line 1040
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1041
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-saturation"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    return-void
.end method

.method public setSensorCaptureRate(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 701
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-sensor-capture-rate"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    return-void
.end method

.method public setSkipCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 499
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-burst-skip-count"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method public setStereoMode(Ljava/lang/String;)V
    .locals 1
    .parameter "stereoMode"

    .prologue
    .line 1325
    const-string/jumbo v0, "nv-stereo-mode"

    invoke-virtual {p0, v0, p1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    return-void
.end method

.method public setStillHDR(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1295
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1296
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-still-hdr"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    return-void
.end method

.method public setVideoSpeed(F)V
    .locals 2
    .parameter "value"

    .prologue
    .line 754
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-video-speed"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    return-void
.end method

.method protected splitCloned(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 316
    :cond_0
    return-object v0

    .line 311
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v0, substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
