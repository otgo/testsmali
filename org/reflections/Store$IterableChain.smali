.class Lorg/reflections/Store$IterableChain;
.super Ljava/lang/Object;
.source "Store.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/reflections/Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IterableChain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final chain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Iterable",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 100
    .local p0, "this":Lorg/reflections/Store$IterableChain;, "Lorg/reflections/Store$IterableChain<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/reflections/Store$IterableChain;->chain:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lorg/reflections/Store$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/reflections/Store$1;

    .prologue
    .line 100
    .local p0, "this":Lorg/reflections/Store$IterableChain;, "Lorg/reflections/Store$IterableChain<TT;>;"
    invoke-direct {p0}, Lorg/reflections/Store$IterableChain;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/reflections/Store$IterableChain;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lorg/reflections/Store$IterableChain;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lorg/reflections/Store$IterableChain;->addAll(Ljava/lang/Iterable;)V

    return-void
.end method

.method private addAll(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lorg/reflections/Store$IterableChain;, "Lorg/reflections/Store$IterableChain<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    iget-object v0, p0, Lorg/reflections/Store$IterableChain;->chain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lorg/reflections/Store$IterableChain;, "Lorg/reflections/Store$IterableChain<TT;>;"
    iget-object v0, p0, Lorg/reflections/Store$IterableChain;->chain:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
