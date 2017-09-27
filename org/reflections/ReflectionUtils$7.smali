.class final Lorg/reflections/ReflectionUtils$7;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/ReflectionUtils;->withAnnotations([Ljava/lang/annotation/Annotation;)Lcom/google/common/base/Predicate;
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
.field final synthetic val$annotations:[Ljava/lang/annotation/Annotation;


# direct methods
.method constructor <init>([Ljava/lang/annotation/Annotation;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lorg/reflections/ReflectionUtils$7;->val$annotations:[Ljava/lang/annotation/Annotation;

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
    .line 199
    check-cast p1, Ljava/lang/reflect/AnnotatedElement;

    invoke-virtual {p0, p1}, Lorg/reflections/ReflectionUtils$7;->apply(Ljava/lang/reflect/AnnotatedElement;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljava/lang/reflect/AnnotatedElement;)Z
    .locals 4
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
    .line 201
    .local p1, "input":Ljava/lang/reflect/AnnotatedElement;, "TT;"
    if-eqz p1, :cond_1

    .line 202
    invoke-interface {p1}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 203
    .local v1, "inputAnnotations":[Ljava/lang/annotation/Annotation;
    array-length v2, v1

    iget-object v3, p0, Lorg/reflections/ReflectionUtils$7;->val$annotations:[Ljava/lang/annotation/Annotation;

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 205
    aget-object v2, v1, v0

    iget-object v3, p0, Lorg/reflections/ReflectionUtils$7;->val$annotations:[Ljava/lang/annotation/Annotation;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lorg/reflections/ReflectionUtils;->access$100(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 209
    .end local v0    # "i":I
    .end local v1    # "inputAnnotations":[Ljava/lang/annotation/Annotation;
    :goto_1
    return v2

    .line 204
    .restart local v0    # "i":I
    .restart local v1    # "inputAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "i":I
    .end local v1    # "inputAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method
