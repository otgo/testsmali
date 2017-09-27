.class public final Lcom/purplebrain/adbuddiz/sdk/i/b/a;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Lorg/w3c/dom/Node;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/a;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/a;->a:Lorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/a;->b:Ljava/util/List;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/a;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/a;->a:Lorg/w3c/dom/Node;

    const-string v1, "Ad/InLine | Ad/Wrapper"

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/h/ae;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    const-string v1, "InLine"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/i/b/a/c;

    invoke-direct {v1, v3}, Lcom/purplebrain/adbuddiz/sdk/i/b/a/c;-><init>(Lorg/w3c/dom/Node;)V

    :goto_1
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/a;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "Wrapper"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/i/b/a/d;

    invoke-direct {v1, v3}, Lcom/purplebrain/adbuddiz/sdk/i/b/a/d;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public final a(I)Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/i/b/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/i/b/a/a;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/b/a/a;->e()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/b/a/a;->a()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method
