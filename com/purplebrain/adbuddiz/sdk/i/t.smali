.class public final Lcom/purplebrain/adbuddiz/sdk/i/t;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "{publisherId}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "{publisherId}"

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v1

    iget-wide v2, v1, Lcom/purplebrain/adbuddiz/sdk/f/b;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "{androidId}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "{androidId}"

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/a/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "{androidIdMD5}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "{androidIdMD5}"

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/a/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MD5"

    invoke-static {v2, v1}, Lcom/purplebrain/adbuddiz/sdk/i/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string v0, "{androidIdSHA1}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "{androidIdSHA1}"

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/a/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHA-1"

    invoke-static {v2, v1}, Lcom/purplebrain/adbuddiz/sdk/i/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    const-string v0, "{googleAid}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "{googleAid}"

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/b/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    const-string v0, "{googleAidMD5}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "{googleAidMD5}"

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/b/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MD5"

    invoke-static {v2, v1}, Lcom/purplebrain/adbuddiz/sdk/i/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    const-string v0, "{googleAidSHA1}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "{googleAidSHA1}"

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/b/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHA-1"

    invoke-static {v2, v1}, Lcom/purplebrain/adbuddiz/sdk/i/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_6
    return-object p1
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
