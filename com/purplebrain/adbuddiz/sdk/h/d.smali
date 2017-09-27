.class public final Lcom/purplebrain/adbuddiz/sdk/h/d;
.super Lcom/purplebrain/adbuddiz/sdk/h/a;


# instance fields
.field public e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

.field public f:Ljava/lang/String;

.field public g:Z

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/h/a;-><init>()V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/h;->a()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/d;->h:J

    return-void
.end method


# virtual methods
.method protected final c()V
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/w;->e()Ljava/net/URL;

    move-result-object v0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "a"

    new-instance v5, Lcom/purplebrain/adbuddiz/sdk/h/a/a$a;

    invoke-direct {v5}, Lcom/purplebrain/adbuddiz/sdk/h/a/a$a;-><init>()V

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/h/a/a$a;->a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/h/a/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/h/a/a;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "d"

    new-instance v5, Lcom/purplebrain/adbuddiz/sdk/h/a/b$a;

    invoke-direct {v5}, Lcom/purplebrain/adbuddiz/sdk/h/a/b$a;-><init>()V

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/h/a/b$a;->a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/h/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "s"

    new-instance v5, Lcom/purplebrain/adbuddiz/sdk/h/a/d$a;

    invoke-direct {v5}, Lcom/purplebrain/adbuddiz/sdk/h/a/d$a;-><init>()V

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/h/a/d$a;->a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/h/a/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/h/a/d;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "p"

    iget-object v5, p0, Lcom/purplebrain/adbuddiz/sdk/h/d;->f:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "or"

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/f/e;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "b"

    iget-boolean v5, p0, Lcom/purplebrain/adbuddiz/sdk/h/d;->g:Z

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/h/d;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iget-boolean v4, v4, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b:Z

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Lcom/purplebrain/adbuddiz/sdk/i/x;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_0
    const-string v4, "ct"

    iget-wide v6, p0, Lcom/purplebrain/adbuddiz/sdk/h/d;->h:J

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/h/d;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-virtual {v4, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/purplebrain/adbuddiz/sdk/h/d;->b(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_2

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/h/k;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Server Error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/h/k;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return-void
.end method

.method protected final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    const-string v0, "AdImpression"

    return-object v0
.end method
