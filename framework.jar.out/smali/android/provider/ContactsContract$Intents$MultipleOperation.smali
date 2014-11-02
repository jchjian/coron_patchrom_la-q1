.class public final Landroid/provider/ContactsContract$Intents$MultipleOperation;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultipleOperation"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "android.intent.action.MULTIPLE_OPERATION"

.field public static final ITEM_TYPE_COPY_TO_CARD:Ljava/lang/String; = "vnd.android.multiple.item/copy_card"

.field public static final ITEM_TYPE_COPY_TO_PHONE:Ljava/lang/String; = "vnd.android.multiple.item/copy_phone"

.field public static final ITEM_TYPE_DELETE:Ljava/lang/String; = "vnd.android.multiple.item/delete"

.field public static final ITEM_TYPE_EXPORT_VCARD:Ljava/lang/String; = "vnd.android.multiple.item/export_vcard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
