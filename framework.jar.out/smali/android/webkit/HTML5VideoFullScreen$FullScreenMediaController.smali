.class Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;
.super Landroid/widget/MediaController;
.source "HTML5VideoFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullScreenMediaController"
.end annotation


# instance fields
.field mVideoView:Landroid/view/View;

.field final synthetic this$0:Landroid/webkit/HTML5VideoFullScreen;


# direct methods
.method public constructor <init>(Landroid/webkit/HTML5VideoFullScreen;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "video"

    .prologue
    .line 368
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    .line 369
    invoke-direct {p0, p2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 370
    iput-object p3, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    .line 371
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 392
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 393
    .local v0, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 395
    .local v1, uniqueDown:Z
    :goto_0
    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 396
    if-eqz v1, :cond_1

    .line 397
    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v3, v3, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v3}, Landroid/webkit/HTML5VideoViewProxy;->exitFullScreenVideo()V

    .line 401
    :goto_1
    return v2

    .line 393
    .end local v1           #uniqueDown:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 401
    .restart local v1       #uniqueDown:Z
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/MediaController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 387
    :cond_0
    invoke-super {p0}, Landroid/widget/MediaController;->hide()V

    .line 388
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 375
    invoke-super {p0}, Landroid/widget/MediaController;->show()V

    .line 376
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 379
    :cond_0
    return-void
.end method
