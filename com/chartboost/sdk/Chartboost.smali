.class public final Lcom/chartboost/sdk/Chartboost;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Chartboost$a;,
        Lcom/chartboost/sdk/Chartboost$CBFramework;
    }
.end annotation


# static fields
.field protected static volatile a:Landroid/os/Handler;

.field protected static b:Lcom/chartboost/sdk/Libraries/k;

.field private static volatile c:Lcom/chartboost/sdk/Chartboost;

.field private static d:Lcom/chartboost/sdk/CBImpressionActivity;

.field private static e:Lcom/chartboost/sdk/Model/a;

.field private static f:Lcom/chartboost/sdk/impl/ay;

.field private static g:Lcom/chartboost/sdk/impl/ba;

.field private static h:Lcom/chartboost/sdk/impl/m;

.field private static i:Lcom/chartboost/sdk/Tracking/a;

.field private static j:Z

.field private static k:Landroid/util/SparseBooleanArray;

.field private static l:Lcom/chartboost/sdk/e;

.field private static m:Lcom/chartboost/sdk/c;

.field private static n:Z

.field private static o:Ljava/lang/Runnable;

.field private static p:Z

.field private static q:Z

.field private static r:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 46
    sput-object v2, Lcom/chartboost/sdk/Chartboost;->c:Lcom/chartboost/sdk/Chartboost;

    .line 47
    sput-object v2, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 48
    sput-object v2, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    .line 49
    sput-object v2, Lcom/chartboost/sdk/Chartboost;->f:Lcom/chartboost/sdk/impl/ay;

    .line 50
    sput-object v2, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/impl/ba;

    .line 51
    sput-object v2, Lcom/chartboost/sdk/Chartboost;->h:Lcom/chartboost/sdk/impl/m;

    .line 52
    sput-object v2, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/Tracking/a;

    .line 53
    sput-boolean v3, Lcom/chartboost/sdk/Chartboost;->j:Z

    .line 54
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->k:Landroid/util/SparseBooleanArray;

    .line 55
    sput-object v2, Lcom/chartboost/sdk/Chartboost;->l:Lcom/chartboost/sdk/e;

    .line 56
    sput-object v2, Lcom/chartboost/sdk/Chartboost;->m:Lcom/chartboost/sdk/c;

    .line 59
    sput-boolean v3, Lcom/chartboost/sdk/Chartboost;->n:Z

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    .line 66
    sput-object v2, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    .line 274
    sput-boolean v3, Lcom/chartboost/sdk/Chartboost;->p:Z

    .line 275
    sput-boolean v3, Lcom/chartboost/sdk/Chartboost;->q:Z

    .line 312
    new-instance v0, Lcom/chartboost/sdk/Chartboost$30;

    invoke-direct {v0}, Lcom/chartboost/sdk/Chartboost$30;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->r:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "app"    # Landroid/app/Activity;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sput-object p0, Lcom/chartboost/sdk/Chartboost;->c:Lcom/chartboost/sdk/Chartboost;

    .line 107
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Landroid/os/Handler;)V

    .line 108
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/b;->a(Landroid/app/Application;)V

    .line 109
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/b;->a(Landroid/content/Context;)V

    .line 110
    invoke-static {p2}, Lcom/chartboost/sdk/b;->b(Ljava/lang/String;)V

    .line 111
    invoke-static {p3}, Lcom/chartboost/sdk/b;->c(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/chartboost/sdk/impl/ay;->a()Lcom/chartboost/sdk/impl/ay;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->f:Lcom/chartboost/sdk/impl/ay;

    .line 113
    invoke-static {}, Lcom/chartboost/sdk/e;->a()Lcom/chartboost/sdk/e;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->l:Lcom/chartboost/sdk/e;

    .line 114
    invoke-static {}, Lcom/chartboost/sdk/b;->y()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ba;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/impl/ba;

    .line 115
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/impl/ba;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->h:Lcom/chartboost/sdk/impl/m;

    .line 116
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->m:Lcom/chartboost/sdk/c;

    .line 117
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->a()Lcom/chartboost/sdk/Tracking/a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/Tracking/a;

    .line 118
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->f:Lcom/chartboost/sdk/impl/ay;

    invoke-static {}, Lcom/chartboost/sdk/b;->y()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ay;->a(Landroid/content/Context;)V

    .line 119
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->a()Lcom/chartboost/sdk/impl/bd;

    .line 120
    new-instance v0, Lcom/chartboost/sdk/Chartboost$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/Chartboost$a;-><init>(Lcom/chartboost/sdk/Chartboost$1;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->o:Ljava/lang/Runnable;

    .line 121
    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->a()V

    .line 122
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->h()V

    .line 123
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Chartboost$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/Activity;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/chartboost/sdk/Chartboost$1;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/chartboost/sdk/Chartboost;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/Chartboost;)Lcom/chartboost/sdk/Chartboost;
    .locals 0

    .prologue
    .line 43
    sput-object p0, Lcom/chartboost/sdk/Chartboost;->c:Lcom/chartboost/sdk/Chartboost;

    return-object p0
.end method

.method protected static a()V
    .locals 2

    .prologue
    .line 278
    invoke-static {}, Lcom/chartboost/sdk/b;->y()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 279
    const-string v0, "Chartboost"

    const-string v1, "The context must be set through the Chartboost method onCreate() before calling startSession()."

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/b;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/chartboost/sdk/b;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    sget-boolean v0, Lcom/chartboost/sdk/Chartboost;->p:Z

    if-nez v0, :cond_1

    .line 290
    const/4 v0, 0x0

    sput-boolean v0, Lcom/chartboost/sdk/Chartboost;->q:Z

    .line 291
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->p()V

    goto :goto_0

    .line 293
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/chartboost/sdk/Chartboost;->q:Z

    goto :goto_0

    .line 298
    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->p()V

    goto :goto_0
.end method

.method private static a(IZ)V
    .locals 1

    .prologue
    .line 1201
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->k:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1202
    return-void
.end method

.method protected static a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 240
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/b;->a(Landroid/content/Context;)V

    .line 241
    instance-of v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_1

    .line 242
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/k;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/k;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    .line 243
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 249
    :goto_0
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    sget-object v3, Lcom/chartboost/sdk/Chartboost;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 254
    invoke-static {}, Lcom/chartboost/sdk/b;->a()Lcom/chartboost/sdk/Chartboost$CBFramework;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Lcom/chartboost/sdk/Chartboost$CBFramework;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$CBFramework;->doesWrapperUseCustomBackgroundingBehavior()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 255
    :goto_1
    if-eqz p0, :cond_0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->f(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 271
    :cond_0
    :goto_2
    return-void

    :cond_1
    move-object v0, p0

    .line 246
    check-cast v0, Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/CBImpressionActivity;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 254
    goto :goto_1

    .line 258
    :cond_3
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/k;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/k;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 260
    instance-of v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-eqz v0, :cond_4

    .line 261
    sput-boolean v2, Lcom/chartboost/sdk/Chartboost;->n:Z

    .line 264
    :cond_4
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->m:Lcom/chartboost/sdk/c;

    sget-object v1, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0, p0, v1}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    .line 265
    if-eqz v0, :cond_5

    .line 266
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    .line 268
    :cond_5
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->m:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->y()V

    goto :goto_2
.end method

.method static synthetic a(Landroid/app/Activity;Z)V
    .locals 0

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/chartboost/sdk/Chartboost;->b(Landroid/app/Activity;Z)V

    return-void
.end method

.method protected static a(Lcom/chartboost/sdk/CBImpressionActivity;)V
    .locals 2

    .prologue
    .line 1028
    sget-boolean v0, Lcom/chartboost/sdk/Chartboost;->j:Z

    if-nez v0, :cond_0

    .line 1029
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/b;->a(Landroid/content/Context;)V

    .line 1030
    sput-object p0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 1031
    const/4 v0, 0x1

    sput-boolean v0, Lcom/chartboost/sdk/Chartboost;->j:Z

    .line 1033
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    sget-object v1, Lcom/chartboost/sdk/Chartboost;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1034
    return-void
.end method

.method protected static a(Lcom/chartboost/sdk/Libraries/k;)V
    .locals 3

    .prologue
    .line 395
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 399
    invoke-static {}, Lcom/chartboost/sdk/b;->a()Lcom/chartboost/sdk/Chartboost$CBFramework;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Lcom/chartboost/sdk/Chartboost$CBFramework;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost$CBFramework;->ordinal()I

    move-result v1

    sget-object v2, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkUnity:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Chartboost$CBFramework;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 400
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->a()V

    .line 402
    :cond_0
    if-eqz v0, :cond_1

    .line 403
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->x()V

    .line 405
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/Libraries/k;Z)V
    .locals 0

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Libraries/k;Z)V

    return-void
