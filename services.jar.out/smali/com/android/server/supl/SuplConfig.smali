.class public Lcom/android/server/supl/SuplConfig;
.super Ljava/lang/Object;
.source "SuplConfig.java"


# static fields
.field private static final CONFIG:Ljava/lang/String; = "SuplConfig.spl"

.field private static final HASH_SIZE:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "SuplConfig"


# instance fields
.field private mConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ReadConfig(Ljava/io/BufferedReader;)V
    .locals 10
    .parameter "d"

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    const/16 v7, 0x1e

    invoke-direct {v0, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 42
    .local v0, config:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 44
    .local v4, line:Ljava/lang/String;
    const/4 v6, 0x0

    .line 45
    .local v6, tag_open:I
    const/4 v5, 0x0

    .line 46
    .local v5, tag_close:I
    const/4 v2, 0x0

    .line 47
    .local v2, index:I
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 48
    :goto_0
    if-eqz v4, :cond_4

    .line 50
    const/16 v7, 0x3c

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v6, v7, 0x1

    .line 51
    const/16 v7, 0x3e

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 52
    add-int/lit8 v2, v5, 0x1

    .line 53
    const-string v7, "#"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v2, v7, :cond_1

    .line 54
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 55
    goto :goto_0

    .line 57
    :cond_1
    if-lez v6, :cond_3

    add-int/lit8 v7, v6, 0x1

    if-le v5, v7, :cond_3

    move v3, v2

    .line 58
    .end local v2           #index:I
    .local v3, index:I
    :goto_1
    const/16 v7, 0x20

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    invoke-virtual {v4, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    if-ne v7, v8, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_2

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_1

    .line 59
    .end local v3           #index:I
    .restart local v2       #index:I
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v2, v7, :cond_3

    .line 60
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, e:Ljava/io/IOException;
    const-string v7, "SuplConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Config file reading failure:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    .line 73
    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    iput-object v0, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    .line 74
    return-void
.end method

.method public static jfqdnToIP(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "hostname"

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 194
    .local v0, host_IP:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    .line 196
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public PrintConfig()V
    .locals 7

    .prologue
    .line 102
    iget-object v2, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    .line 103
    .local v2, h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 105
    .local v0, Keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 106
    .local v1, Tag:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 107
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #Tag:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 109
    .restart local v1       #Tag:Ljava/lang/String;
    const-string v5, "SuplConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TAG - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", VAL - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    .end local v0           #Keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1           #Tag:Ljava/lang/String;
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public getAutoFqdnStorePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v1, "AutoFqdnStorePath"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v1, "AutoFqdnStorePath"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCellType()I
    .locals 4

    .prologue
    .line 284
    const-string v0, "1"

    .line 285
    .local v0, citype:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v2, "celltype"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v2, "celltype"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #citype:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 288
    .restart local v0       #citype:Ljava/lang/String;
    const-string v1, "SuplConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCellType  citype: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 291
    :cond_0
    const-string v1, "SuplConfig"

    const-string v2, "celltype = NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    :cond_1
    const-string v1, "SuplConfig"

    const-string v2, "mConfig = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCi()I
    .locals 3

    .prologue
    .line 273
    const-string v0, "-1"

    .line 274
    .local v0, ci:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v2, "ci"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v2, "ci"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ci:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 280
    .restart local v0       #ci:Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getHmcc()I
    .locals 4

    .prologue
    .line 311
    const-string v0, "-1"

    .line 312
    .local v0, hmcc:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v2, "hmcc"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v2, "hmcc"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #hmcc:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 315
    .restart local v0       #hmcc:Ljava/lang/String;
    const-string v1, "SuplConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHmcc : frm Configfile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getHmnc()I
    .locals 4

    .prologue
    .line 323
    const-string v0, "-1"

    .line 324
    .local v0, hmnc:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v2, "hmnc"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v2, "hmnc"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #hmnc:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 327
    .restart local v0       #hmnc:Ljava/lang/String;
    const-string v1, "SuplConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHmnc : frm Configfile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getImplType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v1, "ImplType"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v1, "ImplType"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLac()I
    .locals 3

    .prologue
    .line 262
    const-string v0, "-1"

    .line 263
    .local v0, lac:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v2, "lac"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v2, "lac"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #lac:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 269
    .restart local v0       #lac:Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getMcc()I
    .locals 3

    .prologue
    .line 240
    const-string v0, "-1"

    .line 241
    .local v0, mcc:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v2, "mcc"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v2, "mcc"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #mcc:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 247
    .restart local v0       #mcc:Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getMnc()I
    .locals 3

    .prologue
    .line 251
    const-string v0, "-1"

    .line 252
    .local v0, mnc:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v2, "mnc"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v2, "mnc"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #mnc:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 258
    .restart local v0       #mnc:Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 301
    const-string v0, "-1"

    .line 302
    .local v0, msisdn:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v2, "msisdn"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v2, "msisdn"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #msisdn:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 307
    .restart local v0       #msisdn:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getProtocolType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v1, "ProtocolType"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v1, "ProtocolType"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSLPHost()Ljava/lang/String;
    .locals 7

    .prologue
    .line 213
    const-string v4, "SuplConfig"

    const-string v5, "getSLPHost"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v4, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 216
    iget-object v4, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v5, "slphost_fqdn"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 219
    iget-object v4, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v5, "slphost_fqdn"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 220
    .local v3, temp:Ljava/lang/String;
    const-string v4, "SuplConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSLPHost  slphost_fqdn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {v3}, Lcom/android/server/supl/SuplConfig;->jfqdnToIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, IP:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v5, "port"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 224
    .local v1, port:Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 225
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, slp:Ljava/lang/String;
    const-string v4, "SuplConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSLPHost  IP+port: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .end local v0           #IP:Ljava/lang/String;
    .end local v1           #port:Ljava/lang/String;
    .end local v2           #slp:Ljava/lang/String;
    .end local v3           #temp:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getStorePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v1, "StorePath"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v1, "StorePath"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocalhost()Z
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v1, "Localhost"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    const-string v1, "Localhost"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readConfigPath(Ljava/lang/String;)V
    .locals 6
    .parameter "Path"

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, d:Ljava/io/BufferedReader;
    if-nez p1, :cond_0

    .line 84
    const-string p1, "SuplConfig.spl"

    .line 87
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #d:Ljava/io/BufferedReader;
    .local v1, d:Ljava/io/BufferedReader;
    move-object v0, v1

    .line 94
    .end local v1           #d:Ljava/io/BufferedReader;
    .restart local v0       #d:Ljava/io/BufferedReader;
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/supl/SuplConfig;->ReadConfig(Ljava/io/BufferedReader;)V

    .line 95
    return-void

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v3, "SuplConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public readConfigStream(Ljava/io/InputStream;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/supl/SuplConfig;->mConfig:Ljava/util/HashMap;

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lcom/android/server/supl/SuplConfig;->ReadConfig(Ljava/io/BufferedReader;)V

    goto :goto_0
.end method
