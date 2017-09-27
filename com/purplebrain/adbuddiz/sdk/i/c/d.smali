.class public final Lcom/purplebrain/adbuddiz/sdk/i/c/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;I)V
    .locals 2

    const-string v0, "w"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;J)V
    .locals 3

    const-string v0, "d"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "w"

    aput-object v3, v0, v1

    const-string v3, "h"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "d"

    aput-object v4, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static b(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)J
    .locals 2

    const-string v0, "d"

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;I)V
    .locals 2

    const-string v0, "h"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)I
    .locals 1

    const-string v0, "w"

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)I
    .locals 1

    const-string v0, "h"

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
