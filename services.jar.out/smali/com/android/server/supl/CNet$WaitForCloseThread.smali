.class Lcom/android/server/supl/CNet$WaitForCloseThread;
.super Ljava/lang/Thread;
.source "CNet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/supl/CNet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WaitForCloseThread"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "Waiting for close JVM"

    #calls: Lcom/android/server/supl/CNet;->Log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/supl/CNet;->access$000(Ljava/lang/String;)V

    .line 60
    #calls: Lcom/android/server/supl/CNet;->StartNativeUnitTest()V
    invoke-static {}, Lcom/android/server/supl/CNet;->access$100()V

    .line 61
    return-void
.end method
