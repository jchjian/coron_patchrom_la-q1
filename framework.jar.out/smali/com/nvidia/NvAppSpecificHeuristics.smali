.class public Lcom/nvidia/NvAppSpecificHeuristics;
.super Ljava/lang/Object;
.source "NvAppSpecificHeuristics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nvidia/NvAppSpecificHeuristics$App;
    }
.end annotation


# static fields
.field private static final DEBUG_NV_APP_PROFILE:Z = false

.field private static final TAG:Ljava/lang/String; = "NvAppSpecificHeuristics"

.field private static final disableCpuCoreBiasDefault:Z

.field private static final disableGpuScalingDefault:Z

.field private static final label_0:[C

.field private static final label_1:[C

.field private static final label_10:[C

.field private static final label_11:[C

.field private static final label_12:[C

.field private static final label_13:[C

.field private static final label_14:[C

.field private static final label_15:[C

.field private static final label_16:[C

.field private static final label_17:[C

.field private static final label_18:[C

.field private static final label_19:[C

.field private static final label_2:[C

.field private static final label_20:[C

.field private static final label_3:[C

.field private static final label_4:[C

.field private static final label_5:[C

.field private static final label_6:[C

.field private static final label_7:[C

.field private static final label_8:[C

.field private static final label_9:[C

.field private static final mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

.field private static final scalingMinFreqDefault:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v12, 0x14

    const/16 v1, 0x15

    const v3, 0x124f80

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 35
    const/16 v0, 0x2c

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nvidia/NvAppSpecificHeuristics;->label_0:[C

    .line 81
    const/16 v0, 0x28

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/nvidia/NvAppSpecificHeuristics;->label_1:[C

    .line 123
    const/16 v0, 0x28

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/nvidia/NvAppSpecificHeuristics;->label_2:[C

    .line 165
    const/16 v0, 0x17

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/nvidia/NvAppSpecificHeuristics;->label_3:[C

    .line 190
    const/16 v0, 0x1b

    new-array v0, v0, [C

    fill-array-data v0, :array_4

    sput-object v0, Lcom/nvidia/NvAppSpecificHeuristics;->label_4:[C

    .line 219
    const/16 v0, 0x16

    new-array v0, v0, [C

    fill-array-data v0, :array_5

    sput-object v0, Lcom/nvidia/NvAppSpecificHeuristics;->label_5:[C

    .line 243
    const/16 v0, 0x19

    new-array v0, v0, [C

    fill-array-data v0, :array_6

    sput-object v0, Lcom/nvidia/NvAppSpecificHeuristics;->label_6:[C

    .line 270
    const/16 v0, 0x12

    new-array v0, v0, [C

    fill-array-data v0, :array_7

    sput-object v0, Lcom/nvidia/NvAppSpecificHeuristics;->label_7:[C

    .line 290
    const/16 v0, 0x11

    new-array v0, v0, [C

    fill-array-data v0, :array_8

    sput-object v0, Lcom/nvidia/NvAppSpecificHeuristics;->label_8:[C

    .line 309
    const/16 v0, 0x17

    new-array v0, v0, [C

    fill-array-data v0, :array_9

    sput-object v0, Lcom/nvidia/NvAppSpecificHeuristics;->label_9:[C

    .line 334
    const/16 v0, 0x17

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/nvidia/NvAppSpecificHeuristics;->label_10:[C

    .line 359
    new-array v0, v1, [C

    fill-array-data v0, :array_b

    sput-object v0, Lcom/nvidia/NvAppSpecificHeuristics;->label_11:[C

    .line 382
    new-array v0, v12, [C

    fill-array-data v0, :array_c

    sput-object v0, Lcom/nvidia/NvAppSpecificHeuristics;->label_12:[C

    .line 404
    const/16 v0, 0x1d

    new-array v0, v0, [C

    fill-array-data v0, :array_d

    sput-object v0, Lcom/nvidia/NvAppSpecificHeuristics;->label_13:[C

    .line 435
    const/16 v0, 0x1d

    new-array v0, v0, [C

    fill-array-data v0, :array_e

    sput-object v0, Lcom/nvidia/NvAppSpecificHeuristics;->label_14:[C

    .line 466
    const/16 v0, 0x13

    new-array v0, v0, [C

    fill-array-data v0, :array_f

    sput-object v0, Lcom/nvidia/NvAppSpecificHeuristics;->label_15:[C

    .line 487
    new-array v0, v12, [C

    fill-array-data v0, :array_10

    sput-object v0, Lcom/nvidia/NvAppSpecificHeuristics;->label_16:[C

    .line 509
    const/16 v0, 0x16

    new-array v0, v0, [C

    fill-array-data v0, :array_11

    sput-object v0, Lcom/nvidia/NvAppSpecificHeuristics;->label_17:[C

    .line 533
    new-array v0, v1, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/nvidia/NvAppSpecificHeuristics;->label_18:[C

    .line 556
    new-array v0, v1, [C

    fill-array-data v0, :array_13

    sput-object v0, Lcom/nvidia/NvAppSpecificHeuristics;->label_19:[C

    .line 579
    const/16 v0, 0x1d

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lcom/nvidia/NvAppSpecificHeuristics;->label_20:[C

    .line 660
    new-array v11, v1, [Lcom/nvidia/NvAppSpecificHeuristics$App;

    new-instance v0, Lcom/nvidia/NvAppSpecificHeuristics$App;

    sget-object v1, Lcom/nvidia/NvAppSpecificHeuristics;->label_0:[C

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>([CZIZZ)V

    aput-object v0, v11, v4

    new-instance v0, Lcom/nvidia/NvAppSpecificHeuristics$App;

    sget-object v1, Lcom/nvidia/NvAppSpecificHeuristics;->label_1:[C

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>([CZIZZ)V

    aput-object v0, v11, v2

    const/4 v6, 0x2

    new-instance v0, Lcom/nvidia/NvAppSpecificHeuristics$App;

    sget-object v1, Lcom/nvidia/NvAppSpecificHeuristics;->label_2:[C

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>([CZIZZ)V

    aput-object v0, v11, v6

    const/4 v0, 0x3

    new-instance v5, Lcom/nvidia/NvAppSpecificHeuristics$App;

    sget-object v6, Lcom/nvidia/NvAppSpecificHeuristics;->label_3:[C

    move v7, v2

    move v8, v4

    move v9, v4

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>([CZIZZ)V

    aput-object v5, v11, v0

    const/4 v6, 0x4

    new-instance v0, Lcom/nvidia/NvAppSpecificHeuristics$App;

    sget-object v1, Lcom/nvidia/NvAppSpecificHeuristics;->label_4:[C

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>([CZIZZ)V

    aput-object v0, v11, v6

    const/4 v6, 0x5

    new-instance v0, Lcom/nvidia/NvAppSpecificHeuristics$App;

    sget-object v1, Lcom/nvidia/NvAppSpecificHeuristics;->label_5:[C

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>([CZIZZ)V

    aput-object v0, v11, v6

    const/4 v0, 0x6

    new-instance v5, Lcom/nvidia/NvAppSpecificHeuristics$App;

    sget-object v6, Lcom/nvidia/NvAppSpecificHeuristics;->label_6:[C

    move v7, v4

    move v8, v3

    move v9, v4

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>([CZIZZ)V

    aput-object v5, v11, v0

    const/4 v0, 0x7

    new-instance v5, Lcom/nvidia/NvAppSpecificHeuristics$App;

    sget-object v6, Lcom/nvidia/NvAppSpecificHeuristics;->label_7:[C

    move v7, v4

    move v8, v3

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>([CZIZZ)V

    aput-object v5, v11, v0

    const/16 v0, 0x8

    new-instance v5, Lcom/nvidia/NvAppSpecificHeuristics$App;

    sget-object v6, Lcom/nvidia/NvAppSpecificHeuristics;->label_8:[C

    move v7, v4

    move v8, v4

    move v9, v4

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>([CZIZZ)V

    aput-object v5, v11, v0

    const/16 v0, 0x9

    new-instance v5, Lcom/nvidia/NvAppSpecificHeuristics$App;

    sget-object v6, Lcom/nvidia/NvAppSpecificHeuristics;->label_9:[C

    move v7, v4

    move v8, v4

    move v9, v4

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>([CZIZZ)V

    aput-object v5, v11, v0

    const/16 v0, 0xa

    new-instance v5, Lcom/nvidia/NvAppSpecificHeuristics$App;

    sget-object v6, Lcom/nvidia/NvAppSpecificHeuristics;->label_10:[C

    move v7, v4

    move v8, v4

    move v9, v4

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>([CZIZZ)V

    aput-object v5, v11, v0

    const/16 v0, 0xb

    new-instance v5, Lcom/nvidia/NvAppSpecificHeuristics$App;

    sget-object v6, Lcom/nvidia/NvAppSpecificHeuristics;->label_11:[C

    move v7, v4

    move v8, v4

    move v9, v4

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>([CZIZZ)V

    aput-object v5, v11, v0

    const/16 v0, 0xc

    new-instance v5, Lcom/nvidia/NvAppSpecificHeuristics$App;

    sget-object v6, Lcom/nvidia/NvAppSpecificHeuristics;->label_12:[C

    move v7, v4

    move v8, v4

    move v9, v4

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>([CZIZZ)V

    aput-object v5, v11, v0

    const/16 v0, 0xd

    new-instance v5, Lcom/nvidia/NvAppSpecificHeuristics$App;

    sget-object v6, Lcom/nvidia/NvAppSpecificHeuristics;->label_13:[C

    move v7, v4

    move v8, v3

    move v9, v4

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>([CZIZZ)V

    aput-object v5, v11, v0

    const/16 v0, 0xe

    new-instance v5, Lcom/nvidia/NvAppSpecificHeuristics$App;

    sget-object v6, Lcom/nvidia/NvAppSpecificHeuristics;->label_14:[C

    move v7, v4

    move v8, v3

    move v9, v4

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>([CZIZZ)V

    aput-object v5, v11, v0

    const/16 v0, 0xf

    new-instance v5, Lcom/nvidia/NvAppSpecificHeuristics$App;

    sget-object v6, Lcom/nvidia/NvAppSpecificHeuristics;->label_15:[C

    move v7, v4

    move v8, v3

    move v9, v4

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>([CZIZZ)V

    aput-object v5, v11, v0

    const/16 v0, 0x10

    new-instance v5, Lcom/nvidia/NvAppSpecificHeuristics$App;

    sget-object v6, Lcom/nvidia/NvAppSpecificHeuristics;->label_16:[C

    move v7, v4

    move v8, v4

    move v9, v4

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>([CZIZZ)V

    aput-object v5, v11, v0

    const/16 v0, 0x11

    new-instance v5, Lcom/nvidia/NvAppSpecificHeuristics$App;

    sget-object v6, Lcom/nvidia/NvAppSpecificHeuristics;->label_17:[C

    move v7, v4

    move v8, v4

    move v9, v4

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>([CZIZZ)V

    aput-object v5, v11, v0

    const/16 v6, 0x12

    new-instance v0, Lcom/nvidia/NvAppSpecificHeuristics$App;

    sget-object v1, Lcom/nvidia/NvAppSpecificHeuristics;->label_18:[C

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>([CZIZZ)V

    aput-object v0, v11, v6

    const/16 v0, 0x13

    new-instance v5, Lcom/nvidia/NvAppSpecificHeuristics$App;

    sget-object v6, Lcom/nvidia/NvAppSpecificHeuristics;->label_19:[C

    move v7, v4

    move v8, v3

    move v9, v4

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>([CZIZZ)V

    aput-object v5, v11, v0

    new-instance v5, Lcom/nvidia/NvAppSpecificHeuristics$App;

    sget-object v6, Lcom/nvidia/NvAppSpecificHeuristics;->label_20:[C

    move v7, v4

    move v8, v3

    move v9, v4

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>([CZIZZ)V

    aput-object v5, v11, v12

    sput-object v11, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    return-void

    .line 35
    :array_0
    .array-data 0x2
        0x36t 0x0t
        0x3at 0x0t
        0x38t 0x0t
        0x7bt 0x0t
        0x34t 0x0t
        0x20t 0x0t
        0x27t 0x0t
        0x3at 0x0t
        0x27t 0x0t
        0x34t 0x0t
        0x26t 0x0t
        0x3at 0x0t
        0x33t 0x0t
        0x21t 0x0t
        0x22t 0x0t
        0x3at 0x0t
        0x27t 0x0t
        0x3et 0x0t
        0x26t 0x0t
        0x7bt 0x0t
        0x24t 0x0t
        0x20t 0x0t
        0x34t 0x0t
        0x31t 0x0t
        0x27t 0x0t
        0x34t 0x0t
        0x3bt 0x0t
        0x21t 0x0t
        0x7bt 0x0t
        0x20t 0x0t
        0x3ct 0x0t
        0x7bt 0x0t
        0x25t 0x0t
        0x27t 0x0t
        0x3at 0x0t
        0x33t 0x0t
        0x30t 0x0t
        0x26t 0x0t
        0x26t 0x0t
        0x3ct 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x34t 0x0t
        0x39t 0x0t
    .end array-data

    .line 81
    :array_1
    .array-data 0x2
        0x36t 0x0t
        0x3at 0x0t
        0x38t 0x0t
        0x7bt 0x0t
        0x34t 0x0t
        0x20t 0x0t
        0x27t 0x0t
        0x3at 0x0t
        0x27t 0x0t
        0x34t 0x0t
        0x26t 0x0t
        0x3at 0x0t
        0x33t 0x0t
        0x21t 0x0t
        0x22t 0x0t
        0x3at 0x0t
        0x27t 0x0t
        0x3et 0x0t
        0x26t 0x0t
        0x7bt 0x0t
        0x24t 0x0t
        0x20t 0x0t
        0x34t 0x0t
        0x31t 0x0t
        0x27t 0x0t
        0x34t 0x0t
        0x3bt 0x0t
        0x21t 0x0t
        0x7bt 0x0t
        0x20t 0x0t
        0x3ct 0x0t
        0x7bt 0x0t
        0x34t 0x0t
        0x31t 0x0t
        0x23t 0x0t
        0x34t 0x0t
        0x3bt 0x0t
        0x36t 0x0t
        0x30t 0x0t
        0x31t 0x0t
    .end array-data

    .line 123
    :array_2
    .array-data 0x2
        0x36t 0x0t
        0x3at 0x0t
        0x38t 0x0t
        0x7bt 0x0t
        0x34t 0x0t
        0x20t 0x0t
        0x27t 0x0t
        0x3at 0x0t
        0x27t 0x0t
        0x34t 0x0t
        0x26t 0x0t
        0x3at 0x0t
        0x33t 0x0t
        0x21t 0x0t
        0x22t 0x0t
        0x3at 0x0t
        0x27t 0x0t
        0x3et 0x0t
        0x26t 0x0t
        0x7bt 0x0t
        0x24t 0x0t
        0x20t 0x0t
        0x34t 0x0t
        0x31t 0x0t
        0x27t 0x0t
        0x34t 0x0t
        0x3bt 0x0t
        0x21t 0x0t
        0x7bt 0x0t
        0x20t 0x0t
        0x3ct 0x0t
        0x7bt 0x0t
        0x26t 0x0t
        0x21t 0x0t
        0x34t 0x0t
        0x3bt 0x0t
        0x31t 0x0t
        0x34t 0x0t
        0x27t 0x0t
        0x31t 0x0t
    .end array-data

    .line 165
    :array_3
    .array-data 0x2
        0x36t 0x0t
        0x3at 0x0t
        0x38t 0x0t
        0x7bt 0x0t
        0x3bt 0x0t
        0x30t 0x0t
        0x21t 0x0t
        0x33t 0x0t
        0x39t 0x0t
        0x3ct 0x0t
        0x2dt 0x0t
        0x7bt 0x0t
        0x38t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x3ct 0x0t
        0x34t 0x0t
        0x36t 0x0t
        0x39t 0x0t
        0x3ct 0x0t
        0x30t 0x0t
        0x3bt 0x0t
        0x21t 0x0t
    .end array-data

    .line 190
    nop

    :array_4
    .array-data 0x2
        0x3at 0x0t
        0x27t 0x0t
        0x32t 0x0t
        0x7bt 0x0t
        0x2ft 0x0t
        0x30t 0x0t
        0x27t 0x0t
        0x3at 0x0t
        0x2dt 0x0t
        0x39t 0x0t
        0x34t 0x0t
        0x37t 0x0t
        0x7bt 0x0t
        0x2ft 0x0t
        0x30t 0x0t
        0x27t 0x0t
        0x3at 0x0t
        0x2dt 0x0t
        0x37t 0x0t
        0x30t 0x0t
        0x3bt 0x0t
        0x36t 0x0t
        0x3dt 0x0t
        0x38t 0x0t
        0x34t 0x0t
        0x27t 0x0t
        0x3et 0x0t
    .end array-data

    .line 219
    nop

    :array_5
    .array-data 0x2
        0x3at 0x0t
        0x27t 0x0t
        0x32t 0x0t
        0x7bt 0x0t
        0x2ft 0x0t
        0x30t 0x0t
        0x27t 0x0t
        0x3at 0x0t
        0x2dt 0x0t
        0x39t 0x0t
        0x34t 0x0t
        0x37t 0x0t
        0x7bt 0x0t
        0x37t 0x0t
        0x30t 0x0t
        0x3bt 0x0t
        0x36t 0x0t
        0x3dt 0x0t
        0x38t 0x0t
        0x34t 0x0t
        0x27t 0x0t
        0x3et 0x0t
    .end array-data

    .line 243
    :array_6
    .array-data 0x2
        0x36t 0x0t
        0x3at 0x0t
        0x38t 0x0t
        0x7bt 0x0t
        0x27t 0x0t
        0x3ct 0x0t
        0x32t 0x0t
        0x3dt 0x0t
        0x21t 0x0t
        0x22t 0x0t
        0x34t 0x0t
        0x27t 0x0t
        0x30t 0x0t
        0x7bt 0x0t
        0x21t 0x0t
        0x31t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x67t 0x0t
        0x23t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x3ft 0x0t
        0x3bt 0x0t
        0x3ct 0x0t
    .end array-data

    .line 270
    nop

    :array_7
    .array-data 0x2
        0x36t 0x0t
        0x3at 0x0t
        0x38t 0x0t
        0x7bt 0x0t
        0x3bt 0x0t
        0x23t 0x0t
        0x3ct 0x0t
        0x31t 0x0t
        0x3ct 0x0t
        0x34t 0x0t
        0x7bt 0x0t
        0x39t 0x0t
        0x3ct 0x0t
        0x3bt 0x0t
        0x25t 0x0t
        0x34t 0x0t
        0x36t 0x0t
        0x3et 0x0t
    .end array-data

    .line 290
    :array_8
    .array-data 0x2
        0x26t 0x0t
        0x30t 0x0t
        0x7bt 0x0t
        0x3bt 0x0t
        0x30t 0x0t
        0x3bt 0x0t
        0x34t 0x0t
        0x7bt 0x0t
        0x3bt 0x0t
        0x30t 0x0t
        0x3bt 0x0t
        0x34t 0x0t
        0x38t 0x0t
        0x34t 0x0t
        0x27t 0x0t
        0x3et 0x0t
        0x67t 0x0t
    .end array-data

    .line 309
    nop

    :array_9
    .array-data 0x2
        0x36t 0x0t
        0x3at 0x0t
        0x38t 0x0t
        0x7bt 0x0t
        0x24t 0x0t
        0x20t 0x0t
        0x34t 0x0t
        0x39t 0x0t
        0x36t 0x0t
        0x3at 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x7bt 0x0t
        0x24t 0x0t
        0x2dt 0x0t
        0x7bt 0x0t
        0x3bt 0x0t
        0x30t 0x0t
        0x3at 0x0t
        0x36t 0x0t
        0x3at 0x0t
        0x27t 0x0t
        0x30t 0x0t
    .end array-data

    .line 334
    nop

    :array_a
    .array-data 0x2
        0x36t 0x0t
        0x3at 0x0t
        0x38t 0x0t
        0x7bt 0x0t
        0x3bt 0x0t
        0x23t 0x0t
        0x3ct 0x0t
        0x31t 0x0t
        0x3ct 0x0t
        0x34t 0x0t
        0x7bt 0x0t
        0x31t 0x0t
        0x30t 0x0t
        0x23t 0x0t
        0x21t 0x0t
        0x30t 0x0t
        0x36t 0x0t
        0x3dt 0x0t
        0x7bt 0x0t
        0x33t 0x0t
        0x38t 0x0t
        0x67t 0x0t
        0x65t 0x0t
    .end array-data

    .line 359
    nop

    :array_b
    .array-data 0x2
        0x36t 0x0t
        0x3at 0x0t
        0x38t 0x0t
        0x7bt 0x0t
        0x21t 0x0t
        0x3dt 0x0t
        0x27t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x7bt 0x0t
        0x3ft 0x0t
        0x25t 0x0t
        0x36t 0x0t
        0x21t 0x0t
        0x7bt 0x0t
        0x37t 0x0t
        0x30t 0x0t
        0x3bt 0x0t
        0x36t 0x0t
        0x3dt 0x0t
    .end array-data

    .line 382
    nop

    :array_c
    .array-data 0x2
        0x36t 0x0t
        0x3at 0x0t
        0x38t 0x0t
        0x7bt 0x0t
        0x21t 0x0t
        0x34t 0x0t
        0x36t 0x0t
        0x21t 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x7bt 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x36t 0x0t
        0x21t 0x0t
        0x3at 0x0t
        0x25t 0x0t
        0x3ct 0x0t
        0x34t 0x0t
    .end array-data

    .line 404
    :array_d
    .array-data 0x2
        0x36t 0x0t
        0x3at 0x0t
        0x38t 0x0t
        0x7bt 0x0t
        0x32t 0x0t
        0x39t 0x0t
        0x37t 0x0t
        0x30t 0x0t
        0x3bt 0x0t
        0x36t 0x0t
        0x3dt 0x0t
        0x38t 0x0t
        0x34t 0x0t
        0x27t 0x0t
        0x3et 0x0t
        0x7bt 0x0t
        0x32t 0x0t
        0x39t 0x0t
        0x37t 0x0t
        0x30t 0x0t
        0x3bt 0x0t
        0x36t 0x0t
        0x3dt 0x0t
        0x38t 0x0t
        0x34t 0x0t
        0x27t 0x0t
        0x3et 0x0t
        0x67t 0x0t
        0x65t 0x0t
    .end array-data

    .line 435
    nop

    :array_e
    .array-data 0x2
        0x36t 0x0t
        0x3at 0x0t
        0x38t 0x0t
        0x7bt 0x0t
        0x32t 0x0t
        0x39t 0x0t
        0x37t 0x0t
        0x30t 0x0t
        0x3bt 0x0t
        0x36t 0x0t
        0x3dt 0x0t
        0x38t 0x0t
        0x34t 0x0t
        0x27t 0x0t
        0x3et 0x0t
        0x7bt 0x0t
        0x32t 0x0t
        0x39t 0x0t
        0x37t 0x0t
        0x30t 0x0t
        0x3bt 0x0t
        0x36t 0x0t
        0x3dt 0x0t
        0x38t 0x0t
        0x34t 0x0t
        0x27t 0x0t
        0x3et 0x0t
        0x67t 0x0t
        0x64t 0x0t
    .end array-data

    .line 466
    nop

    :array_f
    .array-data 0x2
        0x36t 0x0t
        0x3at 0x0t
        0x38t 0x0t
        0x7bt 0x0t
        0x34t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x32t 0x0t
        0x3at 0x0t
        0x7bt 0x0t
        0x22t 0x0t
        0x3ct 0x0t
        0x3bt 0x0t
        0x31t 0x0t
        0x38t 0x0t
        0x3ct 0x0t
        0x39t 0x0t
        0x39t 0x0t
    .end array-data

    .line 487
    nop

    :array_10
    .array-data 0x2
        0x36t 0x0t
        0x3at 0x0t
        0x38t 0x0t
        0x7bt 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x37t 0x0t
        0x20t 0x0t
        0x27t 0x0t
        0x3bt 0x0t
        0x30t 0x0t
        0x21t 0x0t
        0x21t 0x0t
        0x30t 0x0t
        0x7bt 0x0t
        0x33t 0x0t
        0x25t 0x0t
        0x26t 0x0t
        0x67t 0x0t
        0x31t 0x0t
    .end array-data

    .line 509
    :array_11
    .array-data 0x2
        0x26t 0x0t
        0x3at 0x0t
        0x33t 0x0t
        0x21t 0x0t
        0x22t 0x0t
        0x30t 0x0t
        0x32t 0x0t
        0x7bt 0x0t
        0x3dt 0x0t
        0x22t 0x0t
        0x7bt 0x0t
        0x25t 0x0t
        0x30t 0x0t
        0x27t 0x0t
        0x33t 0x0t
        0x3at 0x0t
        0x27t 0x0t
        0x38t 0x0t
        0x34t 0x0t
        0x3bt 0x0t
        0x36t 0x0t
        0x30t 0x0t
    .end array-data

    .line 533
    :array_12
    .array-data 0x2
        0x36t 0x0t
        0x3at 0x0t
        0x38t 0x0t
        0x7bt 0x0t
        0x26t 0x0t
        0x38t 0x0t
        0x34t 0x0t
        0x27t 0x0t
        0x21t 0x0t
        0x37t 0x0t
        0x30t 0x0t
        0x3bt 0x0t
        0x36t 0x0t
        0x3dt 0x0t
        0x7bt 0x0t
        0x21t 0x0t
        0x22t 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x23t 0x0t
        0x30t 0x0t
    .end array-data

    .line 556
    nop

    :array_13
    .array-data 0x2
        0x36t 0x0t
        0x3at 0x0t
        0x38t 0x0t
        0x7bt 0x0t
        0x34t 0x0t
        0x3bt 0x0t
        0x21t 0x0t
        0x20t 0x0t
        0x21t 0x0t
        0x20t 0x0t
        0x7bt 0x0t
        0x14t 0x0t
        0x17t 0x0t
        0x30t 0x0t
        0x3bt 0x0t
        0x36t 0x0t
        0x3dt 0x0t
        0x18t 0x0t
        0x34t 0x0t
        0x27t 0x0t
        0x3et 0x0t
    .end array-data

    .line 579
    nop

    :array_14
    .array-data 0x2
        0x36t 0x0t
        0x3at 0x0t
        0x38t 0x0t
        0x7bt 0x0t
        0x32t 0x0t
        0x39t 0x0t
        0x37t 0x0t
        0x30t 0x0t
        0x3bt 0x0t
        0x36t 0x0t
        0x3dt 0x0t
        0x38t 0x0t
        0x34t 0x0t
        0x27t 0x0t
        0x3et 0x0t
        0x7bt 0x0t
        0x32t 0x0t
        0x39t 0x0t
        0x37t 0x0t
        0x30t 0x0t
        0x3bt 0x0t
        0x36t 0x0t
        0x3dt 0x0t
        0x38t 0x0t
        0x34t 0x0t
        0x27t 0x0t
        0x3et 0x0t
        0x67t 0x0t
        0x60t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 611
    return-void
.end method

.method public static canForceHwUi(Ljava/lang/String;)Z
    .locals 4
    .parameter "appName"

    .prologue
    const/4 v2, 0x0

    .line 739
    if-nez p0, :cond_1

    .line 766
    :cond_0
    :goto_0
    return v2

    .line 743
    :cond_1
    invoke-static {p0}, Lcom/nvidia/NvAppSpecificHeuristics;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 745
    .local v1, packageName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 754
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 755
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/nvidia/NvAppSpecificHeuristics$App;->forceHwUi:Z

    if-nez v3, :cond_3

    .line 754
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 758
    :cond_3
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/nvidia/NvAppSpecificHeuristics$App;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 762
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getAppSpecificDisableCpuCoreBias(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 799
    const/4 v0, 0x0

    .line 801
    .local v0, disable:Z
    if-nez p0, :cond_0

    move v1, v0

    .line 820
    .end local v0           #disable:Z
    .local v1, disable:I
    :goto_0
    return v1

    .line 809
    .end local v1           #disable:I
    .restart local v0       #disable:Z
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 810
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/nvidia/NvAppSpecificHeuristics$App;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 811
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    aget-object v3, v3, v2

    iget-boolean v0, v3, Lcom/nvidia/NvAppSpecificHeuristics$App;->disableCpuCoreBias:Z

    move v1, v0

    .line 816
    .restart local v1       #disable:I
    goto :goto_0

    .line 809
    .end local v1           #disable:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    .line 820
    .restart local v1       #disable:I
    goto :goto_0
.end method

.method public static getAppSpecificDisableGpuScaling(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 825
    const/4 v0, 0x0

    .line 827
    .local v0, disable:Z
    if-nez p0, :cond_0

    move v1, v0

    .line 846
    .end local v0           #disable:Z
    .local v1, disable:I
    :goto_0
    return v1

    .line 835
    .end local v1           #disable:I
    .restart local v0       #disable:Z
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 836
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/nvidia/NvAppSpecificHeuristics$App;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 837
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    aget-object v3, v3, v2

    iget-boolean v0, v3, Lcom/nvidia/NvAppSpecificHeuristics$App;->disableGpuScaling:Z

    move v1, v0

    .line 842
    .restart local v1       #disable:I
    goto :goto_0

    .line 835
    .end local v1           #disable:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    .line 846
    .restart local v1       #disable:I
    goto :goto_0
.end method

.method public static getAppSpecificScalingMinFreq(Ljava/lang/String;)I
    .locals 4
    .parameter "packageName"

    .prologue
    .line 770
    const/4 v0, 0x0

    .line 772
    .local v0, freq:I
    if-nez p0, :cond_0

    move v1, v0

    .line 794
    .end local v0           #freq:I
    .local v1, freq:I
    :goto_0
    return v1

    .line 780
    .end local v1           #freq:I
    .restart local v0       #freq:I
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 781
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/nvidia/NvAppSpecificHeuristics$App;->scalingMinFreq:I

    if-gtz v3, :cond_2

    .line 780
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 784
    :cond_2
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/nvidia/NvAppSpecificHeuristics$App;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 785
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    aget-object v3, v3, v2

    iget v0, v3, Lcom/nvidia/NvAppSpecificHeuristics$App;->scalingMinFreq:I

    move v1, v0

    .line 790
    .end local v0           #freq:I
    .restart local v1       #freq:I
    goto :goto_0

    .end local v1           #freq:I
    .restart local v0       #freq:I
    :cond_3
    move v1, v0

    .line 794
    .end local v0           #freq:I
    .restart local v1       #freq:I
    goto :goto_0
.end method

.method private static getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "appName"

    .prologue
    .line 730
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 731
    .local v0, index:I
    if-gez v0, :cond_0

    .line 732
    const-string v1, "NvAppSpecificHeuristics"

    const-string v2, "appName does not contain \'/\'. the packageName cannot be extracted from appName!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const/4 v1, 0x0

    .line 735
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
