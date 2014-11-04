.class public Lcom/ti/fmrxapp/FmRxApp;
.super Landroid/app/Activity;
.source "FmRxApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ti/fm/FmRadio$ServiceListener;
.implements Lcom/ti/fm/IFmConstants;


# static fields
.field private static btnStation:[Landroid/widget/Button;

.field public static lastTunedFrequency:Ljava/lang/Float;

.field public static lastTunedFrequencyBeforeScan:Ljava/lang/Float;

.field private static mIsDbPresent:Z

.field public static sBand:I

.field public static sChannelNo:I

.field public static sChannelSpace:I

.field public static sFmRadio:Lcom/ti/fm/FmRadio;

.field public static sLoveNo:I

.field public static sStationbtn:[Ljava/lang/String;

.field private static sdefaultSettingOn:Z

.field public static stations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static txtFmRxTunedFreq:Landroid/widget/TextView;

.field static txtStationName:Landroid/widget/TextView;


# instance fields
.field private configPd:Landroid/app/ProgressDialog;

.field private configurationState:I

.field db:Lcom/ti/fmrxapp/DBAdapter;

.field private imgFmCompScan:Landroid/widget/ImageView;

.field private imgFmPower:Landroid/widget/ImageView;

.field private imgFmSeekDown:Landroid/widget/ImageButton;

.field private imgFmSeekUp:Landroid/widget/ImageButton;

.field private imgFmSpk:Landroid/widget/ImageView;

.field private imgFmVolume:Landroid/widget/ImageView;

.field private mCompScanStat:Z

.field mContext:Landroid/content/Context;

.field private mCurrentStation:Ljava/lang/String;

.field private mDeEmpFilter:I

.field private mDirection:I

.field mFmInterrupted:Z

.field private mFmOn:Z

.field mFmServiceConnected:Z

.field private mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private mIsSpeakerOn:I

.field private mMode:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field public mPreset:Z

.field private mPresetButtonOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPresetButtonOnLongClickListenerNo:Landroid/view/View$OnLongClickListener;

.field private mRds:Z

.field private mRdsAf:Z

.field private mRdsState:Z

.field private mRdsSystem:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRssi:I

.field private mSeekState:Z

.field private mStartInAirplane:Z

.field private mStartInCall:Z

.field private mStartNoHeadset:Z

.field private mStatus:Z

.field private mStoppedRds:Z

.field private mToggleAudio:I

.field private mToggleCompScan:Z

.field private mToggleMode:I

.field private mToggleMute:Z

.field private mVolState:Z

.field private mVolume:I

.field private mWrapSeek:Z

.field private pd:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 142
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/Button;

    aput-object v3, v0, v2

    aput-object v3, v0, v5

    aput-object v3, v0, v4

    aput-object v3, v0, v6

    const/4 v1, 0x4

    aput-object v3, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    sput-object v0, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    .line 216
    sput-boolean v2, Lcom/ti/fmrxapp/FmRxApp;->sdefaultSettingOn:Z

    .line 218
    sput-boolean v2, Lcom/ti/fmrxapp/FmRxApp;->mIsDbPresent:Z

    .line 237
    sput v2, Lcom/ti/fmrxapp/FmRxApp;->sBand:I

    .line 238
    sput v4, Lcom/ti/fmrxapp/FmRxApp;->sChannelSpace:I

    .line 239
    sput v2, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    .line 240
    sput v2, Lcom/ti/fmrxapp/FmRxApp;->sLoveNo:I

    .line 242
    const/high16 v0, 0x42af

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    .line 243
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    sput-object v0, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequencyBeforeScan:Ljava/lang/Float;

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ti/fmrxapp/FmRxApp;->stations:Ljava/util/ArrayList;

    .line 252
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, ""

    aput-object v1, v0, v5

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lcom/ti/fmrxapp/FmRxApp;->sStationbtn:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->pd:Landroid/app/ProgressDialog;

    .line 161
    iput-boolean v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mPreset:Z

    .line 171
    iput v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mToggleMode:I

    .line 172
    iput v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mToggleAudio:I

    .line 173
    iput-boolean v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mToggleMute:Z

    .line 174
    iput-boolean v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mToggleCompScan:Z

    .line 175
    iput-boolean v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mCompScanStat:Z

    .line 176
    iput-boolean v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mStoppedRds:Z

    .line 177
    iput-boolean v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mFmOn:Z

    .line 178
    iput-boolean v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mRdsState:Z

    .line 180
    const v0, 0xffff

    iput v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mVolume:I

    .line 181
    iput v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mMode:I

    .line 182
    iput-boolean v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mRds:Z

    .line 183
    iput-boolean v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mRdsAf:Z

    .line 184
    iput-boolean v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mWrapSeek:Z

    .line 185
    iput v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mRdsSystem:I

    .line 186
    iput v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mDeEmpFilter:I

    .line 187
    iput v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mRssi:I

    .line 189
    iput v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mDirection:I

    .line 195
    iput v2, p0, Lcom/ti/fmrxapp/FmRxApp;->configurationState:I

    .line 198
    iput-boolean v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mVolState:Z

    .line 201
    iput-boolean v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mSeekState:Z

    .line 204
    iput v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mIndex:I

    .line 220
    iput v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mIsSpeakerOn:I

    .line 227
    iput-boolean v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mFmInterrupted:Z

    .line 228
    iput-boolean v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mStartInAirplane:Z

    .line 229
    iput-boolean v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mStartNoHeadset:Z

    .line 230
    iput-boolean v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mStartInCall:Z

    .line 233
    iput-boolean v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mFmServiceConnected:Z

    .line 671
    new-instance v0, Lcom/ti/fmrxapp/FmRxApp$1;

    invoke-direct {v0, p0}, Lcom/ti/fmrxapp/FmRxApp$1;-><init>(Lcom/ti/fmrxapp/FmRxApp;)V

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;

    .line 2875
    new-instance v0, Lcom/ti/fmrxapp/FmRxApp$16;

    invoke-direct {v0, p0}, Lcom/ti/fmrxapp/FmRxApp$16;-><init>(Lcom/ti/fmrxapp/FmRxApp;)V

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3332
    new-instance v0, Lcom/ti/fmrxapp/FmRxApp$17;

    invoke-direct {v0, p0}, Lcom/ti/fmrxapp/FmRxApp$17;-><init>(Lcom/ti/fmrxapp/FmRxApp;)V

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mPresetButtonOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 3435
    new-instance v0, Lcom/ti/fmrxapp/FmRxApp$18;

    invoke-direct {v0, p0}, Lcom/ti/fmrxapp/FmRxApp$18;-><init>(Lcom/ti/fmrxapp/FmRxApp;)V

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mPresetButtonOnLongClickListenerNo:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public static DeleteLoveStation(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 527
    move v1, p0

    .line 528
    .local v1, lovei:I
    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->stations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 529
    .local v2, stationIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->stations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 530
    .local v0, itemstation0:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "love"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->stations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 532
    return-void
.end method

.method public static UpdateLoveStation(I)Z
    .locals 9
    .parameter "index"

    .prologue
    .line 535
    move v4, p0

    .line 536
    .local v4, lovei:I
    sget-object v7, Lcom/ti/fmrxapp/FmRxApp;->stations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 537
    .local v6, stationIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    .line 538
    .local v5, loveno:I
    const/4 v0, 0x0

    .line 539
    .local v0, btnlong:I
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 540
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 542
    .local v1, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "love"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 543
    .local v3, love:Ljava/lang/String;
    const-string v7, "*"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 544
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 548
    .end local v1           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #love:Ljava/lang/String;
    :cond_1
    rsub-int/lit8 v7, v5, 0x6

    if-ge v0, v7, :cond_2

    .line 549
    sget-object v7, Lcom/ti/fmrxapp/FmRxApp;->stations:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 550
    .local v2, itemstation0:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "love"

    const-string v8, "*"

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    add-int/lit8 v0, v0, 0x1

    .line 552
    add-int/lit8 v7, v5, 0x1

    sput v7, Lcom/ti/fmrxapp/FmRxApp;->sLoveNo:I

    .line 553
    sget-object v7, Lcom/ti/fmrxapp/FmRxApp;->stations:Ljava/util/ArrayList;

    invoke-virtual {v7, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 554
    const/4 v7, 0x1

    .line 557
    .end local v2           #itemstation0:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static UpdateRenameStation(ILjava/lang/String;)V
    .locals 5
    .parameter "index"
    .parameter "name"

    .prologue
    .line 517
    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->txtStationName:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    move v1, p0

    .line 520
    .local v1, lovei:I
    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->stations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 521
    .local v2, stationIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->stations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 522
    .local v0, itemstation0:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "name"

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->stations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 525
    return-void
.end method

.method static synthetic access$000(Lcom/ti/fmrxapp/FmRxApp;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->pd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ti/fmrxapp/FmRxApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->loadDefaultConfiguration()V

    return-void
.end method

.method static synthetic access$1000(Lcom/ti/fmrxapp/FmRxApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->saveDefaultConfiguration()V

    return-void
.end method

.method static synthetic access$1102(Lcom/ti/fmrxapp/FmRxApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/ti/fmrxapp/FmRxApp;->mSeekState:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/ti/fmrxapp/FmRxApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/ti/fmrxapp/FmRxApp;->mVolState:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/ti/fmrxapp/FmRxApp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput p1, p0, Lcom/ti/fmrxapp/FmRxApp;->configurationState:I

    return p1
.end method

.method static synthetic access$1400(Lcom/ti/fmrxapp/FmRxApp;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->imgFmCompScan:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/ti/fmrxapp/FmRxApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/ti/fmrxapp/FmRxApp;->mToggleCompScan:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/ti/fmrxapp/FmRxApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/ti/fmrxapp/FmRxApp;->mCompScanStat:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/ti/fmrxapp/FmRxApp;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->imgFmVolume:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/ti/fmrxapp/FmRxApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mVolume:I

    return v0
.end method

.method static synthetic access$1802(Lcom/ti/fmrxapp/FmRxApp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput p1, p0, Lcom/ti/fmrxapp/FmRxApp;->mVolume:I

    return p1
.end method

.method static synthetic access$1900(Lcom/ti/fmrxapp/FmRxApp;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->configPd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/ti/fmrxapp/FmRxApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->compelteScan()V

    return-void
.end method

.method static synthetic access$202(Lcom/ti/fmrxapp/FmRxApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/ti/fmrxapp/FmRxApp;->mToggleMute:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/ti/fmrxapp/FmRxApp;Landroid/content/DialogInterface;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/ti/fmrxapp/FmRxApp;->holdDialog(Landroid/content/DialogInterface;Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/ti/fmrxapp/FmRxApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mFmOn:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/ti/fmrxapp/FmRxApp;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ti/fmrxapp/FmRxApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->initControls()V

    return-void
.end method

.method static synthetic access$400(Lcom/ti/fmrxapp/FmRxApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->setButtonLabels()V

    return-void
.end method

.method static synthetic access$500(Lcom/ti/fmrxapp/FmRxApp;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->imgFmPower:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 127
    sget-boolean v0, Lcom/ti/fmrxapp/FmRxApp;->sdefaultSettingOn:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    sput-boolean p0, Lcom/ti/fmrxapp/FmRxApp;->sdefaultSettingOn:Z

    return p0
.end method

.method static synthetic access$700(Lcom/ti/fmrxapp/FmRxApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    return v0
.end method

.method static synthetic access$702(Lcom/ti/fmrxapp/FmRxApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    return p1
.end method

.method static synthetic access$800(Lcom/ti/fmrxapp/FmRxApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mMode:I

    return v0
.end method

.method static synthetic access$900(Lcom/ti/fmrxapp/FmRxApp;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->imgFmSpk:Landroid/widget/ImageView;

    return-object v0
.end method

.method private checkCallStatus()V
    .locals 4

    .prologue
    .line 355
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 356
    .local v0, mTmgr:Landroid/telephony/TelephonyManager;
    const-string v1, "FmRxApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCallStatus()--mTmgr.getCallState()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mStartInCall:Z

    .line 359
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/ti/fmrxapp/FmRxApp;->showDialog(I)V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mStartInCall:Z

    goto :goto_0
.end method

.method private compelteScan()V
    .locals 5

    .prologue
    const v4, 0x7f050001

    .line 2414
    const-string v0, "FmRxApp"

    const-string v1, "Starting completescan"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    sget v0, Lcom/ti/fmrxapp/FmRxApp;->sBand:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2416
    const v0, 0x7f05008c

    invoke-virtual {p0, v4, v0}, Lcom/ti/fmrxapp/FmRxApp;->showAlert(II)V

    .line 2437
    :goto_0
    return-void

    .line 2419
    :cond_0
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->tuneMinFreq()V

    .line 2420
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2a

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2422
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2423
    const-class v1, Lcom/ti/fmrxapp/FmRxCompScan;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2424
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ti/fmrxapp/FmRxApp;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2426
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->txtStationName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2427
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxApp;->deleteObject()V

    .line 2428
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v0}, Lcom/ti/fm/FmRadio;->rxCompleteScan_nb()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    .line 2429
    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    if-nez v0, :cond_1

    .line 2430
    const v0, 0x7f05008e

    invoke-virtual {p0, v4, v0}, Lcom/ti/fmrxapp/FmRxApp;->showAlert(II)V

    goto :goto_0

    .line 2435
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mToggleCompScan:Z

    goto :goto_0
.end method

.method private createCmdFailedDlgAirplaneModeOn(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 2582
    const-string v0, "FmRxApp"

    const-string v1, "createCmdFailedDlgAirplaneModeOn()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2584
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050078

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2586
    const v1, 0x7f050074

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2587
    new-instance v1, Lcom/ti/fmrxapp/FmRxApp$4;

    invoke-direct {v1, p0}, Lcom/ti/fmrxapp/FmRxApp$4;-><init>(Lcom/ti/fmrxapp/FmRxApp;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2603
    const v1, 0x104000a

    new-instance v2, Lcom/ti/fmrxapp/FmRxApp$5;

    invoke-direct {v2, p0}, Lcom/ti/fmrxapp/FmRxApp$5;-><init>(Lcom/ti/fmrxapp/FmRxApp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2613
    new-instance v1, Lcom/ti/fmrxapp/FmRxApp$6;

    invoke-direct {v1, p0}, Lcom/ti/fmrxapp/FmRxApp$6;-><init>(Lcom/ti/fmrxapp/FmRxApp;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2624
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createCmdFailedDlgCallOn(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 2679
    const-string v0, "FmRxApp"

    const-string v1, "createCmdFailedDlgCallOn()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2681
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050078

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2683
    const v1, 0x7f050077

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2684
    new-instance v1, Lcom/ti/fmrxapp/FmRxApp$10;

    invoke-direct {v1, p0}, Lcom/ti/fmrxapp/FmRxApp$10;-><init>(Lcom/ti/fmrxapp/FmRxApp;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2700
    const v1, 0x104000a

    new-instance v2, Lcom/ti/fmrxapp/FmRxApp$11;

    invoke-direct {v2, p0}, Lcom/ti/fmrxapp/FmRxApp$11;-><init>(Lcom/ti/fmrxapp/FmRxApp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2710
    new-instance v1, Lcom/ti/fmrxapp/FmRxApp$12;

    invoke-direct {v1, p0}, Lcom/ti/fmrxapp/FmRxApp$12;-><init>(Lcom/ti/fmrxapp/FmRxApp;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2720
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createCmdFailedDlgNoHeadset(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 2628
    const-string v0, "FmRxApp"

    const-string v1, "createCmdFailedDlgNoHeadset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2630
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050078

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2632
    const v1, 0x7f050075

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2634
    new-instance v1, Lcom/ti/fmrxapp/FmRxApp$7;

    invoke-direct {v1, p0}, Lcom/ti/fmrxapp/FmRxApp$7;-><init>(Lcom/ti/fmrxapp/FmRxApp;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2653
    const v1, 0x104000a

    new-instance v2, Lcom/ti/fmrxapp/FmRxApp$8;

    invoke-direct {v2, p0}, Lcom/ti/fmrxapp/FmRxApp$8;-><init>(Lcom/ti/fmrxapp/FmRxApp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2664
    new-instance v1, Lcom/ti/fmrxapp/FmRxApp$9;

    invoke-direct {v1, p0}, Lcom/ti/fmrxapp/FmRxApp$9;-><init>(Lcom/ti/fmrxapp/FmRxApp;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2675
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createCmdTuneFreqByInput(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    .line 2724
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2725
    const v1, 0x108003e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f05008f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2727
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2728
    const v2, 0x7f030005

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2729
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2730
    new-instance v2, Lcom/ti/fmrxapp/FmRxApp$13;

    invoke-direct {v2, p0}, Lcom/ti/fmrxapp/FmRxApp$13;-><init>(Lcom/ti/fmrxapp/FmRxApp;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2747
    const v2, 0x104000a

    new-instance v3, Lcom/ti/fmrxapp/FmRxApp$14;

    invoke-direct {v3, p0, v1}, Lcom/ti/fmrxapp/FmRxApp$14;-><init>(Lcom/ti/fmrxapp/FmRxApp;Landroid/view/View;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2772
    const/high16 v1, 0x104

    new-instance v2, Lcom/ti/fmrxapp/FmRxApp$15;

    invoke-direct {v2, p0}, Lcom/ti/fmrxapp/FmRxApp$15;-><init>(Lcom/ti/fmrxapp/FmRxApp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2779
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createEmptyList()V
    .locals 4

    .prologue
    .line 1459
    const-string v0, "FmRxApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " createEmptyList sChannelNo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ti/fmrxapp/FmRxApp;->stations:Ljava/util/ArrayList;

    .line 1461
    const/4 v0, 0x1

    :goto_0
    sget v1, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1462
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1464
    const-string v2, "key"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    const-string v2, "value"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    const-string v2, "name"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    const-string v2, "love"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    sget-object v2, Lcom/ti/fmrxapp/FmRxApp;->stations:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1461
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1471
    :cond_0
    return-void
.end method

.method private holdDialog(Landroid/content/DialogInterface;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2785
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mShowing"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2787
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2788
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2792
    :goto_0
    return-void

    .line 2789
    :catch_0
    move-exception v0

    .line 2790
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initControls()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1597
    const-string v0, "FmRxApp"

    const-string v1, "enter initControls"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    const v0, 0x7f060021

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->imgFmSpk:Landroid/widget/ImageView;

    .line 1600
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1602
    invoke-virtual {v0}, Landroid/media/AudioManager;->isFmSpeakerOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1603
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->imgFmSpk:Landroid/widget/ImageView;

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1607
    :goto_0
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->imgFmSpk:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1609
    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->imgFmPower:Landroid/widget/ImageView;

    .line 1610
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->imgFmPower:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1612
    const v0, 0x7f06001f

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->imgFmVolume:Landroid/widget/ImageView;

    .line 1613
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->imgFmVolume:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1615
    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mToggleMute:Z

    if-ne v0, v3, :cond_2

    .line 1616
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->imgFmVolume:Landroid/widget/ImageView;

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1617
    const-string v0, "FmRxApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " initControls  mute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mToggleMute:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    :goto_1
    const v0, 0x7f060020

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->imgFmCompScan:Landroid/widget/ImageView;

    .line 1624
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->imgFmCompScan:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1626
    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mToggleCompScan:Z

    if-nez v0, :cond_0

    .line 1627
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->imgFmCompScan:Landroid/widget/ImageView;

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1628
    const-string v0, "FmRxApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " initControls Complete Scan "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mToggleCompScan:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    :cond_0
    const v0, 0x7f06001d

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->imgFmSeekUp:Landroid/widget/ImageButton;

    .line 1632
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->imgFmSeekUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1634
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->imgFmSeekDown:Landroid/widget/ImageButton;

    .line 1635
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->imgFmSeekDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1637
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/ti/fmrxapp/FmRxApp;->txtFmRxTunedFreq:Landroid/widget/TextView;

    .line 1638
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->txtFmRxTunedFreq:Landroid/widget/TextView;

    sget-object v1, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1639
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->txtFmRxTunedFreq:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1645
    const v0, 0x7f060018

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/ti/fmrxapp/FmRxApp;->txtStationName:Landroid/widget/TextView;

    .line 1646
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->txtStationName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1648
    sget-object v1, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v4

    .line 1649
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    aget-object v0, v0, v4

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1650
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1652
    sget-object v1, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    const v0, 0x7f060027

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v3

    .line 1653
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    aget-object v0, v0, v3

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1654
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1656
    sget-object v1, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v5

    .line 1657
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    aget-object v0, v0, v5

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1658
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    aget-object v0, v0, v5

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1660
    sget-object v1, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    const v0, 0x7f06002a

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v6

    .line 1661
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    aget-object v0, v0, v6

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1662
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    aget-object v0, v0, v6

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1664
    sget-object v1, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v7

    .line 1665
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    aget-object v0, v0, v7

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1666
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    aget-object v0, v0, v7

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1668
    sget-object v1, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    const/4 v2, 0x5

    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v2

    .line 1669
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1670
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1673
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1675
    return-void

    .line 1605
    :cond_1
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->imgFmSpk:Landroid/widget/ImageView;

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1619
    :cond_2
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->imgFmVolume:Landroid/widget/ImageView;

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1620
    const-string v0, "FmRxApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " initControls  mute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mToggleMute:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private insertDelayThread()V
    .locals 1

    .prologue
    .line 1680
    new-instance v0, Lcom/ti/fmrxapp/FmRxApp$2;

    invoke-direct {v0, p0}, Lcom/ti/fmrxapp/FmRxApp$2;-><init>(Lcom/ti/fmrxapp/FmRxApp;)V

    invoke-virtual {v0}, Lcom/ti/fmrxapp/FmRxApp$2;->start()V

    .line 1694
    return-void
.end method

.method private loadDefaultConfiguration()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1385
    const-string v0, "FmRxApp"

    const-string v1, "loadDefaultConfiguration()-entered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    const-string v0, "fmConfigPreferences"

    invoke-virtual {p0, v0, v4}, Lcom/ti/fmrxapp/FmRxApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1392
    iget-boolean v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mCompScanStat:Z

    if-nez v1, :cond_0

    .line 1394
    :try_start_0
    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v1}, Lcom/ti/fmrxapp/DBAdapter;->open()Lcom/ti/fmrxapp/DBAdapter;

    .line 1395
    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/ti/fmrxapp/DBAdapter;->getStation(J)Landroid/database/Cursor;

    move-result-object v1

    .line 1396
    if-eqz v1, :cond_2

    .line 1397
    const/4 v2, 0x1

    sput-boolean v2, Lcom/ti/fmrxapp/FmRxApp;->mIsDbPresent:Z

    .line 1400
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1401
    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v1}, Lcom/ti/fmrxapp/DBAdapter;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1409
    :cond_0
    :goto_1
    const-string v1, "BAND"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/ti/fmrxapp/FmRxApp;->sBand:I

    .line 1411
    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v1}, Lcom/ti/fmrxapp/DBAdapter;->open()Lcom/ti/fmrxapp/DBAdapter;

    .line 1412
    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v1}, Lcom/ti/fmrxapp/DBAdapter;->getAllStations()Landroid/database/Cursor;

    move-result-object v1

    .line 1413
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    sput v2, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    .line 1414
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1415
    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v1}, Lcom/ti/fmrxapp/DBAdapter;->close()V

    .line 1416
    const-string v1, "LOVENO"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/ti/fmrxapp/FmRxApp;->sLoveNo:I

    .line 1417
    sget v1, Lcom/ti/fmrxapp/FmRxApp;->sBand:I

    packed-switch v1, :pswitch_data_0

    .line 1436
    :goto_2
    const-string v1, "FmRxApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sBand = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/ti/fmrxapp/FmRxApp;->sBand:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    iget-boolean v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mCompScanStat:Z

    if-nez v1, :cond_1

    .line 1438
    sget-boolean v1, Lcom/ti/fmrxapp/FmRxApp;->mIsDbPresent:Z

    if-nez v1, :cond_3

    .line 1441
    sput-boolean v5, Lcom/ti/fmrxapp/FmRxApp;->mIsDbPresent:Z

    .line 1447
    :cond_1
    :goto_3
    const-string v1, "FmRxApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mIsDbPresent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/ti/fmrxapp/FmRxApp;->mIsDbPresent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    const-string v1, "MODE"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mMode:I

    .line 1449
    const-string v1, "MUTE"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mToggleMute:Z

    .line 1450
    const-string v1, "RDS"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mRdsState:Z

    .line 1451
    const-string v0, "FmRxApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Load default band "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/ti/fmrxapp/FmRxApp;->sBand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "default volume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "last fre"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">>>>>>>>>>>>mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  mToggleMute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mToggleMute:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mRdsState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mRdsState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    return-void

    .line 1399
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    sput-boolean v2, Lcom/ti/fmrxapp/FmRxApp;->mIsDbPresent:Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1402
    :catch_0
    move-exception v1

    .line 1403
    sput-boolean v4, Lcom/ti/fmrxapp/FmRxApp;->mIsDbPresent:Z

    goto/16 :goto_1

    .line 1404
    :catch_1
    move-exception v1

    .line 1405
    sput-boolean v4, Lcom/ti/fmrxapp/FmRxApp;->mIsDbPresent:Z

    goto/16 :goto_1

    .line 1419
    :pswitch_0
    const-string v1, "FREQUENCY"

    const/high16 v2, 0x42af

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sput-object v1, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    goto/16 :goto_2

    .line 1423
    :pswitch_1
    const-string v1, "FREQUENCY"

    const/high16 v2, 0x4298

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sput-object v1, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    goto/16 :goto_2

    .line 1427
    :pswitch_2
    const-string v1, "FREQUENCY"

    const v2, 0x4283999a

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sput-object v1, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    goto/16 :goto_2

    .line 1431
    :pswitch_3
    const-string v1, "FREQUENCY"

    const v2, 0x43226666

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sput-object v1, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    goto/16 :goto_2

    .line 1443
    :cond_3
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxApp;->readObject()V

    goto/16 :goto_3

    .line 1417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private saveDefaultConfiguration()V
    .locals 4

    .prologue
    .line 1475
    const-string v0, "FmRxApp"

    const-string v1, "saveDefaultConfiguration()-Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    const-string v0, "fmConfigPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ti/fmrxapp/FmRxApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1479
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1480
    const-string v1, "BAND"

    sget v2, Lcom/ti/fmrxapp/FmRxApp;->sBand:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1481
    const-string v1, "CHANNELNO"

    sget v2, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1482
    const-string v1, "LOVENO"

    sget v2, Lcom/ti/fmrxapp/FmRxApp;->sLoveNo:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1483
    const-string v1, "MUTE"

    iget-boolean v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mToggleMute:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1484
    const-string v1, "FREQUENCY"

    sget-object v2, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1486
    const-string v1, "FmRxApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " save default band "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/ti/fmrxapp/FmRxApp;->sBand:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "default volume"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "last fre"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mToggleMute"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mToggleMute:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "default channelno"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1492
    return-void
.end method

.method private setButtonLabels()V
    .locals 15

    .prologue
    .line 369
    sget-object v12, Lcom/ti/fmrxapp/FmRxApp;->stations:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 370
    .local v10, stationIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v7, 0x0

    .line 371
    .local v7, loveno:I
    const/4 v0, 0x0

    .line 372
    .local v0, btnlong:I
    sget-object v12, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v12}, Lcom/ti/fm/FmRadio;->getCurrentStation()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    .line 373
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 374
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 377
    .local v4, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v12, "value"

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 378
    .local v3, freq:Ljava/lang/String;
    const-string v12, "name"

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 379
    .local v8, name:Ljava/lang/String;
    const-string v12, "love"

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 380
    .local v6, love:Ljava/lang/String;
    const-string v12, "*"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 381
    const-string v12, ""

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 382
    move-object v8, v3

    .line 384
    :cond_1
    sget-object v12, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    aget-object v12, v12, v7

    invoke-virtual {v12, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 385
    sget-object v12, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    aget-object v12, v12, v7

    invoke-virtual {v12, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 386
    sget-object v12, Lcom/ti/fmrxapp/FmRxApp;->sStationbtn:[Ljava/lang/String;

    aput-object v3, v12, v7

    .line 387
    iget-object v12, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 388
    sget-object v12, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    aget-object v12, v12, v7

    const/16 v13, -0x100

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setTextColor(I)V

    .line 392
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 390
    :cond_2
    sget-object v12, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    aget-object v12, v12, v7

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    .line 398
    .end local v3           #freq:Ljava/lang/String;
    .end local v4           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6           #love:Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    :cond_3
    const/4 v12, 0x6

    if-ge v7, v12, :cond_4

    .line 399
    const/4 v11, 0x0

    .line 400
    .local v11, stationname:I
    const-string v9, ""

    .line 401
    .local v9, namestring:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, love:I
    :goto_2
    rsub-int/lit8 v12, v7, 0x6

    if-ge v6, v12, :cond_4

    .line 402
    add-int v12, v6, v7

    add-int/lit8 v11, v12, 0x1

    .line 403
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 404
    sget-object v12, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    add-int v13, v6, v7

    aget-object v12, v12, v13

    invoke-virtual {v12, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 405
    sget-object v12, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    add-int v13, v6, v7

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 406
    sget-object v12, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    add-int v13, v6, v7

    aget-object v12, v12, v13

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setTextColor(I)V

    .line 401
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 409
    .end local v6           #love:I
    .end local v9           #namestring:Ljava/lang/String;
    .end local v11           #stationname:I
    :cond_4
    const/4 v5, 0x0

    .local v5, longbtn:I
    :goto_3
    const/4 v12, 0x6

    if-ge v5, v12, :cond_5

    .line 410
    add-int/lit8 v0, v5, 0x1

    .line 411
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, btnname:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    aget-object v13, v13, v5

    invoke-virtual {v13}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, btntext:Ljava/lang/String;
    const-string v12, "FmRxApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "btnname------------"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const-string v12, "FmRxApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "btntext------------"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v12, "FmRxApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "btnStation[longbtn].getTag();"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    aget-object v14, v14, v5

    invoke-virtual {v14}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    sget-object v12, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    aget-object v12, v12, v5

    iget-object v13, p0, Lcom/ti/fmrxapp/FmRxApp;->mPresetButtonOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 409
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 419
    .end local v1           #btnname:Ljava/lang/String;
    .end local v2           #btntext:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private setRdsConfig()V
    .locals 9

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const v8, 0x7f050001

    const/4 v2, 0x0

    .line 1143
    const-string v0, "FmRxApp"

    const-string v3, "setRdsConfig()-entered"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    iput v7, p0, Lcom/ti/fmrxapp/FmRxApp;->configurationState:I

    .line 1145
    const-string v0, "fmConfigPreferences"

    invoke-virtual {p0, v0, v2}, Lcom/ti/fmrxapp/FmRxApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1149
    const-string v0, "BAND"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1150
    const-string v4, "FmRxApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRdsConfig()--- band= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    sget v4, Lcom/ti/fmrxapp/FmRxApp;->sBand:I

    if-eq v0, v4, :cond_0

    .line 1192
    sget-object v4, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v4, v0}, Lcom/ti/fm/FmRadio;->rxSetBand_nb(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    .line 1194
    iget-boolean v4, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    if-nez v4, :cond_d

    .line 1195
    const-string v0, "FmRxApp"

    const-string v4, "setRdsConfig()-- setBand ->Erorr"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    const v0, 0x7f05007f

    invoke-virtual {p0, v8, v0}, Lcom/ti/fmrxapp/FmRxApp;->showAlert(II)V

    .line 1220
    :cond_0
    :goto_0
    const-string v0, "DEEMP"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1221
    iget v4, p0, Lcom/ti/fmrxapp/FmRxApp;->mDeEmpFilter:I

    if-eq v4, v0, :cond_2

    .line 1227
    sget-object v4, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v4, v0}, Lcom/ti/fm/FmRadio;->rxSetDeEmphasisFilter_nb(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    .line 1229
    const-string v4, "FmRxApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRdsConfig()--- DeEmp= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    iget-boolean v4, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    if-nez v4, :cond_1

    .line 1232
    const-string v4, "FmRxApp"

    const-string v5, "setRdsConfig()-- setDeEmphasisFilter ->Erorr"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const v4, 0x7f050080

    invoke-virtual {p0, v8, v4}, Lcom/ti/fmrxapp/FmRxApp;->showAlert(II)V

    .line 1236
    :cond_1
    iput v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mDeEmpFilter:I

    .line 1241
    :cond_2
    const-string v0, "MODE"

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1245
    sget-object v4, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v4, v1}, Lcom/ti/fm/FmRadio;->rxSetMonoStereoMode_nb(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    .line 1247
    iget-boolean v4, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    if-nez v4, :cond_e

    .line 1248
    const v0, 0x7f050081

    invoke-virtual {p0, v8, v0}, Lcom/ti/fmrxapp/FmRxApp;->showAlert(II)V

    .line 1254
    :goto_1
    const-string v0, "CHANNELSPACE"

    invoke-interface {v3, v0, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1256
    const-string v4, "FmRxApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setChannelSpacing()--- channelSpace= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    sget v4, Lcom/ti/fmrxapp/FmRxApp;->sChannelSpace:I

    if-eq v0, v4, :cond_4

    .line 1264
    sget-object v4, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v4, v0}, Lcom/ti/fm/FmRadio;->rxSetChannelSpacing_nb(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    .line 1266
    iget-boolean v4, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    if-nez v4, :cond_3

    .line 1267
    const-string v4, "FmRxApp"

    const-string v5, "setChannelSpacing()-- setChannelSpacing ->Erorr"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    const v4, 0x7f050082

    invoke-virtual {p0, v8, v4}, Lcom/ti/fmrxapp/FmRxApp;->showAlert(II)V

    .line 1270
    :cond_3
    sput v0, Lcom/ti/fmrxapp/FmRxApp;->sChannelSpace:I

    .line 1274
    :cond_4
    const-string v0, "RDS"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1275
    const-string v4, "FmRxApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRDS()--- rdsEnable= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iget-boolean v4, p0, Lcom/ti/fmrxapp/FmRxApp;->mRds:Z

    if-eq v4, v0, :cond_6

    .line 1278
    if-eqz v0, :cond_f

    .line 1282
    sget-object v4, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v4}, Lcom/ti/fm/FmRadio;->rxEnableRds_nb()Z

    move-result v4

    iput-boolean v4, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    .line 1283
    iget-boolean v4, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    if-nez v4, :cond_5

    .line 1284
    const-string v4, "FmRxApp"

    const-string v5, "setRDS()-- enableRds() ->Erorr"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const v4, 0x7f050083

    invoke-virtual {p0, v8, v4}, Lcom/ti/fmrxapp/FmRxApp;->showAlert(II)V

    .line 1304
    :cond_5
    :goto_2
    iput-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mRds:Z

    .line 1308
    :cond_6
    const-string v0, "RDSSYSTEM"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1311
    const-string v4, "FmRxApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRdsSystem()--- rdsSystem= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    iget v4, p0, Lcom/ti/fmrxapp/FmRxApp;->mRdsSystem:I

    if-eq v4, v0, :cond_8

    .line 1319
    sget-object v4, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    const-string v5, "RDSSYSTEM"

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ti/fm/FmRadio;->rxSetRdsSystem_nb(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    .line 1322
    iget-boolean v4, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    if-nez v4, :cond_7

    .line 1323
    const-string v4, "FmRxApp"

    const-string v5, " setRdsSystem()-- setRdsSystem ->Erorr"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    const v4, 0x7f050085

    invoke-virtual {p0, v8, v4}, Lcom/ti/fmrxapp/FmRxApp;->showAlert(II)V

    .line 1326
    :cond_7
    iput v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mRdsSystem:I

    .line 1329
    :cond_8
    const-string v0, "RDSAF"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1332
    if-eqz v4, :cond_11

    move v0, v1

    .line 1333
    :goto_3
    const-string v5, "FmRxApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setRdsAf()--- rdsAfSwitch= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    iget-boolean v5, p0, Lcom/ti/fmrxapp/FmRxApp;->mRdsAf:Z

    if-eq v5, v4, :cond_a

    .line 1340
    sget-object v5, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v5, v0}, Lcom/ti/fm/FmRadio;->rxSetRdsAfSwitchMode_nb(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    .line 1341
    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    if-nez v0, :cond_9

    .line 1342
    const-string v0, "FmRxApp"

    const-string v5, "setRdsAf()-- setRdsAfSwitchMode(1) ->Erorr"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    const v0, 0x7f050086

    invoke-virtual {p0, v8, v0}, Lcom/ti/fmrxapp/FmRxApp;->showAlert(II)V

    .line 1345
    :cond_9
    iput-boolean v4, p0, Lcom/ti/fmrxapp/FmRxApp;->mRdsAf:Z

    .line 1349
    :cond_a
    const-string v0, "WRAPSEEK"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1352
    if-eqz v0, :cond_12

    .line 1353
    :goto_4
    const-string v2, "FmRxApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSwrapSeek()--- WrapSeekSwitch= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    sget-object v2, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v2, v1}, Lcom/ti/fm/FmRadio;->rxSetWrapSeekMode_nb(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    .line 1355
    iget-boolean v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    if-nez v1, :cond_b

    .line 1356
    const-string v1, "FmRxApp"

    const-string v2, "setWrapSeek()-- setWrapSeekMode(1) ->Erorr"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    const v1, 0x7f050087

    invoke-virtual {p0, v8, v1}, Lcom/ti/fmrxapp/FmRxApp;->showAlert(II)V

    .line 1359
    :cond_b
    iput-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mRdsAf:Z

    .line 1362
    const-string v0, "RSSI"

    const/16 v1, 0x8

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1363
    const-string v1, "FmRxApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRssi()-ENTER --- rssiThreshHold= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    sget-object v1, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v1, v0}, Lcom/ti/fm/FmRadio;->rxSetRssiThreshold_nb(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    .line 1372
    iget-boolean v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    if-nez v1, :cond_c

    .line 1373
    const v1, 0x7f050088

    invoke-virtual {p0, v8, v1}, Lcom/ti/fmrxapp/FmRxApp;->showAlert(II)V

    .line 1376
    :cond_c
    iput v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mRssi:I

    .line 1378
    const-string v0, "FmRxApp"

    const-string v1, "setRdsConfig()-exit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    return-void

    .line 1198
    :cond_d
    sput v0, Lcom/ti/fmrxapp/FmRxApp;->sBand:I

    .line 1199
    sget-boolean v0, Lcom/ti/fmrxapp/FmRxApp;->sdefaultSettingOn:Z

    if-ne v0, v1, :cond_0

    .line 1200
    sget v0, Lcom/ti/fmrxapp/FmRxApp;->sBand:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1202
    :pswitch_0
    const/high16 v0, 0x42af

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    goto/16 :goto_0

    .line 1205
    :pswitch_1
    const/high16 v0, 0x4298

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    goto/16 :goto_0

    .line 1208
    :pswitch_2
    const v0, 0x4283999a

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    goto/16 :goto_0

    .line 1211
    :pswitch_3
    const v0, 0x43226666

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    goto/16 :goto_0

    .line 1250
    :cond_e
    iput v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mMode:I

    goto/16 :goto_1

    .line 1292
    :cond_f
    sget-object v4, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v4}, Lcom/ti/fm/FmRadio;->rxDisableRds_nb()Z

    move-result v4

    iput-boolean v4, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    .line 1294
    iget-boolean v4, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    if-nez v4, :cond_10

    .line 1295
    const-string v4, "FmRxApp"

    const-string v5, "setRDS()-- disableRds() ->Erorr"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    const v4, 0x7f050084

    invoke-virtual {p0, v8, v4}, Lcom/ti/fmrxapp/FmRxApp;->showAlert(II)V

    goto/16 :goto_2

    .line 1298
    :cond_10
    const-string v4, "FmRxApp"

    const-string v5, "setRDS()-- disableRds() ->success"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_11
    move v0, v2

    .line 1332
    goto/16 :goto_3

    :cond_12
    move v1, v2

    .line 1352
    goto/16 :goto_4

    .line 1200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private startup()V
    .locals 7

    .prologue
    const v6, 0x7f050071

    const v5, 0x7f050070

    const v4, 0x7f050001

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 424
    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStartInAirplane:Z

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStartNoHeadset:Z

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStartInCall:Z

    if-ne v0, v2, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v0}, Lcom/ti/fm/FmRadio;->rxGetFMState()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 430
    :sswitch_0
    const-string v0, "FmRxApp"

    const-string v1, "FmRadio.STATE_ENABLED "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->loadDefaultConfiguration()V

    .line 433
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->setContentView(I)V

    .line 434
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->initControls()V

    .line 435
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->setRdsConfig()V

    .line 436
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->setButtonLabels()V

    .line 437
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v0}, Lcom/ti/fm/FmRadio;->rxIsFMPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    const-string v0, "FmRxApp"

    const-string v1, "FmRadio.STATE_PAUSE "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v0}, Lcom/ti/fm/FmRadio;->resumeFm()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    .line 440
    iput-boolean v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mFmOn:Z

    .line 441
    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    if-nez v0, :cond_0

    .line 442
    const v0, 0x7f05007b

    invoke-virtual {p0, v4, v0}, Lcom/ti/fmrxapp/FmRxApp;->showAlert(II)V

    .line 443
    iput-boolean v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mFmOn:Z

    goto :goto_0

    .line 450
    :sswitch_1
    const-string v0, "FmRxApp"

    const-string v1, "FmRadio.STATE_DISABLED "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    sput-boolean v3, Lcom/ti/fmrxapp/FmRxApp;->sdefaultSettingOn:Z

    .line 453
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v0}, Lcom/ti/fm/FmRadio;->rxEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    .line 454
    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    if-nez v0, :cond_2

    .line 455
    const v0, 0x7f05007c

    invoke-virtual {p0, v4, v0}, Lcom/ti/fmrxapp/FmRxApp;->showAlert(II)V

    .line 456
    iput-boolean v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mFmOn:Z

    goto :goto_0

    .line 460
    :cond_2
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->pd:Landroid/app/ProgressDialog;

    .line 464
    iput-boolean v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mFmOn:Z

    goto :goto_0

    .line 471
    :sswitch_2
    const-string v0, "FmRxApp"

    const-string v1, "FmRadio.STATE_DEFAULT "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    sput-boolean v3, Lcom/ti/fmrxapp/FmRxApp;->sdefaultSettingOn:Z

    .line 477
    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mFmInterrupted:Z

    if-nez v0, :cond_4

    .line 479
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v0}, Lcom/ti/fm/FmRadio;->rxEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    .line 480
    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    if-nez v0, :cond_3

    .line 481
    const v0, 0x7f05007c

    invoke-virtual {p0, v4, v0}, Lcom/ti/fmrxapp/FmRxApp;->showAlert(II)V

    .line 482
    iput-boolean v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mFmOn:Z

    goto/16 :goto_0

    .line 486
    :cond_3
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->pd:Landroid/app/ProgressDialog;

    .line 490
    iput-boolean v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mFmOn:Z

    goto/16 :goto_0

    .line 493
    :cond_4
    const-string v0, "FmRxApp"

    const-string v1, "mFmInterrupted is true dont  call enable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 427
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method private tuneMinFreq()V
    .locals 3

    .prologue
    .line 2440
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    sput-object v0, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequencyBeforeScan:Ljava/lang/Float;

    .line 2441
    sget v0, Lcom/ti/fmrxapp/FmRxApp;->sBand:I

    packed-switch v0, :pswitch_data_0

    .line 2459
    :goto_0
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    sget-object v1, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/ti/fm/FmRadio;->rxTune_nb(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    .line 2461
    return-void

    .line 2443
    :pswitch_0
    const/high16 v0, 0x42af

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    goto :goto_0

    .line 2446
    :pswitch_1
    const/high16 v0, 0x4298

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    goto :goto_0

    .line 2450
    :pswitch_2
    const v0, 0x4283999a

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    goto :goto_0

    .line 2454
    :pswitch_3
    const v0, 0x43226666

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    goto :goto_0

    .line 2441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method deleteObject()V
    .locals 4

    .prologue
    .line 1547
    const-string v0, "FmRxApp"

    const-string v1, "deleteObject "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/DBAdapter;->open()Lcom/ti/fmrxapp/DBAdapter;

    .line 1551
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/DBAdapter;->deleteStation()Z

    move-result v0

    .line 1552
    const-string v1, "FmRxApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteObject------- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/DBAdapter;->close()V

    .line 1555
    return-void
.end method

.method public isHeadSetExist()I
    .locals 5

    .prologue
    const/16 v1, 0x400

    const/4 v0, 0x0

    .line 3315
    .line 3316
    new-array v1, v1, [C

    .line 3318
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/sys/class/switch/h2w/state"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 3319
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 3320
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 3321
    new-instance v2, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 3328
    :goto_0
    const-string v1, "FmRxApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gemingsong**isHeadSetExist**new state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3329
    :goto_1
    return v0

    .line 3322
    :catch_0
    move-exception v1

    .line 3323
    const-string v1, "FmRxApp"

    const-string v2, "This kernel no headset"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3325
    :catch_1
    move-exception v1

    .line 3326
    const-string v2, "FmRxApp"

    const-string v3, "gemingsong**isHeadSetExist:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 1697
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1698
    const-string v0, "FmRxApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    packed-switch p1, :pswitch_data_0

    .line 1763
    :cond_0
    :goto_0
    return-void

    .line 1701
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 1702
    const-string v0, "FmRxApp"

    const-string v1, "Prests saved"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    const-string v0, "ACTIVITY_CLICK"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1704
    const-string v1, "FmRxApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ListView clicked++++++++++++"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    const-string v1, "click"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1706
    const-string v0, "FmRxApp"

    const-string v1, "ListView clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    const-string v0, "ACTIVITY_RESULT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1708
    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->tuneStationFrequency(Ljava/lang/String;)V

    .line 1709
    sget-object v1, Lcom/ti/fmrxapp/FmRxApp;->txtFmRxTunedFreq:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1710
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->setButtonLabels()V

    goto :goto_0

    .line 1717
    :pswitch_1
    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 1719
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1720
    if-eqz v0, :cond_0

    .line 1722
    const-string v1, "FREQUENCY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    .line 1723
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->txtFmRxTunedFreq:Landroid/widget/TextView;

    sget-object v1, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1724
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    sget-object v1, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/ti/fm/FmRadio;->rxTune_nb(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    .line 1726
    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    if-nez v0, :cond_0

    .line 1727
    const v0, 0x7f050001

    const v1, 0x7f05007e

    invoke-virtual {p0, v0, v1}, Lcom/ti/fmrxapp/FmRxApp;->showAlert(II)V

    goto/16 :goto_0

    .line 1735
    :pswitch_2
    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mToggleCompScan:Z

    if-eqz v0, :cond_0

    .line 1738
    const-string v0, "FmRxApp"

    const-string v1, "ACTIVITY_STOPCOMPSCAN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v0}, Lcom/ti/fm/FmRadio;->rxStopCompleteScan_nb()Z

    goto/16 :goto_0

    .line 1745
    :pswitch_3
    if-ne p2, v3, :cond_0

    .line 1746
    const-string v0, "FmRxApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityFmRdsConfig configurationState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ti/fmrxapp/FmRxApp;->configurationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    iget v0, p0, Lcom/ti/fmrxapp/FmRxApp;->configurationState:I

    if-ne v0, v4, :cond_0

    .line 1750
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->setRdsConfig()V

    .line 1751
    const-string v0, "Please wait.."

    const-string v1, "Applying new Configuration"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v4, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->configPd:Landroid/app/ProgressDialog;

    .line 1755
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->insertDelayThread()V

    goto/16 :goto_0

    .line 1699
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f05006c

    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2076
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2077
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxApp;->isHeadSetExist()I

    move-result v3

    if-nez v3, :cond_0

    .line 2412
    :goto_0
    return-void

    .line 2080
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2081
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2082
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2083
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2084
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2085
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2086
    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->stations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2087
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2088
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2089
    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 2218
    :sswitch_0
    const-string v0, "FmRxApp"

    const-string v1, "Testing completescan()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    const v0, 0x7f050001

    const v1, 0x7f05008d

    invoke-virtual {p0, v0, v1}, Lcom/ti/fmrxapp/FmRxApp;->showAlert(II)V

    goto/16 :goto_0

    .line 2092
    :sswitch_1
    invoke-virtual {p0, v6}, Lcom/ti/fmrxapp/FmRxApp;->showDialog(I)V

    goto/16 :goto_0

    .line 2095
    :sswitch_2
    const-string v0, "FmRxApp"

    const-string v3, "Spk on"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2098
    invoke-virtual {v0}, Landroid/media/AudioManager;->isFmSpeakerOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2099
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setFmSpeakerOn(Z)V

    .line 2100
    iput v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mIsSpeakerOn:I

    .line 2105
    :goto_1
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x29

    iget v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mIsSpeakerOn:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2102
    :cond_1
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setFmSpeakerOn(Z)V

    .line 2103
    iput v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mIsSpeakerOn:I

    goto :goto_1

    .line 2110
    :sswitch_3
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v0}, Lcom/ti/fm/FmRadio;->rxDisable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    .line 2111
    iput-boolean v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mPreset:Z

    goto/16 :goto_0

    .line 2115
    :sswitch_4
    const-string v0, "FmRxApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " imgMute mToggleMute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/ti/fmrxapp/FmRxApp;->mToggleMute:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mToggleMute:Z

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 2127
    :goto_2
    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v3, v0}, Lcom/ti/fm/FmRadio;->rxSetMuteMode_nb(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    .line 2130
    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    if-nez v0, :cond_3

    .line 2131
    const v0, 0x7f050001

    const v1, 0x7f050089

    invoke-virtual {p0, v0, v1}, Lcom/ti/fmrxapp/FmRxApp;->showAlert(II)V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 2120
    goto :goto_2

    .line 2134
    :cond_3
    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mToggleMute:Z

    if-nez v0, :cond_4

    move v2, v1

    :cond_4
    iput-boolean v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mToggleMute:Z

    .line 2135
    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mToggleMute:Z

    if-ne v0, v1, :cond_5

    .line 2136
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->imgFmVolume:Landroid/widget/ImageView;

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 2138
    :cond_5
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->imgFmVolume:Landroid/widget/ImageView;

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 2145
    :sswitch_5
    iput v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mDirection:I

    .line 2148
    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mSeekState:Z

    if-ne v0, v1, :cond_6

    .line 2149
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->txtStationName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2150
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    iget v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mDirection:I

    invoke-virtual {v0, v1}, Lcom/ti/fm/FmRadio;->rxSeek_nb(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    .line 2151
    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    if-nez v0, :cond_7

    .line 2152
    const v0, 0x7f050001

    const v1, 0x7f05008a

    invoke-virtual {p0, v0, v1}, Lcom/ti/fmrxapp/FmRxApp;->showAlert(II)V

    .line 2179
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->setButtonLabels()V

    goto/16 :goto_0

    .line 2154
    :cond_7
    iput-boolean v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mSeekState:Z

    .line 2156
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v0}, Lcom/ti/fm/FmRadio;->getCurrentStation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    move v1, v2

    .line 2157
    :goto_4
    sget v0, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    if-ge v2, v0, :cond_8

    .line 2158
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->stations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2165
    :cond_8
    if-nez v1, :cond_6

    .line 2166
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/DBAdapter;->open()Lcom/ti/fmrxapp/DBAdapter;

    .line 2167
    sget v0, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    .line 2169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2170
    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    iget-object v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/ti/fmrxapp/DBAdapter;->insertStation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 2171
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/DBAdapter;->close()V

    .line 2172
    const-string v0, "FmRxApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " imgseekdown sChannelNo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxApp;->readObject()V

    goto :goto_3

    .line 2159
    :cond_9
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->stations:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2160
    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2161
    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2162
    add-int/lit8 v0, v1, 0x1

    .line 2157
    :goto_5
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_4

    .line 2182
    :sswitch_6
    iput v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mDirection:I

    .line 2184
    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mSeekState:Z

    if-ne v0, v1, :cond_a

    .line 2185
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->txtStationName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2186
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    iget v1, p0, Lcom/ti/fmrxapp/FmRxApp;->mDirection:I

    invoke-virtual {v0, v1}, Lcom/ti/fm/FmRadio;->rxSeek_nb(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    .line 2187
    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    if-nez v0, :cond_b

    .line 2188
    const v0, 0x7f050001

    const v1, 0x7f05008b

    invoke-virtual {p0, v0, v1}, Lcom/ti/fmrxapp/FmRxApp;->showAlert(II)V

    .line 2215
    :cond_a
    :goto_6
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->setButtonLabels()V

    goto/16 :goto_0

    .line 2191
    :cond_b
    iput-boolean v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mSeekState:Z

    .line 2193
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v0}, Lcom/ti/fm/FmRadio;->getCurrentStation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    move v1, v2

    .line 2194
    :goto_7
    sget v0, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    if-ge v2, v0, :cond_c

    .line 2195
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->stations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2202
    :cond_c
    if-nez v1, :cond_a

    .line 2203
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/DBAdapter;->open()Lcom/ti/fmrxapp/DBAdapter;

    .line 2204
    sget v0, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    .line 2206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2207
    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    iget-object v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/ti/fmrxapp/DBAdapter;->insertStation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 2208
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/DBAdapter;->close()V

    .line 2209
    const-string v0, "FmRxApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " imgseekup sChannelNo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxApp;->readObject()V

    goto :goto_6

    .line 2196
    :cond_d
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->stations:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2197
    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2198
    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2199
    add-int/lit8 v0, v1, 0x1

    .line 2194
    :goto_8
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_7

    .line 2224
    :sswitch_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f050060

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050061

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/ti/fmrxapp/FmRxApp$3;

    invoke-direct {v2, p0}, Lcom/ti/fmrxapp/FmRxApp$3;-><init>(Lcom/ti/fmrxapp/FmRxApp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2238
    :sswitch_8
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    .line 2239
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v0}, Lcom/ti/fm/FmRadio;->getCurrentStation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    .line 2240
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/DBAdapter;->open()Lcom/ti/fmrxapp/DBAdapter;

    .line 2241
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ti/fmrxapp/DBAdapter;->getStationByFreq(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2242
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_e

    .line 2243
    sget v1, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    .line 2244
    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    const-string v4, ""

    const-string v5, "love"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ti/fmrxapp/DBAdapter;->insertStation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 2253
    :goto_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2254
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/DBAdapter;->close()V

    .line 2255
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxApp;->readObject()V

    .line 2256
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->setButtonLabels()V

    goto/16 :goto_0

    .line 2246
    :cond_e
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "love"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2247
    invoke-static {p0, v8, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 2248
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_9

    .line 2250
    :cond_f
    iget-object v2, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "love"

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/ti/fmrxapp/DBAdapter;->updateStation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_9

    .line 2259
    :cond_10
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sStationbtn:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->tuneStationFrequency(Ljava/lang/String;)V

    .line 2260
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->txtFmRxTunedFreq:Landroid/widget/TextView;

    sget-object v1, Lcom/ti/fmrxapp/FmRxApp;->sStationbtn:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2261
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->setButtonLabels()V

    goto/16 :goto_0

    .line 2267
    :sswitch_9
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    .line 2268
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v0}, Lcom/ti/fm/FmRadio;->getCurrentStation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    .line 2269
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/DBAdapter;->open()Lcom/ti/fmrxapp/DBAdapter;

    .line 2270
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ti/fmrxapp/DBAdapter;->getStationByFreq(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2271
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_11

    .line 2272
    sget v1, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    .line 2273
    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    const-string v4, ""

    const-string v5, "love"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ti/fmrxapp/DBAdapter;->insertStation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 2282
    :goto_a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2283
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/DBAdapter;->close()V

    .line 2284
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxApp;->readObject()V

    .line 2285
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->setButtonLabels()V

    goto/16 :goto_0

    .line 2275
    :cond_11
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "love"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2276
    invoke-static {p0, v8, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 2277
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 2279
    :cond_12
    iget-object v2, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "love"

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/ti/fmrxapp/DBAdapter;->updateStation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_a

    .line 2288
    :cond_13
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sStationbtn:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->tuneStationFrequency(Ljava/lang/String;)V

    .line 2289
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->txtFmRxTunedFreq:Landroid/widget/TextView;

    sget-object v2, Lcom/ti/fmrxapp/FmRxApp;->sStationbtn:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2290
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->setButtonLabels()V

    goto/16 :goto_0

    .line 2296
    :sswitch_a
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    .line 2297
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v0}, Lcom/ti/fm/FmRadio;->getCurrentStation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    .line 2298
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/DBAdapter;->open()Lcom/ti/fmrxapp/DBAdapter;

    .line 2299
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ti/fmrxapp/DBAdapter;->getStationByFreq(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2300
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_14

    .line 2301
    sget v1, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    .line 2302
    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    const-string v4, ""

    const-string v5, "love"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ti/fmrxapp/DBAdapter;->insertStation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 2311
    :goto_b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2312
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/DBAdapter;->close()V

    .line 2313
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxApp;->readObject()V

    .line 2314
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->setButtonLabels()V

    goto/16 :goto_0

    .line 2304
    :cond_14
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "love"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2305
    invoke-static {p0, v8, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 2306
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_b

    .line 2308
    :cond_15
    iget-object v2, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "love"

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/ti/fmrxapp/DBAdapter;->updateStation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_b

    .line 2317
    :cond_16
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sStationbtn:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->tuneStationFrequency(Ljava/lang/String;)V

    .line 2318
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->txtFmRxTunedFreq:Landroid/widget/TextView;

    sget-object v1, Lcom/ti/fmrxapp/FmRxApp;->sStationbtn:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2319
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->setButtonLabels()V

    goto/16 :goto_0

    .line 2325
    :sswitch_b
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_19

    .line 2326
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v0}, Lcom/ti/fm/FmRadio;->getCurrentStation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    .line 2327
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/DBAdapter;->open()Lcom/ti/fmrxapp/DBAdapter;

    .line 2328
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ti/fmrxapp/DBAdapter;->getStationByFreq(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2329
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_17

    .line 2330
    sget v1, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    .line 2331
    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    const-string v4, ""

    const-string v5, "love"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ti/fmrxapp/DBAdapter;->insertStation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 2340
    :goto_c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2341
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/DBAdapter;->close()V

    .line 2342
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxApp;->readObject()V

    .line 2343
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->setButtonLabels()V

    goto/16 :goto_0

    .line 2333
    :cond_17
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "love"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2334
    invoke-static {p0, v8, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 2335
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 2337
    :cond_18
    iget-object v2, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "love"

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/ti/fmrxapp/DBAdapter;->updateStation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_c

    .line 2346
    :cond_19
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sStationbtn:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->tuneStationFrequency(Ljava/lang/String;)V

    .line 2347
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->txtFmRxTunedFreq:Landroid/widget/TextView;

    sget-object v1, Lcom/ti/fmrxapp/FmRxApp;->sStationbtn:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2348
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->setButtonLabels()V

    goto/16 :goto_0

    .line 2354
    :sswitch_c
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 2355
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v0}, Lcom/ti/fm/FmRadio;->getCurrentStation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    .line 2356
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/DBAdapter;->open()Lcom/ti/fmrxapp/DBAdapter;

    .line 2357
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ti/fmrxapp/DBAdapter;->getStationByFreq(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2358
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 2359
    sget v1, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    .line 2360
    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    const-string v4, ""

    const-string v5, "love"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ti/fmrxapp/DBAdapter;->insertStation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 2369
    :goto_d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2370
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/DBAdapter;->close()V

    .line 2371
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxApp;->readObject()V

    .line 2372
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->setButtonLabels()V

    goto/16 :goto_0

    .line 2362
    :cond_1a
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "love"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2363
    invoke-static {p0, v8, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 2364
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_d

    .line 2366
    :cond_1b
    iget-object v2, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "love"

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/ti/fmrxapp/DBAdapter;->updateStation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_d

    .line 2375
    :cond_1c
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sStationbtn:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->tuneStationFrequency(Ljava/lang/String;)V

    .line 2376
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->txtFmRxTunedFreq:Landroid/widget/TextView;

    sget-object v1, Lcom/ti/fmrxapp/FmRxApp;->sStationbtn:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2377
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->setButtonLabels()V

    goto/16 :goto_0

    .line 2383
    :sswitch_d
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->btnStation:[Landroid/widget/Button;

    const/4 v3, 0x5

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 2384
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v0}, Lcom/ti/fm/FmRadio;->getCurrentStation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    .line 2385
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/DBAdapter;->open()Lcom/ti/fmrxapp/DBAdapter;

    .line 2386
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ti/fmrxapp/DBAdapter;->getStationByFreq(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2387
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 2388
    sget v1, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    .line 2389
    iget-object v1, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/ti/fmrxapp/FmRxApp;->sChannelNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    const-string v4, ""

    const-string v5, "love"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ti/fmrxapp/DBAdapter;->insertStation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 2398
    :goto_e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2399
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/DBAdapter;->close()V

    .line 2400
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxApp;->readObject()V

    .line 2401
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->setButtonLabels()V

    goto/16 :goto_0

    .line 2391
    :cond_1d
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "love"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2392
    invoke-static {p0, v8, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 2393
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_e

    .line 2395
    :cond_1e
    iget-object v2, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/ti/fmrxapp/FmRxApp;->mCurrentStation:Ljava/lang/String;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "love"

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/ti/fmrxapp/DBAdapter;->updateStation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_e

    .line 2404
    :cond_1f
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sStationbtn:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->tuneStationFrequency(Ljava/lang/String;)V

    .line 2405
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->txtFmRxTunedFreq:Landroid/widget/TextView;

    sget-object v1, Lcom/ti/fmrxapp/FmRxApp;->sStationbtn:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2406
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->setButtonLabels()V

    goto/16 :goto_0

    :cond_20
    move v0, v1

    goto/16 :goto_8

    :cond_21
    move v0, v1

    goto/16 :goto_5

    .line 2089
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f060001 -> :sswitch_0
        0x7f060016 -> :sswitch_5
        0x7f06001a -> :sswitch_1
        0x7f06001d -> :sswitch_6
        0x7f06001f -> :sswitch_4
        0x7f060020 -> :sswitch_7
        0x7f060021 -> :sswitch_2
        0x7f060022 -> :sswitch_3
        0x7f060026 -> :sswitch_8
        0x7f060027 -> :sswitch_9
        0x7f060028 -> :sswitch_a
        0x7f06002a -> :sswitch_b
        0x7f06002b -> :sswitch_c
        0x7f06002c -> :sswitch_d
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 2832
    const-string v0, "FmRxApp"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2835
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 262
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 263
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mContext:Landroid/content/Context;

    .line 265
    if-eqz p1, :cond_0

    .line 266
    const-string v2, "fm_state"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 267
    .local v0, fmState:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 268
    const-string v2, "fm_interrupted"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mFmInterrupted:Z

    .line 272
    .end local v0           #fmState:Landroid/os/Bundle;
    :cond_0
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/ti/fmrxapp/FmRxApp;->setVolumeControlStream(I)V

    .line 275
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 276
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v2, "fm.rx.intent.action.FM_ENABLED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string v2, "fm.rx.intent.action.FM_DISABLED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    const-string v2, "fm.rx.intent.action.GET_FREQUENCY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const-string v2, "fm.rx.intent.action.SEEK_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const-string v2, "fm.rx.intent.action.BAND_CHANGE_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string v2, "fm.rx.intent.action.GET_CHANNEL_SPACE_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    const-string v2, "fm.rx.intent.action.SET_MODE_MONOSTEREO"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v2, "fm.rx.intent.action.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string v2, "fm.rx.intent.action.RDS_TEXT_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    const-string v2, "fm.rx.intent.action.PS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    const-string v2, "fm.rx.intent.action.AUDIO_PATH_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    const-string v2, "fm.rx.intent.action.TUNE_COMPLETE_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    const-string v2, "fm.rx.intent.action.SEEK_STOP_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    const-string v2, "fm.rx.intent.action.MUTE_CHANGE_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string v2, "fm.rx.intent.action.DISPLAY_MODE_MONO_STEREO_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    const-string v2, "fm.rx.intent.action.ENABLE_RDS_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    const-string v2, "fm.rx.intent.action.DISABLE_RDS_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string v2, "fm.rx.intent.action.SET_RDS_AF_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string v2, "fm.rx.intent.action.SET_WRAP_SEEK_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v2, "fm.rx.intent.action.SET_RDS_SYSTEM_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string v2, "fm.rx.intent.action.SET_DEEMP_FILTER_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string v2, "fm.rx.intent.action.SET_RSSI_THRESHHOLD_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string v2, "fm.rx.intent.action.SET_RF_DEPENDENT_MUTE_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string v2, "fm.rx.intent.action.PI_CODE_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    const-string v2, "fm.rx.intent.action.MASTER_VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    const-string v2, "fm.rx.intent.action.CHANNEL_SPACING_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    const-string v2, "fm.rx.intent.action.COMPLETE_SCAN_DONE_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string v2, "fm.rx.intent.action.COMPLETE_SCAN_STOP_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    const-string v2, "fm.rx.intent.action.GET_BAND_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    const-string v2, "fm.rx.intent.action.GET_MONO_STEREO_MODE_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    const-string v2, "fm.rx.intent.action.GET_MUTE_MODE_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    const-string v2, "fm.rx.intent.action.GET_COMP_SCAN_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string v2, "fm.rx.intent.action.GET_RF_MUTE_MODE_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    const-string v2, "fm.rx.intent.action.GET_RSSI_THRESHHOLD_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string v2, "fm.rx.intent.action.GET_DEEMPHASIS_FILTER_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string v2, "fm.rx.intent.action.GET_VOLUME_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    const-string v2, "fm.rx.intent.action.GET_RDS_SYSTEM_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    const-string v2, "fm.rx.intent.action.GET_RDS_GROUPMASK_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string v2, "fm.rx.intent.action.GET_RDS_AF_SWITCH_MODE_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-string v2, "fm.rx.intent.action.GET_RSSI_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    const-string v2, "fm.rx.intent.action.COMPLETE_SCAN_PROGRESS_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    const-string v2, "fm.rx.intent.action.SET_RDS_AF_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    const-string v2, "fm.rx.intent.action.SET_RF_DEPENDENT_MUTE_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    const-string v2, "fm.rx.intent.action.SET_CHANNEL_SPACE_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    iget-object v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/ti/fmrxapp/FmRxApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 325
    new-instance v2, Lcom/ti/fmrxapp/DBAdapter;

    invoke-direct {v2, p0}, Lcom/ti/fmrxapp/DBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    .line 326
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 330
    iput-boolean v5, p0, Lcom/ti/fmrxapp/FmRxApp;->mStartInAirplane:Z

    .line 331
    invoke-virtual {p0, v5}, Lcom/ti/fmrxapp/FmRxApp;->showDialog(I)V

    .line 336
    :goto_0
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxApp;->isHeadSetExist()I

    move-result v2

    if-nez v2, :cond_3

    .line 337
    iput-boolean v5, p0, Lcom/ti/fmrxapp/FmRxApp;->mStartNoHeadset:Z

    .line 338
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/ti/fmrxapp/FmRxApp;->showDialog(I)V

    .line 342
    :goto_1
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->checkCallStatus()V

    .line 343
    iget-boolean v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mStartInAirplane:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mStartNoHeadset:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mStartInCall:Z

    if-nez v2, :cond_1

    .line 345
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->createEmptyList()V

    .line 350
    :cond_1
    new-instance v2, Lcom/ti/fm/FmRadio;

    invoke-direct {v2, p0, p0}, Lcom/ti/fm/FmRadio;-><init>(Landroid/content/Context;Lcom/ti/fm/FmRadio$ServiceListener;)V

    sput-object v2, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    .line 351
    return-void

    .line 334
    :cond_2
    iput-boolean v4, p0, Lcom/ti/fmrxapp/FmRxApp;->mStartInAirplane:Z

    goto :goto_0

    .line 340
    :cond_3
    iput-boolean v4, p0, Lcom/ti/fmrxapp/FmRxApp;->mStartNoHeadset:Z

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 2549
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    .line 2550
    packed-switch p1, :pswitch_data_0

    .line 2566
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2552
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/ti/fmrxapp/FmRxApp;->createCmdFailedDlgAirplaneModeOn(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 2555
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/ti/fmrxapp/FmRxApp;->createCmdFailedDlgNoHeadset(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 2558
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/ti/fmrxapp/FmRxApp;->createCmdFailedDlgCallOn(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 2561
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/ti/fmrxapp/FmRxApp;->createCmdTuneFreqByInput(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 2550
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2475
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2478
    const/4 v0, 0x2

    const v1, 0x7f050041

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 2479
    const v1, 0x7f020005

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2480
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2482
    const/4 v0, 0x4

    const v1, 0x7f050043

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 2483
    const v1, 0x7f020006

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2484
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2486
    const/4 v0, 0x3

    const v1, 0x7f050042

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 2487
    const v1, 0x7f020012

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2488
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2490
    const/4 v0, 0x5

    const v1, 0x7f050044

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 2491
    const v1, 0x7f020008

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2494
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 2859
    const-string v0, "FmRxApp"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->finishActivity(I)V

    .line 2861
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->finishActivity(I)V

    .line 2862
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->finishActivity(I)V

    .line 2863
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->finishActivity(I)V

    .line 2864
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2869
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->saveDefaultConfiguration()V

    .line 2870
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2872
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1767
    packed-switch p1, :pswitch_data_0

    .line 2045
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    .line 1776
    :pswitch_2
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->saveDefaultConfiguration()V

    .line 1777
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxApp;->finish()V

    goto :goto_0

    .line 1790
    :pswitch_3
    const-string v1, "FmRxApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Testing getVolume_nb()  returned volume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v3}, Lcom/ti/fm/FmRadio;->rxGetVolume_nb()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1807
    :pswitch_4
    const-string v1, "FmRxApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Testing getTunedFrequency_nb()  returned Tuned Freq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v3}, Lcom/ti/fm/FmRadio;->rxGetTunedFrequency_nb()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1823
    :pswitch_5
    const-string v1, "FmRxApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Testing getRssiThreshold_nb()    returned RSSI thrshld = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v3}, Lcom/ti/fm/FmRadio;->rxGetRssiThreshold_nb()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1838
    :pswitch_6
    const-string v1, "FmRxApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Testing getBand_nb() returned Band  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v3}, Lcom/ti/fm/FmRadio;->rxGetBand_nb()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1853
    :pswitch_7
    const-string v1, "FmRxApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Testing getDeEmphasisFilter_nb()    returned De-emp  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v3}, Lcom/ti/fm/FmRadio;->rxGetDeEmphasisFilter_nb()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1868
    :pswitch_8
    const-string v1, "FmRxApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Testing getMonoStereoMode_nb() returned MonoStereo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v3}, Lcom/ti/fm/FmRadio;->rxGetMonoStereoMode_nb()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1883
    :pswitch_9
    const-string v1, "FmRxApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Testing getMuteMode_nb()  returned MuteMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v3}, Lcom/ti/fm/FmRadio;->rxGetMuteMode_nb()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1897
    :pswitch_a
    const-string v1, "FmRxApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Testing getRdsAfSwitchMode_nb()    returned RdsAfSwitchMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v3}, Lcom/ti/fm/FmRadio;->rxGetRdsAfSwitchMode_nb()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1911
    :pswitch_b
    const-string v1, "FmRxApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Testing getRdsGroupMask_nb() returned RdsGrpMask = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v3}, Lcom/ti/fm/FmRadio;->rxGetRdsGroupMask_nb()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1925
    :pswitch_c
    const-string v1, "FmRxApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Testing getRdsSystem_nb() returned Rds System = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v3}, Lcom/ti/fm/FmRadio;->rxGetRdsSystem_nb()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1939
    :pswitch_d
    const-string v1, "FmRxApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Testing getRfDependentMuteMode_nb()    returned RfDepndtMuteMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v3}, Lcom/ti/fm/FmRadio;->rxGetRfDependentMuteMode_nb()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1962
    :pswitch_e
    const-string v1, "FmRxApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Testing rxGetRssi_nb()    returned  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v3}, Lcom/ti/fm/FmRadio;->rxGetRssi_nb()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1970
    :pswitch_f
    const-string v1, "FmRxApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Testing isValidChannel()    returned isValidChannel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v3}, Lcom/ti/fm/FmRadio;->rxIsValidChannel()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1976
    :pswitch_10
    const-string v1, "FmRxApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Testing getFwVersion()    returned getFwVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v3}, Lcom/ti/fm/FmRadio;->rxGetFwVersion()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1989
    :pswitch_11
    const-string v1, "FmRxApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Testing getChannelSpacing_nb()    returned getChannelSpacing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v3}, Lcom/ti/fm/FmRadio;->rxGetChannelSpacing_nb()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1997
    :pswitch_12
    const-string v1, "FmRxApp"

    const-string v2, "Testing completescan()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    sget-object v1, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v1}, Lcom/ti/fm/FmRadio;->rxCompleteScan_nb()Z

    goto/16 :goto_0

    .line 2008
    :pswitch_13
    const-string v1, "FmRxApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Testing getCompleteScanProgress()    returned scan progress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v3}, Lcom/ti/fm/FmRadio;->rxGetCompleteScanProgress_nb()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2020
    :pswitch_14
    const-string v1, "FmRxApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Testing stopCompleteScan()    returned status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v3}, Lcom/ti/fm/FmRadio;->rxStopCompleteScan_nb()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2036
    :pswitch_15
    const-string v1, "FmRxApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Testing setRfDependentMuteMode()    returned RfDepndtMuteMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v3, v0}, Lcom/ti/fm/FmRadio;->rxSetRfDependentMuteMode_nb(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1767
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 2847
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2848
    const-string v0, "FmRxApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gms:>>>>>>>>>>>>>>>>>>>>FmRxApp enter onNewIntent,mFmOn is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mFmOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    const/high16 v0, 0x400

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mFmOn:Z

    if-nez v0, :cond_1

    .line 2850
    :cond_0
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v0}, Lcom/ti/fm/FmRadio;->rxDisable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    .line 2851
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxApp;->finish()V

    .line 2856
    :goto_0
    return-void

    .line 2853
    :cond_1
    const-string v0, "FmRxApp"

    const-string v1, "gms:>>>>>>>>>>>>>>>will play FM freq from list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    invoke-virtual {p0, p1}, Lcom/ti/fmrxapp/FmRxApp;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2500
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2545
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 2503
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RDS_CONFIG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2504
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ti/fmrxapp/FmRxApp;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2508
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2509
    const-class v1, Lcom/ti/fmrxapp/FmPresetList;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2510
    iput-boolean v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mPreset:Z

    .line 2511
    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->startActivity(Landroid/content/Intent;)V

    .line 2513
    const-string v0, "FmRxApp"

    const-string v1, "------------Start the Presets window--------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2528
    :pswitch_2
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    invoke-virtual {v0}, Lcom/ti/fm/FmRadio;->rxDisable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    .line 2529
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mPreset:Z

    goto :goto_0

    .line 2534
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.START_RXHELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2535
    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2540
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.START_RXFREQ"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2541
    invoke-virtual {p0, v0, v2}, Lcom/ti/fmrxapp/FmRxApp;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2500
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 2821
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2822
    const-string v0, "FmRxApp"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2824
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2825
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2827
    :cond_0
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->saveDefaultConfiguration()V

    .line 2828
    const-string v0, "FmRxApp"

    const-string v1, "onPause-------the end of onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 2569
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 2579
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 2838
    const-string v0, "FmRxApp"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2839
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2840
    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mFmServiceConnected:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2841
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxApp;->saveObject()V

    .line 2842
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->startup()V

    .line 2844
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 2795
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2796
    const-string v0, "FmRxApp"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mFmInterrupted:Z

    .line 2799
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2800
    const-string v1, "fm_interrupted"

    iget-boolean v2, p0, Lcom/ti/fmrxapp/FmRxApp;->mFmInterrupted:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2802
    const-string v1, "fm_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2803
    return-void
.end method

.method public onServiceConnected()V
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mFmServiceConnected:Z

    .line 503
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->startup()V

    .line 504
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mFmServiceConnected:Z

    .line 509
    const/4 v0, 0x0

    sput-object v0, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    .line 510
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 2806
    const-string v0, "FmRxApp"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2808
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxApp;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ACTIVITY_CLICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2809
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxApp;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ACTIVITY_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2810
    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmRxApp;->tuneStationFrequency(Ljava/lang/String;)V

    .line 2811
    sget-object v1, Lcom/ti/fmrxapp/FmRxApp;->txtFmRxTunedFreq:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2812
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmRxApp;->setButtonLabels()V

    .line 2814
    :cond_0
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmRxApp;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ACTIVITY_CLICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 2815
    return-void
.end method

.method readObject()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1496
    const-string v0, "FmRxApp"

    const-string v1, "readObject "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/DBAdapter;->open()Lcom/ti/fmrxapp/DBAdapter;

    .line 1499
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/DBAdapter;->getAllStations()Landroid/database/Cursor;

    move-result-object v1

    .line 1500
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 1502
    const/4 v0, 0x0

    .line 1503
    sget-object v2, Lcom/ti/fmrxapp/FmRxApp;->stations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1504
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1507
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1509
    const-string v3, "key"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    const-string v3, "value"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    const-string v3, "name"

    const/4 v4, 0x3

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "love"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1514
    const-string v3, "love"

    const-string v4, "*"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    :goto_0
    const-string v3, "FmRxApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readObject----c.getString(2) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    sget-object v3, Lcom/ti/fmrxapp/FmRxApp;->stations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1520
    add-int/lit8 v0, v0, 0x1

    .line 1522
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1526
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1527
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/DBAdapter;->close()V

    .line 1529
    return-void

    .line 1516
    :cond_1
    const-string v3, "love"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1525
    :cond_2
    const v0, 0x7f05006d

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method saveObject()V
    .locals 6

    .prologue
    .line 1559
    const-string v0, "FmRxApp"

    const-string v1, "enter saveObject"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/DBAdapter;->open()Lcom/ti/fmrxapp/DBAdapter;

    .line 1561
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->stations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1563
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1564
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1566
    const-string v2, "value"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1567
    const-string v3, "name"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1568
    const-string v4, "key"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1569
    const-string v5, "love"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1573
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1575
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "love"

    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/ti/fmrxapp/DBAdapter;->updateStation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1581
    :catch_0
    move-exception v0

    .line 1582
    const-string v2, "FmRxApp"

    const-string v3, "Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1578
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/ti/fmrxapp/DBAdapter;->updateStation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1588
    :cond_1
    iget-object v0, p0, Lcom/ti/fmrxapp/FmRxApp;->db:Lcom/ti/fmrxapp/DBAdapter;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/DBAdapter;->close()V

    .line 1590
    return-void
.end method

.method public showAlert(II)V
    .locals 0
    .parameter "titleID"
    .parameter "msgID"

    .prologue
    .line 1140
    return-void
.end method

.method tuneStationFrequency(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2051
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 2052
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 2053
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    .line 2055
    const-string v0, "FmRxApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastTunedFrequency"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->sFmRadio:Lcom/ti/fm/FmRadio;

    sget-object v1, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/ti/fm/FmRadio;->rxTune_nb(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    .line 2058
    sget-object v0, Lcom/ti/fmrxapp/FmRxApp;->txtFmRxTunedFreq:Landroid/widget/TextView;

    sget-object v1, Lcom/ti/fmrxapp/FmRxApp;->lastTunedFrequency:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2059
    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmRxApp;->mStatus:Z

    if-nez v0, :cond_0

    .line 2060
    const v0, 0x7f050001

    const v1, 0x7f05007e

    invoke-virtual {p0, v0, v1}, Lcom/ti/fmrxapp/FmRxApp;->showAlert(II)V

    .line 2073
    :cond_0
    :goto_0
    return-void

    .line 2064
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050079

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2070
    :catch_0
    move-exception v0

    .line 2071
    const-string v0, "FmRxApp"

    const-string v1, "nfe"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
