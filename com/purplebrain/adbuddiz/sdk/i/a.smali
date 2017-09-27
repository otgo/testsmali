.class public final Lcom/purplebrain/adbuddiz/sdk/i/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)J
    .locals 11

    const/4 v10, 0x3

    const-string v0, "([0-9]{2}):([0-9]{2}):([0-9]{2})(\\.([0-9]{3}))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/i/a/b;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/i/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/i/a/a;

    invoke-direct {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/a/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/i/a/a;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v6, v0

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v8, v0

    const-wide/16 v0, 0x0

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-le v3, v10, :cond_1

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    :cond_1
    const-wide/32 v2, 0x36ee80

    mul-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v8

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/i/a/b;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/i/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/i/a/a;

    invoke-direct {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/a/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/i/a/a;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;J)J
    .locals 5

    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/a;->b(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-long p1, v0

    :cond_0
    :goto_0
    return-wide p1

    :cond_1
    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/a;->a(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    move-wide p1, v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)D
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/i/a/b;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/i/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/i/a/a;

    invoke-direct {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/a/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/i/a/a;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method
