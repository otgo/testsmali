.class final Lorg/reflections/ReflectionUtils$5;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/ReflectionUtils;->withAnnotations([Ljava/lang/Class;)Lcom/google/common/base/Predicate;
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
.field final synthetic val$annotations:[Ljava/lang/Class;


# direct methods
.method constructor <init>([Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lorg/reflections/ReflectionUtils$5;->val$annotations:[Ljava/lang/Class;

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
    .line 180
    check-cast p1, Ljava/lang/reflect/AnnotatedElement;

    invoke-virtual {p0, p1}, Lorg/reflections/ReflectionUtils$5;->apply(Ljava/lang/reflect/AnnotatedElement;)Z

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
    .line 182
    .local p1, "input":Ljava/lang/reflect/AnnotatedElement;, "TT;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/reflections/ReflectionUtils$5;->val$annotations:[Ljava/lang/Class;

    invoke-interface {p1}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-static {v1}, Lorg/reflections/ReflectionUtils;->access$000([Ljava/lang/annotation/Annotation;)[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
