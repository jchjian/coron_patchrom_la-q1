.class public abstract Lcom/android/internal/telephony/IccFileHandler;
.super Landroid/os/Handler;
.source "IccFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccFileHandler$UsimTlv;,
        Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;,
        Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;
    }
.end annotation


# static fields
.field private static final BCD_NUM_RECORD_LEN:I = 0xa

.field protected static final COMMAND_GET_RESPONSE:I = 0xc0

.field protected static final COMMAND_READ_BINARY:I = 0xb0

.field protected static final COMMAND_READ_RECORD:I = 0xb2

.field protected static final COMMAND_SEEK:I = 0xa2

.field protected static final COMMAND_UPDATE_BINARY:I = 0xd6

.field protected static final COMMAND_UPDATE_RECORD:I = 0xdc

.field protected static final DBG:Z = true

.field protected static final EF_TYPE_CYCLIC:I = 0x3

.field protected static final EF_TYPE_LINEAR_FIXED:I = 0x1

.field protected static final EF_TYPE_TRANSPARENT:I = 0x0

.field protected static final EVENT_EXT1_LOAD_DONE:I = 0xc

.field protected static final EVENT_EXT1_UPDATE_DONE:I = 0xd

.field protected static final EVENT_GET_BINARY_SIZE_DONE:I = 0x4

.field protected static final EVENT_GET_EF_LINEAR_RECORD_SIZE_DONE:I = 0x8

.field protected static final EVENT_GET_IMG_SIZE_DONE:I = 0xb

.field protected static final EVENT_GET_RECORD_SIZE_DONE:I = 0x6

.field protected static final EVENT_READ_BINARY_DONE:I = 0x5

.field protected static final EVENT_READ_ICON_DONE:I = 0xa

.field protected static final EVENT_READ_IMG_DONE:I = 0x9

.field protected static final EVENT_READ_RECORD_DONE:I = 0x7

.field private static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field private static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field private static final EXT_RECORD_TYPE_MASK:I = 0x3

.field protected static final GET_RESPONSE_EF_IMG_SIZE_BYTES:I = 0xa

.field protected static final GET_RESPONSE_EF_SIZE_BYTES:I = 0xf

.field private static final MAX_ANR_NUM:I = 0x3

.field private static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field private static final MAX_NUM_LEN:I = 0x28

.field protected static final READ_RECORD_MODE_ABSOLUTE:I = 0x4

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_1:I = 0x8

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_2:I = 0x9

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_3:I = 0xa

.field protected static final RESPONSE_DATA_FILE_ID_1:I = 0x4

.field protected static final RESPONSE_DATA_FILE_ID_2:I = 0x5

.field protected static final RESPONSE_DATA_FILE_SIZE_1:I = 0x2

.field protected static final RESPONSE_DATA_FILE_SIZE_2:I = 0x3

.field protected static final RESPONSE_DATA_FILE_STATUS:I = 0xb

.field protected static final RESPONSE_DATA_FILE_TYPE:I = 0x6

.field protected static final RESPONSE_DATA_LENGTH:I = 0xc

.field protected static final RESPONSE_DATA_RECORD_LENGTH:I = 0xe

.field protected static final RESPONSE_DATA_RFU_1:I = 0x0

.field protected static final RESPONSE_DATA_RFU_2:I = 0x1

.field protected static final RESPONSE_DATA_RFU_3:I = 0x7

.field protected static final RESPONSE_DATA_STRUCTURE:I = 0xd

.field protected static final RESPONSE_DATA_USIM_FCP_LEN:I = 0x1

.field protected static final RESPONSE_DATA_USIM_FCP_TAG:I = 0x0

.field protected static final RESPONSE_DATA_USIM_FILE_DESC_BYTE:I = 0x4

.field protected static final RESPONSE_DATA_USIM_FILE_DESC_LEN:I = 0x3

.field protected static final RESPONSE_DATA_USIM_FILE_DESC_TAG:I = 0x2

.field protected static final RESPONSE_DATA_USIM_FILE_SIZE_OFFSET_0:I = 0x2

.field protected static final RESPONSE_DATA_USIM_FILE_SIZE_OFFSET_1:I = 0x3

.field protected static final RESPONSE_DATA_USIM_RECORD_LEN_0:I = 0x6

.field protected static final RESPONSE_DATA_USIM_RECORD_LEN_1:I = 0x7

.field protected static final RESPONSE_DATA_USIM_RECORD_NUMBER:I = 0x8

.field protected static final TYPE_DF:I = 0x2

.field protected static final TYPE_EF:I = 0x4

.field protected static final TYPE_MF:I = 0x1

.field protected static final TYPE_RFU:I = 0x0

.field protected static final USIM_EF_TYPE_LINEAR_FIXED:B = 0x2t

.field protected static final USIM_EF_TYPE_TRANSPARENT:B = 0x1t

.field protected static final USIM_FCP_TEMPLATE_TAG:B = 0x62t

.field protected static final USIM_FILE_DESCRIPTOR_SHAREABLE_BIT:B = 0x40t

.field protected static final USIM_FILE_DESCRIPTOR_TAG:B = -0x7et

.field protected static final USIM_FILE_SIZE_TAG:B = -0x80t

.field private static s_AdnCountOnSim:I

.field private static s_AdnCountOnUim:I


# instance fields
.field public ext1FirstIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field ext1Records:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;",
            ">;"
        }
    .end annotation
.end field

.field protected mAid:Ljava/lang/String;

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mLock:Ljava/lang/Object;

.field protected final mParentCard:Lcom/android/internal/telephony/IccCard;

.field protected phone:Lcom/android/internal/telephony/PhoneBase;

.field public s_AdnFileId:I

.field public s_AdnRecordSize:I

.field public s_AnrFileId:I

.field public s_AnrRecordSize:I

.field public s_EmailFileId:I

.field public s_EmailRecordSize:I

.field public s_IapFileId:I

.field public s_IapRecordSize:I

.field protected s_SmsCountOnUim:I

.field public s_SneFileId:I

