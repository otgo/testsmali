.class final Lorg/reflections/ReflectionUtils$3;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/ReflectionUtils;->withPattern(Ljava/lang/String;)Lcom/google/common/base/Predicate;
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
.field final synthetic val$regex:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lorg/reflections/ReflectionUtils$3;->val$regex:Ljava/lang/String;

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
    .line 162
    check-cast p1, Ljava/lang/reflect/AnnotatedElement;

    invoke-virtual {p0, p1}, Lorg/reflections/ReflectionUtils$3;->apply(Ljava/lang/reflect/AnnotatedElement;)Z

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
    .line 164
    .local p1, "input":Ljava/lang/reflect/AnnotatedElement;, "TT;"
    iget-object v0, p0, Lorg/reflections/ReflectionUtils$3;->val$regex:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
