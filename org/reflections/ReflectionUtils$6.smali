.class final Lorg/reflections/ReflectionUtils$6;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/ReflectionUtils;->withAnnotation(Ljava/lang/annotation/Annotation;)Lcom/google/common/base/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$annotation:Ljava/lang/annotation/Annotation;


# direct methods
.method constructor <init>(Ljava/lang/annotation/Annotation;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lorg/reflections/ReflectionUtils$6;->val$annotation:Ljava/lang/annotation/Annotation;

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
    .line 189
    check-cast p1, Ljava/lang/reflect/AnnotatedElement;

    invoke-virtual {p0, p1}, Lorg/reflections/ReflectionUtils$6;->apply(Ljava/lang/reflect/AnnotatedElement;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljava/lang/reflect/AnnotatedElement;)Z
    .locals 2
    .param p1    # Ljava/lang/reflect/AnnotatedElement;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "input":Ljava/lang/reflect/AnnotatedElement;, "TT;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/reflections/ReflectionUtils$6;->val$annotation:Ljava/lang/annotation/Annotation;

    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/reflect/AnnotatedElement;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/reflections/ReflectionUtils$6;->val$annotation:Ljava/lang/annotation/Annotation;

    .line 192
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    iget-object v1, p0, Lorg/reflections/ReflectionUtils$6;->val$annotation:Ljava/lang/annotation/Annotation;

    invoke-static {v0, v1}, Lorg/reflections/ReflectionUtils;->access$100(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
