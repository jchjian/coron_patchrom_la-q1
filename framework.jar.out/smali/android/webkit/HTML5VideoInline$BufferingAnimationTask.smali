.class final Landroid/webkit/HTML5VideoInline$BufferingAnimationTask;
.super Ljava/util/TimerTask;
.source "HTML5VideoInline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoInline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BufferingAnimationTask"
.end annotation


# instance fields
.field private mProxy:Landroid/webkit/HTML5VideoViewProxy;

.field final synthetic this$0:Landroid/webkit/HTML5VideoInline;


# direct methods
.method public constructor <init>(Landroid/webkit/HTML5VideoInline;Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter
    .parameter "proxy"

    .prologue
    .line 151
    iput-object p1, p0, Landroid/webkit/HTML5VideoInline$BufferingAnimationTask;->this$0:Landroid/webkit/HTML5VideoInline;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 152
    iput-object p2, p0, Landroid/webkit/HTML5VideoInline$BufferingAnimationTask;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 153
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Landroid/webkit/HTML5VideoInline$BufferingAnimationTask;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->onBufferingupdate()V

    .line 158
    return-void
.end method
