.class public Lorg/reflections/Store;
.super Ljava/lang/Object;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/reflections/Store$IterableChain;
    }
.end annotation


# instance fields
.field private transient concurrent:Z

.field private final storeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/reflections/Store;->storeMap:Ljava/util/Map;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/reflections/Store;->concurrent:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/reflections/Configuration;)V
    .locals 1
    .param p1, "configuration"    # Lorg/reflections/Configuration;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/reflections/Store;->storeMap:Ljava/util/Map;

    .line 29
    invoke-interface {p1}, Lorg/reflections/Configuration;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/reflections/Store;->concurrent:Z

    .line 30
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAllIncluding(Ljava/lang/String;Ljava/lang/Iterable;Lorg/reflections/Store$IterableChain;)Ljava/lang/Iterable;
    .locals 5
    .param p1, "index"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/reflections/Store$IterableChain",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .local p3, "result":Lorg/reflections/Store$IterableChain;, "Lorg/reflections/Store$IterableChain<Ljava/lang/String;>;"
    invoke-static {p3, p2}, Lorg/reflections/Store$IterableChain;->access$100(Lorg/reflections/Store$IterableChain;Ljava/lang/Iterable;)V

    .line 81
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    .local v0, "key":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, p1, v3}, Lorg/reflections/Store;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v1

    .line 83
    .local v1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    invoke-direct {p0, p1, v1, p3}, Lorg/reflections/Store;->getAllIncluding(Ljava/lang/String;Ljava/lang/Iterable;Lorg/reflections/Store$IterableChain;)Ljava/lang/Iterable;

    goto :goto_0

    .line 87
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    :cond_1
    return-object p3
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/google/common/collect/Multimap;
    .locals 4
    .param p1, "index"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v1, p0, Lorg/reflections/Store;->storeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multimap;

    .line 57
    .local v0, "mmap":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 58
    new-instance v1, Lorg/reflections/ReflectionsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scanner "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not configured"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 5
    .param p1, "index"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    .local p2, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lorg/reflections/Store;->get(Ljava/lang/String;)Lcom/google/common/collect/Multimap;

    move-result-object v1

    .line 71
    .local v1, "mmap":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lorg/reflections/Store$IterableChain;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/reflections/Store$IterableChain;-><init>(Lorg/reflections/Store$1;)V

    .line 72
    .local v2, "result":Lorg/reflections/Store$IterableChain;, "Lorg/reflections/Store$IterableChain<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v1, v0}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/reflections/Store$IterableChain;->access$100(Lorg/reflections/Store$IterableChain;Ljava/lang/Iterable;)V

    goto :goto_0

    .line 75
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public varargs get(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "index"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/reflections/Store;->get(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getAll(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 3
    .param p1, "index"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Lorg/reflections/Store;->get(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    new-instance v1, Lorg/reflections/Store$IterableChain;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/reflections/Store$IterableChain;-><init>(Lorg/reflections/Store$1;)V

    invoke-direct {p0, p1, v0, v1}, Lorg/reflections/Store;->getAllIncluding(Ljava/lang/String;Ljava/lang/Iterable;Lorg/reflections/Store$IterableChain;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 3
    .param p1, "index"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/reflections/Store;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    new-instance v1, Lorg/reflections/Store$IterableChain;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/reflections/Store$IterableChain;-><init>(Lorg/reflections/Store$1;)V

    invoke-direct {p0, p1, v0, v1}, Lorg/reflections/Store;->getAllIncluding(Ljava/lang/String;Ljava/lang/Iterable;Lorg/reflections/Store$IterableChain;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getOrCreate(Ljava/lang/String;)Lcom/google/common/collect/Multimap;
    .locals 4
    .param p1, "index"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v2, p0, Lorg/reflections/Store;->storeMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multimap;

    .line 40
    .local v0, "mmap":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 41
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Lorg/reflections/Store$1;

    invoke-direct {v3, p0}, Lorg/reflections/Store$1;-><init>(Lorg/reflections/Store;)V

    .line 42
    invoke-static {v2, v3}, Lcom/google/common/collect/Multimaps;->newSetMultimap(Ljava/util/Map;Lcom/google/common/base/Supplier;)Lcom/google/common/collect/SetMultimap;

    move-result-object v1

    .line 48
    .local v1, "multimap":Lcom/google/common/collect/SetMultimap;, "Lcom/google/common/collect/SetMultimap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v2, p0, Lorg/reflections/Store;->concurrent:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/google/common/collect/Multimaps;->synchronizedSetMultimap(Lcom/google/common/collect/SetMultimap;)Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    .line 49
    :goto_0
    iget-object v2, p0, Lorg/reflections/Store;->storeMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .end local v1    # "multimap":Lcom/google/common/collect/SetMultimap;, "Lcom/google/common/collect/SetMultimap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v0

    .restart local v1    # "multimap":Lcom/google/common/collect/SetMultimap;, "Lcom/google/common/collect/SetMultimap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    move-object v0, v1

    .line 48
    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
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
    .line 34
    iget-object v0, p0, Lorg/reflections/Store;->storeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
