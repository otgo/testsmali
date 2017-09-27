.class public final Lcom/purplebrain/adbuddiz/sdk/h/i;
.super Lcom/purplebrain/adbuddiz/sdk/h/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/purplebrain/adbuddiz/sdk/h/i$a;,
        Lcom/purplebrain/adbuddiz/sdk/h/i$b;
    }
.end annotation


# instance fields
.field public e:Z

.field public f:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

.field public g:Lcom/purplebrain/adbuddiz/sdk/h/i$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/h/a;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/i;->f:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/i;->g:Lcom/purplebrain/adbuddiz/sdk/h/i$b;

    return-void
.end method


# virtual methods
.method protected final c()V
    .locals 10

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/w;->d()Ljava/net/URL;

    move-result-object v2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "a"

    new-instance v5, Lcom/purplebrain/adbuddiz/sdk/h/a/a$a;

    invoke-direct {v5}, Lcom/purplebrain/adbuddiz/sdk/h/a/a$a;-><init>()V

    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/h/a/a$a;->a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/h/a/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/h/a/a;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "d"

    new-instance v5, Lcom/purplebrain/adbuddiz/sdk/h/a/b$a;

    invoke-direct {v5}, Lcom/purplebrain/adbuddiz/sdk/h/a/b$a;-><init>()V

    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/h/a/b$a;->a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/h/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "s"

    new-instance v5, Lcom/purplebrain/adbuddiz/sdk/h/a/d$a;

    invoke-direct {v5}, Lcom/purplebrain/adbuddiz/sdk/h/a/d$a;-><init>()V

    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/h/a/d$a;->a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/h/a/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/h/a/d;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/h/a/c$a;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/h/a/c$a;-><init>()V

    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/i/a/f;->a(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v5

    if-nez v5, :cond_2

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "a"

    iget-wide v8, v0, Lcom/purplebrain/adbuddiz/sdk/h/a/c;->a:D

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v6, "o"

    iget-wide v8, v0, Lcom/purplebrain/adbuddiz/sdk/h/a/c;->b:D

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v6, "t"

    iget-wide v8, v0, Lcom/purplebrain/adbuddiz/sdk/h/a/c;->c:J

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "p"

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/h/a/c;->d:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "g"

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/i/a/j;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v0

    :cond_2
    :try_start_1
    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/h/a/c;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/h/a/c;-><init>()V

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    iput-wide v6, v0, Lcom/purplebrain/adbuddiz/sdk/h/a/c;->a:D

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    iput-wide v6, v0, Lcom/purplebrain/adbuddiz/sdk/h/a/c;->b:D

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/purplebrain/adbuddiz/sdk/h/a/c;->c:J

    invoke-virtual {v5}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/purplebrain/adbuddiz/sdk/h/a/c;->d:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "p"

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/purplebrain/adbuddiz/sdk/i/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v0, "in"

    iget-boolean v5, p0, Lcom/purplebrain/adbuddiz/sdk/h/i;->e:Z

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "tm"

    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/i/u;->a(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/i/j;->h(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    const-string v5, "mw"

    iget v6, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "mh"

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "or"

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v5

    iget-object v5, v5, Lcom/purplebrain/adbuddiz/sdk/f/e;->d:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ai"

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/purplebrain/adbuddiz/sdk/h/i;->f:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-static {v3, v5, v6}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Landroid/content/Context;ZLcom/purplebrain/adbuddiz/sdk/f/a/a;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ri"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Landroid/content/Context;Z)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/i;->e:Z

    if-eqz v0, :cond_5

    const-string v0, "aii"

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/purplebrain/adbuddiz/sdk/h/i;->f:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-static {v3, v5, v6}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Landroid/content/Context;ZLcom/purplebrain/adbuddiz/sdk/f/a/a;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "rii"

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Landroid/content/Context;Z)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    const-string v0, "aia"

    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/i/b/a;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "uc"

    const-string v5, "uc"

    invoke-static {v3, v5}, Lcom/purplebrain/adbuddiz/sdk/i/b/d;->b(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "r"

    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/i/b/e;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/h/i;->b(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0x1f4

    if-lt v0, v3, :cond_6

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/h/k;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Server Error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/k;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/h/i;->b()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    :goto_3
    return-void

    :cond_8
    const/16 v3, 0xcc

    if-ne v0, v3, :cond_a

    :try_start_3
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/i;->g:Lcom/purplebrain/adbuddiz/sdk/h/i$b;

    invoke-interface {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/h/i$b;->a(Lcom/purplebrain/adbuddiz/sdk/h/i;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_9
    :goto_4
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :cond_a
    const/16 v3, 0xc8

    if-ne v0, v3, :cond_9

    :try_start_4
    invoke-virtual {p0, v2}, Lcom/purplebrain/adbuddiz/sdk/h/i;->b(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "at"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->a(Lorg/json/JSONObject;)Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/purplebrain/adbuddiz/sdk/h/i;->e:Z

    iput-boolean v1, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b:Z

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/h/i;->g:Lcom/purplebrain/adbuddiz/sdk/h/i$b;

    invoke-interface {v1, p0, v0}, Lcom/purplebrain/adbuddiz/sdk/h/i$b;->a(Lcom/purplebrain/adbuddiz/sdk/h/i;Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    goto :goto_4

    :cond_b
    const-string v0, "c"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/i$a;->a(Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/h/i$a;

    move-result-object v0

    const-string v4, "d"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v1, "d"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_c
    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/h/i;->g:Lcom/purplebrain/adbuddiz/sdk/h/i$b;

    invoke-interface {v3, p0, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/h/i$b;->a(Lcom/purplebrain/adbuddiz/sdk/h/i;Lcom/purplebrain/adbuddiz/sdk/h/i$a;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4
.end method

.method protected final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    const-string v0, "NextAd"

    return-object v0
.end method
