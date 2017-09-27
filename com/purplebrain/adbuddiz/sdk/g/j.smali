.class public final Lcom/purplebrain/adbuddiz/sdk/g/j;
.super Lcom/purplebrain/adbuddiz/sdk/g/a;


# instance fields
.field public c:Lcom/purplebrain/adbuddiz/sdk/g/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/g/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 12

    const-wide/16 v10, 0xa

    const-wide/16 v8, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v5

    const-wide/16 v0, 0x0

    :goto_0
    const-string v3, "ABZ-prefs"

    invoke-virtual {v5, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "aif"

    invoke-interface {v3, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v6, v8

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_1

    const-wide/16 v6, 0x3e8

    cmp-long v3, v0, v6

    if-gez v3, :cond_1

    const-wide/16 v6, 0xa

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    add-long/2addr v0, v10

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://sdk.adbuddiz.com/sdk/android/v3/updateConf"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "a"

    new-instance v5, Lcom/purplebrain/adbuddiz/sdk/g/a/b;

    invoke-direct {v5}, Lcom/purplebrain/adbuddiz/sdk/g/a/b;-><init>()V

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/g/a/b;->a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/g/a/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/g/a/a;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "d"

    new-instance v5, Lcom/purplebrain/adbuddiz/sdk/g/a/d;

    invoke-direct {v5}, Lcom/purplebrain/adbuddiz/sdk/g/a/d;-><init>()V

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/g/a/d;->a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/g/a/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/g/a/c;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "s"

    new-instance v5, Lcom/purplebrain/adbuddiz/sdk/g/a/h;

    invoke-direct {v5}, Lcom/purplebrain/adbuddiz/sdk/g/a/h;-><init>()V

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/g/a/h;->a(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/g/a/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/g/a/g;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "tm"

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/h/x;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "or"

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/e/f;

    move-result-object v4

    iget-object v4, v4, Lcom/purplebrain/adbuddiz/sdk/e/f;->d:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v1, "PUT"

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/g/a;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/purplebrain/adbuddiz/sdk/g/a;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/g/j;->b(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/g/j;->c:Lcom/purplebrain/adbuddiz/sdk/g/k;

    invoke-interface {v3, v0, v2}, Lcom/purplebrain/adbuddiz/sdk/g/k;->a(ILjava/lang/String;)V

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_4

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/j;->c:Lcom/purplebrain/adbuddiz/sdk/g/k;

    invoke-interface {v0, v2}, Lcom/purplebrain/adbuddiz/sdk/g/k;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return-void

    :cond_4
    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_2

    :try_start_3
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
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v0

    :goto_2
    :try_start_4
    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/j;->c:Lcom/purplebrain/adbuddiz/sdk/g/k;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/purplebrain/adbuddiz/sdk/g/k;->a(ILjava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v0

    :catch_1
    move-exception v0

    :goto_4
    :try_start_5
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/g/j;->c:Lcom/purplebrain/adbuddiz/sdk/g/k;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lcom/purplebrain/adbuddiz/sdk/g/k;->a(ILjava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    :goto_5
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/g/j;->c:Lcom/purplebrain/adbuddiz/sdk/g/k;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lcom/purplebrain/adbuddiz/sdk/g/k;->a(ILjava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_3
    move-exception v3

    goto/16 :goto_0

    :catch_4
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method protected final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    const-string v0, "UpdateConf"

    return-object v0
.end method
