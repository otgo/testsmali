.class Lorg/reflections/ReflectionUtils$11$1;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/ReflectionUtils$11;->apply(Ljava/lang/reflect/Member;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Ljava/lang/Class",
        "<+",
        "Ljava/lang/annotation/Annotation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/reflections/ReflectionUtils$11;


# direct methods
.method constructor <init>(Lorg/reflections/ReflectionUtils$11;)V
    .locals 0
    .param p1, "this$0"    # Lorg/reflections/ReflectionUtils$11;

    .prologue
    .line 257
    iput-object p1, p0, Lorg/reflections/ReflectionUtils$11$1;->this$0:Lorg/reflections/ReflectionUtils$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Class;)Z
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "input":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lorg/reflections/ReflectionUtils$11$1;->this$0:Lorg/reflections/ReflectionUtils$11;

    iget-object v0, v0, Lorg/reflections/ReflectionUtils$11;->val$annotationClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 257
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lorg/reflections/ReflectionUtils$11$1;->apply(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
