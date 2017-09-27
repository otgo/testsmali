.class public abstract Lcom/purplebrain/adbuddiz/sdk/i/b/b/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/purplebrain/adbuddiz/sdk/i/b/a/a;

.field protected b:Lorg/w3c/dom/Node;

.field private c:Ljava/util/List;


# direct methods
.method protected constructor <init>(Lcom/purplebrain/adbuddiz/sdk/i/b/a/a;Lorg/w3c/dom/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/b;->a:Lcom/purplebrain/adbuddiz/sdk/i/b/a/a;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/b;->b:Lorg/w3c/dom/Node;

    return-void
.end method

.method public static a(Lcom/purplebrain/adbuddiz/sdk/i/b/a/a;Lorg/w3c/dom/Node;)Lcom/purplebrain/adbuddiz/sdk/i/b/b/b;
    .locals 2

    const-string v0, "Linear"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/e;

    invoke-direct {v0, p0, p1}, Lcom/purplebrain/adbuddiz/sdk/i/b/b/e;-><init>(Lcom/purplebrain/adbuddiz/sdk/i/b/a/a;Lorg/w3c/dom/Node;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NonLinear"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/h;

    invoke-direct {v0, p0, p1}, Lcom/purplebrain/adbuddiz/sdk/i/b/b/h;-><init>(Lcom/purplebrain/adbuddiz/sdk/i/b/a/a;Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_1
    const-string v0, "CompanionAds"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/a;

    invoke-direct {v0, p0, p1}, Lcom/purplebrain/adbuddiz/sdk/i/b/b/a;-><init>(Lcom/purplebrain/adbuddiz/sdk/i/b/a/a;Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public final b()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/b;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/b;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/b;->b:Lorg/w3c/dom/Node;

    const-string v1, "TrackingEvents/Tracking"

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/h/ae;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/b;->c:Ljava/util/List;

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/i/b/b/i;

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/purplebrain/adbuddiz/sdk/i/b/b/i;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/b;->c:Ljava/util/List;

    return-object v0
.end method
