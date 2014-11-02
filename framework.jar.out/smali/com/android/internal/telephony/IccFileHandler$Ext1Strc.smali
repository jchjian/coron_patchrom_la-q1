.class Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;
.super Ljava/lang/Object;
.source "IccFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Ext1Strc"
.end annotation


# instance fields
.field len:I

.field nextIndex:I

.field number:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/IccFileHandler;

.field type:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccFileHandler;[B)V
    .locals 4
    .parameter
    .parameter "data"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 164
    iput-object p1, p0, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->this$0:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 165
    aget-byte v0, p2, v2

    and-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->type:I

    .line 166
    const/4 v0, 0x1

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->len:I

    .line 167
    iget v0, p0, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->len:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->len:I

    .line 168
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->number:Ljava/lang/String;

    .line 169
    const/16 v0, 0xc

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->nextIndex:I

    .line 170
    iget v0, p0, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->type:I

    if-eq v0, v3, :cond_1

    .line 171
    const-string v0, "ICC"

    const-string v1, "chenxiang Ext1Strc type != 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_0
    return-void

    .line 175
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->len:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 177
    const-string v0, "ICC"

    const-string v1, "chenxiang Ext1Strc len > 10"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->len:I

    invoke-static {p2, v3, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->number:Ljava/lang/String;

    .line 183
    const-string v0, "ICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chenxiang Ext1Strc type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", len = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->len:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nextIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->nextIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v0, "ICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chenxiang Ext1Strc number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler$Ext1Strc;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
