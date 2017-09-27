.class public final Lcom/purplebrain/adbuddiz/sdk/f/a/a/a;
.super Lcom/purplebrain/adbuddiz/sdk/f/a/a/e;


# instance fields
.field private e:Lcom/purplebrain/adbuddiz/sdk/f/a/b;


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/f/a/b;Lcom/purplebrain/adbuddiz/sdk/f/e;)V
    .locals 6

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    const/4 v3, 0x1

    invoke-static {p1, p2}, Lcom/purplebrain/adbuddiz/sdk/i/w;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/b;Lcom/purplebrain/adbuddiz/sdk/f/e;)Ljava/net/URL;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/e;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;ZLcom/purplebrain/adbuddiz/sdk/f/e;Ljava/net/URL;)V

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/a;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/b;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/a;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/b;

    iget-wide v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->g:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
