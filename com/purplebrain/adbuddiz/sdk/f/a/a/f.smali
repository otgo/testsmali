.class public final Lcom/purplebrain/adbuddiz/sdk/f/a/a/f;
.super Lcom/purplebrain/adbuddiz/sdk/f/a/a/e;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;Ljava/lang/String;ZLcom/purplebrain/adbuddiz/sdk/f/e;Ljava/net/URL;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/e;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;ZLcom/purplebrain/adbuddiz/sdk/f/e;Ljava/net/URL;)V

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/f;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/f;->e:Ljava/lang/String;

    return-object v0
.end method
