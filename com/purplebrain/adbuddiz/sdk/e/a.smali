.class public Lcom/purplebrain/adbuddiz/sdk/e/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/purplebrain/adbuddiz/sdk/e/a$a;
    }
.end annotation


# static fields
.field private static h:Lcom/purplebrain/adbuddiz/sdk/e/a;


# instance fields
.field public a:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

.field public b:Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;

.field private c:Lcom/purplebrain/adbuddiz/sdk/e/c;

.field private d:Z

.field private e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

.field private f:Ljava/util/List;

.field private g:Landroid/view/OrientationEventListener;

.field private i:Lcom/purplebrain/adbuddiz/sdk/h/b$a;

.field private j:Lcom/purplebrain/adbuddiz/sdk/h/i$b;

.field private k:Lcom/purplebrain/adbuddiz/sdk/e/b$a;

.field private l:Lcom/purplebrain/adbuddiz/sdk/e/c$b;

.field private m:Lcom/purplebrain/adbuddiz/sdk/e/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/e/a;->h:Lcom/purplebrain/adbuddiz/sdk/e/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->c:Lcom/purplebrain/adbuddiz/sdk/e/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->d:Z

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->f:Ljava/util/List;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->g:Landroid/view/OrientationEventListener;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a$2;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/e/a$2;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/a;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->i:Lcom/purplebrain/adbuddiz/sdk/h/b$a;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a$3;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/e/a$3;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/a;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->j:Lcom/purplebrain/adbuddiz/sdk/h/i$b;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a$4;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/e/a$4;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/a;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->k:Lcom/purplebrain/adbuddiz/sdk/e/b$a;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a$5;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/e/a$5;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/a;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->l:Lcom/purplebrain/adbuddiz/sdk/e/c$b;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a$6;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/e/a$6;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/a;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->m:Lcom/purplebrain/adbuddiz/sdk/e/c$a;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/c;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/e/c;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->c:Lcom/purplebrain/adbuddiz/sdk/e/c;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->c:Lcom/purplebrain/adbuddiz/sdk/e/c;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->l:Lcom/purplebrain/adbuddiz/sdk/e/c$b;

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/e/c;->a:Lcom/purplebrain/adbuddiz/sdk/e/c$b;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->c:Lcom/purplebrain/adbuddiz/sdk/e/c;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->m:Lcom/purplebrain/adbuddiz/sdk/e/c$a;

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/e/c;->b:Lcom/purplebrain/adbuddiz/sdk/e/c$a;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->c:Lcom/purplebrain/adbuddiz/sdk/e/c;

    invoke-direct {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/c;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->c:Lcom/purplebrain/adbuddiz/sdk/e/c;

    invoke-direct {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/c;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/e/a;)Landroid/view/OrientationEventListener;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->g:Landroid/view/OrientationEventListener;

    return-object v0
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/e/a;Landroid/view/OrientationEventListener;)Landroid/view/OrientationEventListener;
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->g:Landroid/view/OrientationEventListener;

    return-object p1
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/e/a;Z)Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;
    .locals 1

    invoke-direct {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/a;->c(Z)Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/purplebrain/adbuddiz/sdk/e/a;
    .locals 2

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/a;->h:Lcom/purplebrain/adbuddiz/sdk/e/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/purplebrain/adbuddiz/sdk/e/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/a;->h:Lcom/purplebrain/adbuddiz/sdk/e/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/e/a;-><init>()V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/e/a;->h:Lcom/purplebrain/adbuddiz/sdk/e/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/a;->h:Lcom/purplebrain/adbuddiz/sdk/e/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;)Lcom/purplebrain/adbuddiz/sdk/f/a/a;
    .locals 3

    invoke-direct {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/a;->b(Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;)Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    move-result-object v0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->f()Lcom/purplebrain/adbuddiz/sdk/f/a/d;

    move-result-object v2

    iget-object v2, v2, Lcom/purplebrain/adbuddiz/sdk/f/a/d;->e:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;

    invoke-virtual {v2, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/e;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/e;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/e;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->e()Lcom/purplebrain/adbuddiz/sdk/i/p;

    move-result-object v2

    iget-boolean v3, p1, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->b:Z

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/purplebrain/adbuddiz/sdk/i/p;->b:Ljava/lang/Long;

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, v2, Lcom/purplebrain/adbuddiz/sdk/i/p;->b:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/p;->b()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->g()V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->e:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p1, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->g:Z

    iget-object v0, p1, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/i;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/h/i;->b()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/h/i;->a()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/purplebrain/adbuddiz/sdk/e/b;->c()V

    iget-object v3, p1, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->f:Ljava/util/List;

    invoke-virtual {p1, v3}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a(Ljava/util/Collection;)V

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/purplebrain/adbuddiz/sdk/i/p;->b:Ljava/lang/Long;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/h/i;->g()V

    :cond_4
    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->f()Lcom/purplebrain/adbuddiz/sdk/h/i;

    move-result-object v0

    iput-object p2, v0, Lcom/purplebrain/adbuddiz/sdk/h/i;->f:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->j:Lcom/purplebrain/adbuddiz/sdk/h/i$b;

    iput-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/h/i;->g:Lcom/purplebrain/adbuddiz/sdk/h/i$b;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->i:Lcom/purplebrain/adbuddiz/sdk/h/b$a;

    invoke-virtual {v0, v2}, Lcom/purplebrain/adbuddiz/sdk/h/i;->a(Lcom/purplebrain/adbuddiz/sdk/h/b$a;)V

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/h/i;->f()V

    iput-object v0, p1, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/i;
    :try_end_1
    .catch Lcom/purplebrain/adbuddiz/sdk/b/k; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/j; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/purplebrain/adbuddiz/sdk/b/i; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    monitor-exit v1

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->g:Z

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->k:Lcom/purplebrain/adbuddiz/sdk/e/b$a;

    invoke-virtual {v0, v2}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a(Lcom/purplebrain/adbuddiz/sdk/e/b$a;)V

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->g:Z

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->k:Lcom/purplebrain/adbuddiz/sdk/e/b$a;

    invoke-virtual {v0, v2}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a(Lcom/purplebrain/adbuddiz/sdk/e/b$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/e/a;Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    return-void
.end method

.method public static a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)Z
    .locals 8

    const/4 v0, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/h;->a()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->h()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->h()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->i()I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/purplebrain/adbuddiz/sdk/e/a;)Lcom/purplebrain/adbuddiz/sdk/e/c;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->c:Lcom/purplebrain/adbuddiz/sdk/e/c;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/f/a/a;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "prev"

    invoke-static {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/m;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/i/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->a(Lorg/json/JSONObject;)Lcom/purplebrain/adbuddiz/sdk/f/a/a;
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/h; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;)Lcom/purplebrain/adbuddiz/sdk/f/a/a;
    .locals 3

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/k;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/k;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iget-object v1, p1, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/i;

    iget-object v2, p1, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->c:Lcom/purplebrain/adbuddiz/sdk/h/i$a;

    if-eqz v2, :cond_2

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/c;

    iget-object v1, p1, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->c:Lcom/purplebrain/adbuddiz/sdk/h/i$a;

    iget-object v2, p1, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/b/c;-><init>(Lcom/purplebrain/adbuddiz/sdk/h/i$a;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/b; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_1
    iget-boolean v2, p1, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->b:Z

    if-eqz v2, :cond_3

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/p;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/p;-><init>()V

    throw v0

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/f;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/f;-><init>()V

    throw v0

    :cond_4
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/s;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/s;-><init>()V

    throw v0

    :cond_5
    if-nez v0, :cond_6

    if-eqz v1, :cond_6

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/g;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/g;-><init>()V

    throw v0
    :try_end_1
    .catch Lcom/purplebrain/adbuddiz/sdk/b/b; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    return-object v0
.end method

.method static synthetic b(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->e()Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    move-result-object v0

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p0, Lcom/purplebrain/adbuddiz/sdk/f/a/b;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->i:Ljava/lang/String;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private c(Z)Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    goto :goto_0
.end method

.method static synthetic c(Lcom/purplebrain/adbuddiz/sdk/e/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->f:Ljava/util/List;

    return-object v0
.end method

.method private c(Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;)V
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a(Ljava/util/Collection;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    return-void
.end method

.method private c(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V
    .locals 3

    :try_start_0
    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/i/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "prev"

    invoke-static {v0, v2, v1}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "prev"

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/m;->d(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "prev"

    invoke-static {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/m;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "ABAdManager.setLastDismissedAdAndSaveOnDisk() Exception :"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Z)Lcom/purplebrain/adbuddiz/sdk/f/a/a;
    .locals 5

    invoke-direct {p0, p2}, Lcom/purplebrain/adbuddiz/sdk/e/a;->c(Z)Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;)Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->c:Lcom/purplebrain/adbuddiz/sdk/e/c;

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-virtual {v0, v4, v3}, Lcom/purplebrain/adbuddiz/sdk/e/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/util/Collection;)V

    invoke-direct {p0, v2}, Lcom/purplebrain/adbuddiz/sdk/e/a;->c(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    :cond_1
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    iget v1, v0, Lcom/purplebrain/adbuddiz/sdk/f/b;->m:I

    iget v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/b;->n:I

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;

    invoke-direct {v3, p1, v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;-><init>(Landroid/content/Context;II)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/i/b/c$a$1;

    invoke-direct {v1, v3}, Lcom/purplebrain/adbuddiz/sdk/i/b/c$a$1;-><init>(Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object v2
.end method

.method public final a(Z)Lcom/purplebrain/adbuddiz/sdk/f/a/a;
    .locals 1

    invoke-direct {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/a;->c(Z)Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;)Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->d:Z

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/e/a$1;

    invoke-direct {v1, p0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/a$1;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/a;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->d:Z

    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p2, p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    move-result-object v2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/e/a;->b(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/f/a/a;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    :cond_0
    if-nez v2, :cond_2

    invoke-direct {p0, p2}, Lcom/purplebrain/adbuddiz/sdk/e/a;->c(Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;)V

    :goto_1
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->h:Z

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->k:Lcom/purplebrain/adbuddiz/sdk/e/b$a;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a(Lcom/purplebrain/adbuddiz/sdk/e/b$a;)V

    :cond_1
    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string v0, "prev"

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/m;->d(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/purplebrain/adbuddiz/sdk/e/a;->c(Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v0

    if-nez v2, :cond_4

    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_6

    invoke-direct {p0, p2}, Lcom/purplebrain/adbuddiz/sdk/e/a;->c(Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->c()Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/purplebrain/adbuddiz/sdk/f/e;->a(Lcom/purplebrain/adbuddiz/sdk/f/e;)Z

    move-result v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->c:Lcom/purplebrain/adbuddiz/sdk/e/c;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/e/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    goto :goto_2

    :cond_6
    move-object v1, v2

    goto :goto_1
.end method

.method public final b()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;

    invoke-virtual {v0, v2}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/purplebrain/adbuddiz/sdk/e/a;->c(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->a()[Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/e;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final b(Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/a;->c(Z)Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/e/a;->c(Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;)V

    return-void
.end method
