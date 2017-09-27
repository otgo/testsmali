.class public interface abstract Lorg/reflections/adapters/MetadataAdapter;
.super Ljava/lang/Object;
.source "MetadataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "M:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract acceptsInput(Ljava/lang/String;)Z
.end method

.method public abstract getClassAnnotationNames(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClassName(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getFieldAnnotationNames(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFieldName(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getFields(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/List",
            "<TF;>;"
        }
    .end annotation
.end method

.method public abstract getInterfacesNames(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMethodAnnotationNames(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMethodFullKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TM;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getMethodKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TM;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getMethodModifier(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getMethodName(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getMethods(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/List",
            "<TM;>;"
        }
    .end annotation
.end method

.method public abstract getOfCreateClassObject(Lorg/reflections/vfs/Vfs$File;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reflections/vfs/Vfs$File;",
            ")TC;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getParameterAnnotationNames(Ljava/lang/Object;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParameterNames(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReturnTypeName(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getSuperclassName(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract isPublic(Ljava/lang/Object;)Z
.end method
