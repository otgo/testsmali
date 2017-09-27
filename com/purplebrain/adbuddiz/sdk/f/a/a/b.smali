.class public final Lcom/purplebrain/adbuddiz/sdk/f/a/a/b;
.super Lcom/purplebrain/adbuddiz/sdk/f/a/a/e;


# instance fields
.field private e:Lcom/purplebrain/adbuddiz/sdk/f/a/c;


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/f/a/c;)V
    .locals 6

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    const/4 v3, 0x1

    sget-object v4, Lcom/purplebrain/adbuddiz/sdk/f/e;->c:Lcom/purplebrain/adbuddiz/sdk/f/e;

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/w;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/c;)Ljava/net/URL;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/e;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;ZLcom/purplebrain/adbuddiz/sdk/f/e;Ljava/net/URL;)V

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/b;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/c;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/b;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/c;

    iget-wide v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->g:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
