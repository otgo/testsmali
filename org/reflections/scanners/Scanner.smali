.class public interface abstract Lorg/reflections/scanners/Scanner;
.super Ljava/lang/Object;
.source "Scanner.java"


# virtual methods
.method public abstract acceptResult(Ljava/lang/String;)Z
.end method

.method public abstract acceptsInput(Ljava/lang/String;)Z
.end method

.method public abstract filterResultsBy(Lcom/google/common/base/Predicate;)Lorg/reflections/scanners/Scanner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/reflections/scanners/Scanner;"
        }
    .end annotation
.end method

.method public abstract getStore()Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract scan(Lorg/reflections/vfs/Vfs$File;Ljava/lang/Object;)Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setConfiguration(Lorg/reflections/Configuration;)V
.end method

.method public abstract setStore(Lcom/google/common/collect/Multimap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
