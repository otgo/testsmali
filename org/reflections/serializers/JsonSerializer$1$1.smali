.class Lorg/reflections/serializers/JsonSerializer$1$1;
.super Ljava/lang/Object;
.source "JsonSerializer.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/serializers/JsonSerializer$1;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/google/common/collect/Multimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/reflections/serializers/JsonSerializer$1;


# direct methods
.method constructor <init>(Lorg/reflections/serializers/JsonSerializer$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/reflections/serializers/JsonSerializer$1;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/reflections/serializers/JsonSerializer$1$1;->this$1:Lorg/reflections/serializers/JsonSerializer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lorg/reflections/serializers/JsonSerializer$1$1;->get()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method
