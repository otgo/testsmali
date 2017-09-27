.class public final Lcom/purplebrain/adbuddiz/sdk/i/b/b/e;
.super Lcom/purplebrain/adbuddiz/sdk/i/b/b/b;


# instance fields
.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/i/b/a/a;Lorg/w3c/dom/Node;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/purplebrain/adbuddiz/sdk/i/b/b/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/i/b/a/a;Lorg/w3c/dom/Node;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/e;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    sget v0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/c;->a:I

    return v0
.end method

.method public final c()J
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/e;->b:Lorg/w3c/dom/Node;

    const-string v1, "Duration"

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/h/ae;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/a;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/e;->b:Lorg/w3c/dom/Node;

    const-string v1, "VideoClicks"

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/h/ae;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "ClickThrough"

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/h/ae;->d(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final e()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/e;->b:Lorg/w3c/dom/Node;

    const-string v1, "VideoClicks"

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/h/ae;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "ClickTracking"

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/h/ae;->c(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/i/b/b/e;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/e;->b:Lorg/w3c/dom/Node;

    const-string v1, "skipoffset"

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/h/ae;->e(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/i/a;->a(Ljava/lang/String;J)J

    :cond_0
    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/e;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/e;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/e;->b:Lorg/w3c/dom/Node;

    const-string v1, "MediaFiles/MediaFile"

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/h/ae;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/e;->c:Ljava/util/List;

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/i/b/b/f;

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/purplebrain/adbuddiz/sdk/i/b/b/f;-><init>(Lcom/purplebrain/adbuddiz/sdk/i/b/b/b;Lorg/w3c/dom/Node;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/e;->c:Ljava/util/List;

    return-object v0
.end method
