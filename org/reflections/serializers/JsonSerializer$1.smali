.class Lorg/reflections/serializers/JsonSerializer$1;
.super Ljava/lang/Object;
.source "JsonSerializer.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/serializers/JsonSerializer;->getGson()Lcom/google/gson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Lcom/google/common/collect/Multimap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/reflections/serializers/JsonSerializer;


# direct methods
.method constructor <init>(Lorg/reflections/serializers/JsonSerializer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/reflections/serializers/JsonSerializer;

    .prologue
    .line 58
    iput-object p1, p0, Lorg/reflections/serializers/JsonSerializer$1;->this$0:Lorg/reflections/serializers/JsonSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/google/common/collect/Multimap;
    .locals 7
    .param p1, "jsonElement"    # Lcom/google/gson/JsonElement;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "jsonDeserializationContext"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Lorg/reflections/serializers/JsonSerializer$1$1;

    invoke-direct {v4, p0}, Lorg/reflections/serializers/JsonSerializer$1$1;-><init>(Lorg/reflections/serializers/JsonSerializer$1;)V

    invoke-static {v3, v4}, Lcom/google/common/collect/Multimaps;->newSetMultimap(Ljava/util/Map;Lcom/google/common/base/Supplier;)Lcom/google/common/collect/SetMultimap;

    move-result-object v2

    .line 65
    .local v2, "map":Lcom/google/common/collect/SetMultimap;, "Lcom/google/common/collect/SetMultimap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast p1, Lcom/google/gson/JsonObject;

    .end local p1    # "jsonElement":Lcom/google/gson/JsonElement;
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 66
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonArray;

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 67
    .local v0, "element":Lcom/google/gson/JsonElement;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/google/common/collect/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    .end local v0    # "element":Lcom/google/gson/JsonElement;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    :cond_1
    return-object v2
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lorg/reflections/serializers/JsonSerializer$1;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    return-object v0
.end method
