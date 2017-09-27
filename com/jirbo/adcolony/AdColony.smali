.class public Lcom/jirbo/adcolony/AdColony;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/AdColony$a;
    }
.end annotation


# static fields
.field static b:Z

.field static c:Z


# instance fields
.field a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/AdColony;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColony;->a:Z

    .line 442
    return-void
.end method

.method public static activity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 287
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static addAdAvailabilityListener(Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;

    .prologue
    .line 338
    sget-object v0, Lcom/jirbo/adcolony/a;->ap:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 339
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/a;->ap:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static addV4VCListener(Lcom/jirbo/adcolony/AdColonyV4VCListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/jirbo/adcolony/AdColonyV4VCListener;

    .prologue
    .line 323
    sget-object v0, Lcom/jirbo/adcolony/a;->ao:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 324
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/a;->ao:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static cancelVideo()V
    .locals 2

    .prologue
    .line 376
    sget-object v0, Lcom/jirbo/adcolony/a;->U:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v0, :cond_0

    .line 378
    sget-object v0, Lcom/jirbo/adcolony/a;->U:Lcom/jirbo/adcolony/ADCVideo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCVideo;->finish()V

    .line 379
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->ak:Z

    .line 380
    sget-object v0, Lcom/jirbo/adcolony/a;->W:Lcom/jirbo/adcolony/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/a$a;->b(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 382
    :cond_0
    return-void
.end method

.method public static varargs configure(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "client_options"    # Ljava/lang/String;
    .param p2, "app_id"    # Ljava/lang/String;
    .param p3, "zone_ids"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 58
    sput-boolean v1, Lcom/jirbo/adcolony/AdColony;->c:Z

    .line 60
    sget-boolean v0, Lcom/jirbo/adcolony/AdColony;->b:Z

    if-nez v0, :cond_1

    .line 62
    sget-object v0, Lcom/jirbo/adcolony/a;->ao:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    sget-object v0, Lcom/jirbo/adcolony/a;->ap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    sput-boolean v1, Lcom/jirbo/adcolony/AdColony;->b:Z

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_3

    .line 70
    new-instance v0, Lcom/jirbo/adcolony/AdColony$a;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/AdColony$a;-><init>(Landroid/app/Activity;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/AdColony$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 77
    :goto_1
    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 79
    new-instance v2, Lcom/jirbo/adcolony/AdColony$1;

    invoke-direct {v2}, Lcom/jirbo/adcolony/AdColony$1;-><init>()V

    .line 87
    sget-boolean v3, Lcom/jirbo/adcolony/a;->H:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/jirbo/adcolony/a;->I:Z

    if-eqz v3, :cond_7

    .line 89
    :cond_2
    sget-boolean v3, Lcom/jirbo/adcolony/a;->y:Z

    if-nez v3, :cond_0

    .line 91
    if-nez p2, :cond_4

    .line 93
    const-string v0, "Null App ID - disabling AdColony."

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_3
    new-instance v0, Lcom/jirbo/adcolony/AdColony$a;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/AdColony$a;-><init>(Landroid/app/Activity;)V

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/AdColony$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 97
    :cond_4
    if-nez p3, :cond_5

    .line 99
    const-string v0, "Null Zone IDs array - disabling AdColony."

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_5
    array-length v3, p3

    if-nez v3, :cond_6

    .line 105
    const-string v0, "No Zone IDs provided - disabling AdColony."

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_6
    invoke-static {p0}, Lcom/jirbo/adcolony/a;->b(Landroid/app/Activity;)V

    .line 110
    sget-object v3, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v3, p1, p2, p3}, Lcom/jirbo/adcolony/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 112
    sput-boolean v6, Lcom/jirbo/adcolony/a;->w:Z

    .line 113
    sput-boolean v6, Lcom/jirbo/adcolony/a;->H:Z

    .line 114
    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    :cond_7
    sget-object v0, Lcom/jirbo/adcolony/a;->U:Lcom/jirbo/adcolony/ADCVideo;

    if-nez v0, :cond_8

    sput-boolean v6, Lcom/jirbo/adcolony/a;->E:Z

    .line 121
    :cond_8
    sget-object v0, Lcom/jirbo/adcolony/a;->ao:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 122
    sget-object v0, Lcom/jirbo/adcolony/a;->ap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/a;->ar:Ljava/util/HashMap;

    move v0, v1

    .line 124
    :goto_2
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 126
    sget-object v2, Lcom/jirbo/adcolony/a;->ar:Ljava/util/HashMap;

    aget-object v3, p3, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static disable()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->y:Z

    .line 50
    return-void
.end method

.method public static disableDECOverride()V
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/a;->e:Ljava/lang/String;

    .line 422
    return-void
.end method

.method public static forceMobileCache()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 426
    sget-boolean v0, Lcom/jirbo/adcolony/a;->N:Z

    if-nez v0, :cond_0

    .line 428
    sput-boolean v1, Lcom/jirbo/adcolony/a;->N:Z

    .line 429
    sput-boolean v2, Lcom/jirbo/adcolony/a;->H:Z

    .line 430
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/b;->d:Z

    .line 431
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iput-boolean v2, v0, Lcom/jirbo/adcolony/b;->b:Z

    .line 432
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/b;->c:Z

    .line 434
    :cond_0
    return-void
.end method

.method public static getCustomID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v0, v0, Lcom/jirbo/adcolony/c;->y:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v0, v0, Lcom/jirbo/adcolony/c;->z:Ljava/lang/String;

    return-object v0
.end method

.method public static get_images(Ljava/lang/String;)V
    .locals 1
    .param p0, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 416
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/c;->b(Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public static isConfigured()Z
    .locals 1

    .prologue
    .line 156
    sget-boolean v0, Lcom/jirbo/adcolony/AdColony;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet()Z
    .locals 1

    .prologue
    .line 187
    invoke-static {}, Lcom/jirbo/adcolony/g;->i()Z

    move-result v0

    return v0
.end method

.method public static isZoneNative(Ljava/lang/String;)Z
    .locals 3
    .param p0, "zone_id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 301
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    if-nez v0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v1

    .line 302
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    if-eqz v0, :cond_0

    .line 303
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    if-eqz v0, :cond_0

    .line 304
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    if-eqz v0, :cond_0

    .line 305
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/n$ag;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/n$ag;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;

    move-result-object v0

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ad;->m:Lcom/jirbo/adcolony/n$d;

    if-eqz v0, :cond_0

    .line 307
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/n$ag;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;

    move-result-object v0

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ad;->m:Lcom/jirbo/adcolony/n$d;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$d;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v0, v1

    .line 309
    :goto_1
    sget-object v2, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v2, v2, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v2, v2, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v2, p0}, Lcom/jirbo/adcolony/n$ag;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;

    move-result-object v2

    iget-object v2, v2, Lcom/jirbo/adcolony/n$ad;->m:Lcom/jirbo/adcolony/n$d;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 311
    sget-object v2, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v2, v2, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v2, v2, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v2, p0}, Lcom/jirbo/adcolony/n$ag;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;

    move-result-object v2

    iget-object v2, v2, Lcom/jirbo/adcolony/n$ad;->m:Lcom/jirbo/adcolony/n$d;

    invoke-virtual {v2, v0}, Lcom/jirbo/adcolony/n$d;->a(I)Lcom/jirbo/adcolony/n$a;

    move-result-object v2

    iget-object v2, v2, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/n$p;->a:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 309
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isZoneV4VC(Ljava/lang/String;)Z
    .locals 2
    .param p0, "zone_id"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 292
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    if-nez v1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v0

    .line 293
    :cond_1
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    if-eqz v1, :cond_0

    .line 294
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v1, v1, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    if-eqz v1, :cond_0

    .line 295
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v1, v1, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v1, v1, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    if-eqz v1, :cond_0

    .line 296
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    invoke-virtual {v1, p0, v0}, Lcom/jirbo/adcolony/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static notifyIAPComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "product_id"    # Ljava/lang/String;
    .param p1, "trans_id"    # Ljava/lang/String;

    .prologue
    .line 348
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, p1, v0, v2, v3}, Lcom/jirbo/adcolony/AdColony;->notifyIAPComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 349
    return-void
.end method

.method public static notifyIAPComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 5
    .param p0, "product_id"    # Ljava/lang/String;
    .param p1, "trans_id"    # Ljava/lang/String;
    .param p2, "currency_code"    # Ljava/lang/String;
    .param p3, "price"    # D

    .prologue
    .line 352
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "notifyIAPComplete() called."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 354
    new-instance v0, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    .line 355
    const-string v1, "product_id"

    invoke-virtual {v0, v1, p0}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-wide/16 v2, 0x0

    cmpl-double v1, p3, v2

    if-eqz v1, :cond_0

    const-string v1, "price"

    invoke-virtual {v0, v1, p3, p4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;D)V

    .line 357
    :cond_0
    const-string v1, "trans_id"

    invoke-virtual {v0, v1, p1}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v1, "quantity"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 359
    if-eqz p2, :cond_1

    const-string v1, "price_currency_code"

    invoke-virtual {v0, v1, p2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_1
    sget-boolean v1, Lcom/jirbo/adcolony/a;->O:Z

    if-eqz v1, :cond_2

    .line 362
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    const-string v2, "in_app_purchase"

    invoke-virtual {v1, v2, v0}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;)V

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_2
    sget-object v1, Lcom/jirbo/adcolony/a;->aj:Lcom/jirbo/adcolony/ADCData$c;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/ADCData$c;->a(Lcom/jirbo/adcolony/ADCData$i;)Lcom/jirbo/adcolony/ADCData$c;

    goto :goto_0
.end method

.method public static onBackPressed()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 270
    sget-object v0, Lcom/jirbo/adcolony/a;->S:Lcom/jirbo/adcolony/h;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/jirbo/adcolony/a;->S:Lcom/jirbo/adcolony/h;

    instance-of v0, v0, Lcom/jirbo/adcolony/ab;

    if-nez v0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/a;->S:Lcom/jirbo/adcolony/h;

    instance-of v0, v0, Lcom/jirbo/adcolony/ac;

    if-eqz v0, :cond_2

    .line 273
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/a;->S:Lcom/jirbo/adcolony/h;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/h;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v2, Lcom/jirbo/adcolony/a;->S:Lcom/jirbo/adcolony/h;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 274
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->E:Z

    .line 275
    sget-object v0, Lcom/jirbo/adcolony/a;->S:Lcom/jirbo/adcolony/h;

    iget-object v0, v0, Lcom/jirbo/adcolony/h;->G:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->c(Z)V

    .line 276
    :goto_0
    sget-object v0, Lcom/jirbo/adcolony/a;->an:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    sget-object v0, Lcom/jirbo/adcolony/a;->an:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 277
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/a;->an:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 278
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/a;->S:Lcom/jirbo/adcolony/h;

    .line 280
    :cond_2
    return-void
.end method

.method public static pause()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 249
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "[ADC] AdColony pause called."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 250
    sput-boolean v4, Lcom/jirbo/adcolony/a;->r:Z

    .line 251
    sput-boolean v4, Lcom/jirbo/adcolony/a;->B:Z

    move v1, v2

    .line 252
    :goto_0
    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 254
    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 256
    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;

    .line 257
    iput-boolean v4, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->A:Z

    .line 258
    iget-object v3, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 261
    sget-boolean v3, Lcom/jirbo/adcolony/a;->E:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    invoke-virtual {v3, v2}, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 262
    :cond_0
    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->c()V

    .line 252
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 266
    :cond_2
    return-void
.end method

.method public static removeAdAvailabilityListener(Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;

    .prologue
    .line 343
    sget-object v0, Lcom/jirbo/adcolony/a;->ap:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 344
    return-void
.end method

.method public static removeV4VCListener(Lcom/jirbo/adcolony/AdColonyV4VCListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/jirbo/adcolony/AdColonyV4VCListener;

    .prologue
    .line 329
    sget-object v0, Lcom/jirbo/adcolony/a;->ao:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 330
    return-void
.end method

.method public static resume(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 195
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "[ADC] AdColony resume called."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 196
    sput-boolean v2, Lcom/jirbo/adcolony/a;->B:Z

    .line 197
    sput-boolean v2, Lcom/jirbo/adcolony/a;->r:Z

    .line 198
    invoke-static {p0}, Lcom/jirbo/adcolony/a;->a(Landroid/app/Activity;)V

    .line 199
    sput-boolean v2, Lcom/jirbo/adcolony/a;->A:Z

    .line 201
    invoke-static {}, Lcom/jirbo/adcolony/a;->h()V

    .line 202
    if-nez p0, :cond_0

    .line 204
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v1, "Activity reference is null. Disabling AdColony."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 205
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V

    .line 240
    :goto_0
    return-void

    .line 208
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/a;->v:Lcom/jirbo/adcolony/AdColonyAd;

    if-eqz v0, :cond_1

    .line 210
    sget-object v0, Lcom/jirbo/adcolony/a;->W:Lcom/jirbo/adcolony/a$a;

    sget-object v1, Lcom/jirbo/adcolony/a;->v:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/a$a;->a(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 211
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/a;->v:Lcom/jirbo/adcolony/AdColonyAd;

    .line 213
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jirbo/adcolony/AdColony$2;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/AdColony$2;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 238
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 239
    sput-boolean v2, Lcom/jirbo/adcolony/a;->M:Z

    goto :goto_0
.end method

.method public static setCustomID(Ljava/lang/String;)V
    .locals 1
    .param p0, "new_custom_id"    # Ljava/lang/String;

    .prologue
    .line 135
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v0, v0, Lcom/jirbo/adcolony/c;->y:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iput-object p0, v0, Lcom/jirbo/adcolony/c;->y:Ljava/lang/String;

    .line 141
    sget-boolean v0, Lcom/jirbo/adcolony/a;->x:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/b;->h()V

    .line 144
    :cond_0
    return-void
.end method

.method public static setDeviceID(Ljava/lang/String;)V
    .locals 3
    .param p0, "new_device_id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 164
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v0, v0, Lcom/jirbo/adcolony/c;->z:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iput-object p0, v0, Lcom/jirbo/adcolony/c;->z:Ljava/lang/String;

    .line 167
    sput-boolean v1, Lcom/jirbo/adcolony/a;->H:Z

    .line 168
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iput-boolean v2, v0, Lcom/jirbo/adcolony/b;->d:Z

    .line 169
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/b;->b:Z

    .line 170
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iput-boolean v2, v0, Lcom/jirbo/adcolony/b;->c:Z

    .line 172
    :cond_0
    return-void
.end method

.method public static statusForZone(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 389
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    if-nez v0, :cond_1

    .line 392
    :cond_0
    const-string v0, "unknown"

    .line 407
    :goto_0
    return-object v0

    .line 394
    :cond_1
    sget-boolean v0, Lcom/jirbo/adcolony/a;->y:Z

    if-eqz v0, :cond_2

    const-string v0, "unknown"

    goto :goto_0

    .line 396
    :cond_2
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/n$ag;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;

    move-result-object v0

    .line 398
    if-eqz v0, :cond_5

    .line 400
    iget-boolean v1, v0, Lcom/jirbo/adcolony/n$ad;->g:Z

    if-nez v1, :cond_3

    const-string v0, "off"

    goto :goto_0

    .line 401
    :cond_3
    iget-boolean v0, v0, Lcom/jirbo/adcolony/n$ad;->h:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/jirbo/adcolony/b;->c(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "active"

    goto :goto_0

    .line 402
    :cond_4
    const-string v0, "loading"

    goto :goto_0

    .line 405
    :cond_5
    sget-boolean v0, Lcom/jirbo/adcolony/a;->x:Z

    if-nez v0, :cond_6

    const-string v0, "unknown"

    goto :goto_0

    .line 407
    :cond_6
    const-string v0, "invalid"

    goto :goto_0
.end method
