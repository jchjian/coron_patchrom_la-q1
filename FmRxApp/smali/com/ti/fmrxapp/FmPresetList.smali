.class public Lcom/ti/fmrxapp/FmPresetList;
.super Landroid/app/ListActivity;
.source "FmPresetList.java"


# static fields
.field public static adapter:Landroid/widget/SimpleAdapter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

.field private mLvpresets:Landroid/widget/ListView;

.field private updatelove:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/ti/fmrxapp/FmPresetList;->mContext:Landroid/content/Context;

    .line 63
    iput-object v0, p0, Lcom/ti/fmrxapp/FmPresetList;->mLvpresets:Landroid/widget/ListView;

    .line 331
    new-instance v0, Lcom/ti/fmrxapp/FmPresetList$8;

    invoke-direct {v0, p0}, Lcom/ti/fmrxapp/FmPresetList$8;-><init>(Lcom/ti/fmrxapp/FmPresetList;)V

    iput-object v0, p0, Lcom/ti/fmrxapp/FmPresetList;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/ti/fmrxapp/FmPresetList;Landroid/content/DialogInterface;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/ti/fmrxapp/FmPresetList;->holdDialog(Landroid/content/DialogInterface;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/ti/fmrxapp/FmPresetList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmPresetList;->refreshFavListItems()V

    return-void
.end method

.method static synthetic access$200(Lcom/ti/fmrxapp/FmPresetList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/ti/fmrxapp/FmPresetList;->updatelove:Z

    return v0
.end method

.method static synthetic access$202(Lcom/ti/fmrxapp/FmPresetList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/ti/fmrxapp/FmPresetList;->updatelove:Z

    return p1
.end method

.method static synthetic access$300(Lcom/ti/fmrxapp/FmPresetList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmPresetList;->finishSelf()V

    return-void
.end method

.method private finishSelf()V
    .locals 3

    .prologue
    .line 141
    const-string v1, "FmPresetList"

    const-string v2, "gms:>>>>>>>>>> will finish self from fmpresetlist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/ti/fmrxapp/FmRxApp;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 144
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmPresetList;->startActivity(Landroid/content/Intent;)V

    .line 146
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmPresetList;->finish()V

    .line 147
    return-void
.end method

.method private holdDialog(Landroid/content/DialogInterface;Z)V
    .locals 4
    .parameter "dialog"
    .parameter "flag"

    .prologue
    .line 166
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mShowing"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 168
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 169
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v1           #field:Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initControls()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method private refreshFavListItems()V
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/ti/fmrxapp/FmPresetList;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmPresetList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    return-void
.end method


# virtual methods
.method public isFavrateStation(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 176
    sget-object v2, Lcom/ti/fmrxapp/FmRxApp;->stations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 178
    .local v0, hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "love"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 179
    .local v1, isLove:Ljava/lang/String;
    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    const/4 v2, 0x1

    .line 182
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "aItem"

    .prologue
    .line 203
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v6

    check-cast v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 206
    .local v6, menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v7, v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 207
    .local v4, index:Ljava/lang/Integer;
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v3, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 208
    .local v3, i:Ljava/lang/Integer;
    const-string v7, "FmPresetList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DLG onMenu Selected"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 327
    const/4 v7, 0x0

    :goto_0
    return v7

    .line 216
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f05006a

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 219
    const v7, 0x7f05006f

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 222
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 223
    .local v5, input:Landroid/widget/EditText;
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/text/InputFilter;

    const/4 v8, 0x0

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    const/16 v10, 0x8

    invoke-direct {v9, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v7, v8

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 225
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 227
    const v7, 0x104000a

    new-instance v8, Lcom/ti/fmrxapp/FmPresetList$2;

    invoke-direct {v8, p0, v5, v4}, Lcom/ti/fmrxapp/FmPresetList$2;-><init>(Lcom/ti/fmrxapp/FmPresetList;Landroid/widget/EditText;Ljava/lang/Integer;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 254
    const/high16 v7, 0x104

    new-instance v8, Lcom/ti/fmrxapp/FmPresetList$3;

    invoke-direct {v8, p0}, Lcom/ti/fmrxapp/FmPresetList$3;-><init>(Lcom/ti/fmrxapp/FmPresetList;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 263
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 265
    const/4 v7, 0x1

    goto :goto_0

    .line 267
    .end local v0           #alert:Landroid/app/AlertDialog$Builder;
    .end local v5           #input:Landroid/widget/EditText;
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 269
    .local v1, alertd:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f050069

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 270
    const v7, 0x7f050069

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 271
    const v7, 0x104000a

    new-instance v8, Lcom/ti/fmrxapp/FmPresetList$4;

    invoke-direct {v8, p0, v4}, Lcom/ti/fmrxapp/FmPresetList$4;-><init>(Lcom/ti/fmrxapp/FmPresetList;Ljava/lang/Integer;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 282
    const/high16 v7, 0x104

    new-instance v8, Lcom/ti/fmrxapp/FmPresetList$5;

    invoke-direct {v8, p0}, Lcom/ti/fmrxapp/FmPresetList$5;-><init>(Lcom/ti/fmrxapp/FmPresetList;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 291
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 292
    const/4 v7, 0x1

    goto :goto_0

    .line 295
    .end local v1           #alertd:Landroid/app/AlertDialog$Builder;
    :pswitch_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 297
    .local v2, alertl:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f050068

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 298
    const v7, 0x7f050068

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 299
    const v7, 0x104000a

    new-instance v8, Lcom/ti/fmrxapp/FmPresetList$6;

    invoke-direct {v8, p0, v4}, Lcom/ti/fmrxapp/FmPresetList$6;-><init>(Lcom/ti/fmrxapp/FmPresetList;Ljava/lang/Integer;)V

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 314
    const/high16 v7, 0x104

    new-instance v8, Lcom/ti/fmrxapp/FmPresetList$7;

    invoke-direct {v8, p0}, Lcom/ti/fmrxapp/FmPresetList$7;-><init>(Lcom/ti/fmrxapp/FmPresetList;)V

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 323
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 324
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x3

    .line 71
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmPresetList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ti/fmrxapp/FmPresetList;->mContext:Landroid/content/Context;

    .line 73
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmPresetList;->setContentView(I)V

    .line 75
    new-instance v0, Landroid/widget/SimpleAdapter;

    sget-object v2, Lcom/ti/fmrxapp/FmRxApp;->stations:Ljava/util/ArrayList;

    const v3, 0x7f030007

    new-array v4, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "love"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "value"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "name"

    aput-object v5, v4, v1

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    sput-object v0, Lcom/ti/fmrxapp/FmPresetList;->adapter:Landroid/widget/SimpleAdapter;

    .line 88
    sget-object v0, Lcom/ti/fmrxapp/FmPresetList;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmPresetList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    sget-object v0, Lcom/ti/fmrxapp/FmPresetList;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 91
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmPresetList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmPresetList;->registerForContextMenu(Landroid/view/View;)V

    .line 92
    invoke-direct {p0}, Lcom/ti/fmrxapp/FmPresetList;->initControls()V

    .line 93
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmPresetList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ti/fmrxapp/FmPresetList;->mLvpresets:Landroid/widget/ListView;

    .line 94
    iget-object v0, p0, Lcom/ti/fmrxapp/FmPresetList;->mLvpresets:Landroid/widget/ListView;

    sget-object v1, Lcom/ti/fmrxapp/FmPresetList;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    iget-object v0, p0, Lcom/ti/fmrxapp/FmPresetList;->mLvpresets:Landroid/widget/ListView;

    new-instance v1, Lcom/ti/fmrxapp/FmPresetList$1;

    invoke-direct {v1, p0}, Lcom/ti/fmrxapp/FmPresetList$1;-><init>(Lcom/ti/fmrxapp/FmPresetList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v6, inf:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/ti/fmrxapp/FmPresetList;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ti/fmrxapp/FmPresetList;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    return-void

    .line 75
    :array_0
    .array-data 0x4
        0x42t 0x0t 0x6t 0x7ft
        0x43t 0x0t 0x6t 0x7ft
        0x44t 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v3, 0x0

    .line 188
    move-object v1, p3

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v1, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 189
    .local v0, index:Ljava/lang/Integer;
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 190
    const v1, 0x7f050062

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 191
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ti/fmrxapp/FmPresetList;->isFavrateStation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    const v1, 0x7f050069

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 195
    :goto_0
    const/4 v1, 0x2

    const v2, 0x7f05006a

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 196
    return-void

    .line 194
    :cond_0
    const/4 v1, 0x1

    const v2, 0x7f050068

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 151
    iget-object v0, p0, Lcom/ti/fmrxapp/FmPresetList;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ti/fmrxapp/FmPresetList;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 152
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 132
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 135
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ti/fmrxapp/FmPresetList;->setResult(I)V

    .line 136
    invoke-virtual {p0}, Lcom/ti/fmrxapp/FmPresetList;->finish()V

    .line 139
    return-void
.end method
