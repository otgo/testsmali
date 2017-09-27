.class public final Lcom/purplebrain/adbuddiz/sdk/j/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/purplebrain/adbuddiz/sdk/f/a/f;

.field public b:Lcom/purplebrain/adbuddiz/sdk/j/b/a;

.field public c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/j/b/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/j/b;->b:Lcom/purplebrain/adbuddiz/sdk/j/b/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/j/b;->c:Ljava/util/List;

    check-cast p1, Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/j/b;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/j/b;->b:Lcom/purplebrain/adbuddiz/sdk/j/b/a;

    return-void
.end method

.method public static a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Lcom/purplebrain/adbuddiz/sdk/j/b/a;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/purplebrain/adbuddiz/sdk/e/c;->a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/io/InputStream;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_1

    const-string v3, "VAST"

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/j/b/a;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/j/b/a;-><init>(Lorg/w3c/dom/Node;)V

    move-object v0, v1

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    :goto_3
    :try_start_3
    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/j/a/b;

    sget-object v3, Lcom/purplebrain/adbuddiz/sdk/j/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/j/a/a;

    invoke-direct {v2, v3, v0}, Lcom/purplebrain/adbuddiz/sdk/j/a/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/j/a/a;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    throw v0

    :catch_1
    move-exception v0

    :goto_6
    :try_start_5
    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/j/a/b;

    sget-object v3, Lcom/purplebrain/adbuddiz/sdk/j/a/a;->i:Lcom/purplebrain/adbuddiz/sdk/j/a/a;

    invoke-direct {v2, v3, v0}, Lcom/purplebrain/adbuddiz/sdk/j/a/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/j/a/a;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    :goto_7
    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/j/a/b;

    sget-object v3, Lcom/purplebrain/adbuddiz/sdk/j/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/j/a/a;

    invoke-direct {v2, v3, v0}, Lcom/purplebrain/adbuddiz/sdk/j/a/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/j/a/a;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v1, v2

    goto :goto_7

    :catch_6
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_3
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/j/b/a/a;)Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;
    .locals 7

    check-cast p1, Lcom/purplebrain/adbuddiz/sdk/j/b/a/d;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/e;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/j/b;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    const/4 v3, 0x0

    sget-object v4, Lcom/purplebrain/adbuddiz/sdk/f/e;->c:Lcom/purplebrain/adbuddiz/sdk/f/e;

    new-instance v5, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/j/b/a/d;->f()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v0 .. v5}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/e;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;ZLcom/purplebrain/adbuddiz/sdk/f/e;Ljava/net/URL;)V

    return-object v0
.end method
