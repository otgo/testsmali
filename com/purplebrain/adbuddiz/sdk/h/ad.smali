.class public final Lcom/purplebrain/adbuddiz/sdk/h/ad;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/purplebrain/adbuddiz/sdk/e/a/c;Lcom/purplebrain/adbuddiz/sdk/e/f;)Ljava/net/URL;
    .locals 4

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->g:Ljava/lang/String;

    const-string v1, "{ai}"

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/c;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/h/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/h/a/q;->b:Lcom/purplebrain/adbuddiz/sdk/h/a/q;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/a/q;->b:Lcom/purplebrain/adbuddiz/sdk/h/a/q;

    :goto_0
    invoke-virtual {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/h/a/q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/c;->e:Z

    if-eqz v0, :cond_1

    const-string v0, "{at}"

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/h/a/q;->b:Lcom/purplebrain/adbuddiz/sdk/h/a/q;

    iget-object v2, v2, Lcom/purplebrain/adbuddiz/sdk/h/a/q;->c:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/purplebrain/adbuddiz/sdk/h/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "{o}"

    iget-object v2, p1, Lcom/purplebrain/adbuddiz/sdk/e/f;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/h/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/a/q;->a:Lcom/purplebrain/adbuddiz/sdk/h/a/q;

    goto :goto_0

    :cond_1
    const-string v0, "{at}"

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/h/a/q;->a:Lcom/purplebrain/adbuddiz/sdk/h/a/q;

    iget-object v2, v2, Lcom/purplebrain/adbuddiz/sdk/h/a/q;->c:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/purplebrain/adbuddiz/sdk/h/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
