.class Landroid/webkit/ZoomManager$PostScale;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostScale"
.end annotation


# instance fields
.field mInPortraitMode:Z

.field mInZoomOverviewBeforeSizeChange:Z

.field mUpdateTextWrap:Z

.field final synthetic this$0:Landroid/webkit/ZoomManager;


# direct methods
.method public constructor <init>(Landroid/webkit/ZoomManager;ZZZ)V
    .locals 0
    .parameter
    .parameter "updateTextWrap"
    .parameter "inZoomOverview"
    .parameter "inPortraitMode"

    .prologue
    .line 974
    iput-object p1, p0, Landroid/webkit/ZoomManager$PostScale;->this$0:Landroid/webkit/ZoomManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 975
    invoke-virtual {p0, p2, p3, p4}, Landroid/webkit/ZoomManager$PostScale;->init(ZZZ)V

    .line 976
    return-void
.end method


# virtual methods
.method public init(ZZZ)V
    .locals 0
    .parameter "updateTextWrap"
    .parameter "inZoomOverview"
    .parameter "inPortraitMode"

    .prologue
    .line 981
    iput-boolean p1, p0, Landroid/webkit/ZoomManager$PostScale;->mUpdateTextWrap:Z

    .line 982
    iput-boolean p2, p0, Landroid/webkit/ZoomManager$PostScale;->mInZoomOverviewBeforeSizeChange:Z

    .line 983
    iput-boolean p3, p0, Landroid/webkit/ZoomManager$PostScale;->mInPortraitMode:Z

    .line 984
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 987
    iget-object v1, p0, Landroid/webkit/ZoomManager$PostScale;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 991
    iget-object v1, p0, Landroid/webkit/ZoomManager$PostScale;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$900(Landroid/webkit/ZoomManager;)F

    move-result v0

    .line 992
    .local v0, newScale:F
    iget-object v1, p0, Landroid/webkit/ZoomManager$PostScale;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/ZoomManager$PostScale;->mInPortraitMode:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/ZoomManager$PostScale;->mInZoomOverviewBeforeSizeChange:Z

    if-eqz v1, :cond_0

    .line 995
    iget-object v1, p0, Landroid/webkit/ZoomManager$PostScale;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v0

    .line 997
    :cond_0
    iget-object v1, p0, Landroid/webkit/ZoomManager$PostScale;->this$0:Landroid/webkit/ZoomManager;

    iget-boolean v2, p0, Landroid/webkit/ZoomManager$PostScale;->mUpdateTextWrap:Z

    const/4 v3, 0x1

    #calls: Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V
    invoke-static {v1, v0, v2, v3}, Landroid/webkit/ZoomManager;->access$1700(Landroid/webkit/ZoomManager;FZZ)V

    .line 999
    iget-object v1, p0, Landroid/webkit/ZoomManager$PostScale;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->updateZoomPicker()V

    .line 1001
    .end local v0           #newScale:F
    :cond_1
    return-void
.end method
