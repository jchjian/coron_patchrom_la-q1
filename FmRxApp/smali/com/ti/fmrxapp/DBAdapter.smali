.class public Lcom/ti/fmrxapp/DBAdapter;
.super Ljava/lang/Object;
.source "DBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ti/fmrxapp/DBAdapter$DatabaseHelper;
    }
.end annotation


# instance fields
.field private DBHelper:Lcom/ti/fmrxapp/DBAdapter$DatabaseHelper;

.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/ti/fmrxapp/DBAdapter;->context:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/ti/fmrxapp/DBAdapter$DatabaseHelper;

    iget-object v1, p0, Lcom/ti/fmrxapp/DBAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ti/fmrxapp/DBAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ti/fmrxapp/DBAdapter;->DBHelper:Lcom/ti/fmrxapp/DBAdapter$DatabaseHelper;

    .line 53
    const-string v0, "DBAdapter"

    const-string v1, " DBAdapter const"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ti/fmrxapp/DBAdapter;->DBHelper:Lcom/ti/fmrxapp/DBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/DBAdapter$DatabaseHelper;->close()V

    .line 88
    const-string v0, "DBAdapter"

    const-string v1, " DatabaseHelper close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public deleteStation()Z
    .locals 4

    .prologue
    .line 105
    const-string v0, "DBAdapter"

    const-string v1, " DatabaseHelper deleteStation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/ti/fmrxapp/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "presets"

    const-string v2, "1"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllStations()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 111
    const-string v0, "DBAdapter"

    const-string v1, " DatabaseHelper getAllStations"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/ti/fmrxapp/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "presets"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "id"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "channel"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "love"

    aput-object v5, v2, v4

    const-string v7, "CAST(channel as REAL)"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getStation(J)Landroid/database/Cursor;
    .locals 11
    .parameter "rowId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 119
    const-string v0, "DBAdapter"

    const-string v2, " DatabaseHelper getStation"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/ti/fmrxapp/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "presets"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v4

    const-string v4, "id"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v6, "channel"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-string v6, "name"

    aput-object v6, v3, v4

    const/4 v4, 0x4

    const-string v6, "love"

    aput-object v6, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 123
    .local v10, mCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 124
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 126
    :cond_0
    return-object v10
.end method

.method public getStationByFreq(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "freq"

    .prologue
    const/4 v4, 0x0

    .line 129
    iget-object v0, p0, Lcom/ti/fmrxapp/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "presets"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "id"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "channel"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "name"

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string v5, "love"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "channel="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "CAST(channel as REAL)"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public insertStation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .parameter "itemkey"
    .parameter "itemValue"
    .parameter "itemName"
    .parameter "itemLove"

    .prologue
    .line 94
    const-string v1, "DBAdapter"

    const-string v2, " DatabaseHelper insertStation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "channel"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "love"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/ti/fmrxapp/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "presets"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public open()Lcom/ti/fmrxapp/DBAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ti/fmrxapp/DBAdapter;->DBHelper:Lcom/ti/fmrxapp/DBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/ti/fmrxapp/DBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/ti/fmrxapp/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 81
    const-string v0, "DBAdapter"

    const-string v1, " DatabaseHelper open"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-object p0
.end method

.method public updateStation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "itemKey"
    .parameter "itemValue"
    .parameter "itemName"
    .parameter "itemLove"

    .prologue
    .line 135
    const-string v1, "DBAdapter"

    const-string v2, " DatabaseHelper updateStation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 137
    .local v0, args:Landroid/content/ContentValues;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, "channel"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v1, "love"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/ti/fmrxapp/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "presets"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
