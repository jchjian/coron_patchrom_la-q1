.class Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CBMContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;
    }
.end annotation


# instance fields
.field private mMessages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SmsMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/SmsMessage;)V
    .locals 2
    .parameter

    .prologue
    .line 1637
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer;->this$0:Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1638
    const-string v0, "GSM"

    const-string v1, "Constructing  CBMContainer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer;->mMessages:Ljava/util/Vector;

    .line 1640
    return-void
.end method

.method private ConcatVector()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1644
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 1646
    .local v2, res:Ljava/lang/String;
    const-string v4, "GSM"

    const-string v5, "CBMContainer - ConcatVector()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer;->mMessages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;

    .line 1649
    .local v1, m:Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->ConcatPages()Ljava/lang/String;

    move-result-object v3

    .line 1650
    .local v3, tmp:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1651
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1652
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1655
    .end local v1           #m:Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;
    .end local v3           #tmp:Ljava/lang/String;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public declared-synchronized Dismiss()V
    .locals 3

    .prologue
    .line 1686
    monitor-enter p0

    :try_start_0
    const-string v0, "LOG_TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CBM container Dismis num in vector:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer;->mMessages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer;->mMessages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1690
    monitor-exit p0

    return-void

    .line 1686
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addMessage(Ljava/lang/String;III)Ljava/lang/String;
    .locals 7
    .parameter "message"
    .parameter "page"
    .parameter "totalNumPages"
    .parameter "msgId"

    .prologue
    .line 1661
    const/4 v2, 0x0

    .line 1663
    .local v2, mm:Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer;->mMessages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;

    .line 1666
    .local v1, m:Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;
    iget v4, v1, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->mMsgId:I

    if-ne v4, p4, :cond_0

    .line 1667
    move-object v2, v1

    .line 1672
    .end local v1           #m:Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;
    :cond_1
    if-nez v2, :cond_2

    .line 1673
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;

    .end local v2           #mm:Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;
    invoke-direct {v2, p0, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;-><init>(Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer;II)V

    .line 1674
    .restart local v2       #mm:Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer;->mMessages:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1677
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer$CBMMessage;->addMessage(Ljava/lang/String;II)Z

    move-result v3

    .line 1678
    .local v3, s:Z
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1679
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$CBMContainer;->ConcatVector()Ljava/lang/String;

    move-result-object v4

    .line 1681
    :goto_0
    return-object v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method
