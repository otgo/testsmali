.class public interface abstract Lorg/reflections/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# virtual methods
.method public abstract getClassLoaders()[Ljava/lang/ClassLoader;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getExecutorService()Ljava/util/concurrent/ExecutorService;
.end method

.method public abstract getInputsFilter()Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getMetadataAdapter()Lorg/reflections/adapters/MetadataAdapter;
.end method

.method public abstract getScanners()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/reflections/scanners/Scanner;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSerializer()Lorg/reflections/serializers/Serializer;
.end method

.method public abstract getUrls()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end method
