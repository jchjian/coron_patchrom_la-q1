.class public final Landroid/telephony/CellInfo;
.super Ljava/lang/Object;
.source "CellInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CELL_INFO_TIMESTAMP_TYPE_ANTENNA:I = 0x1

.field public static final CELL_INFO_TIMESTAMP_TYPE_JAVA_RIL:I = 0x4

.field public static final CELL_INFO_TIMESTAMP_TYPE_MODEM:I = 0x2

.field public static final CELL_INFO_TIMESTAMP_TYPE_OEM_RIL:I = 0x3

.field public static final CELL_INFO_TIMESTAMP_TYPE_UNKNOWN:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCellIdentity:Landroid/telephony/CellIdentity;

.field private final mCellIdentityType:I

.field private final mRegistered:Z

.field private final mStrength:Landroid/telephony/SignalStrength;

.field private final mTimeStamp:J

.field private final mTimeStampType:I

.field private final mTimingAdvance:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    new-instance v0, Landroid/telephony/CellInfo$1;

    invoke-direct {v0}, Landroid/telephony/CellInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJJZLandroid/telephony/SignalStrength;Landroid/telephony/CellIdentity;)V
    .locals 1
    .parameter "timeStampType"
    .parameter "timeStamp"
    .parameter "timingAdv"
    .parameter "registered"
    .parameter "strength"
    .parameter "cellIdentity"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 68
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    .line 73
    :goto_0
    iput-boolean p6, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    .line 74
    iput-wide p2, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    .line 75
    iput-wide p4, p0, Landroid/telephony/CellInfo;->mTimingAdvance:J

    .line 76
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0, p7}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    iput-object v0, p0, Landroid/telephony/CellInfo;->mStrength:Landroid/telephony/SignalStrength;

    .line 78
    invoke-virtual {p8}, Landroid/telephony/CellIdentity;->getCellIdType()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellInfo;->mCellIdentityType:I

    .line 80
    iput-object p8, p0, Landroid/telephony/CellInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 81
    return-void

    .line 70
    :cond_1
    iput p1, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v0, 0x1

    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/CellInfo;->mTimingAdvance:J

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellInfo;->mCellIdentityType:I

    .line 105
    sget-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SignalStrength;

    iput-object v0, p0, Landroid/telephony/CellInfo;->mStrength:Landroid/telephony/SignalStrength;

    .line 106
    iget v0, p0, Landroid/telephony/CellInfo;->mCellIdentityType:I

    packed-switch v0, :pswitch_data_0

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/CellInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 113
    :goto_1
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :pswitch_0
    sget-object v0, Landroid/telephony/GsmCellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentity;

    iput-object v0, p0, Landroid/telephony/CellInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    goto :goto_1

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellInfo;)V
    .locals 2
    .parameter "ci"

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iget v0, p1, Landroid/telephony/CellInfo;->mTimeStampType:I

    iput v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    .line 85
    iget-boolean v0, p1, Landroid/telephony/CellInfo;->mRegistered:Z

    iput-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    .line 86
    iget-wide v0, p1, Landroid/telephony/CellInfo;->mTimeStamp:J

    iput-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    .line 87
    iget-wide v0, p1, Landroid/telephony/CellInfo;->mTimingAdvance:J

    iput-wide v0, p0, Landroid/telephony/CellInfo;->mTimingAdvance:J

    .line 88
    iget v0, p1, Landroid/telephony/CellInfo;->mCellIdentityType:I

    iput v0, p0, Landroid/telephony/CellInfo;->mCellIdentityType:I

    .line 89
    new-instance v0, Landroid/telephony/SignalStrength;

    iget-object v1, p1, Landroid/telephony/CellInfo;->mStrength:Landroid/telephony/SignalStrength;

    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    iput-object v0, p0, Landroid/telephony/CellInfo;->mStrength:Landroid/telephony/SignalStrength;

    .line 90
    iget v0, p0, Landroid/telephony/CellInfo;->mCellIdentityType:I

    packed-switch v0, :pswitch_data_0

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/CellInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 97
    :goto_0
    return-void

    .line 92
    :pswitch_0
    new-instance v1, Landroid/telephony/GsmCellIdentity;

    iget-object v0, p1, Landroid/telephony/CellInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    check-cast v0, Landroid/telephony/GsmCellIdentity;

    invoke-direct {v1, v0}, Landroid/telephony/GsmCellIdentity;-><init>(Landroid/telephony/GsmCellIdentity;)V

    iput-object v1, p0, Landroid/telephony/CellInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public getCellIdentity()Landroid/telephony/CellIdentity;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Landroid/telephony/CellInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Landroid/telephony/SignalStrength;

    iget-object v1, p0, Landroid/telephony/CellInfo;->mStrength:Landroid/telephony/SignalStrength;

    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    return-wide v0
.end method

.method public getTimeStampType()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    return v0
.end method

.method public getTimingAdvance()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Landroid/telephony/CellInfo;->mTimingAdvance:J

    return-wide v0
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 164
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "TimeStampType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    iget v1, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    packed-switch v1, :pswitch_data_0

    .line 179
    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    :goto_0
    const-string v1, ", TimeStamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ns"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    const-string v1, ", Registered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v1, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    if-eqz v1, :cond_0

    const-string v1, "YES"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    const-string v1, ", TimingAdvance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Landroid/telephony/CellInfo;->mTimingAdvance:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Strength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellInfo;->mStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Cell Iden: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 167
    :pswitch_0
    const-string v1, "antenna"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 170
    :pswitch_1
    const-string/jumbo v1, "modem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 173
    :pswitch_2
    const-string/jumbo v1, "oem_ril"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 176
    :pswitch_3
    const-string v1, "java_ril"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 182
    :cond_0
    const-string v1, "NO"

    goto :goto_1

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 199
    iget v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 202
    iget-wide v0, p0, Landroid/telephony/CellInfo;->mTimingAdvance:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 203
    iget v0, p0, Landroid/telephony/CellInfo;->mCellIdentityType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-object v0, p0, Landroid/telephony/CellInfo;->mStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SignalStrength;->writeToParcel(Landroid/os/Parcel;I)V

    .line 205
    iget-object v0, p0, Landroid/telephony/CellInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 206
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
