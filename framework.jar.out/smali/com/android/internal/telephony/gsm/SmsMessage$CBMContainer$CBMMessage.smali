.class public Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CBMMessage"
.end annotation


# instance fields
.field public mCurrentPages:I

.field public mMsgId:I

.field public mPages:[Ljava/lang/String;

.field public mTotalNumPages:I

.field final synthetic this$1:Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer;II)V
    .locals 4
    .parameter
    .parameter "totalNumPages"
    .parameter "msgId"

    .prologue
    const/16 v3, 0xf

    .line 1582
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->this$1:Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1583
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->mMsgId:I

    .line 1584
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->mPages:[Ljava/lang/String;

    .line 1585
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1586
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->mPages:[Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    aput-object v2, v1, v0

    .line 1585
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1587
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->mCurrentPages:I

    .line 1588
    iput p2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->mTotalNumPages:I

    .line 1589
    iput p3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->mMsgId:I

    .line 1591
    return-void
.end method


# virtual methods
.method public Cleanup(I)V
    .locals 3
    .parameter "totalNumPages"

    .prologue
    .line 1595
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 1596
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->mPages:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    .line 1595
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1597
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->mCurrentPages:I

    .line 1598
    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->mTotalNumPages:I

    .line 1600
    return-void
.end method

.method public ConcatPages()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1604
    const/4 v1, 0x0

    .line 1606
    .local v1, res:Ljava/lang/String;
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->mCurrentPages:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->mCurrentPages:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->mTotalNumPages:I

    if-ne v2, v3, :cond_1

    .line 1607
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->mPages:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 1608
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->mTotalNumPages:I

    if-ge v0, v2, :cond_0

    .line 1609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->mPages:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1608
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1611
    :cond_0
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CBMMessae:ConcatPages complete:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    .end local v0           #i:I
    :cond_1
    return-object v1
.end method

.method public addMessage(Ljava/lang/String;II)Z
    .locals 3
    .parameter "message"
    .parameter "page"
    .parameter "totalNumPages"

    .prologue
    .line 1618
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CBMMessae:addMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->mTotalNumPages:I

    if-eq p3, v0, :cond_0

    .line 1621
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CBMMessae:addMessage Cleanup() old:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->mTotalNumPages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->Cleanup(I)V

    .line 1625
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->mPages:[Ljava/lang/String;

    add-int/lit8 v1, p2, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1626
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->mCurrentPages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->mCurrentPages:I

    .line 1627
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CBMMessae:addMessage first at:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cur#:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->mCurrentPages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->mPages:[Ljava/lang/String;

    add-int/lit8 v1, p2, -0x1

    aput-object p1, v0, v1

    .line 1630
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->mCurrentPages:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->mTotalNumPages:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
