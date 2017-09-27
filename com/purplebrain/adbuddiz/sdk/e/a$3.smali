.class final Lcom/purplebrain/adbuddiz/sdk/e/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/purplebrain/adbuddiz/sdk/h/i$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/e/a;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$3;->a:Lcom/purplebrain/adbuddiz/sdk/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/h/i;)V
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$3;->a:Lcom/purplebrain/adbuddiz/sdk/e/a;

    iget-boolean v1, p1, Lcom/purplebrain/adbuddiz/sdk/h/i;->e:Z

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a(Lcom/purplebrain/adbuddiz/sdk/e/a;Z)Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a(Lcom/purplebrain/adbuddiz/sdk/h/i;)V

    return-void
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/h/i;Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    new-array v0, v9, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iget-boolean v1, p1, Lcom/purplebrain/adbuddiz/sdk/h/i;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v8

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$3;->a:Lcom/purplebrain/adbuddiz/sdk/e/a;

    iget-boolean v1, p1, Lcom/purplebrain/adbuddiz/sdk/h/i;->e:Z

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a(Lcom/purplebrain/adbuddiz/sdk/e/a;Z)Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;

    move-result-object v1

    iput-boolean v6, v1, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->b:Z

    iput-object v7, v1, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->c:Lcom/purplebrain/adbuddiz/sdk/h/i$a;

    iput-object v7, v1, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->d:Ljava/lang/String;

    iget-object v2, v1, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/i;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/i;

    if-eq v0, p1, :cond_0

    iget-object v0, v1, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/i;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/h/i;->g()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->f:Lcom/purplebrain/adbuddiz/sdk/h/i;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->e()Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    move-result-object v0

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/f/a/e;->c:Lcom/purplebrain/adbuddiz/sdk/f/a/e;

    if-ne v0, v2, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v2

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->g:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, v2, Lcom/purplebrain/adbuddiz/sdk/f/b;->l:I

    if-le v3, v4, :cond_1

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->g:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, v2, Lcom/purplebrain/adbuddiz/sdk/f/b;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/h/g;

    invoke-direct {v3}, Lcom/purplebrain/adbuddiz/sdk/h/g;-><init>()V

    iput-object p2, v3, Lcom/purplebrain/adbuddiz/sdk/h/g;->g:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    sget-object v4, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->INVALID_AD:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    invoke-virtual {v3, v4}, Lcom/purplebrain/adbuddiz/sdk/h/g;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;)V

    new-instance v4, Lcom/purplebrain/adbuddiz/sdk/f/d;

    sget-object v5, Lcom/purplebrain/adbuddiz/sdk/f/d$a;->a:Lcom/purplebrain/adbuddiz/sdk/f/d$a;

    invoke-direct {v4, v5, v7}, Lcom/purplebrain/adbuddiz/sdk/f/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/d$a;Ljava/lang/String;)V

    iput-object v4, v3, Lcom/purplebrain/adbuddiz/sdk/h/g;->i:Lcom/purplebrain/adbuddiz/sdk/f/d;

    const-string v4, "RTB ad content size is over the limit fixed in the configuration. %d > %d"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    iget v0, v2, Lcom/purplebrain/adbuddiz/sdk/f/b;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/purplebrain/adbuddiz/sdk/h/g;->h:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/purplebrain/adbuddiz/sdk/h/g;->f()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$3;->a:Lcom/purplebrain/adbuddiz/sdk/e/a;

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a(Lcom/purplebrain/adbuddiz/sdk/e/a;Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    invoke-static {p2}, Lcom/purplebrain/adbuddiz/sdk/e/a;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast p2, Lcom/purplebrain/adbuddiz/sdk/f/a/b;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    :try_start_2
    const-string v2, "aia"

    invoke-static {v0, v2}, Lcom/purplebrain/adbuddiz/sdk/i/b/d;->b(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-wide v4, p2, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->f:J

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    const-string v3, "aia"

    invoke-static {v0, v3, v2}, Lcom/purplebrain/adbuddiz/sdk/i/b/d;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$3;->a:Lcom/purplebrain/adbuddiz/sdk/e/a;

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a(Lcom/purplebrain/adbuddiz/sdk/e/a;Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ABAlreadyInstalledApps.appendAlreadyInstalledApp()"

    invoke-static {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p2}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$3;->a:Lcom/purplebrain/adbuddiz/sdk/e/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/e/a;->b(Lcom/purplebrain/adbuddiz/sdk/e/a;)Lcom/purplebrain/adbuddiz/sdk/e/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/purplebrain/adbuddiz/sdk/e/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    goto :goto_0
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/h/i;Lcom/purplebrain/adbuddiz/sdk/h/i$a;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$3;->a:Lcom/purplebrain/adbuddiz/sdk/e/a;

    iget-boolean v1, p1, Lcom/purplebrain/adbuddiz/sdk/h/i;->e:Z

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a(Lcom/purplebrain/adbuddiz/sdk/e/a;Z)Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a(Lcom/purplebrain/adbuddiz/sdk/h/i;Lcom/purplebrain/adbuddiz/sdk/h/i$a;Ljava/lang/String;)V

    return-void
.end method
