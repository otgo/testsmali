.class public final Lcom/chartboost/sdk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/b$a;
    }
.end annotation


# static fields
.field public static a:Lcom/chartboost/sdk/c$a;

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Lcom/chartboost/sdk/a;

.field private static f:Z

.field private static g:Z

.field private static h:Z

.field private static i:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Landroid/content/SharedPreferences;

.field private static o:Z

.field private static volatile p:Z

.field private static q:Landroid/content/Context;

.field private static r:Landroid/app/Application;

.field private static s:Z

.field private static t:Z

.field private static u:Z

.field private static v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    const-class v0, Lcom/chartboost/sdk/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/b;->b:Ljava/lang/String;

    .line 38
    sput-boolean v2, Lcom/chartboost/sdk/b;->f:Z

    .line 39
    sput-boolean v2, Lcom/chartboost/sdk/b;->g:Z

    .line 40
    sput-boolean v2, Lcom/chartboost/sdk/b;->h:Z

    .line 41
    sput-object v1, Lcom/chartboost/sdk/b;->i:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 42
    sput-object v1, Lcom/chartboost/sdk/b;->j:Ljava/lang/String;

    .line 43
    sput-object v1, Lcom/chartboost/sdk/b;->k:Ljava/lang/String;

    .line 44
    sput-object v1, Lcom/chartboost/sdk/b;->l:Ljava/lang/String;

    .line 45
    sput-object v1, Lcom/chartboost/sdk/b;->m:Ljava/lang/String;

    .line 46
    sput-object v1, Lcom/chartboost/sdk/b;->n:Landroid/content/SharedPreferences;

    .line 47
    sput-boolean v3, Lcom/chartboost/sdk/b;->o:Z

    .line 48
    sput-boolean v2, Lcom/chartboost/sdk/b;->p:Z

    .line 49
    sput-object v1, Lcom/chartboost/sdk/b;->q:Landroid/content/Context;

    .line 51
    sput-object v1, Lcom/chartboost/sdk/b;->r:Landroid/app/Application;

    .line 52
    sput-boolean v2, Lcom/chartboost/sdk/b;->s:Z

    .line 54
    sput-boolean v3, Lcom/chartboost/sdk/b;->t:Z

    .line 55
    sput-boolean v2, Lcom/chartboost/sdk/b;->u:Z

    .line 56
    sput-boolean v3, Lcom/chartboost/sdk/b;->v:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method private static A()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/chartboost/sdk/b;->n:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 71
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/b;->n:Landroid/content/SharedPreferences;

    .line 72
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/b;->n:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static a()Lcom/chartboost/sdk/Chartboost$CBFramework;
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    .line 110
    sget-object v0, Lcom/chartboost/sdk/b;->i:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/b;->i:Lcom/chartboost/sdk/Chartboost$CBFramework;

    goto :goto_0
.end method

