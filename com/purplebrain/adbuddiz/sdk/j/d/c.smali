.class public final Lcom/purplebrain/adbuddiz/sdk/j/d/c;
.super Lcom/purplebrain/adbuddiz/sdk/f/a/a/g;


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;Ljava/net/URL;)V
    .locals 3

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/e;->c:Lcom/purplebrain/adbuddiz/sdk/f/e;

    invoke-virtual {p3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/g;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;Lcom/purplebrain/adbuddiz/sdk/f/e;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcom/purplebrain/adbuddiz/sdk/j/d/a;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;Lcom/purplebrain/adbuddiz/sdk/j/b/b/f;)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/c/d;->c(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)I

    move-result v0

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/c/d;->d(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)I

    move-result v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "MEDIA-%dx%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
