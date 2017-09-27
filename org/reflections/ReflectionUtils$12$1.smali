.class Lorg/reflections/ReflectionUtils$12$1;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/ReflectionUtils$12;->apply(Ljava/lang/reflect/Member;)Z
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
        "Ljava/lang/annotation/Annotation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/reflections/ReflectionUtils$12;


# direct methods
.method constructor <init>(Lorg/reflections/ReflectionUtils$12;)V
    .locals 0
    .param p1, "this$0"    # Lorg/reflections/ReflectionUtils$12;

    .prologue
    .line 270
    iput-object p1, p0, Lorg/reflections/ReflectionUtils$12$1;->this$0:Lorg/reflections/ReflectionUtils$12;

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
    .line 270
    check-cast p1, Ljava/lang/annotation/Annotation;

    invoke-virtual {p0, p1}, Lorg/reflections/ReflectionUtils$12$1;->apply(Ljava/lang/annotation/Annotation;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljava/lang/annotation/Annotation;)Z
    .locals 1
    .param p1, "input"    # Ljava/lang/annotation/Annotation;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 272
    iget-object v0, p0, Lorg/reflections/ReflectionUtils$12$1;->this$0:Lorg/reflections/ReflectionUtils$12;

    iget-object v0, v0, Lorg/reflections/ReflectionUtils$12;->val$annotation:Ljava/lang/annotation/Annotation;

    invoke-static {v0, p1}, Lorg/reflections/ReflectionUtils;->access$100(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z

    move-result v0

    return v0
.end method
