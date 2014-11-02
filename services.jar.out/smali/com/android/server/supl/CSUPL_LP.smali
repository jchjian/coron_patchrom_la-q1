.class public Lcom/android/server/supl/CSUPL_LP;
.super Ljava/lang/Object;
.source "CSUPL_LP.java"


# static fields
.field private static final CELL_TYPE_GSM:I = 0x1

.field private static final CELL_TYPE_UMTS:I = 0x2

.field private static final DATA_SMS_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field private static final DATA_SMS_PORT:I = 0x1c6b

.field private static final NOTIFICATION_TIME_MAX:I = 0xf4240

.field private static final NOTIFICATION_TIME_OUT:I = 0x3a98

.field private static final SMS_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field private static final SUPL_CONFIG_ACTION:Ljava/lang/String; = "android.supl.SUPL_CONFIG"

.field private static final SUPL_MSG_ACTION:Ljava/lang/String; = "android.supl.msg"

.field public static final TAG:Ljava/lang/String; = "CSUPL_LP"

.field private static final WAP_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"

.field private static g_CI:I

.field private static g_CiType:I

.field private static g_HMCC:I

.field private static g_HMNC:I

.field private static g_LAC:I

.field private static g_MCC:I

.field private static g_MNC:I

.field private static g_MSISDN:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mHandleSMS:Z

