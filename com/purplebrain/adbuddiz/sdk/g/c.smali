.class public final Lcom/purplebrain/adbuddiz/sdk/g/c;
.super Lcom/purplebrain/adbuddiz/sdk/g/a;


# instance fields
.field public c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/g/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    iget-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->f:J

    new-instance v0, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://sdk.adbuddiz.com/sdk/android/v3/adClick/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "a"

    new-instance v5, Lcom/purplebrain/adbuddiz/sdk/g/a/b;

    invoke-direct {v5}, Lcom/purplebrain/adbuddiz/sdk/g/a/b;-><init>()V

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/g/a/b;->a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/g/a/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/g/a/a;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "d"

    new-instance v5, Lcom/purplebrain/adbuddiz/sdk/g/a/d;

    invoke-direct {v5}, Lcom/purplebrain/adbuddiz/sdk/g/a/d;-><init>()V

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/g/a/d;->a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/g/a/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "s"

    new-instance v5, Lcom/purplebrain/adbuddiz/sdk/g/a/h;

    invoke-direct {v5}, Lcom/purplebrain/adbuddiz/sdk/g/a/h;-><init>()V

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/g/a/h;->a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/g/a/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/g/a/g;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "p"

    iget-object v5, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "or"

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/e/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/e/f;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    invoke-virtual {v4, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/purplebrain/adbuddiz/sdk/g/c;->b(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

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
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-void
.end method

.method protected final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    const-string v0, "AdClick"

    return-object v0
.end method
