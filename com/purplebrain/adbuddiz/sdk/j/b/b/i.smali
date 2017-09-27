.class public final Lcom/purplebrain/adbuddiz/sdk/j/b/b/i;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field public a:Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/j/b/b/i;->a:Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/j/b/b/i;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/j/b/b/i;->a:Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/j/b/b/i;->c:Ljava/util/Map;

    const-string v0, "event"

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/y;->e(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;->a(Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/j/b/b/i;->a:Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/j/b/b/i;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/y;->a(Lorg/w3c/dom/Node;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/j/b/b/i;->c:Ljava/util/Map;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/purplebrain/adbuddiz/sdk/j/b/b/i;
    .locals 6

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/j/b/b/i;

    invoke-direct {v1}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/i;-><init>()V

    const-string v0, "e"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;->a(Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;

    move-result-object v0

    iput-object v0, v1, Lcom/purplebrain/adbuddiz/sdk/j/b/b/i;->a:Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;

    const-string v0, "u"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/purplebrain/adbuddiz/sdk/j/b/b/i;->b:Ljava/lang/String;

    const-string v0, "a"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "k"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "v"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lcom/purplebrain/adbuddiz/sdk/j/b/b/i;->c:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 7

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "e"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/j/b/b/i;->a:Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;

    iget-object v2, v2, Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;->w:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "u"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/j/b/b/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/j/b/b/i;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "k"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "v"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v0, "a"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1
.end method
