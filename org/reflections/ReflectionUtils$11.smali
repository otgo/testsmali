.class final Lorg/reflections/ReflectionUtils$11;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/ReflectionUtils;->withAnyParameterAnnotation(Ljava/lang/Class;)Lcom/google/common/base/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Ljava/lang/reflect/Member;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$annotationClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lorg/reflections/ReflectionUtils$11;->val$annotationClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 255
    check-cast p1, Ljava/lang/reflect/Member;

    invoke-virtual {p0, p1}, Lorg/reflections/ReflectionUtils$11;->apply(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljava/lang/reflect/Member;)Z
    .locals 2
    .param p1, "input"    # Ljava/lang/reflect/Member;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 257
    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/reflections/ReflectionUtils;->access$300(Ljava/lang/reflect/Member;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/reflections/ReflectionUtils;->access$400(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/reflections/ReflectionUtils$11$1;

    invoke-direct {v1, p0}, Lorg/reflections/ReflectionUtils$11$1;-><init>(Lorg/reflections/ReflectionUtils$11;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->any(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method