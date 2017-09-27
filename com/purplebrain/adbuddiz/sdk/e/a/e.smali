.class final enum Lcom/purplebrain/adbuddiz/sdk/e/a/e;
.super Lcom/purplebrain/adbuddiz/sdk/e/a/d;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/d/a/b;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/purplebrain/adbuddiz/sdk/e/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/purplebrain/adbuddiz/sdk/d/a/b;Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;ZB)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/purplebrain/adbuddiz/sdk/a/e;
    .locals 1

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/a/a;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/a/a;-><init>()V

    return-object v0
.end method
