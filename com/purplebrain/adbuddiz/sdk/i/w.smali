.class public final Lcom/purplebrain/adbuddiz/sdk/i/w;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/purplebrain/adbuddiz/sdk/i/w;->a:Z

    return-void
.end method

.method public static a(Lcom/purplebrain/adbuddiz/sdk/f/a/b;Lcom/purplebrain/adbuddiz/sdk/f/e;)Ljava/net/URL;
    .locals 4

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/b;->g:Ljava/lang/String;

    const-string v1, "{ai}"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/i/a/l$a;->b:Lcom/purplebrain/adbuddiz/sdk/i/a/l$a;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/b;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/i/a/l$a;->b:Lcom/purplebrain/adbuddiz/sdk/i/a/l$a;

    :goto_0
    invoke-virtual {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/a/l$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->h:Z

    if-eqz v0, :cond_1

    const-string v0, "{at}"

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/i/a/l$a;->b:Lcom/purplebrain/adbuddiz/sdk/i/a/l$a;

    iget-object v2, v2, Lcom/purplebrain/adbuddiz/sdk/i/a/l$a;->c:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/purplebrain/adbuddiz/sdk/i/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "{o}"

    iget-object v2, p1, Lcom/purplebrain/adbuddiz/sdk/f/e;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/i/a/l$a;->a:Lcom/purplebrain/adbuddiz/sdk/i/a/l$a;

    goto :goto_0

    :cond_1
    const-string v0, "{at}"

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/i/a/l$a;->a:Lcom/purplebrain/adbuddiz/sdk/i/a/l$a;

    iget-object v2, v2, Lcom/purplebrain/adbuddiz/sdk/i/a/l$a;->c:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/purplebrain/adbuddiz/sdk/i/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Lcom/purplebrain/adbuddiz/sdk/f/a/c;)Ljava/net/URL;
    .locals 4

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/b;->h:Ljava/lang/String;

    const-string v1, "{avi}"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/purplebrain/adbuddiz/sdk/i/w;->a:Z

    return v0
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/purplebrain/adbuddiz/sdk/i/w;->a:Z

    return-void
.end method

.method public static c()Ljava/net/URL;
    .locals 3

    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/w;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "updateConf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static d()Ljava/net/URL;
    .locals 5

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    iget-wide v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/b;->f:J

    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/w;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "nextAd/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public static e()Ljava/net/URL;
    .locals 5

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    iget-wide v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/b;->f:J

    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/w;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "adImpression/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public static f()Ljava/net/URL;
    .locals 5

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    iget-wide v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/b;->f:J

    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/w;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "eventReport/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public static g()Ljava/net/URL;
    .locals 5

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    iget-wide v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/b;->f:J

    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/w;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "adClick/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public static h()Ljava/net/URL;
    .locals 2

    new-instance v0, Ljava/net/URL;

    const-string v1, "http://data.adbuddiz.com/sdk/v1/downloadAsset/close_button.png"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static i()Ljava/net/URL;
    .locals 2

    new-instance v0, Ljava/net/URL;

    const-string v1, "http://data.adbuddiz.com/sdk/v1/downloadAsset/by_adbuddiz.png"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static j()Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v0, Lcom/purplebrain/adbuddiz/sdk/i/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "https://"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sdk.adbuddiz.com/sdk/android/v3/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "http://"

    goto :goto_0
.end method
