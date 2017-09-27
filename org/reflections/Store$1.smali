.class Lorg/reflections/Store$1;
.super Ljava/lang/Object;
.source "Store.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/Store;->getOrCreate(Ljava/lang/String;)Lcom/google/common/collect/Multimap;
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
.field final synthetic this$0:Lorg/reflections/Store;


# direct methods
.method constructor <init>(Lorg/reflections/Store;)V
    .locals 0
    .param p1, "this$0"    # Lorg/reflections/Store;

    .prologue
    .line 43
    iput-object p1, p0, Lorg/reflections/Store$1;->this$0:Lorg/reflections/Store;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/reflections/Store$1;->get()Ljava/util/Set;

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
    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