.end method

.method protected static a(Lcom/chartboost/sdk/Model/a;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1051
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->h()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 1052
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->d()Lcom/chartboost/sdk/impl/bp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/bp;->h()Lcom/chartboost/sdk/Model/a;

    move-result-object v3

    if-eq v3, p0, :cond_0

    .line 1054
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 1118
    :goto_0
    return-void

    .line 1058
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/b;->h()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1059
    sget-boolean v3, Lcom/chartboost/sdk/Chartboost;->j:Z

    if-eqz v3, :cond_3

    .line 1060
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->f()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1061
    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0

    .line 1063
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->f()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1064
    const-string v0, "Chartboost"

    const-string v1, "Activity not found to display the view"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1065
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 1068
    :goto_1
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_DISPLAYING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 1067
    :cond_2
    const-string v0, "Chartboost"

    const-string v1, "Missing view controller to manage the open impression activity"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1073
    :cond_3
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->q()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1074
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 1078
    :cond_4
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getHostActivity()Landroid/app/Activity;

    move-result-object v4

    .line 1079
    if-nez v4, :cond_5

    .line 1080
    const-string v0, "Chartboost"

    const-string v1, "Failed to display impression as the host activity reference has been lost!"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1081
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 1084
    :cond_5
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    if-eq v0, p0, :cond_6

    .line 1086
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 1089
    :cond_6
    sput-object p0, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    .line 1090
    new-instance v5, Landroid/content/Intent;

    const-class v0, Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-direct {v5, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1092
    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_7

    move v0, v1

    .line 1094
    :goto_2
    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_8

    move v3, v1

    .line 1096
    :goto_3
    const-string v6, "paramFullscreen"

    if-eqz v0, :cond_9

    if-nez v3, :cond_9

    :goto_4
    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1099
    :try_start_0
    invoke-virtual {v4, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1100
    const/4 v0, 0x1

    sput-boolean v0, Lcom/chartboost/sdk/Chartboost;->n:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1101
    :catch_0
    move-exception v0

    .line 1102
    const-string v0, "Chartboost"

    const-string v1, "Chartboost impression activity not declared in manifest. Please add the following inside your manifest\'s <application> tag: \n<activity android:name=\"com.chartboost.sdk.CBImpressionActivity\" android:theme=\"@android:style/Theme.Translucent.NoTitleBar\" android:excludeFromRecents=\"true\" />"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 1092
    goto :goto_2

    :cond_8
    move v3, v2

    .line 1094
    goto :goto_3

    :cond_9
    move v1, v2

    .line 1096
    goto :goto_4

    .line 1111
    :cond_a
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->h()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 1112
    if-eqz v0, :cond_b

    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->q()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1113
    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/a;)V

    goto/16 :goto_0

    .line 1115
    :cond_b
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto/16 :goto_0
.end method

.method protected static a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1126
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1127
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1130
    :goto_0
    return-void

    .line 1129
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 43
    sput-boolean p0, Lcom/chartboost/sdk/Chartboost;->q:Z

    return p0
.end method

.method static synthetic b(Lcom/chartboost/sdk/CBImpressionActivity;)Lcom/chartboost/sdk/CBImpressionActivity;
    .locals 0

    .prologue
    .line 43
    sput-object p0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    return-object p0
.end method

.method static synthetic b(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 43
    sput-object p0, Lcom/chartboost/sdk/Chartboost;->o:Ljava/lang/Runnable;

    return-object p0
.end method

.method protected static b()V
    .locals 4

    .prologue
    .line 303
    invoke-static {}, Lcom/chartboost/sdk/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    sget-object v1, Lcom/chartboost/sdk/Chartboost;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 310
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->c()V

    goto :goto_0
.end method

.method protected static b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 561
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/k;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 562
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    .line 563
    return-void
.end method

.method private static b(Landroid/app/Activity;Z)V
    .locals 1

    .prologue
    .line 1187
    if-nez p0, :cond_0

    .line 1190
    :goto_0
    return-void

    .line 1189
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0, p1}, Lcom/chartboost/sdk/Chartboost;->a(IZ)V

    goto :goto_0
.end method

.method protected static b(Lcom/chartboost/sdk/Libraries/k;)V
    .locals 1

    .prologue
    .line 425
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 427
    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->z()V

    .line 429
    :cond_0
    return-void
.end method

.method private static b(Lcom/chartboost/sdk/Libraries/k;Z)V
    .locals 0

    .prologue
    .line 1141
    return-void
.end method

.method protected static c()V
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    sput-boolean v0, Lcom/chartboost/sdk/Chartboost;->p:Z

    .line 366
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/Tracking/a;

    if-nez v0, :cond_0

    .line 367
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->a()Lcom/chartboost/sdk/Tracking/a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/Tracking/a;

    .line 368
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Tracking/a;->c()V

    .line 369
    return-void
.end method

.method protected static c(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 1246
    invoke-static {p0}, Lcom/chartboost/sdk/impl/bg;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1257
    :goto_0
    return-void

    .line 1248
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/Chartboost$25;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/Chartboost$25;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected static c(Lcom/chartboost/sdk/Libraries/k;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 469
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->h()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 470
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->g(Lcom/chartboost/sdk/Libraries/k;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 471
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v1

    .line 472
    invoke-virtual {v1}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v1

    .line 473
    if-eqz v1, :cond_0

    .line 474
    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/e;->c(Lcom/chartboost/sdk/Model/a;)V

    .line 475
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    .line 477
    :cond_0
    invoke-static {p0, v2}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 478
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/k;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-eqz v0, :cond_1

    .line 479
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->g()V

    .line 482
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/k;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_2

    .line 483
    invoke-static {p0, v2}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 486
    :cond_2
    return-void
.end method

.method private static c(Lcom/chartboost/sdk/Libraries/k;Z)V
    .locals 1

    .prologue
    .line 1194
    if-nez p0, :cond_0

    .line 1197
    :goto_0
    return-void

    .line 1196
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/k;->a()I

    move-result v0

    invoke-static {v0, p1}, Lcom/chartboost/sdk/Chartboost;->a(IZ)V

    goto :goto_0
.end method

.method public static cacheInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 663
    new-instance v0, Lcom/chartboost/sdk/Chartboost$6;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$6;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 677
    return-void
.end method

.method public static cacheMoreApps(Ljava/lang/String;)V
    .locals 1
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 730
    new-instance v0, Lcom/chartboost/sdk/Chartboost$9;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$9;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 744
    return-void
.end method

.method public static cacheRewardedVideo(Ljava/lang/String;)V
    .locals 1
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 612
    new-instance v0, Lcom/chartboost/sdk/Chartboost$4;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 626
    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 590
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    :goto_0
    return-void

    .line 592
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/bc;->a()Lcom/chartboost/sdk/impl/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bc;->b()V

    .line 593
    invoke-static {}, Lcom/chartboost/sdk/impl/af;->h()Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/af;->a()V

    .line 594
    invoke-static {}, Lcom/chartboost/sdk/impl/ae;->f()Lcom/chartboost/sdk/impl/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ae;->a()V

    .line 595
    invoke-static {}, Lcom/chartboost/sdk/impl/av;->f()Lcom/chartboost/sdk/impl/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/av;->a()V

    .line 596
    invoke-static {}, Lcom/chartboost/sdk/InPlay/a;->b()V

    goto :goto_0
.end method

.method public static closeImpression()V
    .locals 1

    .prologue
    .line 706
    new-instance v0, Lcom/chartboost/sdk/Chartboost$8;

    invoke-direct {v0}, Lcom/chartboost/sdk/Chartboost$8;-><init>()V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 714
    return-void
.end method

.method static synthetic d(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 43
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->e(Landroid/app/Activity;)V

    return-void
.end method

.method protected static d()Z
    .locals 1

    .prologue
    .line 511
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->e()Z

    move-result v0

    return v0
.end method

.method protected static d(Lcom/chartboost/sdk/Libraries/k;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1179
    if-nez p0, :cond_1

    .line 1182
    :cond_0
    :goto_0
    return v0

    .line 1181
    :cond_1
    sget-object v1, Lcom/chartboost/sdk/Chartboost;->k:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/k;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1182
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static didPassAgeGate(Z)V
    .locals 0
    .param p0, "pass"    # Z

    .prologue
    .line 574
    invoke-static {p0}, Lcom/chartboost/sdk/b;->d(Z)V

    .line 575
    return-void
.end method

.method private static e(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 185
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/k;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->f(Lcom/chartboost/sdk/Libraries/k;)V

    .line 187
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 190
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    sget-object v1, Lcom/chartboost/sdk/Chartboost;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 193
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/k;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/k;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    .line 195
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getImpressionsUseActivities()Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->c(Landroid/app/Activity;)V

    .line 198
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/ba;->d()V

    .line 199
    return-void
.end method

.method static synthetic e(Lcom/chartboost/sdk/Libraries/k;)V
    .locals 0

    .prologue
    .line 43
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->f(Lcom/chartboost/sdk/Libraries/k;)V

    return-void
.end method

.method protected static e()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 515
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v1

    .line 516
    invoke-virtual {v1}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v2

    .line 517
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v4, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    if-ne v3, v4, :cond_1

    .line 518
    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/a;->w()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 536
    :goto_0
    return v0

    .line 520
    :cond_0
    new-instance v2, Lcom/chartboost/sdk/Chartboost$35;

    invoke-direct {v2, v1}, Lcom/chartboost/sdk/Chartboost$35;-><init>(Lcom/chartboost/sdk/c;)V

    invoke-static {v2}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 527
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->h()Lcom/chartboost/sdk/e;

    move-result-object v2

    .line 528
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/chartboost/sdk/e;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 529
    new-instance v3, Lcom/chartboost/sdk/Chartboost$2;

    invoke-direct {v3, v2, v1}, Lcom/chartboost/sdk/Chartboost$2;-><init>(Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/c;)V

    invoke-static {v3}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 536
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static f()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 992
    invoke-static {}, Lcom/chartboost/sdk/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 995
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method private static f(Lcom/chartboost/sdk/Libraries/k;)V
    .locals 2

    .prologue
    .line 448
    invoke-static {}, Lcom/chartboost/sdk/b;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Libraries/k;)V

    .line 451
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/k;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_1

    .line 452
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 455
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->f:Lcom/chartboost/sdk/impl/ay;

    invoke-static {}, Lcom/chartboost/sdk/b;->y()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ay;->c(Landroid/content/Context;)V

    .line 458
    invoke-static {}, Lcom/chartboost/sdk/b;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 459
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->h:Lcom/chartboost/sdk/impl/m;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/m;->b()V

    .line 460
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/impl/ba;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba;->g()V

    .line 462
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->b()V

    .line 463
    return-void
.end method

.method private static f(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1002
    invoke-static {}, Lcom/chartboost/sdk/b;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1003
    sget-object v2, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    if-ne v2, p0, :cond_1

    .line 1007
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1003
    goto :goto_0

    .line 1005
    :cond_2
    sget-object v2, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-nez v2, :cond_3

    .line 1006
    if-eqz p0, :cond_0

    move v0, v1

    goto :goto_0

    .line 1007
    :cond_3
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/k;->b(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0
.end method

.method private static forwardTouchEventsAIR(Z)V
    .locals 1
    .param p0, "forward"    # Z

    .prologue
    .line 1293
    new-instance v0, Lcom/chartboost/sdk/Chartboost$29;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$29;-><init>(Z)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 1307
    return-void
.end method

.method protected static g()V
    .locals 1

    .prologue
    .line 1039
    sget-boolean v0, Lcom/chartboost/sdk/Chartboost;->j:Z

    if-eqz v0, :cond_0

    .line 1040
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 1041
    const/4 v0, 0x0

    sput-boolean v0, Lcom/chartboost/sdk/Chartboost;->j:Z

    .line 1043
    :cond_0
    return-void
.end method

.method private static g(Lcom/chartboost/sdk/Libraries/k;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1014
    invoke-static {}, Lcom/chartboost/sdk/b;->h()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1015
    if-nez p0, :cond_2

    .line 1016
    sget-object v2, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v2, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1016
    goto :goto_0

    .line 1017
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/k;->b(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0

    .line 1019
    :cond_3
    sget-object v2, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-nez v2, :cond_4

    .line 1020
    if-eqz p0, :cond_0

    move v0, v1

    goto :goto_0

    .line 1021
    :cond_4
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/k;->a(Lcom/chartboost/sdk/Libraries/k;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getAutoCacheAds()Z
    .locals 1

    .prologue
    .line 918
    invoke-static {}, Lcom/chartboost/sdk/b;->j()Z

    move-result v0

    return v0
.end method

.method public static getCustomId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 861
    invoke-static {}, Lcom/chartboost/sdk/b;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDelegate()Lcom/chartboost/sdk/a;
    .locals 1

    .prologue
    .line 899
    invoke-static {}, Lcom/chartboost/sdk/b;->g()Lcom/chartboost/sdk/a;

    move-result-object v0

    return-object v0
.end method

.method protected static getHostActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1122
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/k;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getImpressionsUseActivities()Z
    .locals 1

    .prologue
    .line 1218
    invoke-static {}, Lcom/chartboost/sdk/b;->h()Z

    move-result v0

    return v0
.end method

.method public static getLoggingLevel()Lcom/chartboost/sdk/Libraries/CBLogging$Level;
    .locals 1

    .prologue
    .line 894
    invoke-static {}, Lcom/chartboost/sdk/b;->n()Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    move-result-object v0

    return-object v0
.end method

.method protected static getValidContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1135
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/k;->b()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/b;->y()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method protected static h()Lcom/chartboost/sdk/e;
    .locals 1

    .prologue
    .line 1207
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->f()Landroid/app/Activity;

    move-result-object v0

    .line 1208
    if-nez v0, :cond_0

    .line 1209
    const/4 v0, 0x0

    .line 1210
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->l:Lcom/chartboost/sdk/e;

    goto :goto_0
.end method

.method public static hasInterstitial(Ljava/lang/String;)Z
    .locals 1
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 653
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    const/4 v0, 0x0

    .line 655
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/ae;->f()Lcom/chartboost/sdk/impl/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/ae;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static hasMoreApps(Ljava/lang/String;)Z
    .locals 1
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 720
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    const/4 v0, 0x0

    .line 722
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/av;->f()Lcom/chartboost/sdk/impl/av;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/av;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static hasRewardedVideo(Ljava/lang/String;)Z
    .locals 1
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 603
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 604
    const/4 v0, 0x0

    .line 605
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/af;->h()Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/af;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic i()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->o:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static isAnyViewVisible()Z
    .locals 1

    .prologue
    .line 775
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->h()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 776
    if-nez v0, :cond_0

    .line 777
    const/4 v0, 0x0

    .line 779
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->c()Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic j()Z
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->q()Z

    move-result v0

    return v0
.end method

.method static synthetic k()Lcom/chartboost/sdk/impl/ay;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->f:Lcom/chartboost/sdk/impl/ay;

    return-object v0
.end method

.method static synthetic l()Lcom/chartboost/sdk/impl/m;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->h:Lcom/chartboost/sdk/impl/m;

    return-object v0
.end method

.method static synthetic m()Lcom/chartboost/sdk/impl/ba;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/impl/ba;

    return-object v0
.end method

.method static synthetic n()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/chartboost/sdk/Chartboost;->q:Z

    return v0
.end method

.method static synthetic o()Lcom/chartboost/sdk/CBImpressionActivity;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    return-object v0
.end method

.method public static onBackPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 491
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    move-result v1

    if-nez v1, :cond_1

    .line 507
    :cond_0
    :goto_0
    return v0

    .line 493
    :cond_1
    sget-object v1, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-nez v1, :cond_2

    .line 494
    const-string v1, "Chartboost"

    const-string v2, "The Chartboost methods onCreate(), onStart(), onStop(), and onDestroy() must be called in the corresponding methods of your activity in order for Chartboost to function properly."

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 499
    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/b;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 500
    sget-boolean v1, Lcom/chartboost/sdk/Chartboost;->n:Z

    if-eqz v1, :cond_0

    .line 501
    sput-boolean v0, Lcom/chartboost/sdk/Chartboost;->n:Z

    .line 502
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->d()Z

    .line 503
    const/4 v0, 0x1

    goto :goto_0

    .line 507
    :cond_3
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->d()Z

    move-result v0

    goto :goto_0
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 169
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/Chartboost$12;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$12;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 542
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/Chartboost$3;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$3;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 410
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/Chartboost$33;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$33;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 375
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/Chartboost$32;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$32;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static onStart(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 205
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/Chartboost$23;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$23;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static onStop(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 434
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/Chartboost$34;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$34;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static p()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 323
    sput-boolean v0, Lcom/chartboost/sdk/Chartboost;->p:Z

    .line 325
    invoke-static {v0}, Lcom/chartboost/sdk/b;->c(Z)V

    .line 328
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Tracking/a;->h()V

    .line 329
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->b()V

    .line 332
    new-instance v0, Lcom/chartboost/sdk/Chartboost$31;

    invoke-direct {v0}, Lcom/chartboost/sdk/Chartboost$31;-><init>()V

    invoke-static {v0}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/b$a;)V

    .line 360
    return-void
.end method

.method private static q()Z
    .locals 1

    .prologue
    .line 1174
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->d(Lcom/chartboost/sdk/Libraries/k;)Z

    move-result v0

    return v0
.end method

.method public static setAutoCacheAds(Z)V
    .locals 1
    .param p0, "autoCacheAds"    # Z

    .prologue
    .line 926
    new-instance v0, Lcom/chartboost/sdk/Chartboost$19;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$19;-><init>(Z)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 932
    return-void
.end method

.method public static setCustomId(Ljava/lang/String;)V
    .locals 1
    .param p0, "customID"    # Ljava/lang/String;

    .prologue
    .line 870
    new-instance v0, Lcom/chartboost/sdk/Chartboost$16;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$16;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 876
    return-void
.end method

.method public static setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V
    .locals 1
    .param p0, "delegate"    # Lcom/chartboost/sdk/ChartboostDelegate;

    .prologue
    .line 905
    new-instance v0, Lcom/chartboost/sdk/Chartboost$18;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$18;-><init>(Lcom/chartboost/sdk/ChartboostDelegate;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 911
    return-void
.end method

.method public static setFramework(Lcom/chartboost/sdk/Chartboost$CBFramework;)V
    .locals 1
    .param p0, "framework"    # Lcom/chartboost/sdk/Chartboost$CBFramework;

    .prologue
    .line 810
    new-instance v0, Lcom/chartboost/sdk/Chartboost$13;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$13;-><init>(Lcom/chartboost/sdk/Chartboost$CBFramework;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 817
    return-void
.end method

.method public static setFramework(Lcom/chartboost/sdk/Chartboost$CBFramework;Ljava/lang/String;)V
    .locals 1
    .param p0, "framework"    # Lcom/chartboost/sdk/Chartboost$CBFramework;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 828
    new-instance v0, Lcom/chartboost/sdk/Chartboost$14;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/Chartboost$14;-><init>(Lcom/chartboost/sdk/Chartboost$CBFramework;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 834
    return-void
.end method

.method public static setFrameworkVersion(Ljava/lang/String;)V
    .locals 1
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 845
    new-instance v0, Lcom/chartboost/sdk/Chartboost$15;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$15;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 851
    return-void
.end method

.method public static setImpressionsUseActivities(Z)V
    .locals 1
    .param p0, "impressionsUseActivities"    # Z

    .prologue
    .line 1234
    new-instance v0, Lcom/chartboost/sdk/Chartboost$24;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$24;-><init>(Z)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 1240
    return-void
.end method

.method public static setLoggingLevel(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V
    .locals 1
    .param p0, "lvl"    # Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    .prologue
    .line 882
    new-instance v0, Lcom/chartboost/sdk/Chartboost$17;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$17;-><init>(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 888
    return-void
.end method

.method public static setMediation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "libraryName"    # Ljava/lang/String;
    .param p1, "libraryVersion"    # Ljava/lang/String;

    .prologue
    .line 791
    new-instance v0, Lcom/chartboost/sdk/Chartboost$11;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/Chartboost$11;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 798
    return-void
.end method

.method public static setShouldDisplayLoadingViewForMoreApps(Z)V
    .locals 1
    .param p0, "shouldDisplay"    # Z

    .prologue
    .line 958
    new-instance v0, Lcom/chartboost/sdk/Chartboost$21;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$21;-><init>(Z)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 964
    return-void
.end method

.method public static setShouldPauseClickForConfirmation(Z)V
    .locals 0
    .param p0, "shouldPause"    # Z

    .prologue
    .line 582
    invoke-static {p0}, Lcom/chartboost/sdk/b;->e(Z)V

    .line 583
    return-void
.end method

.method public static setShouldPrefetchVideoContent(Z)V
    .locals 1
    .param p0, "shouldPrefetch"    # Z

    .prologue
    .line 972
    new-instance v0, Lcom/chartboost/sdk/Chartboost$22;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$22;-><init>(Z)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 982
    return-void
.end method

.method public static setShouldRequestInterstitialsInFirstSession(Z)V
    .locals 1
    .param p0, "shouldRequest"    # Z

    .prologue
    .line 942
    new-instance v0, Lcom/chartboost/sdk/Chartboost$20;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$20;-><init>(Z)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 948
    return-void
.end method

.method public static showInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 685
    new-instance v0, Lcom/chartboost/sdk/Chartboost$7;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$7;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 699
    return-void
.end method

.method private static showInterstitialAIR(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "location"    # Ljava/lang/String;
    .param p1, "show"    # Z

    .prologue
    .line 1263
    new-instance v0, Lcom/chartboost/sdk/Chartboost$26;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/Chartboost$26;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 1269
    return-void
.end method

.method public static showMoreApps(Ljava/lang/String;)V
    .locals 1
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 751
    new-instance v0, Lcom/chartboost/sdk/Chartboost$10;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$10;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 766
    return-void
.end method

.method private static showMoreAppsAIR(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "location"    # Ljava/lang/String;
    .param p1, "show"    # Z

    .prologue
    .line 1273
    new-instance v0, Lcom/chartboost/sdk/Chartboost$27;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/Chartboost$27;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 1279
    return-void
.end method

.method public static showRewardedVideo(Ljava/lang/String;)V
    .locals 1
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 633
    new-instance v0, Lcom/chartboost/sdk/Chartboost$5;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$5;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 647
    return-void
.end method

.method private static showRewardedVideoAIR(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "location"    # Ljava/lang/String;
    .param p1, "show"    # Z

    .prologue
    .line 1283
    new-instance v0, Lcom/chartboost/sdk/Chartboost$28;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/Chartboost$28;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 1289
    return-void
.end method

.method public static startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 135
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->c:Lcom/chartboost/sdk/Chartboost;

    if-nez v0, :cond_0

    .line 136
    const-class v1, Lcom/chartboost/sdk/Chartboost;

    monitor-enter v1

    .line 137
    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->c:Lcom/chartboost/sdk/Chartboost;

    if-nez v0, :cond_5

    .line 138
    if-nez p0, :cond_1

    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 139
    const-string v0, "Chartboost"

    const-string v2, "Activity object is null. Please pass a valid activity object"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    monitor-exit v1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-static {p0}, Lcom/chartboost/sdk/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 143
    const-string v0, "Chartboost"

    const-string v2, "Permissions not set correctly"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    monitor-exit v1

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 146
    :cond_2
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 147
    :cond_3
    const-string v0, "Chartboost"

    const-string v2, "AppId or AppSignature is null. Please pass a valid id\'s"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    monitor-exit v1

    goto :goto_0

    .line 150
    :cond_4
    new-instance v0, Lcom/chartboost/sdk/Chartboost$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/chartboost/sdk/Chartboost$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 158
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