.method public static a(Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 542
    sput-object p0, Lcom/chartboost/sdk/b;->r:Landroid/app/Application;

    .line 543
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 530
    sput-object p0, Lcom/chartboost/sdk/b;->q:Landroid/content/Context;

    .line 531
    return-void
.end method

.method public static a(Lcom/chartboost/sdk/Chartboost$CBFramework;)V
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 94
    :cond_0
    if-nez p0, :cond_1

    .line 95
    sget-object v0, Lcom/chartboost/sdk/b;->b:Ljava/lang/String;

    const-string v1, "Pass a valid CBFramework enum value"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_1
    sput-object p0, Lcom/chartboost/sdk/b;->i:Lcom/chartboost/sdk/Chartboost$CBFramework;

    goto :goto_0
.end method

.method public static a(Lcom/chartboost/sdk/Chartboost$CBFramework;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    invoke-static {p0}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/Chartboost$CBFramework;)V

    .line 103
    sput-object p1, Lcom/chartboost/sdk/b;->j:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public static a(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V
    .locals 0

    .prologue
    .line 323
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    .line 324
    sput-object p0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    .line 325
    return-void
.end method

.method public static a(Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 8

    .prologue
    .line 352
    if-eqz p0, :cond_7

    .line 353
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->f()Ljava/util/Map;

    move-result-object v2

    .line 354
    if-eqz v2, :cond_7

    .line 355
    invoke-static {}, Lcom/chartboost/sdk/b;->A()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 356
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 357
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 358
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 359
    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 360
    :cond_1
    instance-of v5, v1, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 361
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 362
    :cond_2
    instance-of v5, v1, Ljava/lang/Float;

    if-eqz v5, :cond_3

    .line 363
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 364
    :cond_3
    instance-of v5, v1, Ljava/lang/Long;

    if-eqz v5, :cond_4

    .line 365
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v3, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 366
    :cond_4
    instance-of v5, v1, Ljava/lang/Boolean;

    if-eqz v5, :cond_5

    .line 367
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 368
    :cond_5
    if-eqz v1, :cond_0

    .line 369
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 372
    :cond_6
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 375
    :cond_7
    return-void
.end method

.method public static a(Lcom/chartboost/sdk/a;)V
    .locals 1

    .prologue
    .line 187
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    sput-object p0, Lcom/chartboost/sdk/b;->e:Lcom/chartboost/sdk/a;

    goto :goto_0
.end method

.method public static a(Lcom/chartboost/sdk/b$a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 378
    new-instance v0, Lcom/chartboost/sdk/impl/az;

    const-string v1, "/api/config"

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/az;-><init>(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/az;->a(Z)V

    .line 380
    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/az;->b(Z)V

    .line 381
    sget-object v1, Lcom/chartboost/sdk/impl/l$a;->c:Lcom/chartboost/sdk/impl/l$a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/impl/l$a;)V

    .line 382
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/chartboost/sdk/Libraries/g$k;

    const-string v2, "status"

    sget-object v3, Lcom/chartboost/sdk/Libraries/a;->a:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/Libraries/g$a;)V

    .line 384
    new-instance v1, Lcom/chartboost/sdk/b$1;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/b$1;-><init>(Lcom/chartboost/sdk/b$a;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/impl/az$c;)V

    .line 401
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 118
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 120
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/b;->i:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-nez v0, :cond_1

    .line 121
    sget-object v0, Lcom/chartboost/sdk/b;->b:Ljava/lang/String;

    const-string v1, "Set a valid CBFramework first"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    sget-object v0, Lcom/chartboost/sdk/b;->b:Ljava/lang/String;

    const-string v1, "Invalid Version String"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_2
    sput-object p0, Lcom/chartboost/sdk/b;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 137
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/b;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 1

    .prologue
    .line 214
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 216
    :cond_0
    sput-boolean p0, Lcom/chartboost/sdk/b;->f:Z

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 466
    if-nez p0, :cond_0

    .line 468
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid activity context: Host Activity object is null, Please send a valid activity object"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 472
    const/4 v0, 0x0

    .line 474
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 114
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/chartboost/sdk/b;->i:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/chartboost/sdk/b;->j:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 158
    sput-object p0, Lcom/chartboost/sdk/b;->c:Ljava/lang/String;

    .line 159
    invoke-static {}, Lcom/chartboost/sdk/b;->A()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "appId"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 160
    return-void
.end method

.method public static b(Z)V
    .locals 0

    .prologue
    .line 278
    sput-boolean p0, Lcom/chartboost/sdk/b;->o:Z

    .line 279
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 547
    if-nez p0, :cond_0

    .line 548
    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid activity context passed during intitalization"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :catch_0
    move-exception v0

    .line 561
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 562
    const/4 v0, 0x0

    .line 564
    :goto_0
    return v0

    .line 550
    :cond_0
    :try_start_1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 551
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 552
    const-string v2, "android.permission.INTERNET"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    .line 554
    if-eqz v0, :cond_1

    .line 555
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please add the permission : android.permission.WRITE_EXTERNAL_STORAGE in your android manifest.xml"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_1
    if-eqz v2, :cond_2

    .line 557
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please add the permission : android.permission.INTERNET in your android manifest.xml"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_2
    if-eqz v1, :cond_3

    .line 559
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please add the permission :  android.permission.ACCESS_NETWORK_STATE in your android manifest.xml"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 564
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    .line 133
    sget-object v0, Lcom/chartboost/sdk/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 173
    sput-object p0, Lcom/chartboost/sdk/b;->d:Ljava/lang/String;

    .line 174
    invoke-static {}, Lcom/chartboost/sdk/b;->A()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "appSignature"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 175
    return-void
.end method

.method protected static c(Z)V
    .locals 0

    .prologue
    .line 422
    sput-boolean p0, Lcom/chartboost/sdk/b;->p:Z

    .line 423
    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    .line 144
    sget-object v0, Lcom/chartboost/sdk/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 342
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 344
    :cond_0
    sput-object p0, Lcom/chartboost/sdk/b;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public static d(Z)V
    .locals 1

    .prologue
    .line 493
    sget-object v0, Lcom/chartboost/sdk/b;->a:Lcom/chartboost/sdk/c$a;

    if-eqz v0, :cond_0

    .line 494
    sget-object v0, Lcom/chartboost/sdk/b;->a:Lcom/chartboost/sdk/c$a;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/c$a;->a(Z)V

    .line 495
    :cond_0
    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const-string v0, ""

    .line 152
    :goto_0
    return-object v0

    .line 151
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/b;->A()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "appId"

    sget-object v2, Lcom/chartboost/sdk/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/b;->c:Ljava/lang/String;

    .line 152
    sget-object v0, Lcom/chartboost/sdk/b;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static e(Z)V
    .locals 0

    .prologue
    .line 498
    sput-boolean p0, Lcom/chartboost/sdk/b;->s:Z

    .line 499
    return-void
.end method

.method public static f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    const-string v0, ""

    .line 167
    :goto_0
    return-object v0

    .line 166
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/b;->A()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "appSignature"

    sget-object v2, Lcom/chartboost/sdk/b;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/b;->d:Ljava/lang/String;

    .line 167
    sget-object v0, Lcom/chartboost/sdk/b;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public static f(Z)V
    .locals 0

    .prologue
    .line 506
    sput-boolean p0, Lcom/chartboost/sdk/b;->t:Z

    .line 507
    return-void
.end method

.method public static g()Lcom/chartboost/sdk/a;
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 181
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/b;->e:Lcom/chartboost/sdk/a;

    goto :goto_0
.end method

.method public static g(Z)V
    .locals 0

    .prologue
    .line 514
    sput-boolean p0, Lcom/chartboost/sdk/b;->u:Z

    .line 515
    return-void
.end method

.method public static h(Z)V
    .locals 0

    .prologue
    .line 522
    sput-boolean p0, Lcom/chartboost/sdk/b;->v:Z

    .line 523
    return-void
.end method

.method public static h()Z
    .locals 1

    .prologue
    .line 198
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/chartboost/sdk/b;->f:Z

    goto :goto_0
.end method

.method public static i()Z
    .locals 1

    .prologue
    .line 250
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 252
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/chartboost/sdk/b;->h:Z

    goto :goto_0
.end method

.method public static j()Z
    .locals 1

    .prologue
    .line 270
    sget-boolean v0, Lcom/chartboost/sdk/b;->o:Z

    return v0
.end method

.method public static k()Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 283
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    move-result v1

    if-nez v1, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-object v0

    .line 285
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/b;->A()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "trackingLevels"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/e$a;->j(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    .line 289
    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->e()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public static l()Z
    .locals 3

    .prologue
    .line 297
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    .line 298
    invoke-static {}, Lcom/chartboost/sdk/b;->A()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "retriesEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static m()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 302
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    move-result v1

    if-nez v1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v0

    .line 304
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/b;->k()Lorg/json/JSONObject;

    move-result-object v1

    .line 305
    if-eqz v1, :cond_0

    const-string v2, "debug"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "session"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "system"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "user"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static n()Lcom/chartboost/sdk/Libraries/CBLogging$Level;
    .locals 1

    .prologue
    .line 331
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    .line 332
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    return-object v0
.end method

.method public static o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    const-string v0, ""

    .line 338
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/b;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public static p()Z
    .locals 1

    .prologue
    .line 417
    sget-boolean v0, Lcom/chartboost/sdk/b;->p:Z

    return v0
.end method

.method public static q()Z
    .locals 1

    .prologue
    .line 426
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    const/4 v0, 0x1

    .line 429
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static r()Z
    .locals 2

    .prologue
    .line 436
    invoke-static {}, Lcom/chartboost/sdk/b;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Session not started: Check if Chartboost.onStart() is called, if not the session won\'t be invoked"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 442
    const/4 v0, 0x0

    .line 444
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static s()Z
    .locals 2

    .prologue
    .line 451
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-nez v0, :cond_0

    .line 453
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Chartboost Weak Activity reference is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 457
    const/4 v0, 0x0

    .line 459
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static t()Z
    .locals 2

    .prologue
    .line 481
    invoke-static {}, Lcom/chartboost/sdk/b;->z()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Chartboost Initialization error. Activity or appId or appSignature is invalid"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :catch_0
    move-exception v0

    .line 485
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 487
    const/4 v0, 0x0

    .line 489
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static u()Z
    .locals 1

    .prologue
    .line 502
    sget-boolean v0, Lcom/chartboost/sdk/b;->s:Z

    return v0
.end method

.method public static v()Z
    .locals 1

    .prologue
    .line 510
    sget-boolean v0, Lcom/chartboost/sdk/b;->t:Z

    return v0
.end method

.method public static w()Z
    .locals 1

    .prologue
    .line 518
    sget-boolean v0, Lcom/chartboost/sdk/b;->u:Z

    return v0
.end method

.method public static x()Z
    .locals 1

    .prologue
    .line 526
    sget-boolean v0, Lcom/chartboost/sdk/b;->v:Z

    return v0
.end method

.method public static y()Landroid/content/Context;
    .locals 1

    .prologue
    .line 534
    sget-object v0, Lcom/chartboost/sdk/b;->q:Landroid/content/Context;

    return-object v0
.end method

.method public static z()Landroid/app/Application;
    .locals 1

    .prologue
    .line 538
    sget-object v0, Lcom/chartboost/sdk/b;->r:Landroid/app/Application;

    return-object v0
.end method
