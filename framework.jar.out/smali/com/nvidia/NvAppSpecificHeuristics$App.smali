.class Lcom/nvidia/NvAppSpecificHeuristics$App;
.super Ljava/lang/Object;
.source "NvAppSpecificHeuristics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/NvAppSpecificHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "App"
.end annotation


# instance fields
.field public final disableCpuCoreBias:Z

.field public final disableGpuScaling:Z

.field public final forceHwUi:Z

.field public final packageName:Ljava/lang/String;

.field public final scalingMinFreq:I


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 6
    .parameter "_packageName"
    .parameter "_forceHwUi"

    .prologue
    const/4 v3, 0x0

    .line 654
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;ZIZZ)V

    .line 656
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ZI)V
    .locals 6
    .parameter "_packageName"
    .parameter "_forceHwUi"
    .parameter "_scalingMinFreq"

    .prologue
    const/4 v3, 0x0

    .line 649
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;ZIZZ)V

    .line 651
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ZIZ)V
    .locals 6
    .parameter "_packageName"
    .parameter "_forceHwUi"
    .parameter "_scalingMinFreq"
    .parameter "_disableCpuCoreBias"

    .prologue
    const/4 v3, 0x0

    .line 644
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;ZIZZ)V

    .line 646
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ZIZZ)V
    .locals 0
    .parameter "_packageName"
    .parameter "_forceHwUi"
    .parameter "_scalingMinFreq"
    .parameter "_disableCpuCoreBias"
    .parameter "_disableGpuScaling"

    .prologue
    .line 619
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 620
    iput-object p1, p0, Lcom/nvidia/NvAppSpecificHeuristics$App;->packageName:Ljava/lang/String;

    .line 621
    iput-boolean p2, p0, Lcom/nvidia/NvAppSpecificHeuristics$App;->forceHwUi:Z

    .line 622
    iput p3, p0, Lcom/nvidia/NvAppSpecificHeuristics$App;->scalingMinFreq:I

    .line 623
    iput-boolean p4, p0, Lcom/nvidia/NvAppSpecificHeuristics$App;->disableCpuCoreBias:Z

    .line 624
    iput-boolean p5, p0, Lcom/nvidia/NvAppSpecificHeuristics$App;->disableGpuScaling:Z

    .line 625
    return-void
.end method

.method constructor <init>([CZIZZ)V
    .locals 4
    .parameter "_packageName"
    .parameter "_forceHwUi"
    .parameter "_scalingMinFreq"
    .parameter "_disableCpuCoreBias"
    .parameter "_disableGpuScaling"

    .prologue
    .line 628
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 629
    const-string v1, ""

    .line 632
    .local v1, p:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-char v3, p1, v0

    xor-int/lit8 v3, v3, 0x55

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 635
    :cond_0
    iput-object v1, p0, Lcom/nvidia/NvAppSpecificHeuristics$App;->packageName:Ljava/lang/String;

    .line 636
    iput-boolean p2, p0, Lcom/nvidia/NvAppSpecificHeuristics$App;->forceHwUi:Z

    .line 637
    iput p3, p0, Lcom/nvidia/NvAppSpecificHeuristics$App;->scalingMinFreq:I

    .line 638
    iput-boolean p4, p0, Lcom/nvidia/NvAppSpecificHeuristics$App;->disableCpuCoreBias:Z

    .line 639
    iput-boolean p5, p0, Lcom/nvidia/NvAppSpecificHeuristics$App;->disableGpuScaling:Z

    .line 640
    return-void
.end method
