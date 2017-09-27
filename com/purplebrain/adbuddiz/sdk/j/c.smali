.class public final Lcom/purplebrain/adbuddiz/sdk/j/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/purplebrain/adbuddiz/sdk/f/a/f;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "so"

    invoke-virtual {p1, v2}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->h:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method
