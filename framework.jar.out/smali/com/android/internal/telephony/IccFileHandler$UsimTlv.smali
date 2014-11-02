.class Lcom/android/internal/telephony/IccFileHandler$UsimTlv;
.super Ljava/lang/Object;
.source "IccFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UsimTlv"
.end annotation


# instance fields
.field private mLength:I

.field private mRawValue:[B

.field private mTag:I

.field private mValueIndex:I


# direct methods
.method protected constructor <init>(II[BI)V
    .locals 0
    .parameter "tag"
    .parameter "length"
    .parameter "data"
    .parameter "valueIndex"

    .prologue
    .line 1321
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1322
    iput p1, p0, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;->mTag:I

    .line 1323
    iput p2, p0, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;->mLength:I

    .line 1324
    iput p4, p0, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;->mValueIndex:I

    .line 1325
    iput-object p3, p0, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;->mRawValue:[B

    .line 1326
    return-void
.end method

.method public static decode([BI)Lcom/android/internal/telephony/IccFileHandler$UsimTlv;
    .locals 6
    .parameter "data"
    .parameter "startIndex"

    .prologue
    .line 1357
    move v0, p1

    .line 1358
    .local v0, curIndex:I
    array-length v2, p0

    .line 1359
    .local v2, endIndex:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #curIndex:I
    .local v1, curIndex:I
    aget-byte v5, p0, v0

    and-int/lit16 v4, v5, 0xff

    .line 1360
    .local v4, tag:I
    add-int/lit8 v0, v1, 0x1

    .end local v1           #curIndex:I
    .restart local v0       #curIndex:I
    aget-byte v5, p0, v1

    and-int/lit16 v3, v5, 0xff

    .line 1362
    .local v3, length:I
    new-instance v5, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;

    invoke-direct {v5, v4, v3, p0, v0}, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;-><init>(II[BI)V

    return-object v5
.end method

.method public static decodeMany([BI)Ljava/util/List;
    .locals 5
    .parameter "data"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/IccFileHandler$UsimTlv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1345
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1346
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IccFileHandler$UsimTlv;>;"
    array-length v1, p0

    .line 1347
    .local v1, endIndex:I
    :goto_0
    if-ge p1, v1, :cond_0

    .line 1348
    invoke-static {p0, p1}, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;->decode([BI)Lcom/android/internal/telephony/IccFileHandler$UsimTlv;

    move-result-object v0

    .line 1349
    .local v0, ctlv:Lcom/android/internal/telephony/IccFileHandler$UsimTlv;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1350
    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;->mValueIndex:I

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;->mLength:I

    add-int p1, v3, v4

    .line 1351
    goto :goto_0

    .line 1353
    .end local v0           #ctlv:Lcom/android/internal/telephony/IccFileHandler$UsimTlv;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 1333
    iget v0, p0, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;->mLength:I

    return v0
.end method

.method public getRawValue()[B
    .locals 1

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;->mRawValue:[B

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 1329
    iget v0, p0, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;->mTag:I

    return v0
.end method

.method public getValueIndex()I
    .locals 1

    .prologue
    .line 1337
    iget v0, p0, Lcom/android/internal/telephony/IccFileHandler$UsimTlv;->mValueIndex:I

    return v0
.end method
