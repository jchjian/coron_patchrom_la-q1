.class public Lcom/android/server/supl/SUPLService;
.super Landroid/os/Binder;
.source "SUPLService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/supl/SUPLService$1;,
        Lcom/android/server/supl/SUPLService$SUPLThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SUPLService"

.field private static mSuplServer:Lcom/android/server/supl/SUPLServer;

.field private static sServiceInstance:Lcom/android/server/supl/SUPLService;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/android/server/supl/SUPLService;->mContext:Landroid/content/Context;

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/supl/SUPLService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/supl/SUPLService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/supl/SUPLService;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/server/supl/SUPLService;->sServiceInstance:Lcom/android/server/supl/SUPLService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/supl/SUPLService;)Lcom/android/server/supl/SUPLService;
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    sput-object p0, Lcom/android/server/supl/SUPLService;->sServiceInstance:Lcom/android/server/supl/SUPLService;

    return-object p0
.end method

.method static synthetic access$200()Lcom/android/server/supl/SUPLServer;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/server/supl/SUPLService;->mSuplServer:Lcom/android/server/supl/SUPLServer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/supl/SUPLServer;)Lcom/android/server/supl/SUPLServer;
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    sput-object p0, Lcom/android/server/supl/SUPLService;->mSuplServer:Lcom/android/server/supl/SUPLServer;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/supl/SUPLService;
    .locals 1
    .parameter "context"

    .prologue
    .line 95
    invoke-static {p0}, Lcom/android/server/supl/SUPLService$SUPLThread;->getServiceInstance(Landroid/content/Context;)Lcom/android/server/supl/SUPLService;

    move-result-object v0

    return-object v0
.end method
