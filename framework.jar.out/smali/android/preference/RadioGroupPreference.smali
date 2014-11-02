.class public Landroid/preference/RadioGroupPreference;
.super Landroid/preference/PreferenceCategory;
.source "RadioGroupPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/RadioGroupPreference$1;,
        Landroid/preference/RadioGroupPreference$CheckedStateTracker;,
        Landroid/preference/RadioGroupPreference$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mCheckedKey:Ljava/lang/String;

.field private mChildOnCheckedChangeListener:Landroid/preference/RadioButtonPreference$OnCheckedChangeListener;

.field private mOnCheckedChangeListener:Landroid/preference/RadioGroupPreference$OnCheckedChangeListener;

.field private mProtectFromCheckedChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/RadioGroupPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    const v0, 0x101008c

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/RadioGroupPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput-boolean v2, p0, Landroid/preference/RadioGroupPreference;->mProtectFromCheckedChange:Z

    .line 32
    sget-object v1, Lcom/android/internal/R$styleable;->RadioGroupPreference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/RadioGroupPreference;->mCheckedKey:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Landroid/preference/RadioGroupPreference;->mCheckedKey:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 37
    const-string v1, "-1"

    iput-object v1, p0, Landroid/preference/RadioGroupPreference;->mCheckedKey:Ljava/lang/String;

    .line 39
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    new-instance v1, Landroid/preference/RadioGroupPreference$CheckedStateTracker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/preference/RadioGroupPreference$CheckedStateTracker;-><init>(Landroid/preference/RadioGroupPreference;Landroid/preference/RadioGroupPreference$1;)V

    iput-object v1, p0, Landroid/preference/RadioGroupPreference;->mChildOnCheckedChangeListener:Landroid/preference/RadioButtonPreference$OnCheckedChangeListener;

    .line 42
    return-void
.end method

.method static synthetic access$100(Landroid/preference/RadioGroupPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Landroid/preference/RadioGroupPreference;->mProtectFromCheckedChange:Z

    return v0
.end method

.method static synthetic access$102(Landroid/preference/RadioGroupPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Landroid/preference/RadioGroupPreference;->mProtectFromCheckedChange:Z

    return p1
.end method

.method static synthetic access$200(Landroid/preference/RadioGroupPreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Landroid/preference/RadioGroupPreference;->mCheckedKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/preference/RadioGroupPreference;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/preference/RadioGroupPreference;->setCheckedStateForView(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Landroid/preference/RadioGroupPreference;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/preference/RadioGroupPreference;->setCheckedKey(Ljava/lang/String;)V

    return-void
.end method

.method private setCheckedKey(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 81
    iput-object p1, p0, Landroid/preference/RadioGroupPreference;->mCheckedKey:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Landroid/preference/RadioGroupPreference;->mOnCheckedChangeListener:Landroid/preference/RadioGroupPreference$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Landroid/preference/RadioGroupPreference;->mOnCheckedChangeListener:Landroid/preference/RadioGroupPreference$OnCheckedChangeListener;

    iget-object v1, p0, Landroid/preference/RadioGroupPreference;->mCheckedKey:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Landroid/preference/RadioGroupPreference$OnCheckedChangeListener;->onCheckedChanged(Landroid/preference/RadioGroupPreference;Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method

.method private setCheckedStateForView(Ljava/lang/String;Z)V
    .locals 2
    .parameter "viewKey"
    .parameter "checked"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Landroid/preference/RadioGroupPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 90
    .local v0, checkedView:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/preference/RadioButtonPreference;

    if-eqz v1, :cond_0

    .line 91
    check-cast v0, Landroid/preference/RadioButtonPreference;

    .end local v0           #checkedView:Landroid/preference/Preference;
    invoke-virtual {v0, p2}, Landroid/preference/RadioButtonPreference;->setChecked(Z)V

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public addPreference(Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    instance-of v1, p1, Landroid/preference/RadioButtonPreference;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 122
    check-cast v0, Landroid/preference/RadioButtonPreference;

    .line 123
    .local v0, button:Landroid/preference/RadioButtonPreference;
    invoke-virtual {v0}, Landroid/preference/RadioButtonPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    iput-boolean v4, p0, Landroid/preference/RadioGroupPreference;->mProtectFromCheckedChange:Z

    .line 125
    iget-object v1, p0, Landroid/preference/RadioGroupPreference;->mCheckedKey:Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    iget-object v1, p0, Landroid/preference/RadioGroupPreference;->mCheckedKey:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Landroid/preference/RadioGroupPreference;->setCheckedStateForView(Ljava/lang/String;Z)V

    .line 128
    :cond_0
    iput-boolean v3, p0, Landroid/preference/RadioGroupPreference;->mProtectFromCheckedChange:Z

    .line 129
    invoke-virtual {v0}, Landroid/preference/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/preference/RadioGroupPreference;->setCheckedKey(Ljava/lang/String;)V

    :cond_1
    move-object v1, p1

    .line 132
    check-cast v1, Landroid/preference/RadioButtonPreference;

    iget-object v2, p0, Landroid/preference/RadioGroupPreference;->mChildOnCheckedChangeListener:Landroid/preference/RadioButtonPreference$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/preference/RadioButtonPreference;->setOnCheckedChangeWidgetListener(Landroid/preference/RadioButtonPreference$OnCheckedChangeListener;)V

    .line 136
    .end local v0           #button:Landroid/preference/RadioButtonPreference;
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 137
    return v4
.end method

.method public check(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 64
    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/RadioGroupPreference;->mCheckedKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Landroid/preference/RadioGroupPreference;->mCheckedKey:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Landroid/preference/RadioGroupPreference;->mCheckedKey:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/preference/RadioGroupPreference;->setCheckedStateForView(Ljava/lang/String;Z)V

    .line 72
    :cond_1
    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/preference/RadioGroupPreference;->setCheckedStateForView(Ljava/lang/String;Z)V

    .line 76
    :cond_2
    invoke-direct {p0, p1}, Landroid/preference/RadioGroupPreference;->setCheckedKey(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public setOnCheckedChangeListener(Landroid/preference/RadioGroupPreference$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 96
    iput-object p1, p0, Landroid/preference/RadioGroupPreference;->mOnCheckedChangeListener:Landroid/preference/RadioGroupPreference$OnCheckedChangeListener;

    .line 97
    return-void
.end method
