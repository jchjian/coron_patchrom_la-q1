.class public Lcom/android/internal/telephony/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_TON_AND_NPI:I = 0x1

.field private static final BCD_NUM_RECORD_LEN:I = 0xa

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected static final DBG:Z = false

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "AdnRecord"

.field private static final MAX_ANR_NUM:I = 0x3

.field private static final MAX_EMAIL_NUM:I = 0x1

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb


# instance fields
.field alphaTag:Ljava/lang/String;

.field anrExtRecord:[I

.field anrNumbers:[Ljava/lang/String;

.field efid:I

.field emails:[Ljava/lang/String;

.field extRecord:I

.field number:Ljava/lang/String;

.field recordNumber:I

.field sne:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/android/internal/telephony/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    .line 48
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 154
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 155
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 156
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 157
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 158
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    .line 159
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 160
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    .line 127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    .line 48
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 128
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 129
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 130
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 131
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    .line 133
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "anrNumbers"
    .parameter "emails"

    .prologue
    .line 142
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    .line 48
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 143
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 144
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 145
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 146
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 147
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    .line 148
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 149
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "record"

    .prologue
    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    .line 48
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 114
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 115
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 116
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/AdnRecord;->parseRecord([B)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    .line 124
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "anrNumbers"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    .line 139
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 111
    return-void
.end method

.method private parseRecord([B)V
    .locals 8
    .parameter "record"

    .prologue
    const/4 v7, 0x0

    .line 810
    const/4 v4, 0x0

    :try_start_0
    array-length v5, p1

    add-int/lit8 v5, v5, -0xe

    invoke-static {p1, v4, v5}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 812
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    const-string v5, "@@@@@@@@@@@@@@"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 814
    array-length v4, p1

    add-int/lit8 v1, v4, -0xe

    .line 816
    .local v1, footerOffset:I
    aget-byte v4, p1, v1

    and-int/lit16 v2, v4, 0xff

    .line 817
    .local v2, numberLength:I
    const/16 v3, 0xb

    .line 819
    .local v3, number_Length:I
    const/16 v4, 0xb

    if-le v2, v4, :cond_0

    .line 821
    const-string v4, ""

    iput-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 852
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    .end local v3           #number_Length:I
    :goto_0
    return-void

    .line 832
    .restart local v1       #footerOffset:I
    .restart local v2       #numberLength:I
    .restart local v3       #number_Length:I
    :cond_0
    add-int/lit8 v4, v1, 0x1

    invoke-static {p1, v4, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 834
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const/16 v5, 0x2c

    const/16 v6, 0x50

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 835
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const/16 v5, 0x3b

    const/16 v6, 0x54

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 839
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 841
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 846
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    .end local v3           #number_Length:I
    :catch_0
    move-exception v0

    .line 847
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v4, "AdnRecord"

    const-string v5, "Error parsing AdnRecord"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 848
    const-string v4, ""

    iput-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 849
    const-string v4, ""

    iput-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 850
    iput-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 356
    if-ne p0, p1, :cond_0

    .line 357
    const/4 v0, 0x1

    .line 365
    :goto_0
    return v0

    .line 359
    :cond_0
    if-nez p0, :cond_1

    .line 360
    const-string p0, ""

    .line 362
    :cond_1
    if-nez p1, :cond_2

    .line 363
    const-string p1, ""

    .line 365
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public ClearupAnrExtendedRecord(I)Z
    .locals 2
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 343
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecord;->hasAnrExtendedRecord(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:[I

    aput v0, v1, p1

    .line 345
    const/4 v0, 0x1

    .line 347
    :cond_0
    return v0
.end method

.method public appendExtRecord([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 778
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 787
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 792
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 797
    :catch_0
    move-exception v0

    .line 798
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "AdnRecord"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAdnString(II)[B
    .locals 21
    .parameter "recordSize"
    .parameter "extId"

    .prologue
    .line 397
    const/4 v5, 0x0

    .line 399
    .local v5, bcdNumber:[B
    const/4 v4, 0x0

    .line 400
    .local v4, adnString:[B
    add-int/lit8 v7, p1, -0xe

    .line 402
    .local v7, footerOffset:I
    move/from16 v0, p1

    new-array v4, v0, [B

    .line 403
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move/from16 v0, p1

    if-ge v10, v0, :cond_0

    .line 404
    const/16 v18, -0x1

    aput-byte v18, v4, v10

    .line 403
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 407
    :cond_0
    const/16 v18, 0xff

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 411
    :cond_2
    const-string v18, "AdnRecord"

    const-string v19, "[buildAdnString] Empty alpha tag or number"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_3
    :goto_1
    return-object v4

    .line 414
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v7, :cond_5

    .line 415
    const-string v18, "AdnRecord"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[buildAdnString] Max length of tag is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 417
    :cond_5
    const/16 v13, 0x14

    .line 418
    .local v13, maxLen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x2b

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    const/4 v9, 0x1

    .line 419
    .local v9, hasPlus:Z
    :goto_2
    if-eqz v9, :cond_6

    add-int/lit8 v13, v13, 0x1

    .line 420
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v13, :cond_b

    move v12, v13

    .line 421
    .local v12, len:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 425
    .local v16, numString:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 427
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 428
    const/16 v18, 0x50

    const/16 v19, 0x2c

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v16

    .line 429
    const/16 v18, 0x54

    const/16 v19, 0x3b

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v16

    .line 430
    const/16 v18, 0x70

    const/16 v19, 0x2c

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v16

    .line 431
    const/16 v18, 0x74

    const/16 v19, 0x3b

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v16

    .line 434
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->buildBCDString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 437
    .local v3, BCDnumString:Ljava/lang/String;
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v5

    .line 439
    if-eqz v5, :cond_7

    .line 440
    const/16 v18, 0x0

    add-int/lit8 v19, v7, 0x1

    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v5, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 443
    add-int/lit8 v18, v7, 0x0

    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v4, v18

    .line 452
    :cond_7
    add-int/lit8 v18, v7, 0xc

    const/16 v19, -0x1

    aput-byte v19, v4, v18

    .line 454
    add-int/lit8 v18, v7, 0xd

    move/from16 v0, p2

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v4, v18

    .line 458
    .end local v3           #BCDnumString:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 461
    const/4 v10, 0x0

    .line 462
    const/16 v14, 0xc

    .line 463
    .local v14, maxnum:I
    const/4 v8, 0x0

    .line 465
    .local v8, hasChinese:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-le v14, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v14

    .end local v14           #maxnum:I
    :cond_9
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .local v17, subname:Ljava/lang/String;
    move v11, v10

    .line 466
    .end local v10           #i:I
    .local v11, i:I
    :goto_4
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_10

    .line 468
    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    :try_start_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x80

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_f

    .line 470
    const/4 v8, 0x1

    .line 475
    :goto_5
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v8, :cond_d

    .line 477
    const/16 v18, 0x6

    move/from16 v0, v18

    if-le v10, v0, :cond_c

    .line 479
    const/16 v18, 0x0

    add-int/lit8 v19, v10, -0x1

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v6

    .line 480
    .local v6, byteTag:[B
    const/16 v18, 0x0

    const/16 v19, 0x0

    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v6, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 502
    .end local v6           #byteTag:[B
    .end local v17           #subname:Ljava/lang/String;
    :catch_0
    move-exception v18

    goto/16 :goto_1

    .line 418
    .end local v8           #hasChinese:Z
    .end local v9           #hasPlus:Z
    .end local v12           #len:I
    .end local v16           #numString:Ljava/lang/String;
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 420
    .restart local v9       #hasPlus:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v12

    goto/16 :goto_3

    .line 484
    .restart local v8       #hasChinese:Z
    .restart local v12       #len:I
    .restart local v16       #numString:Ljava/lang/String;
    .restart local v17       #subname:Ljava/lang/String;
    :cond_c
    const/16 v19, 0x0

    const/16 v18, 0x6

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v20

    if-le v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    :goto_6
    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v15

    .line 486
    .local v15, name:Ljava/lang/String;
    :try_start_4
    const-string v18, "UTF_16BE"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 487
    .restart local v6       #byteTag:[B
    const/16 v18, 0x0

    const/16 v19, -0x80

    aput-byte v19, v4, v18

    .line 488
    const/16 v18, 0x0

    const/16 v19, 0x1

    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v6, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 490
    .end local v6           #byteTag:[B
    :catch_1
    move-exception v18

    goto/16 :goto_1

    .line 498
    .end local v15           #name:Ljava/lang/String;
    :cond_d
    :try_start_5
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v6

    .line 499
    .restart local v6       #byteTag:[B
    const/16 v18, 0x0

    const/16 v19, 0x0

    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v6, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 484
    .end local v6           #byteTag:[B
    :cond_e
    const/16 v18, 0x6

    goto :goto_6

    .line 502
    .end local v10           #i:I
    .restart local v11       #i:I
    :catch_2
    move-exception v18

    move v10, v11

    .end local v11           #i:I
    .restart local v10       #i:I
    goto/16 :goto_1

    :cond_f
    move v11, v10

    .end local v10           #i:I
    .restart local v11       #i:I
    goto/16 :goto_4

    :cond_10
    move v10, v11

    .end local v11           #i:I
    .restart local v10       #i:I
    goto/16 :goto_5
.end method

.method public buildAnrString(IIIII)[B
    .locals 13
    .parameter "index"
    .parameter "recordSize"
    .parameter "extId"
    .parameter "sfi"
    .parameter "adnIndex"

    .prologue
    .line 517
    const/4 v2, 0x0

    .line 519
    .local v2, anrString:[B
    const/4 v4, 0x1

    .line 521
    .local v4, footerOffset:I
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    aget-object v10, v10, p1

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    aget-object v10, v10, p1

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 522
    :cond_0
    const-string v10, "AdnRecord"

    const-string v11, "[buildAnrString] Empty number"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    new-array v2, p2, [B

    .line 524
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, p2, :cond_8

    .line 525
    const/4 v10, -0x1

    aput-byte v10, v2, v6

    .line 524
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 529
    .end local v6           #i:I
    :cond_1
    const/16 v8, 0x14

    .line 530
    .local v8, maxLen:I
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    aget-object v10, v10, p1

    const/16 v11, 0x2b

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    const/4 v5, 0x1

    .line 531
    .local v5, hasPlus:Z
    :goto_1
    if-eqz v5, :cond_2

    add-int/lit8 v8, v8, 0x1

    .line 532
    :cond_2
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v8, :cond_4

    move v7, v8

    .line 533
    .local v7, len:I
    :goto_2
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    aget-object v10, v10, p1

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 534
    .local v9, numString:Ljava/lang/String;
    new-array v2, p2, [B

    .line 535
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_3
    if-ge v6, p2, :cond_5

    .line 536
    const/4 v10, -0x1

    aput-byte v10, v2, v6

    .line 535
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 530
    .end local v5           #hasPlus:Z
    .end local v6           #i:I
    .end local v7           #len:I
    .end local v9           #numString:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 532
    .restart local v5       #hasPlus:Z
    :cond_4
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v7

    goto :goto_2

    .line 538
    .restart local v6       #i:I
    .restart local v7       #len:I
    .restart local v9       #numString:Ljava/lang/String;
    :cond_5
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 540
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:[I

    if-nez v10, :cond_6

    .line 541
    const/4 v10, 0x3

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:[I

    .line 543
    :cond_6
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:[I

    aput p3, v10, p1

    .line 544
    const/16 v10, 0x50

    const/16 v11, 0x2c

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    .line 545
    const/16 v10, 0x54

    const/16 v11, 0x3b

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    .line 546
    const/16 v10, 0x70

    const/16 v11, 0x2c

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    .line 547
    const/16 v10, 0x74

    const/16 v11, 0x3b

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    .line 551
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/AdnRecord;->buildBCDString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, BCDnumString:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v3

    .line 555
    .local v3, bcdNumber:[B
    if-eqz v3, :cond_7

    .line 556
    const/4 v10, 0x0

    const/4 v11, 0x2

    array-length v12, v3

    invoke-static {v3, v10, v2, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 559
    const/4 v10, 0x1

    array-length v11, v3

    int-to-byte v11, v11

    aput-byte v11, v2, v10

    .line 566
    :cond_7
    const/16 v10, 0xd

    const/4 v11, -0x1

    aput-byte v11, v2, v10

    .line 568
    const/16 v10, 0xe

    move/from16 v0, p3

    int-to-byte v11, v0

    aput-byte v11, v2, v10

    .line 570
    if-eqz p4, :cond_8

    const/16 v10, 0xff

    move/from16 v0, p4

    if-eq v0, v10, :cond_8

    .line 571
    const/16 v10, 0xf

    move/from16 v0, p4

    int-to-byte v11, v0

    aput-byte v11, v2, v10

    .line 573
    const/16 v10, 0x10

    move/from16 v0, p5

    int-to-byte v11, v0

    aput-byte v11, v2, v10

    .line 579
    .end local v1           #BCDnumString:Ljava/lang/String;
    .end local v3           #bcdNumber:[B
    .end local v5           #hasPlus:Z
    .end local v7           #len:I
    .end local v8           #maxLen:I
    .end local v9           #numString:Ljava/lang/String;
    :cond_8
    return-object v2
.end method

.method public buildBCDString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "numString"

    .prologue
    const/4 v9, 0x0

    .line 583
    const/4 v6, 0x0

    .line 584
    .local v6, k:I
    const/4 v4, 0x0

    .line 585
    .local v4, j:I
    const/4 v0, 0x0

    .line 586
    .local v0, BCDnumString:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    new-array v1, v8, [C

    .line 588
    .local v1, ProcessbcdNumber:[C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 589
    aput-char v9, v1, v3

    .line 588
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 592
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_4

    .line 594
    add-int/lit8 v7, v6, 0x1

    .end local v6           #k:I
    .local v7, k:I
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 595
    .local v2, c:C
    const/16 v8, 0x30

    if-lt v2, v8, :cond_1

    const/16 v8, 0x39

    if-le v2, v8, :cond_2

    :cond_1
    const/16 v8, 0x2a

    if-eq v2, v8, :cond_2

    const/16 v8, 0x23

    if-eq v2, v8, :cond_2

    const/16 v8, 0x2c

    if-eq v2, v8, :cond_2

    const/16 v8, 0x4e

    if-eq v2, v8, :cond_2

    const/16 v8, 0x2b

    if-ne v2, v8, :cond_3

    .line 597
    :cond_2
    add-int/lit8 v5, v4, 0x1

    .end local v4           #j:I
    .local v5, j:I
    aput-char v2, v1, v4

    move v4, v5

    .end local v5           #j:I
    .restart local v4       #j:I
    :cond_3
    move v6, v7

    .line 599
    .end local v7           #k:I
    .restart local v6       #k:I
    goto :goto_1

    .line 600
    .end local v2           #c:C
    :cond_4
    new-instance v0, Ljava/lang/String;

    .end local v0           #BCDnumString:Ljava/lang/String;
    invoke-direct {v0, v1, v9, v4}, Ljava/lang/String;-><init>([CII)V

    .line 602
    .restart local v0       #BCDnumString:Ljava/lang/String;
    if-nez v0, :cond_5

    .line 605
    :cond_5
    return-object v0
.end method

.method public buildEmailString(IIII)[B
    .locals 13
    .parameter "index"
    .parameter "recordSize"
    .parameter "sfi"
    .parameter "adnIndex"

    .prologue
    .line 611
    const/4 v2, 0x0

    .line 613
    .local v2, emailString:[B
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v10, v10, p1

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v10, v10, p1

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 614
    :cond_0
    const-string v10, "AdnRecord"

    const-string v11, "[buildEmailString] Empty email"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    new-array v2, p2, [B

    .line 616
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p2, :cond_2

    .line 617
    const/4 v10, -0x1

    aput-byte v10, v2, v4

    .line 616
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 619
    .end local v4           #i:I
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, p2, :cond_3

    .line 620
    const-string v10, "AdnRecord"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[buildEmailString] Max length of email is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_2
    :goto_1
    return-object v2

    .line 622
    :cond_3
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v10, v10, p1

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 625
    const/4 v4, 0x0

    .line 626
    .restart local v4       #i:I
    move v7, p2

    .line 627
    .local v7, maxnum:I
    const/4 v3, 0x0

    .line 630
    .local v3, hasChinese:Z
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v11, v10, p1

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-le v7, v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    :goto_2
    invoke-virtual {v11, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .local v9, subname:Ljava/lang/String;
    move v5, v4

    .line 632
    .end local v4           #i:I
    .local v5, i:I
    :goto_3
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v10

    if-ge v5, v10, :cond_a

    .line 634
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    :try_start_2
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x80

    if-le v10, v11, :cond_9

    .line 636
    const/4 v3, 0x1

    .line 641
    :goto_4
    new-array v2, p2, [B

    .line 642
    const/4 v6, 0x0

    .local v6, j:I
    :goto_5
    if-ge v6, p2, :cond_5

    .line 643
    const/4 v10, -0x1

    aput-byte v10, v2, v6

    .line 642
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .end local v6           #j:I
    .end local v9           #subname:Ljava/lang/String;
    :cond_4
    move v10, v7

    .line 630
    goto :goto_2

    .line 646
    .restart local v6       #j:I
    .restart local v9       #subname:Ljava/lang/String;
    :cond_5
    const/4 v10, 0x1

    if-ne v10, v3, :cond_8

    .line 648
    div-int/lit8 v10, v7, 0x2

    if-le v4, v10, :cond_6

    .line 650
    const/4 v10, 0x0

    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v1

    .line 651
    .local v1, byteTag:[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v1

    invoke-static {v1, v10, v2, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 675
    .end local v1           #byteTag:[B
    :goto_6
    if-eqz p3, :cond_2

    const/16 v10, 0xff

    move/from16 v0, p3

    if-eq v0, v10, :cond_2

    .line 676
    array-length v10, v2

    add-int/lit8 v10, v10, -0x2

    move/from16 v0, p3

    int-to-byte v11, v0

    aput-byte v11, v2, v10

    .line 678
    array-length v10, v2

    add-int/lit8 v10, v10, -0x1

    move/from16 v0, p4

    int-to-byte v11, v0

    aput-byte v11, v2, v10

    goto :goto_1

    .line 682
    .end local v6           #j:I
    .end local v9           #subname:Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_1

    .line 655
    .restart local v6       #j:I
    .restart local v9       #subname:Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    div-int/lit8 v10, v7, 0x2

    iget-object v12, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v12, v12, p1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-le v10, v12, :cond_7

    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    :goto_7
    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    .line 657
    .local v8, name:Ljava/lang/String;
    :try_start_3
    const-string v10, "UTF_16BE"

    invoke-virtual {v8, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 658
    .restart local v1       #byteTag:[B
    const/4 v10, 0x0

    const/16 v11, -0x80

    aput-byte v11, v2, v10

    .line 659
    const/4 v10, 0x0

    const/4 v11, 0x1

    array-length v12, v1

    invoke-static {v1, v10, v2, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    .line 661
    .end local v1           #byteTag:[B
    :catch_1
    move-exception v10

    goto :goto_6

    .line 655
    .end local v8           #name:Ljava/lang/String;
    :cond_7
    :try_start_4
    div-int/lit8 v10, v7, 0x2

    goto :goto_7

    .line 669
    :cond_8
    invoke-static {v9}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v1

    .line 672
    .restart local v1       #byteTag:[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v1

    invoke-static {v1, v10, v2, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    .line 682
    .end local v1           #byteTag:[B
    .end local v4           #i:I
    .end local v6           #j:I
    .restart local v5       #i:I
    :catch_2
    move-exception v10

    move v4, v5

    .end local v5           #i:I
    .restart local v4       #i:I
    goto/16 :goto_1

    :cond_9
    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    goto/16 :goto_3

    :cond_a
    move v4, v5

    .end local v5           #i:I
    .restart local v4       #i:I
    goto/16 :goto_4
.end method

.method public buildSneString(III)[B
    .locals 12
    .parameter "recordSize"
    .parameter "sfi"
    .parameter "adnIndex"

    .prologue
    .line 693
    const/4 v7, 0x0

    .line 695
    .local v7, sneString:[B
    iget-object v9, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 696
    :cond_0
    const-string v9, "AdnRecord"

    const-string v10, "[buildSneString] Empty sne"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    new-array v7, p1, [B

    .line 698
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 699
    const/4 v9, -0x1

    aput-byte v9, v7, v2

    .line 698
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 701
    .end local v2           #i:I
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, p1, :cond_3

    .line 702
    const-string v9, "AdnRecord"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[buildSneString] Max length of sne is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_2
    :goto_1
    return-object v7

    .line 704
    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 707
    const/4 v2, 0x0

    .line 708
    .restart local v2       #i:I
    move v5, p1

    .line 709
    .local v5, maxnum:I
    const/4 v1, 0x0

    .line 712
    .local v1, hasChinese:Z
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-le v5, v9, :cond_4

    iget-object v9, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    :goto_2
    invoke-virtual {v10, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .local v8, subname:Ljava/lang/String;
    move v3, v2

    .line 714
    .end local v2           #i:I
    .local v3, i:I
    :goto_3
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v9

    if-ge v3, v9, :cond_a

    .line 716
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    :try_start_2
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x80

    if-le v9, v10, :cond_9

    .line 718
    const/4 v1, 0x1

    .line 723
    :goto_4
    new-array v7, p1, [B

    .line 724
    const/4 v4, 0x0

    .local v4, j:I
    :goto_5
    if-ge v4, p1, :cond_5

    .line 725
    const/4 v9, -0x1

    aput-byte v9, v7, v4

    .line 724
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .end local v4           #j:I
    .end local v8           #subname:Ljava/lang/String;
    :cond_4
    move v9, v5

    .line 712
    goto :goto_2

    .line 728
    .restart local v4       #j:I
    .restart local v8       #subname:Ljava/lang/String;
    :cond_5
    const/4 v9, 0x1

    if-ne v9, v1, :cond_8

    .line 730
    div-int/lit8 v9, v5, 0x2

    if-le v2, v9, :cond_6

    .line 732
    const/4 v9, 0x0

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 733
    .local v0, byteTag:[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, v0

    invoke-static {v0, v9, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 757
    .end local v0           #byteTag:[B
    :goto_6
    if-eqz p2, :cond_2

    const/16 v9, 0xff

    if-eq p2, v9, :cond_2

    .line 758
    array-length v9, v7

    add-int/lit8 v9, v9, -0x2

    int-to-byte v10, p2

    aput-byte v10, v7, v9

    .line 760
    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    int-to-byte v10, p3

    aput-byte v10, v7, v9

    goto :goto_1

    .line 764
    .end local v4           #j:I
    .end local v8           #subname:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_1

    .line 737
    .restart local v4       #j:I
    .restart local v8       #subname:Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    div-int/lit8 v9, v5, 0x2

    iget-object v11, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v9, v11, :cond_7

    iget-object v9, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    :goto_7
    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 739
    .local v6, name:Ljava/lang/String;
    :try_start_3
    const-string v9, "UTF_16BE"

    invoke-virtual {v6, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 740
    .restart local v0       #byteTag:[B
    const/4 v9, 0x0

    const/16 v10, -0x80

    aput-byte v10, v7, v9

    .line 741
    const/4 v9, 0x0

    const/4 v10, 0x1

    array-length v11, v0

    invoke-static {v0, v9, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    .line 743
    .end local v0           #byteTag:[B
    :catch_1
    move-exception v9

    goto :goto_6

    .line 737
    .end local v6           #name:Ljava/lang/String;
    :cond_7
    :try_start_4
    div-int/lit8 v9, v5, 0x2

    goto :goto_7

    .line 751
    :cond_8
    invoke-static {v8}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 754
    .restart local v0       #byteTag:[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, v0

    invoke-static {v0, v9, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    .line 764
    .end local v0           #byteTag:[B
    .end local v2           #i:I
    .end local v4           #j:I
    .restart local v3       #i:I
    :catch_2
    move-exception v9

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto/16 :goto_1

    :cond_9
    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto/16 :goto_3

    :cond_a
    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_4
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getAlphaTagSize()I
    .locals 1

    .prologue
    .line 176
    const/16 v0, 0xe

    return v0
.end method

.method public getAnrNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "anrIndex"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 205
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnrNumbers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    return-object v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberSize()I
    .locals 1

    .prologue
    .line 184
    const/16 v0, 0x14

    return v0
.end method

.method public getRecordNumber()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    return v0
.end method

.method public getSne()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    return-object v0
.end method

.method public hasAnrExtendedRecord(I)Z
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 350
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:[I

    if-nez v1, :cond_1

    .line 351
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:[I

    aget v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:[I

    aget v1, v1, p1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 340
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseEmailString(I[BI)V
    .locals 3
    .parameter "emailIndex"
    .parameter "emailData"
    .parameter "emailFileType"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 289
    :cond_0
    if-ne p3, v1, :cond_1

    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    array-length v1, p2

    invoke-static {p2, v2, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 303
    :goto_0
    return-void

    .line 291
    :cond_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    array-length v1, p2

    add-int/lit8 v1, v1, -0x2

    invoke-static {p2, v2, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    array-length v1, p2

    add-int/lit8 v1, v1, -0x2

    invoke-static {p2, v2, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0
.end method

.method public parseRawAnrNumberData(I[BI)V
    .locals 9
    .parameter "anrIndex"
    .parameter "rawAnrNumberData"
    .parameter "anrFileType"

    .prologue
    const/4 v8, 0x2

    .line 221
    if-nez p2, :cond_0

    .line 227
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, p1

    .line 282
    :goto_0
    return-void

    .line 234
    :cond_0
    const/4 v1, 0x1

    .line 235
    .local v1, footerOffset:I
    aget-byte v4, p2, v1

    and-int/lit16 v2, v4, 0xff

    .line 236
    .local v2, numberLength:I
    const/16 v3, 0xb

    .line 237
    .local v3, number_Length:I
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    if-nez v4, :cond_1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    .line 238
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:[I

    if-nez v4, :cond_2

    const/4 v4, 0x3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:[I

    .line 242
    :cond_2
    const/16 v4, 0xb

    if-le v2, v4, :cond_3

    .line 244
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    .end local v3           #number_Length:I
    :catch_0
    move-exception v0

    .line 279
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v4, "AdnRecord"

    const-string v5, "Error parsing ANR"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, p1

    goto :goto_0

    .line 256
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .restart local v1       #footerOffset:I
    .restart local v2       #numberLength:I
    .restart local v3       #number_Length:I
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {p2, v5, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p1

    .line 258
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    aget-object v5, v5, p1

    const/16 v6, 0x2c

    const/16 v7, 0x50

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p1

    .line 259
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    aget-object v5, v5, p1

    const/16 v6, 0x3b

    const/16 v7, 0x54

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p1

    .line 260
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    aget-object v5, v5, p1

    const/16 v6, 0x4e

    const/16 v7, 0x57

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p1

    .line 264
    const/4 v4, 0x1

    if-ne p3, v4, :cond_4

    .line 265
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:[I

    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, p1

    goto :goto_0

    .line 266
    :cond_4
    if-ne p3, v8, :cond_5

    .line 267
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:[I

    array-length v5, p2

    add-int/lit8 v5, v5, -0x3

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, p1

    goto/16 :goto_0

    .line 270
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecord;->anrExtRecord:[I

    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public parseSneString([B)V
    .locals 3
    .parameter "sneString"

    .prologue
    .line 308
    const/4 v1, 0x0

    :try_start_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    invoke-static {p1, v1, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "AdnRecord"

    const-string v2, "Error parsing SneString"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    goto :goto_0
.end method

.method public setAnrNumbers([Ljava/lang/String;)V
    .locals 0
    .parameter "anrNumbers"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .parameter "emails"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 193
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADN Record "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, result:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 319
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 320
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    .end local v0           #i:I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 326
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 327
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 332
    .end local v0           #i:I
    :cond_3
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 380
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrNumbers:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 386
    return-void
.end method
