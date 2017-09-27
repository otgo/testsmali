.class Lorg/reflections/serializers/JavaCodeSerializer$1;
.super Ljava/lang/Object;
.source "JavaCodeSerializer.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/serializers/JavaCodeSerializer;->toString(Lorg/reflections/Reflections;)Ljava/lang/String;
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
.field final synthetic this$0:Lorg/reflections/serializers/JavaCodeSerializer;


# direct methods
.method constructor <init>(Lorg/reflections/serializers/JavaCodeSerializer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/reflections/serializers/JavaCodeSerializer;

    .prologue
    .line 157
    iput-object p1, p0, Lorg/reflections/serializers/JavaCodeSerializer$1;->this$0:Lorg/reflections/serializers/JavaCodeSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/reflections/serializers/JavaCodeSerializer$1;->get()Ljava/util/Set;

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
    .line 159
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method
