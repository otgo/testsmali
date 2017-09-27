.class final enum Lcom/purplebrain/adbuddiz/sdk/f/a/d$3;
.super Lcom/purplebrain/adbuddiz/sdk/f/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/f/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v2, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/purplebrain/adbuddiz/sdk/f/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;ZB)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/purplebrain/adbuddiz/sdk/a/c;
    .locals 1

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/a/d;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/a/d;-><init>()V

    return-object v0
.end method
