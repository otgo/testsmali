.class public final Lcom/purplebrain/adbuddiz/sdk/i/y;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static a:Ljavax/xml/xpath/XPathFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/i/y;->a:Ljavax/xml/xpath/XPathFactory;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\n|\t"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/w3c/dom/Node;)Ljava/util/Map;
    .locals 4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/i/y;->a:Ljavax/xml/xpath/XPathFactory;

    if-nez v0, :cond_0

    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/i/y;->a:Ljavax/xml/xpath/XPathFactory;

    :cond_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/i/y;->a:Ljavax/xml/xpath/XPathFactory;

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p1, p0, v1}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    goto :goto_1
.end method

.method public static c(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/i/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static d(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/i/y;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static e(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static f(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    invoke-static {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/i/y;->e(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
