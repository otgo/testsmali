.class public final Lcom/chartboost/sdk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/c$4;,
        Lcom/chartboost/sdk/c$a;,
        Lcom/chartboost/sdk/c$b;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;

.field private static d:Lcom/chartboost/sdk/c;


# instance fields
.field public a:Lcom/chartboost/sdk/Model/a$a;

.field public b:Lcom/chartboost/sdk/impl/bb$a;

.field private e:Lcom/chartboost/sdk/impl/bb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/c;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/chartboost/sdk/c$2;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/c$2;-><init>(Lcom/chartboost/sdk/c;)V

    iput-object v0, p0, Lcom/chartboost/sdk/c;->a:Lcom/chartboost/sdk/Model/a$a;

    .line 246
    new-instance v0, Lcom/chartboost/sdk/c$3;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/c$3;-><init>(Lcom/chartboost/sdk/c;)V

    iput-object v0, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/impl/bb$a;

    .line 35
    iget-object v0, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/impl/bb$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bb;->a(Lcom/chartboost/sdk/impl/bb$a;)Lcom/chartboost/sdk/impl/bb;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/c;->e:Lcom/chartboost/sdk/impl/bb;

    .line 36
    return-void
.end method

.method public static a()Lcom/chartboost/sdk/c;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/c;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/chartboost/sdk/c;

    invoke-direct {v0}, Lcom/chartboost/sdk/c;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/c;

    .line 46
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/c;

    return-object v0
.end method

.method static synthetic a(Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 23
    invoke-static {p0}, Lcom/chartboost/sdk/c;->b(Lcom/chartboost/sdk/Model/a;)V

    return-void
.end method

.method private static declared-synchronized b(Lcom/chartboost/sdk/Model/a;)V
    .locals 10

    .prologue
    const/high16 v9, 0x447a0000    # 1000.0f

    .line 284
    const-class v1, Lcom/chartboost/sdk/c;

    monitor-enter v1

    const/4 v0, 0x0

    .line 285
    :try_start_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->m()Lcom/chartboost/sdk/f$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->B()Lcom/chartboost/sdk/f;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/ai;

    .line 288
    :cond_0
    new-instance v2, Lcom/chartboost/sdk/impl/az;

    const-string v3, "/api/video-complete"

    invoke-direct {v2, v3}, Lcom/chartboost/sdk/impl/az;-><init>(Ljava/lang/String;)V

    .line 289
    const-string v3, "location"

    iget-object v4, p0, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    const-string v3, "reward"

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->A()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    const-string v5, "reward"

    invoke-virtual {v4, v5}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 291
    const-string v3, "currency-name"

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->A()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    const-string v5, "currency-name"

    invoke-virtual {v4, v5}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    const-string v3, "ad_id"

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    const-string v3, "force_close"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->v()I

    move-result v3

    int-to-float v3, v3

    .line 296
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->u()I

    move-result v0

    int-to-float v0, v0

    .line 297
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->u()Lcom/chartboost/sdk/d;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TotalDuration: %f PlaybackTime: %f"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    const-string v4, "total_time"

    div-float v5, v0, v9

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_2

    .line 301
    const-string v3, "playback_time"

    div-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/az;->a(Z)V

    .line 306
    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/az;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    monitor-exit v1

    return-void

    .line 303
    :cond_2
    :try_start_1
    const-string v0, "playback_time"

    div-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lcom/chartboost/sdk/c$b;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/chartboost/sdk/c;->e:Lcom/chartboost/sdk/impl/bb;

    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/chartboost/sdk/impl/bb;->a(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Landroid/app/Activity;Lcom/chartboost/sdk/c$b;)V

    .line 56
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/chartboost/sdk/Model/a;)Z
    .locals 4

    .prologue
    .line 340
    .line 341
    if-eqz p2, :cond_0

    .line 342
    sget-object v0, Lcom/chartboost/sdk/c$4;->a:[I

    iget-object v1, p2, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/a$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 371
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 344
    :pswitch_0
    iget-boolean v0, p2, Lcom/chartboost/sdk/Model/a;->i:Z

    if-eqz v0, :cond_0

    .line 345
    invoke-static {p2}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0

    .line 349
    :pswitch_1
    invoke-static {p2}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0

    .line 352
    :pswitch_2
    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    invoke-static {}, Lcom/chartboost/sdk/b;->a()Lcom/chartboost/sdk/Chartboost$CBFramework;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Lcom/chartboost/sdk/Chartboost$CBFramework;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$CBFramework;->doesWrapperUseCustomBackgroundingBehavior()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_1

    .line 356
    const/4 v0, 0x0

    goto :goto_1

    .line 359
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->h()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_0

    .line 361
    sget-object v1, Lcom/chartboost/sdk/c;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error onActivityStart "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Model/a$b;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0, p2}, Lcom/chartboost/sdk/e;->d(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lcom/chartboost/sdk/c$b;)V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/chartboost/sdk/c$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/chartboost/sdk/c$1;-><init>(Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lcom/chartboost/sdk/c$b;)V

    .line 107
    sput-object v0, Lcom/chartboost/sdk/b;->a:Lcom/chartboost/sdk/c$a;

    .line 109
    invoke-static {}, Lcom/chartboost/sdk/b;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    invoke-virtual {p0, p1, p2, p3}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lcom/chartboost/sdk/c$b;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/b;->g()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    if-eqz p1, :cond_3

    .line 113
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()V

    .line 116
    :cond_2
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->z()V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->o:Z

    .line 119
    :cond_3
    invoke-static {}, Lcom/chartboost/sdk/b;->g()Lcom/chartboost/sdk/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/a;->didPauseClickForConfirmation()V

    goto :goto_0
.end method

.method protected final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 275
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v1

    .line 276
    if-nez v1, :cond_0

    .line 277
    const/4 v0, 0x0

    .line 280
    :goto_0
    return v0

    .line 278
    :cond_0
    iput-boolean v0, v1, Lcom/chartboost/sdk/Model/a;->p:Z

    .line 279
    iget-object v2, p0, Lcom/chartboost/sdk/c;->a:Lcom/chartboost/sdk/Model/a$a;

    invoke-interface {v2, v1}, Lcom/chartboost/sdk/Model/a$a;->b(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0
.end method

.method protected final c()Lcom/chartboost/sdk/Model/a;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 315
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->h()Lcom/chartboost/sdk/e;

    move-result-object v1

    .line 316
    if-nez v1, :cond_0

    move-object v1, v0

    .line 317
    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return-object v0

    .line 316
    :cond_0
    invoke-virtual {v1}, Lcom/chartboost/sdk/e;->d()Lcom/chartboost/sdk/impl/bp;

    move-result-object v1

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bp;->h()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    goto :goto_1
.end method

.method public d()Lcom/chartboost/sdk/impl/az;
    .locals 2

    .prologue
    .line 326
    new-instance v1, Lcom/chartboost/sdk/impl/az;

    const-string v0, "/api/click"

    invoke-direct {v1, v0}, Lcom/chartboost/sdk/impl/az;-><init>(Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->f()Landroid/app/Activity;

    move-result-object v0

    .line 328
    if-nez v0, :cond_0

    .line 329
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getValidContext()Landroid/content/Context;

    move-result-object v0

    .line 330
    :cond_0
    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/az;->b(Landroid/content/Context;)V

    .line 331
    return-object v1
.end method