.field private static mHandleWAP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 44
    sput-boolean v0, Lcom/android/server/supl/CSUPL_LP;->mHandleSMS:Z

    .line 45
    sput-boolean v0, Lcom/android/server/supl/CSUPL_LP;->mHandleWAP:Z

    .line 60
    sput v1, Lcom/android/server/supl/CSUPL_LP;->g_MCC:I

    .line 61
    sput v1, Lcom/android/server/supl/CSUPL_LP;->g_MNC:I

    .line 62
    sput v1, Lcom/android/server/supl/CSUPL_LP;->g_LAC:I

    .line 63
    sput v1, Lcom/android/server/supl/CSUPL_LP;->g_CI:I

    .line 64
    sput v1, Lcom/android/server/supl/CSUPL_LP;->g_CiType:I

    .line 65
    const-string v0, "-1"

    sput-object v0, Lcom/android/server/supl/CSUPL_LP;->g_MSISDN:Ljava/lang/String;

    .line 66
    sput v1, Lcom/android/server/supl/CSUPL_LP;->g_HMCC:I

    .line 67
    sput v1, Lcom/android/server/supl/CSUPL_LP;->g_HMNC:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 75
    const-string v3, "init():+ CSUPL_LP Ctor."

    invoke-static {v3}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 76
    sput-object p0, Lcom/android/server/supl/CSUPL_LP;->mContext:Landroid/content/Context;

    .line 77
    const-string v3, "CSUPL_LP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init(): Init mContext="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/supl/CSUPL_LP;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v2, Lcom/android/server/supl/IntentReceiver;

    invoke-direct {v2}, Lcom/android/server/supl/IntentReceiver;-><init>()V

    .line 81
    .local v2, receiver:Lcom/android/server/supl/IntentReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    :try_start_0
    const-string v3, "application/vnd.omaloc-supl-init"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 87
    const-string v3, "init():- CSUPL_LP addDataType"

    invoke-static {v3}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    sget-object v3, Lcom/android/server/supl/CSUPL_LP;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v3, "sms"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 96
    sget-object v3, Lcom/android/server/supl/CSUPL_LP;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.supl.msg"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v3, "android.supl.SUPL_CONFIG"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    sget-object v3, Lcom/android/server/supl/CSUPL_LP;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    const-string v3, "init():- CSUPL_LP Ctor."

    invoke-static {v3}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 107
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v3, "CSUPL"

    const-string v4, "[GPS] Malformed SUPL init mime type"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static native NotificationResult([I)Z
.end method

.method private static native PostBodyToQueue([B)Z
.end method

.method public static SetCellType(I)V
    .locals 0
    .parameter "ciType"

    .prologue
    .line 827
    sput p0, Lcom/android/server/supl/CSUPL_LP;->g_CiType:I

    .line 828
    return-void
.end method

.method public static SetCi(I)V
    .locals 0
    .parameter "ci"

    .prologue
    .line 823
    sput p0, Lcom/android/server/supl/CSUPL_LP;->g_CI:I

    .line 824
    return-void
.end method

.method public static SetHMcc(I)V
    .locals 0
    .parameter "hmcc"

    .prologue
    .line 834
    sput p0, Lcom/android/server/supl/CSUPL_LP;->g_HMCC:I

    .line 835
    return-void
.end method

.method public static SetHMnc(I)V
    .locals 0
    .parameter "hmnc"

    .prologue
    .line 838
    sput p0, Lcom/android/server/supl/CSUPL_LP;->g_HMNC:I

    .line 839
    return-void
.end method

.method public static SetLac(I)V
    .locals 0
    .parameter "lac"

    .prologue
    .line 818
    sput p0, Lcom/android/server/supl/CSUPL_LP;->g_LAC:I

    .line 819
    return-void
.end method

.method public static SetMcc(I)V
    .locals 0
    .parameter "mcc"

    .prologue
    .line 808
    sput p0, Lcom/android/server/supl/CSUPL_LP;->g_MCC:I

    .line 809
    return-void
.end method

.method public static SetMnc(I)V
    .locals 0
    .parameter "mnc"

    .prologue
    .line 813
    sput p0, Lcom/android/server/supl/CSUPL_LP;->g_MNC:I

    .line 814
    return-void
.end method

.method public static SetMsisdn(Ljava/lang/String;)V
    .locals 0
    .parameter "msisdn"

    .prologue
    .line 831
    sput-object p0, Lcom/android/server/supl/CSUPL_LP;->g_MSISDN:Ljava/lang/String;

    .line 832
    return-void
.end method

.method static synthetic access$000(II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/android/server/supl/CSUPL_LP;->returnSUPLInitDialogResult(II)V

    return-void
.end method

.method public static debugMessage(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 111
    const-string v0, "CSUPL_LP"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method public static getGSMInfo()[I
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 688
    const/4 v1, 0x5

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 690
    .local v0, GSMinfo:[I
    const-string v1, "CSUPL_LP"

    const-string v2, "getGSMInfo: "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-static {}, Lcom/android/server/supl/CSUPL_LP;->updateGSMInfo()V

    .line 695
    sget v1, Lcom/android/server/supl/CSUPL_LP;->g_CI:I

    aput v1, v0, v4

    .line 696
    sget v1, Lcom/android/server/supl/CSUPL_LP;->g_LAC:I

    aput v1, v0, v5

    .line 697
    sget v1, Lcom/android/server/supl/CSUPL_LP;->g_MCC:I

    aput v1, v0, v6

    .line 698
    sget v1, Lcom/android/server/supl/CSUPL_LP;->g_MNC:I

    aput v1, v0, v7

    .line 699
    sget v1, Lcom/android/server/supl/CSUPL_LP;->g_CiType:I

    aput v1, v0, v8

    .line 701
    const-string v1, "CSUPL_LP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " GSMinfo.CI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const-string v1, "CSUPL_LP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " GSMinfo.LAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const-string v1, "CSUPL_LP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " GSMinfo.MNC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const-string v1, "CSUPL_LP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " GSMinfo.MCC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const-string v1, "CSUPL_LP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " GSMinfo.CELL ID TYPE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    return-object v0

    .line 688
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static getHSlp()[I
    .locals 10

    .prologue
    const/4 v6, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 644
    const/4 v5, 0x2

    new-array v0, v5, [I

    sget v5, Lcom/android/server/supl/CSUPL_LP;->g_HMCC:I

    aput v5, v0, v8

    sget v5, Lcom/android/server/supl/CSUPL_LP;->g_HMNC:I

    aput v5, v0, v9

    .line 645
    .local v0, MccMnc:[I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .local v2, hmcc:Ljava/lang/Integer;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 648
    .local v3, hmnc:Ljava/lang/Integer;
    const-string v5, "CSUPL_LP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getHSlp: g_HMCC "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/supl/CSUPL_LP;->g_HMCC:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string v5, "CSUPL_LP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getHSlp: g_HMNC "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/supl/CSUPL_LP;->g_HMNC:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    sget-object v5, Lcom/android/server/supl/CSUPL_LP;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 654
    .local v4, tm:Landroid/telephony/TelephonyManager;
    const-string v5, "CSUPL_LP"

    const-string v6, "getHSlp : getSimOperator - Get MCC and MNC of SIM Operator"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 656
    .local v1, SimOperator:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 661
    const/4 v5, 0x0

    const/4 v6, 0x3

    :try_start_0
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 662
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v5

    .line 663
    const-string v5, "CSUPL_LP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMccMnc MCC: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 665
    const/4 v5, 0x1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v5

    .line 666
    const-string v5, "CSUPL_LP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMccMnc MNC: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    :goto_0
    const-string v5, "CSUPL_LP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getHSlp: HMCC "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v0, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const-string v5, "CSUPL_LP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getHSlp: HMNC "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v0, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    return-object v0

    .line 672
    :cond_0
    const-string v5, "CSUPL_LP"

    const-string v6, "getHSlp: SimOperator Null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 668
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static getMSISDN()[B
    .locals 7

    .prologue
    .line 625
    const-string v4, "CSUPL_LP"

    const-string v5, " getMSISDN: Entering \n"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    sget-object v4, Lcom/android/server/supl/CSUPL_LP;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 629
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, phoneNumber:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 631
    sget-object v1, Lcom/android/server/supl/CSUPL_LP;->g_MSISDN:Ljava/lang/String;

    .line 632
    :cond_0
    const-string v4, "CSUPL_LP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ===>>> getMSISDN is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    new-array v3, v4, [B

    .line 634
    .local v3, val:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 636
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 634
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 639
    :cond_1
    return-object v3
.end method

.method private static final getSmsBodyFromIntent(Landroid/content/Intent;)[B
    .locals 11
    .parameter "intent"

    .prologue
    .line 377
    const-string v9, "+getSmsBodyFromIntent"

    invoke-static {v9}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 378
    const-string v9, "pdus"

    invoke-virtual {p0, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    move-object v3, v9

    check-cast v3, [Ljava/lang/Object;

    .line 379
    .local v3, messages:[Ljava/lang/Object;
    array-length v9, v3

    new-array v5, v9, [[B

    .line 381
    .local v5, pduObjs:[[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v9, v3

    if-ge v1, v9, :cond_0

    .line 383
    aget-object v9, v3, v1

    check-cast v9, [B

    check-cast v9, [B

    aput-object v9, v5, v1

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 386
    :cond_0
    array-length v9, v5

    if-nez v9, :cond_1

    .line 388
    const-string v9, "-getSmsBodyFromIntent: pduObjs.length == 0"

    invoke-static {v9}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 389
    const/4 v4, 0x0

    .line 418
    :goto_1
    return-object v4

    .line 391
    :cond_1
    array-length v9, v5

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 393
    const-string v9, "-getSmsBodyFromIntent: pduObjs.length == 1"

    invoke-static {v9}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 394
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-static {v9}, Landroid/telephony/gsm/SmsMessage;->createFromPdu([B)Landroid/telephony/gsm/SmsMessage;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v4

    goto :goto_1

    .line 398
    :cond_2
    const/4 v0, 0x0

    .line 399
    .local v0, BodyLength:I
    const/4 v7, 0x0

    .line 400
    .local v7, pos:I
    const/4 v1, 0x0

    .line 401
    const/4 v2, 0x0

    .line 403
    .local v2, j:I
    array-length v9, v5

    new-array v6, v9, [[B

    .line 404
    .local v6, pdus:[[B
    const/4 v1, 0x0

    :goto_2
    array-length v9, v6

    if-ge v1, v9, :cond_3

    .line 406
    aget-object v9, v5, v1

    invoke-static {v9}, Landroid/telephony/gsm/SmsMessage;->createFromPdu([B)Landroid/telephony/gsm/SmsMessage;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v9

    aput-object v9, v6, v1

    .line 407
    aget-object v9, v6, v1

    array-length v9, v9

    add-int/2addr v0, v9

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 409
    :cond_3
    new-array v4, v0, [B

    .line 410
    .local v4, msgs:[B
    const/4 v1, 0x0

    :goto_3
    array-length v9, v6

    if-ge v1, v9, :cond_5

    .line 412
    const/4 v2, 0x0

    :goto_4
    aget-object v9, v6, v1

    array-length v9, v9

    if-ge v2, v9, :cond_4

    .line 414
    add-int/lit8 v8, v7, 0x1

    .end local v7           #pos:I
    .local v8, pos:I
    aget-object v9, v6, v1

    aget-byte v9, v9, v2

    aput-byte v9, v4, v7

    .line 412
    add-int/lit8 v2, v2, 0x1

    move v7, v8

    .end local v8           #pos:I
    .restart local v7       #pos:I
    goto :goto_4

    .line 410
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 417
    :cond_5
    const-string v9, "-getSmsBodyFromIntent"

    invoke-static {v9}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getSubscriberId()[B
    .locals 7

    .prologue
    .line 600
    const-string v4, "CSUPL_LP"

    const-string v5, " getSubscriberId: Entering \n"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v1, 0x0

    .line 604
    .local v1, strSID:Ljava/lang/String;
    sget-object v4, Lcom/android/server/supl/CSUPL_LP;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 605
    .local v2, tm:Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 606
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 609
    :cond_0
    if-nez v1, :cond_1

    .line 610
    const-string v1, "310260000000000"

    .line 612
    :cond_1
    const-string v4, "CSUPL_LP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getSubscriberId: strSID is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    new-array v3, v4, [B

    .line 614
    .local v3, val:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 616
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    aput-byte v4, v3, v0

    .line 614
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    :cond_2
    return-object v3
.end method

.method public static messageListen(ZI)V
    .locals 4
    .parameter "allow"
    .parameter "sms_wap"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 348
    const-string v0, "+messageListen"

    invoke-static {v0}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 349
    if-eqz p0, :cond_2

    .line 351
    if-ne p1, v1, :cond_1

    .line 353
    sput-boolean v1, Lcom/android/server/supl/CSUPL_LP;->mHandleSMS:Z

    .line 371
    :cond_0
    :goto_0
    const-string v0, "-messageListen"

    invoke-static {v0}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 372
    return-void

    .line 355
    :cond_1
    if-ne p1, v3, :cond_0

    .line 357
    sput-boolean v1, Lcom/android/server/supl/CSUPL_LP;->mHandleWAP:Z

    goto :goto_0

    .line 362
    :cond_2
    if-ne p1, v1, :cond_3

    .line 364
    sput-boolean v2, Lcom/android/server/supl/CSUPL_LP;->mHandleSMS:Z

    goto :goto_0

    .line 366
    :cond_3
    if-ne p1, v3, :cond_0

    .line 368
    sput-boolean v2, Lcom/android/server/supl/CSUPL_LP;->mHandleWAP:Z

    goto :goto_0
.end method

.method private static returnSUPLInitDialogResult(II)V
    .locals 2
    .parameter "result"
    .parameter "sessionId"

    .prologue
    .line 589
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 590
    .local v0, body:[I
    const/4 v1, 0x0

    aput p0, v0, v1

    .line 591
    const/4 v1, 0x1

    aput p1, v0, v1

    .line 592
    invoke-static {v0}, Lcom/android/server/supl/CSUPL_LP;->NotificationResult([I)Z

    .line 593
    return-void
.end method

.method private static showSUPLInitDialog(ZLjava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .parameter "verification"
    .parameter "requestorId"
    .parameter "clientName"
    .parameter "sessionId"
    .parameter "timeout"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 476
    const-string v4, "+showSUPLInitDialog2"

    invoke-static {v4}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 477
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "verification="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 478
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestorId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 479
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clientName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 480
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sessionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 481
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 483
    move v2, p4

    .line 485
    .local v2, notificTimeOut:I
    new-array v0, v7, [Ljava/lang/String;

    const-string v4, "Always allow"

    aput-object v4, v0, v6

    .line 486
    .local v0, elem:[Ljava/lang/String;
    new-array v1, v7, [Z

    aput-boolean v6, v1, v6

    .line 488
    .local v1, elem_flag:[Z
    const-string v4, "showSUPLInitDialog2: check0"

    invoke-static {v4}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 490
    new-instance v3, Lcom/android/server/supl/TimerAlertDialog;

    sget-object v4, Lcom/android/server/supl/CSUPL_LP;->mContext:Landroid/content/Context;

    int-to-long v5, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/supl/TimerAlertDialog;-><init>(Landroid/content/Context;J)V

    .line 492
    .local v3, td:Lcom/android/server/supl/TimerAlertDialog;
    const-string v4, "showSUPLInitDialog2: check1"

    invoke-static {v4}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 493
    if-ne p0, v7, :cond_0

    .line 495
    const-string v4, "showSUPLInitDialog: Verification"

    invoke-static {v4}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 496
    const-string v4, "SUPL Information!"

    invoke-virtual {v3, v4}, Lcom/android/server/supl/TimerAlertDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SUPL INIT message received! \nRequestor Id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Client Name  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "Allow"

    new-instance v6, Lcom/android/server/supl/CSUPL_LP$2;

    invoke-direct {v6, v3, p3}, Lcom/android/server/supl/CSUPL_LP$2;-><init>(Lcom/android/server/supl/TimerAlertDialog;I)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "Deny"

    new-instance v6, Lcom/android/server/supl/CSUPL_LP$1;

    invoke-direct {v6, v3, p3}, Lcom/android/server/supl/CSUPL_LP$1;-><init>(Lcom/android/server/supl/TimerAlertDialog;I)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 524
    new-instance v4, Lcom/android/server/supl/CSUPL_LP$3;

    invoke-direct {v4, v3, p0, p3}, Lcom/android/server/supl/CSUPL_LP$3;-><init>(Lcom/android/server/supl/TimerAlertDialog;ZI)V

    invoke-virtual {v3, v4}, Lcom/android/server/supl/TimerAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 581
    :goto_0
    const-string v4, "TimerAlertDialog: show()"

    invoke-static {v4}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 583
    return-void

    .line 550
    :cond_0
    const-string v4, "showSUPLInitDialog: No Verification"

    invoke-static {v4}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 551
    const-string v4, "SUPL Information!"

    invoke-virtual {v3, v4}, Lcom/android/server/supl/TimerAlertDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SUPL INIT message received! \nRequestor Id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Client Name  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "OK"

    new-instance v6, Lcom/android/server/supl/CSUPL_LP$4;

    invoke-direct {v6, v3, p3}, Lcom/android/server/supl/CSUPL_LP$4;-><init>(Lcom/android/server/supl/TimerAlertDialog;I)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 570
    const-string v4, "showSUPLInitDialog: No Verification, after Button OK"

    invoke-static {v4}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 572
    new-instance v4, Lcom/android/server/supl/CSUPL_LP$5;

    invoke-direct {v4}, Lcom/android/server/supl/CSUPL_LP$5;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/server/supl/TimerAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public static showSUPLInitDialog(Z[BI[BIII)V
    .locals 6
    .parameter "verification"
    .parameter "requestorId"
    .parameter "encId"
    .parameter "clientName"
    .parameter "encCn"
    .parameter "sessionId"
    .parameter "timeout"

    .prologue
    .line 431
    const-string v4, "+showSUPLInitDialog"

    invoke-static {v4}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 432
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showSUPLInitDialog:verification="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 433
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showSUPLInitDialog:requestorId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 434
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showSUPLInitDialog:clientName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 435
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showSUPLInitDialog:sessionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showSUPLInitDialog:timeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 438
    const-string v3, "Empty"

    .line 439
    .local v3, reqId:Ljava/lang/String;
    const-string v1, "Empty"

    .line 440
    .local v1, clNeme:Ljava/lang/String;
    const/16 v2, 0x3a98

    .line 442
    .local v2, notificTimeOut:I
    if-lez p6, :cond_0

    const v4, 0xf4240

    if-ge p6, v4, :cond_0

    .line 444
    move v2, p6

    .line 447
    :cond_0
    if-eqz p1, :cond_1

    array-length v4, p1

    if-eqz v4, :cond_1

    .line 449
    new-instance v3, Ljava/lang/String;

    .end local v3           #reqId:Ljava/lang/String;
    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    .line 452
    .restart local v3       #reqId:Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_2

    array-length v4, p3

    if-eqz v4, :cond_2

    .line 454
    new-instance v1, Ljava/lang/String;

    .end local v1           #clNeme:Ljava/lang/String;
    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    .line 458
    .restart local v1       #clNeme:Ljava/lang/String;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.supl.msg"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .local v0, MsgIntent:Landroid/content/Intent;
    const-string v4, "reqId"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const-string v4, "clNeme"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    const-string v4, "verification"

    invoke-virtual {v0, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 462
    const-string v4, "sessionId"

    invoke-virtual {v0, v4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 463
    const-string v4, "timeout"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 465
    const-string v4, "showSUPLInitDialog: sendBroadcast"

    invoke-static {v4}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 466
    sget-object v4, Lcom/android/server/supl/CSUPL_LP;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 467
    return-void
.end method

.method public static update(Landroid/content/Intent;)V
    .locals 26
    .parameter "intent"

    .prologue
    .line 117
    const-string v23, "CSUPL: +update"

    invoke-static/range {v23 .. v23}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 124
    const-string v23, "Action=DATA_SMS_ACTION"

    invoke-static/range {v23 .. v23}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 125
    sget-boolean v23, Lcom/android/server/supl/CSUPL_LP;->mHandleSMS:Z

    if-nez v23, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    .line 130
    .local v21, uri:Landroid/net/Uri;
    if-eqz v21, :cond_2

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getPort()I

    move-result v16

    .line 133
    .local v16, port:I
    const/16 v23, 0x1c6b

    move/from16 v0, v16

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 135
    invoke-static/range {p0 .. p0}, Lcom/android/server/supl/CSUPL_LP;->getSmsBodyFromIntent(Landroid/content/Intent;)[B

    move-result-object v11

    .line 136
    .local v11, body:[B
    invoke-static {v11}, Lcom/android/server/supl/CSUPL_LP;->PostBodyToQueue([B)Z

    .line 137
    sget-object v23, Lcom/android/server/supl/CSUPL_LP;->mContext:Landroid/content/Context;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "CSUPL_LP!\nsendSMS: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    array-length v0, v11

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 143
    .end local v11           #body:[B
    .end local v16           #port:I
    .end local v21           #uri:Landroid/net/Uri;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 145
    const-string v23, "Action=WAP_PUSH_RECEIVED_ACTION"

    invoke-static/range {v23 .. v23}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 146
    sget-boolean v23, Lcom/android/server/supl/CSUPL_LP;->mHandleWAP:Z

    if-nez v23, :cond_3

    .line 148
    const-string v23, "WAP_PUSH_RECEIVED_ACTION DISABLED"

    invoke-static/range {v23 .. v23}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_3
    const-string v23, "header"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v23

    check-cast v23, [B

    move-object/from16 v9, v23

    check-cast v9, [B

    .line 156
    .local v9, WapHeader:[B
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    array-length v0, v9

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v13, v0, :cond_4

    .line 158
    aget-byte v23, v9, v13

    move/from16 v0, v23

    and-int/lit16 v14, v0, 0xff

    .line 159
    .local v14, j:I
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "WapHeader["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]=byte["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget-byte v24, v9, v13

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "int["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 156
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 164
    .end local v14           #j:I
    :cond_4
    const/16 v23, 0x20

    move/from16 v0, v23

    new-array v10, v0, [B

    .line 168
    .local v10, bAppId:[B
    const/4 v13, 0x0

    :goto_2
    const/16 v23, 0x20

    move/from16 v0, v23

    if-ge v13, v0, :cond_5

    .line 170
    const/16 v23, 0x20

    aput-byte v23, v10, v13

    .line 168
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 174
    :cond_5
    const/4 v13, 0x0

    :goto_3
    array-length v0, v9

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v13, v0, :cond_9

    .line 176
    aget-byte v23, v9, v13

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    const/16 v24, 0xaf

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 178
    array-length v0, v9

    move/from16 v23, v0

    sub-int v23, v23, v13

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_b

    .line 180
    const-string v23, "AppId: String"

    invoke-static/range {v23 .. v23}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 181
    add-int/lit8 v14, v13, 0x1

    .restart local v14       #j:I
    const/4 v15, 0x0

    .local v15, k:I
    :goto_4
    array-length v0, v9

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v14, v0, :cond_7

    .line 183
    aget-byte v23, v9, v14

    if-eqz v23, :cond_6

    .line 184
    aget-byte v23, v9, v14

    aput-byte v23, v10, v15

    .line 181
    :cond_6
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 189
    :cond_7
    const/4 v13, 0x0

    :goto_5
    array-length v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v13, v0, :cond_8

    .line 191
    aget-byte v23, v10, v13

    move/from16 v0, v23

    and-int/lit16 v14, v0, 0xff

    .line 192
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "bAppId["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]=byte["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget-byte v24, v10, v13

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "int["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 189
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 196
    :cond_8
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    .line 197
    .local v18, sAppId:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "sAppId=["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 198
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "sAppId=["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    const-string v24, "x-oma-application:ulp.ua"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 201
    const-string v23, "Valid AppId"

    invoke-static/range {v23 .. v23}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 235
    .end local v14           #j:I
    .end local v15           #k:I
    .end local v18           #sAppId:Ljava/lang/String;
    :cond_9
    :goto_6
    const-string v23, "data"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v23

    check-cast v23, [B

    move-object/from16 v8, v23

    check-cast v8, [B

    .line 237
    .local v8, WapBody:[B
    const-string v23, "Action=WAP_PUSH_RECEIVED_ACTION, Got WAP Body"

    invoke-static/range {v23 .. v23}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 240
    const/4 v13, 0x0

    :goto_7
    array-length v0, v8

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v13, v0, :cond_e

    .line 242
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "WapBody["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]=["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget-byte v24, v8, v13

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 240
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 206
    .end local v8           #WapBody:[B
    .restart local v14       #j:I
    .restart local v15       #k:I
    .restart local v18       #sAppId:Ljava/lang/String;
    :cond_a
    const-string v23, "Error: Invalid AppId"

    invoke-static/range {v23 .. v23}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 215
    .end local v14           #j:I
    .end local v15           #k:I
    .end local v18           #sAppId:Ljava/lang/String;
    :cond_b
    const-string v23, "AppId: Hex"

    invoke-static/range {v23 .. v23}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 216
    add-int/lit8 v23, v13, 0x1

    aget-byte v23, v9, v23

    move/from16 v0, v23

    and-int/lit16 v4, v0, 0xff

    .line 217
    .local v4, AppId:I
    const/16 v23, 0x90

    move/from16 v0, v23

    if-eq v4, v0, :cond_c

    .line 219
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error: Invalid Hex AppId = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    :cond_c
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Hex AppId = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 174
    .end local v4           #AppId:I
    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 245
    .restart local v8       #WapBody:[B
    :cond_e
    if-eqz v8, :cond_f

    .line 247
    const-string v23, "Action=WAP_PUSH_RECEIVED_ACTION, PostBodyToQueue"

    invoke-static/range {v23 .. v23}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 248
    invoke-static {v8}, Lcom/android/server/supl/CSUPL_LP;->PostBodyToQueue([B)Z

    .line 254
    .end local v8           #WapBody:[B
    .end local v9           #WapHeader:[B
    .end local v10           #bAppId:[B
    .end local v13           #i:I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "android.supl.msg"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 256
    const-string v23, "Action=SUPL_MSG_ACTION"

    invoke-static/range {v23 .. v23}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "verification"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 267
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "verification"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    .line 276
    .local v22, verification:Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "reqId"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 278
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "reqId"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 287
    .local v17, reqId:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "clNeme"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 289
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "clNeme"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 298
    .local v12, clName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "sessionId"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 300
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "sessionId"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 309
    .local v19, sessionId:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "timeout"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 311
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "timeout"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 319
    .local v20, timeout:I
    move/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v12, v2, v3}, Lcom/android/server/supl/CSUPL_LP;->showSUPLInitDialog(ZLjava/lang/String;Ljava/lang/String;II)V

    .line 322
    .end local v12           #clName:Ljava/lang/String;
    .end local v17           #reqId:Ljava/lang/String;
    .end local v19           #sessionId:I
    .end local v20           #timeout:I
    .end local v22           #verification:Z
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "android.supl.SUPL_CONFIG"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 324
    const-string v23, "Action=SUPL_CONFIG_ACTION"

    invoke-static/range {v23 .. v23}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "StorePath"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 327
    .local v7, StorePath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "SLPHost"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 328
    .local v6, SLPHost:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "IsLocalhost"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 330
    .local v5, IsLocalhost:Ljava/lang/Boolean;
    if-eqz v7, :cond_11

    if-nez v6, :cond_17

    .line 332
    :cond_11
    const-string v23, "Error reconfigure."

    invoke-static/range {v23 .. v23}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    .end local v5           #IsLocalhost:Ljava/lang/Boolean;
    .end local v6           #SLPHost:Ljava/lang/String;
    .end local v7           #StorePath:Ljava/lang/String;
    :cond_12
    const-string v23, "Action=SUPL_MSG_ACTION: failed at verification ->return "

    invoke-static/range {v23 .. v23}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 282
    .restart local v22       #verification:Z
    :cond_13
    const-string v23, "Action=SUPL_MSG_ACTION: failed at reqId ->return "

    invoke-static/range {v23 .. v23}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 293
    .restart local v17       #reqId:Ljava/lang/String;
    :cond_14
    const-string v23, "Action=SUPL_MSG_ACTION: failed at clNeme ->return "

    invoke-static/range {v23 .. v23}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 304
    .restart local v12       #clName:Ljava/lang/String;
    :cond_15
    const-string v23, "Action=SUPL_MSG_ACTION: failed at sessionId ->return "

    invoke-static/range {v23 .. v23}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 315
    .restart local v19       #sessionId:I
    :cond_16
    const-string v23, "Action=SUPL_MSG_ACTION: failed at timeout ->return "

    invoke-static/range {v23 .. v23}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 336
    .end local v12           #clName:Ljava/lang/String;
    .end local v17           #reqId:Ljava/lang/String;
    .end local v19           #sessionId:I
    .end local v22           #verification:Z
    .restart local v5       #IsLocalhost:Ljava/lang/Boolean;
    .restart local v6       #SLPHost:Ljava/lang/String;
    .restart local v7       #StorePath:Ljava/lang/String;
    :cond_17
    invoke-static {v7}, Lcom/android/server/supl/CNet;->SetPath(Ljava/lang/String;)V

    .line 337
    const-string v23, "Socket"

    invoke-static/range {v23 .. v23}, Lcom/android/server/supl/CNet;->SetImpl(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    sput-boolean v23, Lcom/android/server/supl/CNet;->localhost:Z

    .line 339
    sput-object v6, Lcom/android/server/supl/CNet;->slphost_port:Ljava/lang/String;

    .line 340
    invoke-static {}, Lcom/android/server/supl/CNet;->ReInit()I

    goto/16 :goto_0
.end method

.method public static updateGSMInfo()V
    .locals 16

    .prologue
    const/4 v15, 0x2

    const/4 v14, 0x3

    const/4 v13, 0x1

    const/4 v12, -0x1

    .line 712
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, cid:Ljava/lang/Integer;
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .local v3, lac:Ljava/lang/Integer;
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .local v5, mcc:Ljava/lang/Integer;
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 713
    .local v6, mnc:Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 717
    .local v1, cidType:I
    sget-object v9, Lcom/android/server/supl/CSUPL_LP;->mContext:Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 719
    .local v8, tm:Landroid/telephony/TelephonyManager;
    const-string v9, "CSUPL_LP"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateGSMInfo : PHONE TYPE: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    if-ne v9, v13, :cond_3

    .line 723
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    .line 724
    .local v7, networkOperator:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 729
    const/4 v9, 0x0

    const/4 v10, 0x3

    :try_start_0
    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 730
    const-string v9, "CSUPL_LP"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MCC: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 732
    const-string v9, "CSUPL_LP"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MNC: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :cond_0
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    .line 738
    .local v4, location:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v4, :cond_1

    .line 740
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 741
    const-string v9, "CSUPL_LP"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cell ID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 743
    const-string v9, "CSUPL_LP"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LAC: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_1
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 754
    const-string v9, "CSUPL_LP"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateGSMInfo : NETWORK TYPE: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    if-eq v1, v14, :cond_2

    const/16 v9, 0x8

    if-eq v1, v9, :cond_2

    const/16 v9, 0xa

    if-eq v1, v9, :cond_2

    const/16 v9, 0x9

    if-eq v1, v9, :cond_2

    const/16 v9, 0xb

    if-ne v1, v9, :cond_5

    .line 761
    :cond_2
    invoke-static {v15}, Lcom/android/server/supl/CSUPL_LP;->SetCellType(I)V

    .line 762
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v12, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v12, :cond_4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v12, :cond_4

    .line 764
    const-string v9, "CSUPL_LP"

    const-string v10, "Updating UMTS/HSPA Cell Information"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/supl/CSUPL_LP;->SetCi(I)V

    .line 766
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/supl/CSUPL_LP;->SetMcc(I)V

    .line 767
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/supl/CSUPL_LP;->SetMnc(I)V

    .line 796
    .end local v4           #location:Landroid/telephony/gsm/GsmCellLocation;
    .end local v7           #networkOperator:Ljava/lang/String;
    :goto_0
    return-void

    .line 734
    .restart local v7       #networkOperator:Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 749
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .end local v7           #networkOperator:Ljava/lang/String;
    :cond_3
    const-string v9, "CSUPL_LP"

    const-string v10, "Phone type is not GSM or UMTS, Ignoring"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 771
    .restart local v4       #location:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7       #networkOperator:Ljava/lang/String;
    :cond_4
    const-string v9, "CSUPL_LP"

    const-string v10, "updateGSMInfo : Invalid UMTS/HSPA Cell Information"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 775
    :cond_5
    if-eq v1, v13, :cond_6

    if-ne v1, v15, :cond_8

    .line 778
    :cond_6
    invoke-static {v13}, Lcom/android/server/supl/CSUPL_LP;->SetCellType(I)V

    .line 779
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v12, :cond_7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v12, :cond_7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v12, :cond_7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v12, :cond_7

    .line 781
    const-string v9, "CSUPL_LP"

    const-string v10, "Updating GSM/GPRS Cell Information"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/supl/CSUPL_LP;->SetCi(I)V

    .line 783
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/supl/CSUPL_LP;->SetLac(I)V

    .line 784
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/supl/CSUPL_LP;->SetMcc(I)V

    .line 785
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/supl/CSUPL_LP;->SetMnc(I)V

    goto :goto_0

    .line 789
    :cond_7
    const-string v9, "CSUPL_LP"

    const-string v10, "updateGSMInfo : Invalid GSM/GPRS Cell Information"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 794
    :cond_8
    const-string v9, "CSUPL_LP"

    const-string v10, "Cell Information type is not GSM or UMTS, Ignoring"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
