.class public Lcom/purplebrain/adbuddiz/sdk/d/a;
.super Ljava/lang/Object;


# static fields
.field private static i:Lcom/purplebrain/adbuddiz/sdk/d/a;


# instance fields
.field public a:Lcom/purplebrain/adbuddiz/sdk/d/k;

.field public b:Z

.field public c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

.field public d:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

.field private e:Ljava/lang/Object;

.field private f:Lcom/purplebrain/adbuddiz/sdk/g/h;

.field private g:Z

.field private h:Landroid/view/OrientationEventListener;

.field private j:Lcom/purplebrain/adbuddiz/sdk/g/b;

.field private k:Lcom/purplebrain/adbuddiz/sdk/g/i;

.field private l:Lcom/purplebrain/adbuddiz/sdk/d/j;

.field private m:Lcom/purplebrain/adbuddiz/sdk/d/p;

.field private n:Lcom/purplebrain/adbuddiz/sdk/d/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/d/a;->i:Lcom/purplebrain/adbuddiz/sdk/d/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->a:Lcom/purplebrain/adbuddiz/sdk/d/k;

    iput-boolean v2, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->b:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->e:Ljava/lang/Object;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->f:Lcom/purplebrain/adbuddiz/sdk/g/h;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->d:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    iput-boolean v2, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->g:Z

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->h:Landroid/view/OrientationEventListener;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/d/c;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/d/c;-><init>(Lcom/purplebrain/adbuddiz/sdk/d/a;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->j:Lcom/purplebrain/adbuddiz/sdk/g/b;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/d/d;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/d/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/d/a;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->k:Lcom/purplebrain/adbuddiz/sdk/g/i;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/d/e;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/d/e;-><init>(Lcom/purplebrain/adbuddiz/sdk/d/a;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->l:Lcom/purplebrain/adbuddiz/sdk/d/j;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/d/f;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/d/f;-><init>(Lcom/purplebrain/adbuddiz/sdk/d/a;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->m:Lcom/purplebrain/adbuddiz/sdk/d/p;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/d/g;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/d/g;-><init>(Lcom/purplebrain/adbuddiz/sdk/d/a;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->n:Lcom/purplebrain/adbuddiz/sdk/d/o;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/d/k;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/d/k;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->a:Lcom/purplebrain/adbuddiz/sdk/d/k;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->a:Lcom/purplebrain/adbuddiz/sdk/d/k;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->m:Lcom/purplebrain/adbuddiz/sdk/d/p;

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/d/k;->a:Lcom/purplebrain/adbuddiz/sdk/d/p;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->a:Lcom/purplebrain/adbuddiz/sdk/d/k;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->n:Lcom/purplebrain/adbuddiz/sdk/d/o;

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/d/k;->b:Lcom/purplebrain/adbuddiz/sdk/d/o;

    return-void
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/d/a;)Landroid/view/OrientationEventListener;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->h:Landroid/view/OrientationEventListener;

    return-object v0
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/d/a;Landroid/view/OrientationEventListener;)Landroid/view/OrientationEventListener;
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->h:Landroid/view/OrientationEventListener;

    return-object p1
.end method

.method public static a()Lcom/purplebrain/adbuddiz/sdk/d/a;
    .locals 2

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/d/a;->i:Lcom/purplebrain/adbuddiz/sdk/d/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/purplebrain/adbuddiz/sdk/d/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/d/a;->i:Lcom/purplebrain/adbuddiz/sdk/d/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;-><init>()V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/d/a;->i:Lcom/purplebrain/adbuddiz/sdk/d/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/d/a;->i:Lcom/purplebrain/adbuddiz/sdk/d/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    iget v1, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->l:I

    iget v0, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->m:I

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/h/b/d;

    invoke-direct {v2, p0, v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/b/d;-><init>(Landroid/content/Context;II)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/h/b/e;

    invoke-direct {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/h/b/e;-><init>(Lcom/purplebrain/adbuddiz/sdk/h/b/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->b(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/d/a;Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->c(Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/d/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->g:Z

    return p1
.end method

.method public static a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;)Z
    .locals 8

    const/4 v0, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/f;->a()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->g()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->g()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->h()I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/e/a/a;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "ABZ_next.abz"

    invoke-static {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/h/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->a(Lorg/json/JSONObject;)Lcom/purplebrain/adbuddiz/sdk/e/a/a;
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/d; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/purplebrain/adbuddiz/sdk/d/a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ABZ_next.abz"

    invoke-static {p0, v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Lcom/purplebrain/adbuddiz/sdk/e/a/a;)Z
    .locals 2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/e/f;

    move-result-object v0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->c()Lcom/purplebrain/adbuddiz/sdk/e/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/e/f;->a(Lcom/purplebrain/adbuddiz/sdk/e/f;)Z

    move-result v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/e/a/a;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "ABZ_prev.abz"

    invoke-static {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/h/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->a(Lorg/json/JSONObject;)Lcom/purplebrain/adbuddiz/sdk/e/a/a;
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/d; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/purplebrain/adbuddiz/sdk/d/a;)Lcom/purplebrain/adbuddiz/sdk/g/h;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->f:Lcom/purplebrain/adbuddiz/sdk/g/h;

    return-object v0
.end method

.method static synthetic d(Lcom/purplebrain/adbuddiz/sdk/d/a;)Lcom/purplebrain/adbuddiz/sdk/g/h;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->f:Lcom/purplebrain/adbuddiz/sdk/g/h;

    return-object v0
.end method

.method static synthetic e(Lcom/purplebrain/adbuddiz/sdk/d/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->e()V

    return-void
.end method

.method static synthetic e(Lcom/purplebrain/adbuddiz/sdk/e/a/a;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->e()Lcom/purplebrain/adbuddiz/sdk/e/a/h;

    move-result-object v0

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/e/a/h;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/h;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p0, Lcom/purplebrain/adbuddiz/sdk/e/a/c;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/c;->f:Ljava/lang/String;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/a/n;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/purplebrain/adbuddiz/sdk/d/a;)Lcom/purplebrain/adbuddiz/sdk/d/k;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->a:Lcom/purplebrain/adbuddiz/sdk/d/k;

    return-object v0
.end method

.method static synthetic g(Lcom/purplebrain/adbuddiz/sdk/d/a;)Lcom/purplebrain/adbuddiz/sdk/e/a/a;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->d:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/purplebrain/adbuddiz/sdk/e/a/a;
    .locals 3

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/g;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/g;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->e()V

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/l;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/l;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->d:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->d:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->e()V

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/m;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/m;-><init>()V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->d:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/e/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->f()Lcom/purplebrain/adbuddiz/sdk/e/a/d;

    move-result-object v2

    iget-object v2, v2, Lcom/purplebrain/adbuddiz/sdk/e/a/d;->d:Lcom/purplebrain/adbuddiz/sdk/d/a/b;

    invoke-virtual {v2, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/a/b;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/f;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/m;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/m;-><init>()V

    throw v0

    :cond_4
    return-object v0
.end method

.method public final c()V
    .locals 0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->d()V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->e()V

    return-void
.end method

.method public final c(Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V
    .locals 3

    :try_start_0
    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->d:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->b(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ABZ_next.abz"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->d:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ABZ_next.abz"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    const-string v1, "ABAdManager.setNextAdToShowAndSaveOnDisk() Exception :"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->a:Lcom/purplebrain/adbuddiz/sdk/d/k;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->d:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/purplebrain/adbuddiz/sdk/d/m;

    invoke-direct {v4, v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/d/m;-><init>(Lcom/purplebrain/adbuddiz/sdk/d/k;Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->d:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->c(Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->d(Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V

    return-void
.end method

.method public final d(Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V
    .locals 3

    :try_start_0
    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/h/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ABZ_prev.abz"

    invoke-static {v0, v2, v1}, Lcom/purplebrain/adbuddiz/sdk/h/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ABZ_prev.abz"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ABZ_prev.abz"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    const-string v1, "ABAdManager.setLastDismissedAdAndSaveOnDisk() Exception :"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 6

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/t;->a()Lcom/purplebrain/adbuddiz/sdk/h/t;

    move-result-object v1

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/purplebrain/adbuddiz/sdk/h/t;->d:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lcom/purplebrain/adbuddiz/sdk/h/t;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/t;->e()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->f:Lcom/purplebrain/adbuddiz/sdk/g/h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->f:Lcom/purplebrain/adbuddiz/sdk/g/h;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/g/h;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->f:Lcom/purplebrain/adbuddiz/sdk/g/h;

    iget v0, v0, Lcom/purplebrain/adbuddiz/sdk/g/a;->a:I

    const/4 v3, 0x4

    if-ge v0, v3, :cond_2

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->c()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->d:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->d()V

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/purplebrain/adbuddiz/sdk/h/t;->d:Ljava/lang/Long;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->f:Lcom/purplebrain/adbuddiz/sdk/g/h;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->f:Lcom/purplebrain/adbuddiz/sdk/g/h;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/g/h;->f()V

    :cond_4
    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/g/h;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/g/h;-><init>()V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->k:Lcom/purplebrain/adbuddiz/sdk/g/i;

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/g/h;->c:Lcom/purplebrain/adbuddiz/sdk/g/i;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->j:Lcom/purplebrain/adbuddiz/sdk/g/b;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/g/h;->a(Lcom/purplebrain/adbuddiz/sdk/g/b;)V

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/g/h;->e()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->f:Lcom/purplebrain/adbuddiz/sdk/g/h;
    :try_end_1
    .catch Lcom/purplebrain/adbuddiz/sdk/b/g; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/f; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/purplebrain/adbuddiz/sdk/b/e; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    monitor-exit v2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->l:Lcom/purplebrain/adbuddiz/sdk/d/j;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a(Lcom/purplebrain/adbuddiz/sdk/d/j;)V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a;->l:Lcom/purplebrain/adbuddiz/sdk/d/j;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a(Lcom/purplebrain/adbuddiz/sdk/d/j;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2
.end method
