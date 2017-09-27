.class final enum Lcom/purplebrain/adbuddiz/sdk/e/a/f;
.super Lcom/purplebrain/adbuddiz/sdk/e/a/d;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/d/a/b;Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/purplebrain/adbuddiz/sdk/e/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/purplebrain/adbuddiz/sdk/d/a/b;Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;ZB)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/purplebrain/adbuddiz/sdk/a/e;
    .locals 1

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/a/m;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/a/m;-><init>()V

    return-object v0
.end method
