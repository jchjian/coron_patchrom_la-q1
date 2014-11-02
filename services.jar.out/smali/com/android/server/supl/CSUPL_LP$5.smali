.class final Lcom/android/server/supl/CSUPL_LP$5;
.super Ljava/lang/Object;
.source "CSUPL_LP.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/supl/CSUPL_LP;->showSUPLInitDialog(ZLjava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 573
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 576
    const-string v0, "showSUPLInitDialog: onCancel -> Do nothing"

    invoke-static {v0}, Lcom/android/server/supl/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 577
    return-void
.end method
