.class public Landroid/provider/RecentCallsPreferences;
.super Ljava/lang/Object;
.source "RecentCallsPreferences.java"


# static fields
.field public static final ALL_INCOMING_CALLS:Ljava/lang/String; = "all_incoming_calls"

.field public static final ALL_LAST_CALLS:Ljava/lang/String; = "all_last_calls"

.field public static final ALL_OUTGOING_CALLS:Ljava/lang/String; = "all_outgoing_calls"

.field public static final ALL_TOTAL_CALLS:Ljava/lang/String; = "all_total_calls"

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "RecentCallsDuration"

.field public static final SUB1_INCOMING_CALLS:Ljava/lang/String; = "sub1_incoming_calls"

.field public static final SUB1_LAST_CALLS:Ljava/lang/String; = "sub1_last_calls"

.field public static final SUB1_OUTGOING_CALLS:Ljava/lang/String; = "sub1_outgoing_calls"

.field public static final SUB1_TOTAL_CALLS:Ljava/lang/String; = "sub1_total_calls"

.field public static final SUB2_INCOMING_CALLS:Ljava/lang/String; = "sub2_incoming_calls"

.field public static final SUB2_LAST_CALLS:Ljava/lang/String; = "sub2_last_calls"

.field public static final SUB2_OUTGOING_CALLS:Ljava/lang/String; = "sub2_outgoing_calls"

.field public static final SUB2_TOTAL_CALLS:Ljava/lang/String; = "sub2_total_calls"

.field private static editor:Landroid/content/SharedPreferences$Editor;

.field private static preferences:Landroid/provider/RecentCallsPreferences;


# instance fields
.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const-wide/16 v2, 0x0

    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "RecentCallsDuration"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/RecentCallsPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 43
    iget-object v0, p0, Landroid/provider/RecentCallsPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Landroid/provider/RecentCallsPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    .line 45
    iget-object v0, p0, Landroid/provider/RecentCallsPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "all_last_calls"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/provider/RecentCallsPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "all_incoming_calls"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/provider/RecentCallsPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "all_outgoing_calls"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/provider/RecentCallsPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "all_total_calls"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/provider/RecentCallsPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "sub1_last_calls"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/provider/RecentCallsPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "sub1_incoming_calls"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/provider/RecentCallsPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "sub1_outgoing_calls"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/provider/RecentCallsPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "sub1_total_calls"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/provider/RecentCallsPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "sub2_last_calls"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/provider/RecentCallsPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "sub2_incoming_calls"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/provider/RecentCallsPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "sub2_outgoing_calls"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/provider/RecentCallsPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "sub2_total_calls"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Landroid/provider/RecentCallsPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "all_last_calls"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 58
    sget-object v0, Landroid/provider/RecentCallsPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "all_incoming_calls"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 59
    sget-object v0, Landroid/provider/RecentCallsPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "all_outgoing_calls"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 60
    sget-object v0, Landroid/provider/RecentCallsPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "all_total_calls"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 70
    sget-object v0, Landroid/provider/RecentCallsPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "sub1_last_calls"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 71
    sget-object v0, Landroid/provider/RecentCallsPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "sub1_incoming_calls"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 72
    sget-object v0, Landroid/provider/RecentCallsPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "sub1_outgoing_calls"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 73
    sget-object v0, Landroid/provider/RecentCallsPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "sub1_total_calls"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 74
    sget-object v0, Landroid/provider/RecentCallsPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "sub2_last_calls"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 75
    sget-object v0, Landroid/provider/RecentCallsPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "sub2_incoming_calls"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 76
    sget-object v0, Landroid/provider/RecentCallsPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "sub2_outgoing_calls"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 77
    sget-object v0, Landroid/provider/RecentCallsPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "sub2_total_calls"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 78
    sget-object v0, Landroid/provider/RecentCallsPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    :cond_0
    return-void
.end method

.method public static declared-synchronized getPreferences(Landroid/content/Context;)Landroid/provider/RecentCallsPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 84
    const-class v1, Landroid/provider/RecentCallsPreferences;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/provider/RecentCallsPreferences;->preferences:Landroid/provider/RecentCallsPreferences;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Landroid/provider/RecentCallsPreferences;

    invoke-direct {v0, p0}, Landroid/provider/RecentCallsPreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/provider/RecentCallsPreferences;->preferences:Landroid/provider/RecentCallsPreferences;

    .line 88
    :cond_0
    sget-object v0, Landroid/provider/RecentCallsPreferences;->preferences:Landroid/provider/RecentCallsPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getLong(Ljava/lang/String;)J
    .locals 3
    .parameter "key"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/provider/RecentCallsPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 93
    sget-object v0, Landroid/provider/RecentCallsPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 94
    sget-object v0, Landroid/provider/RecentCallsPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    return-void
.end method
