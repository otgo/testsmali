.class public Lcom/purplebrain/adbuddiz/sdk/f/a/a/e;
.super Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;


# instance fields
.field private e:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;ZLcom/purplebrain/adbuddiz/sdk/f/e;Ljava/net/URL;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;ZLcom/purplebrain/adbuddiz/sdk/f/e;)V

    iput-object p5, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/e;->e:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/e;->e:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA-1"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/e;->e:Ljava/net/URL;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