.field public s_SneRecordSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 126
    sput v0, Lcom/android/internal/telephony/IccFileHandler;->s_AdnCountOnUim:I

    .line 127
    sput v0, Lcom/android/internal/telephony/IccFileHandler;->s_AdnCountOnSim:I

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .parameter "card"
    .parameter "aid"
    .parameter "ci"

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccFileHandler;->s_SmsCountOnUim:I

    .line 133
    iput v1, p0, Lcom/android/internal/telephony/IccFileHandler;->s_AdnFileId:I

    .line 134
    iput v1, p0, Lcom/android/internal/telephony/IccFileHandler;->s_AnrFileId:I

    .line 135
    iput v1, p0, Lcom/android/internal/telephony/IccFileHandler;->s_EmailFileId:I

    .line 136
    iput v1, p0, Lcom/android/internal/telephony/IccFileHandler;->s_SneFileId:I

    .line 137
    iput v1, p0, Lcom/android/internal/telephony/IccFileHandler;->s_IapFileId:I

    .line 139
    const/16 v0, 0x1c

    iput v0, p0, Lcom/android/internal/telephony/IccFileHandler;->s_AdnRecordSize:I

    .line 140
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/internal/telephony/IccFileHandler;->s_AnrRecordSize:I

    .line 141
    const/16 v0, 0x2a

    iput v0, p0, Lcom/android/internal/telephony/IccFileHandler;->s_EmailRecordSize:I

    .line 142
    const/16 v0, 0x11

    iput v0, p0, Lcom/android/internal/telephony/IccFileHandler;->s_SneRecordSize:I

    .line 143
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/IccFileHandler;->s_IapRecordSize:I

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1FirstIndex:Ljava/util/HashMap;

    .line 147
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mLock:Ljava/lang/Object;

    .line 221
    iput-object p1, p0, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    .line 222
    iput-object p2, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    .line 223
    iput-object p3, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 224
    iget-object v0, p1, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iput-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 225
    return-void
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "response"
    .parameter "result"
    .parameter "ex"

    .prologue
    .line 427
    if-nez p1, :cond_0

    .line 434
    :goto_0
    return-void

    .line 431
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 433
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public appendExtNumber(Lcom/android/internal/telephony/AdnRecord;)V
    .locals 7
    .parameter "adn"

    .prologue
    const/16 v6, 0x28

    const/4 v5, 0x0

    .line 458
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->hasExtendedRecord()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    iget v4, p1, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    iget-object v2, v2, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->number:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 460
    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    iget v3, p1, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    iget v1, v2, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->nextIndex:I

    .line 461
    .local v1, nextExt:I
    const/4 v0, 0x0

    .line 462
    .local v0, extIndex:[I
    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1FirstIndex:Ljava/util/HashMap;

    iget v3, p1, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1FirstIndex:Ljava/util/HashMap;

    iget v3, p1, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #extIndex:[I
    check-cast v0, [I

    .line 463
    .restart local v0       #extIndex:[I
    :cond_0
    if-nez v0, :cond_1

    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 464
    :cond_1
    aput v1, v0, v5

    .line 465
    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1FirstIndex:Ljava/util/HashMap;

    iget v3, p1, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    :goto_0
    if-eqz v1, :cond_2

    const/16 v2, 0xff

    if-eq v1, v2, :cond_2

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    iget v4, p1, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    iget-object v2, v2, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->number:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 468
    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    iget v1, v2, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->nextIndex:I

    goto :goto_0

    .line 470
    :cond_2
    iget-object v2, p1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_3

    iget-object v2, p1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 472
    .end local v0           #extIndex:[I
    .end local v1           #nextExt:I
    :cond_3
    return-void
.end method

.method public appendExtNumberToAnr(Lcom/android/internal/telephony/AdnRecord;I)V
    .locals 7
    .parameter "adn"
    .parameter "index"

    .prologue
    const/16 v6, 0x28

    .line 475
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/AdnRecord;->hasAnrExtendedRecord(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    aget-object v4, v3, p2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:[I

    aget v5, v5, p2

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    iget-object v2, v2, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->number:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, p2

    .line 477
    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:[I

    aget v3, v3, p2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    iget v1, v2, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->nextIndex:I

    .line 478
    .local v1, nextExt:I
    const/4 v0, 0x0

    .line 479
    .local v0, extIndex:[I
    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1FirstIndex:Ljava/util/HashMap;

    iget v3, p1, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1FirstIndex:Ljava/util/HashMap;

    iget v3, p1, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #extIndex:[I
    check-cast v0, [I

    .line 480
    .restart local v0       #extIndex:[I
    :cond_0
    if-nez v0, :cond_1

    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 481
    :cond_1
    add-int/lit8 v2, p2, 0x1

    aput v1, v0, v2

    .line 482
    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1FirstIndex:Ljava/util/HashMap;

    iget v3, p1, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    :goto_0
    if-eqz v1, :cond_2

    const/16 v2, 0xff

    if-eq v1, v2, :cond_2

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    aget-object v4, v3, p2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:[I

    aget v5, v5, p2

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    iget-object v2, v2, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->number:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, p2

    .line 485
    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    iget v1, v2, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->nextIndex:I

    goto :goto_0

    .line 487
    :cond_2
    iget-object v2, p1, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_3

    iget-object v2, p1, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    aget-object v2, v2, p2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 489
    .end local v0           #extIndex:[I
    .end local v1           #nextExt:I
    :cond_3
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public getAdnCountOnSim()I
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    sget v0, Lcom/android/internal/telephony/IccFileHandler;->s_AdnCountOnUim:I

    .line 265
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/internal/telephony/IccFileHandler;->s_AdnCountOnSim:I

    goto :goto_0
.end method

.method protected getCommonIccEFPath(I)Ljava/lang/String;
    .locals 1
    .parameter "efid"

    .prologue
    .line 1284
    sparse-switch p1, :sswitch_data_0

    .line 1305
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1292
    :sswitch_0
    const-string v0, "3F007F10"

    goto :goto_0

    .line 1296
    :sswitch_1
    const-string v0, "3F00"

    goto :goto_0

    .line 1301
    :sswitch_2
    const-string v0, "3F007F105F3A"

    goto :goto_0

    .line 1303
    :sswitch_3
    const-string v0, "3F007F105F50"

    goto :goto_0

    .line 1284
    nop

    :sswitch_data_0
    .sparse-switch
        0x2f05 -> :sswitch_1
        0x2fe2 -> :sswitch_1
        0x4f20 -> :sswitch_3
        0x4f30 -> :sswitch_2
        0x4f3a -> :sswitch_2
        0x4f4a -> :sswitch_2
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_0
        0x6f4a -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4c -> :sswitch_0
    .end sparse-switch
.end method

.method public getCountSmsOnSim()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/android/internal/telephony/IccFileHandler;->s_SmsCountOnUim:I

    return v0
.end method

.method public getEFLinearRecordSize(ILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 315
    const/16 v0, 0x8

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 318
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 320
    return-void
.end method

.method protected abstract getEFPath(I)Ljava/lang/String;
.end method

.method public getEmptyExtNum()I
    .locals 5

    .prologue
    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 502
    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    iget v2, v2, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    iget v2, v2, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->len:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    iget-object v2, v2, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->number:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    iget-object v2, v2, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->number:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 501
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
    :cond_2
    const-string v2, "ICC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chenxiang getEmptyExtNum count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return v0
.end method

.method public getSpareExtId()I
    .locals 4

    .prologue
    .line 509
    const-string v1, "ICC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chenxiang getSpareExtId ext1Records.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 511
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    iget v1, v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    iget v1, v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->len:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    iget-object v1, v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->number:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    iget-object v1, v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->number:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 512
    :cond_0
    const-string v1, "ICC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chenxiang getSpareExtId return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    add-int/lit8 v1, v0, 0x1

    .line 516
    :goto_1
    return v1

    .line 510
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 516
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 37
    .parameter "msg"

    .prologue
    .line 749
    const/16 v32, 0x0

    .line 755
    .local v32, response:Landroid/os/Message;
    const/4 v9, 0x0

    .line 761
    .local v9, size:I
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1271
    :goto_0
    return-void

    .line 763
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 764
    .local v21, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 765
    .local v28, lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/internal/telephony/IccIoResult;

    .line 766
    .local v33, result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v32, v0

    .line 768
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v26

    .line 769
    .local v26, iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v26, :cond_0

    .line 770
    move-object/from16 v0, v33

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1264
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v26           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v28           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v33           #result:Lcom/android/internal/telephony/IccIoResult;
    :catch_0
    move-exception v23

    .line 1265
    .local v23, exc:Ljava/lang/Exception;
    :goto_1
    if-eqz v32, :cond_3e

    .line 1266
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 772
    .end local v23           #exc:Ljava/lang/Exception;
    .restart local v21       #ar:Landroid/os/AsyncResult;
    .restart local v26       #iccException:Lcom/android/internal/telephony/IccException;
    .restart local v28       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .restart local v33       #result:Lcom/android/internal/telephony/IccIoResult;
    :cond_0
    :try_start_1
    move-object/from16 v0, v33

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 776
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v26           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v28           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v33           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 777
    .restart local v21       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v32, v0

    .line 778
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/internal/telephony/IccIoResult;

    .line 780
    .restart local v33       #result:Lcom/android/internal/telephony/IccIoResult;
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v26

    .line 781
    .restart local v26       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v26, :cond_1

    .line 782
    move-object/from16 v0, v33

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 784
    :cond_1
    move-object/from16 v0, v33

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 788
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v26           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v33           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 789
    .restart local v21       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 790
    .restart local v28       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/internal/telephony/IccIoResult;

    .line 791
    .restart local v33       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v32, v0

    .line 793
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 794
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 798
    :cond_2
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v26

    .line 799
    .restart local v26       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v26, :cond_3

    .line 800
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 804
    :cond_3
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v22, v0

    .line 806
    .local v22, data:[B
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v31, v0

    .line 807
    .local v31, recordSize:[I
    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v31, v3

    .line 808
    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v31, v3

    .line 809
    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, v31, v3

    .line 810
    const/16 v3, 0x62

    const/4 v4, 0x0

    aget-byte v4, v22, v4

    if-ne v3, v4, :cond_6

    .line 811
    const/4 v3, 0x2

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;->decodeMany([BI)Ljava/util/List;

    move-result-object v36

    .line 812
    .local v36, tlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/IccFileHandler$UsimTlv;>;"
    const/16 v25, 0x0

    .local v25, i:I
    :goto_2
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v25

    if-ge v0, v3, :cond_9

    .line 813
    move-object/from16 v0, v36

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;

    .line 814
    .local v35, tlv:Lcom/android/internal/telephony/IccFileHandler$UsimTlv;
    const/16 v3, 0x80

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;->getTag()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 815
    const/4 v3, 0x1

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;->getValueIndex()I

    move-result v4

    aget-byte v4, v22, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;->getValueIndex()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, v22, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    aput v4, v31, v3

    .line 812
    :cond_4
    :goto_3
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 817
    :cond_5
    const/16 v3, 0x82

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;->getTag()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 818
    const/4 v3, 0x0

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;->getValueIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    aget-byte v4, v22, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;->getValueIndex()I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    aget-byte v6, v22, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    aput v4, v31, v3

    goto :goto_3

    .line 824
    .end local v25           #i:I
    .end local v35           #tlv:Lcom/android/internal/telephony/IccFileHandler$UsimTlv;
    .end local v36           #tlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/IccFileHandler$UsimTlv;>;"
    :cond_6
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v22, v4

    if-ne v3, v4, :cond_7

    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v22, v4

    if-eq v3, v4, :cond_8

    .line 826
    :cond_7
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 829
    :cond_8
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v31, v0

    .line 830
    const/4 v3, 0x0

    const/16 v4, 0xe

    aget-byte v4, v22, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v31, v3

    .line 831
    const/4 v3, 0x1

    const/4 v4, 0x2

    aget-byte v4, v22, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v6, 0x3

    aget-byte v6, v22, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    aput v4, v31, v3

    .line 834
    :cond_9
    const/4 v3, 0x0

    aget v3, v31, v3

    if-eqz v3, :cond_a

    .line 835
    const/4 v3, 0x2

    const/4 v4, 0x1

    aget v4, v31, v4

    const/4 v6, 0x0

    aget v6, v31, v6

    div-int/2addr v4, v6

    aput v4, v31, v3

    .line 837
    :cond_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 840
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v22           #data:[B
    .end local v26           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v28           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v31           #recordSize:[I
    .end local v33           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_3
    const-string v3, "ICC"

    const-string v4, "chenxiang EVENT_GET_RECORD_SIZE_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 842
    .restart local v21       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 843
    .restart local v28       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/internal/telephony/IccIoResult;

    .line 844
    .restart local v33       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v32, v0

    .line 846
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_b

    .line 847
    const-string v3, "ICC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chenxiang EVENT_GET_RECORD_SIZE_DONE ar.exception = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 852
    :cond_b
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v26

    .line 854
    .restart local v26       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v26, :cond_c

    .line 855
    const-string v3, "ICC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chenxiang EVENT_GET_RECORD_SIZE_DONE iccException = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 860
    :cond_c
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v22, v0

    .line 861
    .restart local v22       #data:[B
    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .line 862
    .local v5, fileid:I
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v30, v0

    .line 895
    .local v30, recordNum:I
    const/16 v3, 0x62

    const/4 v4, 0x0

    aget-byte v4, v22, v4

    if-ne v3, v4, :cond_14

    .line 896
    const/4 v3, 0x2

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;->decodeMany([BI)Ljava/util/List;

    move-result-object v36

    .line 897
    .restart local v36       #tlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/IccFileHandler$UsimTlv;>;"
    const/16 v25, 0x0

    .restart local v25       #i:I
    :goto_4
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v25

    if-ge v0, v3, :cond_f

    .line 898
    move-object/from16 v0, v36

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;

    .line 899
    .restart local v35       #tlv:Lcom/android/internal/telephony/IccFileHandler$UsimTlv;
    const/16 v3, 0x80

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;->getTag()I

    move-result v4

    if-ne v3, v4, :cond_e

    .line 900
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;->getValueIndex()I

    move-result v3

    aget-byte v3, v22, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;->getValueIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, v22, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 897
    :cond_d
    :goto_5
    add-int/lit8 v25, v25, 0x1

    goto :goto_4

    .line 902
    :cond_e
    const/16 v3, 0x82

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;->getTag()I

    move-result v4

    if-ne v3, v4, :cond_d

    .line 903
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;->getValueIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, v22, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;->getValueIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, v22, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    move-object/from16 v0, v28

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .end local v35           #tlv:Lcom/android/internal/telephony/IccFileHandler$UsimTlv;
    :cond_f
    move/from16 v34, v9

    .line 921
    .end local v9           #size:I
    .end local v25           #i:I
    .end local v36           #tlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/IccFileHandler$UsimTlv;>;"
    .local v34, size:I
    :goto_6
    :try_start_2
    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    div-int v3, v34, v3

    move-object/from16 v0, v28

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    .line 922
    const-string v3, "ICC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chenxiang EVENT_GET_RECORD_SIZE_DONE fileid = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const-string v3, "ICC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chenxiang EVENT_GET_RECORD_SIZE_DONE lc.recordSize = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget v6, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", size = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", lc.countRecords = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget v6, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/16 v3, 0x6f3c

    if-ne v5, v3, :cond_10

    .line 927
    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler;->s_SmsCountOnUim:I

    .line 932
    :cond_10
    const/16 v3, 0x6f3a

    if-ne v5, v3, :cond_11

    .line 934
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDMA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 936
    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    sput v3, Lcom/android/internal/telephony/IccFileHandler;->s_AdnCountOnUim:I

    .line 946
    :cond_11
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler;->s_AdnFileId:I

    if-ne v5, v3, :cond_18

    if-eqz v5, :cond_18

    .line 947
    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler;->s_AdnRecordSize:I

    .line 958
    const-string v3, "ICC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chenxiang EVENT_GET_RECORD_SIZE_DONE s_AdnCountOnSim = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lcom/android/internal/telephony/IccFileHandler;->s_AdnCountOnSim:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    const-string v3, "ICC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chenxiang EVENT_GET_RECORD_SIZE_DONE s_AdnRecordSize = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/IccFileHandler;->s_AdnRecordSize:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_12
    :goto_8
    move-object/from16 v0, v28

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-eqz v3, :cond_13

    .line 976
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v28

    iput-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 979
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb2

    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .end local v5           #fileid:I
    move-object/from16 v0, v28

    iget v6, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v28

    iget v7, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v8, 0x4

    move-object/from16 v0, v28

    iget v9, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    const/4 v13, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v9, v34

    .line 984
    .end local v34           #size:I
    .restart local v9       #size:I
    goto/16 :goto_0

    .line 908
    .restart local v5       #fileid:I
    :cond_14
    const/4 v3, 0x4

    const/4 v4, 0x6

    :try_start_3
    aget-byte v4, v22, v4

    if-eq v3, v4, :cond_15

    .line 909
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 912
    :cond_15
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v22, v4

    if-eq v3, v4, :cond_16

    .line 913
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 916
    :cond_16
    const/16 v3, 0xe

    aget-byte v3, v22, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v28

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 918
    const/4 v3, 0x2

    aget-byte v3, v22, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v22, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    move/from16 v34, v9

    .end local v9           #size:I
    .restart local v34       #size:I
    goto/16 :goto_6

    .line 940
    :cond_17
    :try_start_4
    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    sput v3, Lcom/android/internal/telephony/IccFileHandler;->s_AdnCountOnSim:I

    goto/16 :goto_7

    .line 1264
    .end local v5           #fileid:I
    :catch_1
    move-exception v23

    move/from16 v9, v34

    .end local v34           #size:I
    .restart local v9       #size:I
    goto/16 :goto_1

    .line 960
    .end local v9           #size:I
    .restart local v5       #fileid:I
    .restart local v34       #size:I
    :cond_18
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler;->s_AnrFileId:I

    if-ne v5, v3, :cond_19

    if-eqz v5, :cond_19

    .line 961
    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler;->s_AnrRecordSize:I

    .line 962
    const-string v3, "ICC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chenxiang EVENT_GET_RECORD_SIZE_DONE s_AnrRecordSize = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/IccFileHandler;->s_AnrRecordSize:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 963
    :cond_19
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler;->s_EmailFileId:I

    if-ne v5, v3, :cond_1a

    if-eqz v5, :cond_1a

    .line 964
    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler;->s_EmailRecordSize:I

    .line 965
    const-string v3, "ICC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chenxiang EVENT_GET_RECORD_SIZE_DONE s_EmailRecordSize = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/IccFileHandler;->s_EmailRecordSize:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 966
    :cond_1a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler;->s_SneFileId:I

    if-ne v5, v3, :cond_1b

    if-eqz v5, :cond_1b

    .line 967
    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler;->s_SneRecordSize:I

    .line 968
    const-string v3, "ICC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chenxiang EVENT_GET_RECORD_SIZE_DONE s_SneRecordSize = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/IccFileHandler;->s_SneRecordSize:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 969
    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler;->s_IapFileId:I

    if-ne v5, v3, :cond_12

    if-eqz v5, :cond_12

    .line 970
    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler;->s_IapRecordSize:I

    .line 971
    const-string v3, "ICC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chenxiang EVENT_GET_RECORD_SIZE_DONE s_IapRecordSize = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/IccFileHandler;->s_IapRecordSize:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_8

    .line 986
    .end local v5           #fileid:I
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v22           #data:[B
    .end local v26           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v28           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v30           #recordNum:I
    .end local v33           #result:Lcom/android/internal/telephony/IccIoResult;
    .end local v34           #size:I
    .restart local v9       #size:I
    :pswitch_4
    :try_start_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 987
    .restart local v21       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 988
    .restart local v28       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/internal/telephony/IccIoResult;

    .line 989
    .restart local v33       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v32, v0

    .line 991
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1c

    .line 992
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 996
    :cond_1c
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v26

    .line 998
    .restart local v26       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v26, :cond_1d

    .line 999
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1003
    :cond_1d
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v22, v0

    .line 1004
    .restart local v22       #data:[B
    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .line 1005
    .restart local v5       #fileid:I
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v30, v0

    .line 1006
    .restart local v30       #recordNum:I
    const/16 v3, 0x62

    const/4 v4, 0x0

    aget-byte v4, v22, v4

    if-ne v3, v4, :cond_21

    .line 1007
    const/4 v3, 0x2

    aget-byte v3, v22, v3

    const/16 v4, -0x7e

    if-eq v3, v4, :cond_1e

    .line 1008
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1010
    :cond_1e
    const/4 v3, 0x4

    aget-byte v3, v22, v3

    and-int/lit8 v3, v3, -0x41

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1f

    .line 1011
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1014
    :cond_1f
    const/4 v3, 0x6

    aget-byte v3, v22, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x7

    aget-byte v4, v22, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    move-object/from16 v0, v28

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 1017
    const/16 v3, 0x8

    aget-byte v3, v22, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v28

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move/from16 v34, v9

    .line 1036
    .end local v9           #size:I
    .restart local v34       #size:I
    :goto_9
    :try_start_6
    move-object/from16 v0, v28

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-eqz v3, :cond_20

    .line 1037
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v28

    iput-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 1040
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb2

    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .end local v5           #fileid:I
    move-object/from16 v0, v28

    iget v6, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v28

    iget v7, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v8, 0x4

    move-object/from16 v0, v28

    iget v9, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    const/4 v13, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move/from16 v9, v34

    .line 1045
    .end local v34           #size:I
    .restart local v9       #size:I
    goto/16 :goto_0

    .line 1020
    .restart local v5       #fileid:I
    :cond_21
    const/4 v3, 0x4

    const/4 v4, 0x6

    :try_start_7
    aget-byte v4, v22, v4

    if-eq v3, v4, :cond_22

    .line 1021
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1024
    :cond_22
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v22, v4

    if-eq v3, v4, :cond_23

    .line 1025
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1028
    :cond_23
    const/16 v3, 0xe

    aget-byte v3, v22, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v28

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 1030
    const/4 v3, 0x2

    aget-byte v3, v22, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v22, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 1033
    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    div-int v3, v9, v3

    move-object/from16 v0, v28

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    move/from16 v34, v9

    .end local v9           #size:I
    .restart local v34       #size:I
    goto/16 :goto_9

    .line 1047
    .end local v5           #fileid:I
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v22           #data:[B
    .end local v26           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v28           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v30           #recordNum:I
    .end local v33           #result:Lcom/android/internal/telephony/IccIoResult;
    .end local v34           #size:I
    .restart local v9       #size:I
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 1048
    .restart local v21       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v32, v0

    .line 1049
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/internal/telephony/IccIoResult;

    .line 1051
    .restart local v33       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_24

    .line 1052
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1056
    :cond_24
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v26

    .line 1058
    .restart local v26       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v26, :cond_25

    .line 1059
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1063
    :cond_25
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v22, v0

    .line 1065
    .restart local v22       #data:[B
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 1067
    .restart local v5       #fileid:I
    const/16 v3, 0x62

    const/4 v4, 0x0

    aget-byte v4, v22, v4

    if-ne v3, v4, :cond_2a

    .line 1068
    const/16 v27, 0x2

    .line 1069
    .local v27, index:I
    const/4 v3, 0x2

    aget-byte v3, v22, v3

    const/16 v4, -0x7e

    if-eq v3, v4, :cond_26

    .line 1070
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1072
    :cond_26
    const/4 v3, 0x4

    aget-byte v3, v22, v3

    and-int/lit8 v3, v3, -0x41

    const/4 v4, 0x1

    if-eq v3, v4, :cond_27

    .line 1073
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1075
    :cond_27
    :goto_a
    aget-byte v3, v22, v27

    const/16 v4, -0x80

    if-eq v3, v4, :cond_28

    const/4 v3, 0x1

    aget-byte v3, v22, v3

    move/from16 v0, v27

    if-ge v0, v3, :cond_28

    .line 1077
    add-int/lit8 v3, v27, 0x1

    aget-byte v3, v22, v3

    add-int/lit8 v3, v3, 0x2

    add-int v27, v27, v3

    goto :goto_a

    .line 1079
    :cond_28
    aget-byte v3, v22, v27

    const/16 v4, -0x80

    if-ne v3, v4, :cond_29

    .line 1081
    add-int/lit8 v3, v27, 0x2

    aget-byte v3, v22, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v27, 0x3

    aget-byte v4, v22, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 1103
    .end local v27           #index:I
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    const/4 v13, 0x5

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v13, v5, v14, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1086
    .restart local v27       #index:I
    :cond_29
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1091
    .end local v27           #index:I
    :cond_2a
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v22, v4

    if-eq v3, v4, :cond_2b

    .line 1092
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1095
    :cond_2b
    const/16 v3, 0xd

    aget-byte v3, v22, v3

    if-eqz v3, :cond_2c

    .line 1096
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1099
    :cond_2c
    const/4 v3, 0x2

    aget-byte v3, v22, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v22, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    goto :goto_b

    .line 1111
    .end local v5           #fileid:I
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v22           #data:[B
    .end local v26           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v33           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 1112
    .restart local v21       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 1113
    .restart local v28       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/internal/telephony/IccIoResult;

    .line 1114
    .restart local v33       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v32, v0

    .line 1116
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_30

    .line 1118
    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->resendCount:I

    if-nez v3, :cond_2d

    .line 1120
    const-string v3, "ICC"

    const-string v4, "chenxiang EVENT_READ_RECORD_DONE retry"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0xb2

    move-object/from16 v0, v28

    iget v12, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v28

    iget v14, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v15, 0x4

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v10 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1126
    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->resendCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v28

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->resendCount:I

    goto/16 :goto_0

    .line 1131
    :cond_2d
    move-object/from16 v0, v28

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-nez v3, :cond_2e

    .line 1132
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1148
    :goto_c
    const/4 v3, 0x0

    move-object/from16 v0, v28

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->resendCount:I

    goto/16 :goto_0

    .line 1136
    :cond_2e
    const-string v3, "ICC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chenxiang EVENT_READ_RECORD_DONE recordNum = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget v6, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget v6, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",  ar.exception = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v28

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    .line 1138
    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    if-le v3, v4, :cond_2f

    .line 1139
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 1141
    :cond_2f
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0xb2

    move-object/from16 v0, v28

    iget v12, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v28

    iget v14, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v15, 0x4

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v10 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_c

    .line 1153
    :cond_30
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v26

    .line 1155
    .restart local v26       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v26, :cond_34

    .line 1156
    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->resendCount:I

    if-nez v3, :cond_31

    .line 1158
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0xb2

    move-object/from16 v0, v28

    iget v12, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v28

    iget v14, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v15, 0x4

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v10 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1163
    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->resendCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v28

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->resendCount:I

    goto/16 :goto_0

    .line 1168
    :cond_31
    move-object/from16 v0, v28

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-nez v3, :cond_32

    .line 1169
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1185
    :goto_d
    const/4 v3, 0x0

    move-object/from16 v0, v28

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->resendCount:I

    goto/16 :goto_0

    .line 1173
    :cond_32
    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v28

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    .line 1175
    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    if-le v3, v4, :cond_33

    .line 1176
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 1178
    :cond_33
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0xb2

    move-object/from16 v0, v28

    iget v12, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v28

    iget v14, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v15, 0x4

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v10 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_d

    .line 1190
    :cond_34
    move-object/from16 v0, v28

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-nez v3, :cond_35

    .line 1191
    move-object/from16 v0, v33

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1193
    :cond_35
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1195
    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v28

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    .line 1197
    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    if-le v3, v4, :cond_36

    .line 1198
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1200
    :cond_36
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0xb2

    move-object/from16 v0, v28

    iget v12, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v28

    iget v14, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v15, 0x4

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v10 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1211
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v26           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v28           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v33           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 1212
    .restart local v21       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v32, v0

    .line 1213
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/internal/telephony/IccIoResult;

    .line 1215
    .restart local v33       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_37

    .line 1216
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1220
    :cond_37
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v26

    .line 1222
    .restart local v26       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v26, :cond_38

    .line 1223
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1227
    :cond_38
    move-object/from16 v0, v33

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1231
    .end local v21           #ar:Landroid/os/AsyncResult;
    .end local v26           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v33           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_8
    const-string v3, "ICC"

    const-string v4, "chenxiang Loading EXT1 records done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 1233
    .restart local v21       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3c

    .line 1234
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_39

    const-string v3, "ICC"

    const-string v4, "chenxiang EVENT_EXT1_LOAD_DONE result == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :cond_39
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Ljava/util/ArrayList;

    .line 1236
    .local v29, rawExt1Records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    if-nez v3, :cond_3a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    .line 1237
    :cond_3a
    const-string v3, "ICC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chenxiang EVENT_EXT1_LOAD_DONE ext1Records add rawExt1Records.size = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    const/16 v25, 0x0

    .restart local v25       #i:I
    :goto_e
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v25

    if-ge v0, v3, :cond_3b

    .line 1239
    new-instance v24, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;-><init>(Lcom/android/internal/telephony/IccFileHandler;[B)V

    .line 1240
    .local v24, ext1Rec:Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    add-int/lit8 v25, v25, 0x1

    goto :goto_e

    .line 1242
    .end local v24           #ext1Rec:Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;
    :cond_3b
    const-string v3, "ICC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chenxiang EVENT_EXT1_LOAD_DONE ext1Records add ext1Records.size = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    .end local v25           #i:I
    .end local v29           #rawExt1Records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1249
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1250
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v3

    .line 1245
    :cond_3c
    const-string v3, "ICC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chenxiang EVENT_EXT1_LOAD_DONE exception "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1254
    .end local v21           #ar:Landroid/os/AsyncResult;
    :pswitch_9
    const-string v3, "ICC"

    const-string v4, "chenxiang update EXT1 records done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 1256
    .restart local v21       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3d

    .line 1257
    const-string v3, "ICC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chenxiang EVENT_EXT1_UPDATE_DONE exception "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 1261
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1262
    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 1268
    .end local v21           #ar:Landroid/os/AsyncResult;
    .restart local v23       #exc:Ljava/lang/Exception;
    :cond_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uncaught exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 761
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public isExtLoaded()Z
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 493
    const/4 v0, 0x0

    .line 495
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadEFImgLinearFixed(ILandroid/os/Message;)V
    .locals 11
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x4f20

    .line 293
    const/16 v0, 0x9

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 298
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const-string v3, "3F007F105F50"

    const/4 v5, 0x4

    const/16 v6, 0xa

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v4, p1

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 303
    return-void
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 12
    .parameter "fileid"
    .parameter "highOffset"
    .parameter "lowOffset"
    .parameter "length"
    .parameter "onLoaded"

    .prologue
    .line 386
    const/16 v1, 0xa

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 389
    .local v11, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xb0

    const-string v4, "img"

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v3, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 391
    return-void
.end method

.method public loadEFLinearFixed(IILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 243
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 247
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 249
    return-void
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 333
    const/16 v0, 0x6f3c

    if-ne p1, v0, :cond_0

    iput v2, p0, Lcom/android/internal/telephony/IccFileHandler;->s_SmsCountOnUim:I

    .line 337
    :cond_0
    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    sput v2, Lcom/android/internal/telephony/IccFileHandler;->s_AdnCountOnUim:I

    .line 349
    :cond_1
    :goto_0
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 352
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 354
    return-void

    .line 345
    .end local v10           #response:Landroid/os/Message;
    :cond_2
    sput v2, Lcom/android/internal/telephony/IccFileHandler;->s_AdnCountOnSim:I

    goto :goto_0
.end method

.method public loadEFTransparent(ILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 367
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v4, p2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 370
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 372
    return-void
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method public readExt1FileAndWait(I)V
    .locals 4
    .parameter "efId"

    .prologue
    .line 440
    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 441
    :try_start_0
    const-string v1, "ICC"

    const-string v3, "chenxiang readExt1FileAndWait 1"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    if-nez p1, :cond_0

    .line 443
    const-string v1, "ICC"

    const-string v3, "chenxiang readExt1FileAndWait efId == 0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    monitor-exit v2

    .line 455
    :goto_0
    return-void

    .line 446
    :cond_0
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 453
    :goto_1
    :try_start_2
    const-string v1, "ICC"

    const-string v3, "chenxiang readExt1FileAndWait 2"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "ICC"

    const-string v3, "Interrupted Exception in readExt1FileAndWait"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setAdnCountOnSim(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    sput p1, Lcom/android/internal/telephony/IccFileHandler;->s_AdnCountOnUim:I

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    sput p1, Lcom/android/internal/telephony/IccFileHandler;->s_AdnCountOnSim:I

    goto :goto_0
.end method

.method protected setAid(Ljava/lang/String;)V
    .locals 0
    .parameter "aid"

    .prologue
    .line 1367
    iput-object p1, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    .line 1368
    return-void
.end method

.method public updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "data"
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xdc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    array-length v6, p3

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v4, p2

    move-object v8, p4

    move-object/from16 v10, p5

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 407
    return-void
.end method

.method public updateEFTransparent(I[BLandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x0

    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd6

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    array-length v6, p2

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v10, p3

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 418
    return-void
.end method

.method public updateExt1RecordAndWait(Lcom/android/internal/telephony/AdnRecord;IZI)V
    .locals 21
    .parameter "adn"
    .parameter "efId"
    .parameter "isAdn"
    .parameter "anrIndex"

    .prologue
    .line 520
    const/16 v16, 0x0

    .line 521
    .local v16, nextOldExt:I
    const/4 v3, 0x0

    .line 522
    .local v3, curExt:I
    const/4 v15, 0x0

    .line 523
    .local v15, nextCurExt:I
    const/16 v17, 0x0

    .line 524
    .local v17, pos:I
    const/16 v18, 0x0

    .line 527
    .local v18, strLen:I
    const/16 v1, 0xd

    new-array v4, v1, [B

    .line 529
    .local v4, data:[B
    const/4 v9, 0x0

    .line 530
    .local v9, ext1Index:[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1FirstIndex:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1FirstIndex:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #ext1Index:[I
    check-cast v9, [I

    .line 531
    .restart local v9       #ext1Index:[I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 532
    if-eqz p3, :cond_12

    .line 533
    :try_start_0
    const-string v1, "ICC"

    const-string v2, "chenxiang updateExt1RecordAndWait adn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/16 v14, 0x14

    .line 535
    .local v14, maxLen:I
    const/4 v11, 0x0

    .line 536
    .local v11, hasPlus:Z
    const/4 v13, 0x0

    .line 537
    .local v13, len:I
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 538
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    const/4 v11, 0x1

    .line 539
    :goto_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    .line 541
    :cond_1
    if-eqz v11, :cond_2

    add-int/lit8 v14, v14, 0x1

    .line 542
    :cond_2
    if-gt v13, v14, :cond_3

    if-eqz v9, :cond_25

    const/4 v1, 0x0

    aget v1, v9, v1

    if-eqz v1, :cond_25

    .line 543
    :cond_3
    const-string v1, "ICC"

    const-string v2, "chenxiang updateExt1RecordAndWait adn 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    if-eqz v9, :cond_6

    const/4 v1, 0x0

    aget v1, v9, v1

    if-eqz v1, :cond_6

    .line 546
    const/4 v1, 0x0

    aget v16, v9, v1

    .line 550
    :goto_1
    if-eqz v16, :cond_4

    const/16 v1, 0xff

    move/from16 v0, v16

    if-ne v0, v1, :cond_9

    .line 551
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccFileHandler;->getEmptyExtNum()I

    move-result v1

    if-lez v1, :cond_8

    .line 552
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 553
    if-nez v9, :cond_7

    .line 554
    const/4 v1, 0x4

    new-array v9, v1, [I

    .line 555
    const/16 v19, 0x0

    .local v19, w:I
    :goto_2
    const/4 v1, 0x4

    move/from16 v0, v19

    if-ge v0, v1, :cond_7

    const/4 v1, 0x0

    aput v1, v9, v19

    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 538
    .end local v19           #w:I
    :cond_5
    const/4 v11, 0x0

    goto :goto_0

    .line 548
    :cond_6
    const/16 v16, 0x0

    goto :goto_1

    .line 557
    :cond_7
    const/4 v1, 0x0

    aput v3, v9, v1

    .line 558
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1FirstIndex:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    :goto_3
    move/from16 v17, v14

    .line 572
    :goto_4
    if-eqz v3, :cond_25

    const/16 v1, 0xff

    if-eq v3, v1, :cond_25

    .line 573
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-byte v2, v4, v1

    .line 574
    const/4 v12, 0x1

    .local v12, j:I
    :goto_5
    const/16 v1, 0xd

    if-ge v12, v1, :cond_b

    const/4 v1, -0x1

    aput-byte v1, v4, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 560
    .end local v12           #j:I
    :cond_8
    const-string v1, "ICC"

    const-string v2, "chenxiang updateExt1RecordAndWait adn ext full"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v3, 0x0

    goto :goto_3

    .line 563
    :cond_9
    if-gt v13, v14, :cond_a

    .line 564
    move/from16 v3, v16

    .line 565
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v9, v1

    .line 566
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1FirstIndex:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 743
    .end local v11           #hasPlus:Z
    .end local v13           #len:I
    .end local v14           #maxLen:I
    :catchall_0
    move-exception v1

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 569
    .restart local v11       #hasPlus:Z
    .restart local v13       #len:I
    .restart local v14       #maxLen:I
    :cond_a
    move/from16 v3, v16

    goto :goto_3

    .line 575
    .restart local v12       #j:I
    :cond_b
    if-eqz v16, :cond_c

    const/16 v1, 0xff

    move/from16 v0, v16

    if-eq v0, v1, :cond_c

    .line 576
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    add-int/lit8 v2, v16, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    iget v0, v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->nextIndex:I

    move/from16 v16, v0

    .line 579
    :cond_c
    move/from16 v0, v17

    if-ge v0, v13, :cond_11

    .line 580
    const/4 v1, 0x0

    const/4 v2, 0x2

    aput-byte v2, v4, v1

    .line 581
    sub-int v18, v13, v17

    .line 582
    const/16 v1, 0x14

    move/from16 v0, v18

    if-le v0, v1, :cond_d

    const/16 v18, 0x14

    .line 583
    :cond_d
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    add-int v2, v17, v18

    move/from16 v0, v17

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 584
    .local v10, extString:Ljava/lang/String;
    const/16 v1, 0x50

    const/16 v2, 0x2c

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 585
    const/16 v1, 0x54

    const/16 v2, 0x3b

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 586
    const/16 v1, 0x70

    const/16 v2, 0x2c

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 587
    const/16 v1, 0x74

    const/16 v2, 0x3b

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 588
    const/16 v1, 0x57

    const/16 v2, 0x4e

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 589
    const/16 v1, 0x77

    const/16 v2, 0x4e

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 590
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v7

    .line 592
    .local v7, bcdNumber:[B
    const/4 v1, 0x0

    const/4 v2, 0x1

    array-length v5, v7

    invoke-static {v7, v1, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 593
    const/4 v1, 0x1

    array-length v2, v7

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    aput-byte v2, v4, v1

    .line 594
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    const/4 v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->type:I

    .line 595
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    array-length v2, v7

    iput v2, v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->len:I

    .line 596
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    iput-object v10, v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->number:Ljava/lang/String;

    .line 597
    add-int/lit8 v1, v17, 0x14

    if-ge v1, v13, :cond_10

    .line 598
    if-eqz v16, :cond_e

    const/16 v1, 0xff

    move/from16 v0, v16

    if-ne v0, v1, :cond_f

    .line 599
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccFileHandler;->getSpareExtId()I

    move-result v15

    .line 603
    :goto_6
    const/16 v1, 0xc

    int-to-byte v2, v15

    aput-byte v2, v4, v1

    .line 604
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    iput v15, v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->nextIndex:I

    .line 618
    .end local v7           #bcdNumber:[B
    .end local v10           #extString:Ljava/lang/String;
    :goto_7
    const-string v1, "ICC"

    const-string v2, "chenxiang updateExt1RecordAndWait adn 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const/4 v5, 0x0

    const/16 v1, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 627
    :goto_8
    move v3, v15

    .line 628
    add-int/lit8 v17, v17, 0x14

    goto/16 :goto_4

    .line 601
    .restart local v7       #bcdNumber:[B
    .restart local v10       #extString:Ljava/lang/String;
    :cond_f
    move/from16 v15, v16

    goto :goto_6

    .line 607
    :cond_10
    move/from16 v15, v16

    .line 608
    const/16 v1, 0xc

    const/4 v2, -0x1

    :try_start_3
    aput-byte v2, v4, v1

    .line 609
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->nextIndex:I

    goto :goto_7

    .line 612
    .end local v7           #bcdNumber:[B
    .end local v10           #extString:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->type:I

    .line 613
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->len:I

    .line 614
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->number:Ljava/lang/String;

    .line 615
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->nextIndex:I

    goto :goto_7

    .line 623
    :catch_0
    move-exception v8

    .line 624
    .local v8, e:Ljava/lang/InterruptedException;
    const-string v1, "ICC"

    const-string v2, "Interrupted Exception in updateAnrFileAndWait"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 632
    .end local v8           #e:Ljava/lang/InterruptedException;
    .end local v11           #hasPlus:Z
    .end local v12           #j:I
    .end local v13           #len:I
    .end local v14           #maxLen:I
    :cond_12
    const-string v1, "ICC"

    const-string v2, "chenxiang updateExt1RecordAndWait anr"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/16 v14, 0x14

    .line 635
    .restart local v14       #maxLen:I
    const/4 v11, 0x0

    .line 636
    .restart local v11       #hasPlus:Z
    const/4 v13, 0x0

    .line 637
    .restart local v13       #len:I
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    if-eqz v1, :cond_13

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    aget-object v1, v1, p4

    if-eqz v1, :cond_13

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    aget-object v1, v1, p4

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 638
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    aget-object v1, v1, p4

    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    const/4 v11, 0x1

    .line 639
    :goto_9
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    aget-object v1, v1, p4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    .line 641
    :cond_13
    if-eqz v11, :cond_14

    add-int/lit8 v14, v14, 0x1

    .line 642
    :cond_14
    if-gt v13, v14, :cond_15

    if-eqz v9, :cond_25

    add-int/lit8 v1, p4, 0x1

    aget v1, v9, v1

    if-eqz v1, :cond_25

    .line 644
    :cond_15
    if-eqz v9, :cond_19

    add-int/lit8 v1, p4, 0x1

    aget v1, v9, v1

    if-eqz v1, :cond_19

    .line 645
    add-int/lit8 v1, p4, 0x1

    aget v16, v9, v1

    .line 646
    const-string v1, "ICC"

    const-string v2, "chenxiang updateExt1RecordAndWait anr 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :goto_a
    if-eqz v16, :cond_16

    const/16 v1, 0xff

    move/from16 v0, v16

    if-ne v0, v1, :cond_1c

    .line 652
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccFileHandler;->getEmptyExtNum()I

    move-result v1

    if-lez v1, :cond_1b

    .line 653
    const-string v1, "ICC"

    const-string v2, "chenxiang updateExt1RecordAndWait anr 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:[I

    if-eqz v1, :cond_17

    .line 655
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:[I

    aget v3, v1, p4

    .line 656
    const-string v1, "ICC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chenxiang updateExt1RecordAndWait anr 4 curExt = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_17
    if-nez v9, :cond_1a

    .line 659
    const-string v1, "ICC"

    const-string v2, "chenxiang updateExt1RecordAndWait anr 5"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/4 v1, 0x4

    new-array v9, v1, [I

    .line 661
    const/16 v19, 0x0

    .restart local v19       #w:I
    :goto_b
    const/4 v1, 0x4

    move/from16 v0, v19

    if-ge v0, v1, :cond_1a

    const/4 v1, 0x0

    aput v1, v9, v19

    add-int/lit8 v19, v19, 0x1

    goto :goto_b

    .line 638
    .end local v19           #w:I
    :cond_18
    const/4 v11, 0x0

    goto :goto_9

    .line 648
    :cond_19
    const/16 v16, 0x0

    .line 649
    const-string v1, "ICC"

    const-string v2, "chenxiang updateExt1RecordAndWait anr 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 663
    :cond_1a
    add-int/lit8 v1, p4, 0x1

    aput v3, v9, v1

    .line 664
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1FirstIndex:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    const-string v1, "ICC"

    const-string v2, "chenxiang updateExt1RecordAndWait anr 6"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :goto_c
    move/from16 v17, v14

    .line 680
    const-string v1, "ICC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chenxiang updateExt1RecordAndWait anr 9 curExt = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :goto_d
    if-eqz v3, :cond_25

    const/16 v1, 0xff

    if-eq v3, v1, :cond_25

    .line 682
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-byte v2, v4, v1

    .line 683
    const/4 v12, 0x1

    .restart local v12       #j:I
    :goto_e
    const/16 v1, 0xd

    if-ge v12, v1, :cond_1e

    const/4 v1, -0x1

    aput-byte v1, v4, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 667
    .end local v12           #j:I
    :cond_1b
    const-string v1, "ICC"

    const-string v2, "chenxiang updateExt1RecordAndWait anr ext full"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const/4 v3, 0x0

    goto :goto_c

    .line 670
    :cond_1c
    if-gt v13, v14, :cond_1d

    .line 671
    const-string v1, "ICC"

    const-string v2, "chenxiang updateExt1RecordAndWait anr 7"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    move/from16 v3, v16

    .line 673
    add-int/lit8 v1, p4, 0x1

    const/4 v2, 0x0

    aput v2, v9, v1

    .line 674
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1FirstIndex:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 676
    :cond_1d
    const-string v1, "ICC"

    const-string v2, "chenxiang updateExt1RecordAndWait anr 8"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    move/from16 v3, v16

    goto :goto_c

    .line 684
    .restart local v12       #j:I
    :cond_1e
    if-eqz v16, :cond_1f

    const/16 v1, 0xff

    move/from16 v0, v16

    if-eq v0, v1, :cond_1f

    .line 685
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    add-int/lit8 v2, v16, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    iget v0, v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->nextIndex:I

    move/from16 v16, v0

    .line 688
    :cond_1f
    move/from16 v0, v17

    if-ge v0, v13, :cond_24

    .line 689
    const/4 v1, 0x0

    const/4 v2, 0x2

    aput-byte v2, v4, v1

    .line 690
    sub-int v18, v13, v17

    .line 691
    const/16 v1, 0x14

    move/from16 v0, v18

    if-le v0, v1, :cond_20

    const/16 v18, 0x14

    .line 692
    :cond_20
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    aget-object v1, v1, p4

    add-int v2, v17, v18

    move/from16 v0, v17

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 693
    .restart local v10       #extString:Ljava/lang/String;
    const/16 v1, 0x50

    const/16 v2, 0x2c

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 694
    const/16 v1, 0x54

    const/16 v2, 0x3b

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 695
    const/16 v1, 0x70

    const/16 v2, 0x2c

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 696
    const/16 v1, 0x74

    const/16 v2, 0x3b

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 697
    const/16 v1, 0x57

    const/16 v2, 0x4e

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 698
    const/16 v1, 0x77

    const/16 v2, 0x4e

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 699
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v7

    .line 701
    .restart local v7       #bcdNumber:[B
    const/4 v1, 0x0

    const/4 v2, 0x1

    array-length v5, v7

    invoke-static {v7, v1, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 702
    const/4 v1, 0x1

    array-length v2, v7

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    aput-byte v2, v4, v1

    .line 703
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    const/4 v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->type:I

    .line 704
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    array-length v2, v7

    iput v2, v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->len:I

    .line 705
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    iput-object v10, v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->number:Ljava/lang/String;

    .line 706
    add-int/lit8 v1, v17, 0x14

    if-ge v1, v13, :cond_23

    .line 707
    if-eqz v16, :cond_21

    const/16 v1, 0xff

    move/from16 v0, v16

    if-ne v0, v1, :cond_22

    .line 708
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccFileHandler;->getSpareExtId()I

    move-result v15

    .line 712
    :goto_f
    const/16 v1, 0xc

    int-to-byte v2, v15

    aput-byte v2, v4, v1

    .line 713
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    iput v15, v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->nextIndex:I

    .line 728
    .end local v7           #bcdNumber:[B
    .end local v10           #extString:Ljava/lang/String;
    :goto_10
    const-string v1, "ICC"

    const-string v2, "chenxiang updateExt1RecordAndWait anr 10"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/4 v5, 0x0

    const/16 v1, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 732
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 737
    :goto_11
    move v3, v15

    .line 738
    add-int/lit8 v17, v17, 0x14

    goto/16 :goto_d

    .line 710
    .restart local v7       #bcdNumber:[B
    .restart local v10       #extString:Ljava/lang/String;
    :cond_22
    move/from16 v15, v16

    goto :goto_f

    .line 716
    :cond_23
    move/from16 v15, v16

    .line 717
    const/16 v1, 0xc

    const/4 v2, -0x1

    :try_start_5
    aput-byte v2, v4, v1

    .line 718
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->nextIndex:I

    goto :goto_10

    .line 721
    .end local v7           #bcdNumber:[B
    .end local v10           #extString:Ljava/lang/String;
    :cond_24
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->type:I

    .line 722
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->len:I

    .line 723
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->number:Ljava/lang/String;

    .line 724
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccFileHandler;->ext1Records:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->nextIndex:I

    goto :goto_10

    .line 733
    :catch_1
    move-exception v8

    .line 734
    .restart local v8       #e:Ljava/lang/InterruptedException;
    const-string v1, "ICC"

    const-string v2, "Interrupted Exception in updateAnrFileAndWait"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 743
    .end local v8           #e:Ljava/lang/InterruptedException;
    .end local v12           #j:I
    :cond_25
    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 744
    return-void
.end method
