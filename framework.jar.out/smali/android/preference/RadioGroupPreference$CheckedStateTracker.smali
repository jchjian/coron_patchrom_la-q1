.class Landroid/preference/RadioGroupPreference$CheckedStateTracker;
.super Ljava/lang/Object;
.source "RadioGroupPreference.java"

# interfaces
.implements Landroid/preference/RadioButtonPreference$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/RadioGroupPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/RadioGroupPreference;


# direct methods
.method private constructor <init>(Landroid/preference/RadioGroupPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Landroid/preference/RadioGroupPreference$CheckedStateTracker;->this$0:Landroid/preference/RadioGroupPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/RadioGroupPreference;Landroid/preference/RadioGroupPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/preference/RadioGroupPreference$CheckedStateTracker;-><init>(Landroid/preference/RadioGroupPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/preference/RadioButtonPreference;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 103
    iget-object v1, p0, Landroid/preference/RadioGroupPreference$CheckedStateTracker;->this$0:Landroid/preference/RadioGroupPreference;

    #getter for: Landroid/preference/RadioGroupPreference;->mProtectFromCheckedChange:Z
    invoke-static {v1}, Landroid/preference/RadioGroupPreference;->access$100(Landroid/preference/RadioGroupPreference;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Landroid/preference/RadioGroupPreference$CheckedStateTracker;->this$0:Landroid/preference/RadioGroupPreference;

    const/4 v2, 0x1

    #setter for: Landroid/preference/RadioGroupPreference;->mProtectFromCheckedChange:Z
    invoke-static {v1, v2}, Landroid/preference/RadioGroupPreference;->access$102(Landroid/preference/RadioGroupPreference;Z)Z

    .line 108
    iget-object v1, p0, Landroid/preference/RadioGroupPreference$CheckedStateTracker;->this$0:Landroid/preference/RadioGroupPreference;

    #getter for: Landroid/preference/RadioGroupPreference;->mCheckedKey:Ljava/lang/String;
    invoke-static {v1}, Landroid/preference/RadioGroupPreference;->access$200(Landroid/preference/RadioGroupPreference;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/preference/RadioGroupPreference$CheckedStateTracker;->this$0:Landroid/preference/RadioGroupPreference;

    #getter for: Landroid/preference/RadioGroupPreference;->mCheckedKey:Ljava/lang/String;
    invoke-static {v1}, Landroid/preference/RadioGroupPreference;->access$200(Landroid/preference/RadioGroupPreference;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    :cond_1
    iget-object v1, p0, Landroid/preference/RadioGroupPreference$CheckedStateTracker;->this$0:Landroid/preference/RadioGroupPreference;

    iget-object v2, p0, Landroid/preference/RadioGroupPreference$CheckedStateTracker;->this$0:Landroid/preference/RadioGroupPreference;

    #getter for: Landroid/preference/RadioGroupPreference;->mCheckedKey:Ljava/lang/String;
    invoke-static {v2}, Landroid/preference/RadioGroupPreference;->access$200(Landroid/preference/RadioGroupPreference;)Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/preference/RadioGroupPreference;->setCheckedStateForView(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Landroid/preference/RadioGroupPreference;->access$300(Landroid/preference/RadioGroupPreference;Ljava/lang/String;Z)V

    .line 112
    :cond_2
    iget-object v1, p0, Landroid/preference/RadioGroupPreference$CheckedStateTracker;->this$0:Landroid/preference/RadioGroupPreference;

    #setter for: Landroid/preference/RadioGroupPreference;->mProtectFromCheckedChange:Z
    invoke-static {v1, v3}, Landroid/preference/RadioGroupPreference;->access$102(Landroid/preference/RadioGroupPreference;Z)Z

    .line 114
    invoke-virtual {p1}, Landroid/preference/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Landroid/preference/RadioGroupPreference$CheckedStateTracker;->this$0:Landroid/preference/RadioGroupPreference;

    #calls: Landroid/preference/RadioGroupPreference;->setCheckedKey(Ljava/lang/String;)V
    invoke-static {v1, v0}, Landroid/preference/RadioGroupPreference;->access$400(Landroid/preference/RadioGroupPreference;Ljava/lang/String;)V

    goto :goto_0
.end method
