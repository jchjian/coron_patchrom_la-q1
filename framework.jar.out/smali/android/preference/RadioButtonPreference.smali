.class public Landroid/preference/RadioButtonPreference;
.super Landroid/preference/Preference;
.source "RadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/RadioButtonPreference$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mChecked:Z

.field private mOnCheckedChangeListener:Landroid/preference/RadioButtonPreference$OnCheckedChangeListener;

.field private mOnCheckedChangeWidgetListener:Landroid/preference/RadioButtonPreference$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    const v0, 0x10103af

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Landroid/preference/RadioButtonPreference;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 45
    const v1, 0x102030c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, radiobuttonView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    .line 47
    check-cast v0, Landroid/widget/Checkable;

    .end local v0           #radiobuttonView:Landroid/view/View;
    iget-boolean v1, p0, Landroid/preference/RadioButtonPreference;->mChecked:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 49
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 55
    iget-boolean v1, p0, Landroid/preference/RadioButtonPreference;->mChecked:Z

    if-nez v1, :cond_2

    .line 56
    invoke-virtual {p0}, Landroid/preference/RadioButtonPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    .line 58
    .local v0, newValue:Z
    :goto_0
    iget-object v1, p0, Landroid/preference/RadioButtonPreference;->mOnCheckedChangeListener:Landroid/preference/RadioButtonPreference$OnCheckedChangeListener;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Landroid/preference/RadioButtonPreference;->mOnCheckedChangeListener:Landroid/preference/RadioButtonPreference$OnCheckedChangeListener;

    invoke-interface {v1, p0, v0}, Landroid/preference/RadioButtonPreference$OnCheckedChangeListener;->onCheckedChanged(Landroid/preference/RadioButtonPreference;Z)V

    .line 61
    :cond_0
    iget-object v1, p0, Landroid/preference/RadioButtonPreference;->mOnCheckedChangeWidgetListener:Landroid/preference/RadioButtonPreference$OnCheckedChangeListener;

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Landroid/preference/RadioButtonPreference;->mOnCheckedChangeWidgetListener:Landroid/preference/RadioButtonPreference$OnCheckedChangeListener;

    invoke-interface {v1, p0, v0}, Landroid/preference/RadioButtonPreference$OnCheckedChangeListener;->onCheckedChanged(Landroid/preference/RadioButtonPreference;Z)V

    .line 64
    :cond_1
    invoke-virtual {p0, v0}, Landroid/preference/RadioButtonPreference;->setChecked(Z)V

    .line 66
    .end local v0           #newValue:Z
    :cond_2
    return-void

    .line 56
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 75
    iget-boolean v0, p0, Landroid/preference/RadioButtonPreference;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 76
    iput-boolean p1, p0, Landroid/preference/RadioButtonPreference;->mChecked:Z

    .line 77
    invoke-virtual {p0, p1}, Landroid/preference/RadioButtonPreference;->persistBoolean(Z)Z

    .line 79
    invoke-virtual {p0}, Landroid/preference/RadioButtonPreference;->notifyChanged()V

    .line 81
    :cond_0
    return-void
.end method

.method setOnCheckedChangeWidgetListener(Landroid/preference/RadioButtonPreference$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 97
    iput-object p1, p0, Landroid/preference/RadioButtonPreference;->mOnCheckedChangeWidgetListener:Landroid/preference/RadioButtonPreference$OnCheckedChangeListener;

    .line 98
    return-void
.end method
