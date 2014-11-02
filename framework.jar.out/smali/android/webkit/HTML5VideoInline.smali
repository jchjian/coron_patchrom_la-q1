.class public Landroid/webkit/HTML5VideoInline;
.super Landroid/webkit/HTML5VideoView;
.source "HTML5VideoInline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5VideoInline$BufferingAnimationTask;
    }
.end annotation


# static fields
.field private static final BUFFERING_UPDATE_PERIOD:I = 0x21

.field private static mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private static mTextureNames:[I

.field private static mVideoLayerUsingSurfaceTexture:I


# instance fields
.field private mBufferingAnimationTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 26
    sput-object v0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    .line 29
    const/4 v0, -0x1

    sput v0, Landroid/webkit/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    return-void
.end method

.method constructor <init>(II)V
    .locals 1
    .parameter "videoLayerId"
    .parameter "position"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;-><init>()V

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/webkit/HTML5VideoInline;->init(IIZ)V

    .line 45
    return-void
.end method

.method public static cleanupSurfaceTexture()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 106
    const/4 v0, -0x1

    sput v0, Landroid/webkit/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    .line 107
    return-void
.end method

.method public static getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;
    .locals 3
    .parameter "videoLayerId"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    sget v0, Landroid/webkit/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    if-ne p0, v0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    if-nez v0, :cond_1

    .line 86
    :cond_0
    new-array v0, v1, [I

    sput-object v0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    .line 87
    sget-object v0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 88
    new-instance v0, Landroid/graphics/SurfaceTexture;

    sget-object v1, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    aget v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    sput-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 90
    :cond_1
    sput p0, Landroid/webkit/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    .line 91
    sget-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method private setFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 130
    sget-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 131
    return-void
.end method

.method private startTimer()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x21

    .line 134
    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->mBufferingAnimationTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5VideoInline;->mBufferingAnimationTimer:Ljava/util/Timer;

    .line 136
    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->mBufferingAnimationTimer:Ljava/util/Timer;

    new-instance v1, Landroid/webkit/HTML5VideoInline$BufferingAnimationTask;

    iget-object v4, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-direct {v1, p0, v4}, Landroid/webkit/HTML5VideoInline$BufferingAnimationTask;-><init>(Landroid/webkit/HTML5VideoInline;Landroid/webkit/HTML5VideoViewProxy;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 139
    :cond_0
    return-void
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->mBufferingAnimationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->mBufferingAnimationTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 144
    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->mBufferingAnimationTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HTML5VideoInline;->mBufferingAnimationTimer:Ljava/util/Timer;

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method public decideDisplayMode()V
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoInline;->getVideoLayerId()I

    move-result v2

    invoke-static {v2}, Landroid/webkit/HTML5VideoInline;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 50
    .local v1, surfaceTexture:Landroid/graphics/SurfaceTexture;
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 51
    .local v0, surface:Landroid/view/Surface;
    sget-object v2, Landroid/webkit/HTML5VideoInline;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 52
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 53
    return-void
.end method

.method public deleteSurfaceTexture()V
    .locals 0

    .prologue
    .line 100
    invoke-static {}, Landroid/webkit/HTML5VideoInline;->cleanupSurfaceTexture()V

    .line 101
    return-void
.end method

.method public getTextureName()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 112
    sget-object v1, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    if-eqz v1, :cond_0

    .line 113
    sget-object v1, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    aget v0, v1, v0

    .line 115
    :cond_0
    return v0
.end method

.method public pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 73
    invoke-direct {p0}, Landroid/webkit/HTML5VideoInline;->stopTimer()V

    .line 74
    return-void
.end method

.method public prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 3
    .parameter "proxy"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/webkit/HTML5VideoView;->prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 60
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoInline;->setFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 63
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    sget-object v0, Landroid/webkit/HTML5VideoInline;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 67
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoInline;->getPauseDuringPreparing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-super {p0}, Landroid/webkit/HTML5VideoView;->start()V

    .line 41
    :cond_0
    return-void
.end method

.method public surfaceTextureDeleted()Z
    .locals 1

    .prologue
    .line 95
    sget-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchProgressView(Z)V
    .locals 0
    .parameter "playerBuffering"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/webkit/HTML5VideoView;->switchProgressView(Z)V

    .line 122
    if-eqz p1, :cond_0

    .line 123
    invoke-direct {p0}, Landroid/webkit/HTML5VideoInline;->startTimer()V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-direct {p0}, Landroid/webkit/HTML5VideoInline;->stopTimer()V

    goto :goto_0
.end method
