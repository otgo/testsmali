.class public final Lcom/purplebrain/adbuddiz/sdk/g/h;
.super Lcom/purplebrain/adbuddiz/sdk/g/a;


# instance fields
.field public c:Lcom/purplebrain/adbuddiz/sdk/g/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/g/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/h;->c:Lcom/purplebrain/adbuddiz/sdk/g/i;

    return-void
.end method

.method private static h()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "a"

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/g/a/b;

    invoke-direct {v3}, Lcom/purplebrain/adbuddiz/sdk/g/a/b;-><init>()V

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/g/a/b;->a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/g/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/purplebrain/adbuddiz/sdk/g/a/a;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "d"

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/g/a/d;

    invoke-direct {v3}, Lcom/purplebrain/adbuddiz/sdk/g/a/d;-><init>()V

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/g/a/d;->a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/g/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "s"

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/g/a/h;

    invoke-direct {v3}, Lcom/purplebrain/adbuddiz/sdk/g/a/h;-><init>()V

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/g/a/h;->a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/g/a/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/purplebrain/adbuddiz/sdk/g/a/g;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/g/a/f;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/g/a/f;-><init>()V

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/h/a/g;->a(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "a"

    iget-wide v6, v0, Lcom/purplebrain/adbuddiz/sdk/g/a/e;->a:D

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "o"

    iget-wide v6, v0, Lcom/purplebrain/adbuddiz/sdk/g/a/e;->b:D

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "t"

    iget-wide v6, v0, Lcom/purplebrain/adbuddiz/sdk/g/a/e;->c:J

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "p"

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/g/a/e;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "g"

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/h/a/n;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/g/a/e;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/g/a/e;-><init>()V

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iput-wide v4, v0, Lcom/purplebrain/adbuddiz/sdk/g/a/e;->a:D

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iput-wide v4, v0, Lcom/purplebrain/adbuddiz/sdk/g/a/e;->b:D

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/purplebrain/adbuddiz/sdk/g/a/e;->c:J

    invoke-virtual {v3}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/g/a/e;->d:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "p"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/h/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v0, "tm"

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/h/x;->a(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/h/n;->d(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    const-string v3, "mw"

    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "mh"

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "or"

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/e/f;

    move-result-object v3

    iget-object v3, v3, Lcom/purplebrain/adbuddiz/sdk/e/f;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ai"

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/h/b/c;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ri"

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/h/b/c;->b(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "aia"

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/h/b/a;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final b()V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    iget-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->f:J

    new-instance v0, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://sdk.adbuddiz.com/sdk/android/v3/nextAd/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/g/h;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/purplebrain/adbuddiz/sdk/g/h;->b(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_1

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/g/l;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Server Error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/g/l;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/g/h;->a()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/16 v2, 0xcc

    if-ne v0, v2, :cond_5

    :try_start_2
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/h;->c:Lcom/purplebrain/adbuddiz/sdk/g/i;

    invoke-interface {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/g/i;->a(Lcom/purplebrain/adbuddiz/sdk/g/h;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :cond_5
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_4

    :try_start_3
    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/g/h;->b(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->a(Lorg/json/JSONObject;)Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/h;->c:Lcom/purplebrain/adbuddiz/sdk/g/i;

    invoke-interface {v2, p0, v0}, Lcom/purplebrain/adbuddiz/sdk/g/i;->a(Lcom/purplebrain/adbuddiz/sdk/g/h;Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method protected final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    const-string v0, "NextAd"

    return-object v0
.end method
