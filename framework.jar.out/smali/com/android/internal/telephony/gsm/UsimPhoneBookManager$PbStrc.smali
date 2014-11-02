.class Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;
.super Ljava/lang/Object;
.source "UsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbStrc"
.end annotation


# instance fields
.field adnFileId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field adnFileSize:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field adnRecordSize:I

.field anrFileId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field anrFlags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field anrNum:I

.field anrRecordSize:I

.field emailFileId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field emailFlags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field emailNum:I

.field emailRecordSize:I

.field iapFileId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field iapRecordSize:I

.field pbrRecNum:I

.field recordNum:I

.field sneFileId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field sneFlags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field sneNum:I

.field sneRecordSize:I

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/HashMap;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1648
    .local p2, mFileIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1561
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->anrNum:I

    .line 1649
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->recordNum:I

    .line 1650
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->pbrRecNum:I

    .line 1652
    const/4 v1, 0x0

    .line 1653
    .local v1, efid:I
    const/16 v7, 0x1c

    iput v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->adnRecordSize:I

    .line 1654
    const/16 v7, 0xf

    iput v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->anrRecordSize:I

    .line 1655
    const/16 v7, 0x2a

    iput v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->emailRecordSize:I

    .line 1656
    const/16 v7, 0x11

    iput v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->sneRecordSize:I

    .line 1657
    const/4 v7, 0x5

    iput v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->iapRecordSize:I

    .line 1658
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->adnFileSize:Ljava/util/ArrayList;

    .line 1659
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->adnFileId:Ljava/util/ArrayList;

    .line 1660
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->anrFileId:Ljava/util/ArrayList;

    .line 1661
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->emailFileId:Ljava/util/ArrayList;

    .line 1662
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->sneFileId:Ljava/util/ArrayList;

    .line 1663
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->iapFileId:Ljava/util/ArrayList;

    .line 1664
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->anrFlags:Ljava/util/ArrayList;

    .line 1665
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->emailFlags:Ljava/util/ArrayList;

    .line 1666
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->sneFlags:Ljava/util/ArrayList;

    .line 1668
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chenxiang PbStrc pbrRecNum = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->pbrRecNum:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    invoke-static {p1, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 1669
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->pbrRecNum:I

    if-ge v5, v7, :cond_f

    .line 1670
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 1671
    .local v4, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chenxiang PbStrc fileIds = mFileIds.get("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ");"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    invoke-static {p1, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 1672
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1673
    const/4 v2, 0x0

    .line 1674
    .local v2, efid1:I
    const v7, 0xc000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1675
    const v7, 0xc000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1677
    :cond_0
    if-eqz v2, :cond_1

    .line 1678
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->adnFileId:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1679
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chenxiang PbStrc ADN add efid1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    invoke-static {p1, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 1683
    .end local v2           #efid1:I
    :cond_1
    const-string v7, "chenxiang PbStrc ANR"

    #calls: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    invoke-static {p1, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 1684
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->anrNum:I

    .line 1685
    const/4 v1, 0x0

    .line 1686
    const v7, 0xc400

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1687
    const v7, 0xc400

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1689
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1690
    .local v0, anrFileId1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 1691
    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->anrNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1692
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chenxiang PbStrc ANR add efid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    invoke-static {p1, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 1693
    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->anrNum:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->anrNum:I

    .line 1694
    const/4 v1, 0x0

    .line 1695
    const v7, 0xc400

    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->anrNum:I

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1696
    const v7, 0xc400

    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->anrNum:I

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 1699
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->anrFileId:Ljava/util/ArrayList;

    invoke-virtual {v7, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1700
    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->anrNum:I

    const/4 v8, 0x3

    if-le v7, v8, :cond_5

    const/4 v7, 0x3

    iput v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->anrNum:I

    .line 1702
    :cond_5
    const-string v7, "chenxiang PbStrc EMAIL"

    #calls: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    invoke-static {p1, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 1703
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->emailNum:I

    .line 1704
    const/4 v1, 0x0

    .line 1705
    const v7, 0xca00

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1706
    const v7, 0xca00

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1708
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1709
    .local v3, emailFileId1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7
    :goto_2
    if-eqz v1, :cond_8

    .line 1710
    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->emailNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1711
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chenxiang PbStrc EMAIL add efid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    invoke-static {p1, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 1712
    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->emailNum:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->emailNum:I

    .line 1713
    const/4 v1, 0x0

    .line 1714
    const v7, 0xca00

    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->emailNum:I

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1715
    const v7, 0xca00

    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->emailNum:I

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    .line 1718
    :cond_8
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->emailFileId:Ljava/util/ArrayList;

    invoke-virtual {v7, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1719
    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->emailNum:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_9

    const/4 v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->emailNum:I

    .line 1721
    :cond_9
    const-string v7, "chenxiang PbStrc SNE"

    #calls: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    invoke-static {p1, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 1722
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->sneNum:I

    .line 1723
    const/4 v1, 0x0

    .line 1724
    const v7, 0xc300

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1725
    const v7, 0xc300

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1727
    :cond_a
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1728
    .local v6, sneFileId1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_b
    :goto_3
    if-eqz v1, :cond_c

    .line 1729
    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->sneNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1730
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chenxiang PbStrc SNE add efid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    invoke-static {p1, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 1731
    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->sneNum:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->sneNum:I

    .line 1732
    const/4 v1, 0x0

    .line 1733
    const v7, 0xc300

    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->sneNum:I

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1734
    const v7, 0xc300

    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->sneNum:I

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    .line 1737
    :cond_c
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->sneFileId:Ljava/util/ArrayList;

    invoke-virtual {v7, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1738
    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->sneNum:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_d

    const/4 v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->sneNum:I

    .line 1740
    :cond_d
    const-string v7, "chenxiang PbStrc IAP"

    #calls: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    invoke-static {p1, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 1741
    const/4 v1, 0x0

    .line 1742
    const v7, 0xc100

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1743
    const v7, 0xc100

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1745
    :cond_e
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->iapFileId:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1669
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1748
    .end local v0           #anrFileId1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3           #emailFileId1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4           #fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6           #sneFileId1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_f
    return-void
.end method


# virtual methods
.method public getEmptyAnrNum()I
    .locals 3

    .prologue
    .line 1605
    const/4 v0, 0x0

    .line 1606
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->anrFlags:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1607
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->anrFlags:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1606
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1609
    :cond_1
    return v0
.end method

.method public getEmptyEmailNum()I
    .locals 3

    .prologue
    .line 1614
    const/4 v0, 0x0

    .line 1615
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->emailFlags:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1616
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->emailFlags:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1615
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1618
    :cond_1
    return v0
.end method

.method public getEmptySneNum()I
    .locals 3

    .prologue
    .line 1623
    const/4 v0, 0x0

    .line 1624
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->sneFlags:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1625
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->sneFlags:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1624
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1627
    :cond_1
    return v0
.end method

.method public getSpareAnrId()I
    .locals 2

    .prologue
    .line 1581
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->anrFlags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1582
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->anrFlags:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 1584
    :goto_1
    return v1

    .line 1581
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1584
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSpareEmailId()I
    .locals 2

    .prologue
    .line 1589
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->emailFlags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1590
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->emailFlags:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 1592
    :goto_1
    return v1

    .line 1589
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1592
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSpareSneId()I
    .locals 2

    .prologue
    .line 1597
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->sneFlags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1598
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->sneFlags:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 1600
    :goto_1
    return v1

    .line 1597
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1600
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setAnrUsed(IZ)V
    .locals 3
    .parameter "recIndex"
    .parameter "isUsed"

    .prologue
    .line 1632
    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->anrFlags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1633
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->anrFlags:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1634
    :cond_0
    return-void
.end method

.method public setEmailUsed(IZ)V
    .locals 3
    .parameter "recIndex"
    .parameter "isUsed"

    .prologue
    .line 1638
    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->emailFlags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1639
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->emailFlags:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1640
    :cond_0
    return-void
.end method

.method public setSneUsed(IZ)V
    .locals 3
    .parameter "recIndex"
    .parameter "isUsed"

    .prologue
    .line 1644
    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->sneFlags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbStrc;->sneFlags:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1646
    :cond_0
    return-void
.end method
