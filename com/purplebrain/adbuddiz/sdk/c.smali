.class final Lcom/purplebrain/adbuddiz/sdk/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

.field final synthetic b:Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/c;->b:Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/c;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/c;->b:Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/c;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->e()Lcom/purplebrain/adbuddiz/sdk/e/a/h;

    move-result-object v2

    sget-object v3, Lcom/purplebrain/adbuddiz/sdk/e/a/h;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/h;

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const-string v3, "ABZ-impr"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "A-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/purplebrain/adbuddiz/sdk/h/b/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "A-"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/purplebrain/adbuddiz/sdk/h/b/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Lorg/json/JSONArray;)V

    :goto_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->d()V

    :goto_1
    return-void

    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const-string v2, "ABZ-impr"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "MRAID"

    invoke-static {v0, v2}, Lcom/purplebrain/adbuddiz/sdk/h/b/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    const-string v1, "MRAID"

    invoke-static {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/h/b/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdBuddiz.showAd() saveView Exception : "

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
