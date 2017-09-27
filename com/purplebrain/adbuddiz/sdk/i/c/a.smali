.class public final Lcom/purplebrain/adbuddiz/sdk/i/c/a;
.super Ljava/lang/Object;


# instance fields
.field public a:J


# direct methods
.method private constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/a;->a:J

    return-void
.end method

.method public static a(Ljava/lang/String;J)Lcom/purplebrain/adbuddiz/sdk/i/c/a;
    .locals 1

    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/purplebrain/adbuddiz/sdk/i/c/a;->c(Ljava/lang/String;J)Lcom/purplebrain/adbuddiz/sdk/i/c/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/purplebrain/adbuddiz/sdk/i/c/a;->b(Ljava/lang/String;J)Lcom/purplebrain/adbuddiz/sdk/i/c/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;J)Lcom/purplebrain/adbuddiz/sdk/i/c/a;
    .locals 13

    const/4 v0, 0x0

    const/4 v11, 0x3

    const-string v1, "([0-9]{2}):([0-9]{2}):([0-9]{2})(\\.([0-9]{3}))?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v6, v2

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v8, v2

    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v10

    if-le v10, v11, :cond_1

    const/4 v10, 0x5

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    :cond_1
    const-wide/32 v10, 0x36ee80

    mul-long/2addr v4, v10

    const-wide/32 v10, 0xea60

    mul-long/2addr v6, v10

    add-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    cmp-long v1, v2, p1

    if-lez v1, :cond_2

    :goto_1
    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/i/c/a;

    invoke-direct {v1, p1, p2}, Lcom/purplebrain/adbuddiz/sdk/i/c/a;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    move-wide p1, v2

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;J)Lcom/purplebrain/adbuddiz/sdk/i/c/a;
    .locals 5

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

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    long-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-long v2, v0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/i/c/a;

    invoke-direct {v0, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/i/c/a;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
