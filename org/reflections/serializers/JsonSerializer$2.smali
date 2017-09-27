.class Lorg/reflections/serializers/JsonSerializer$2;
.super Ljava/lang/Object;
.source "JsonSerializer.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;


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
        "Lcom/google/gson/JsonSerializer",
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
    .line 53
    iput-object p1, p0, Lorg/reflections/serializers/JsonSerializer$2;->this$0:Lorg/reflections/serializers/JsonSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lcom/google/common/collect/Multimap;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1
    .param p1, "multimap"    # Lcom/google/common/collect/Multimap;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "jsonSerializationContext"    # Lcom/google/gson/JsonSerializationContext;

    .prologue
    .line 55
    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 53
    check-cast p1, Lcom/google/common/collect/Multimap;

    invoke-virtual {p0, p1, p2, p3}, Lorg/reflections/serializers/JsonSerializer$2;->serialize(Lcom/google/common/collect/Multimap;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
