.class final Lorg/reflections/ReflectionUtils$18;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/ReflectionUtils;->withClassModifier(I)Lcom/google/common/base/Predicate;
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
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$mod:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 336
    iput p1, p0, Lorg/reflections/ReflectionUtils$18;->val$mod:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Class;)Z
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, "input":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    iget v1, p0, Lorg/reflections/ReflectionUtils$18;->val$mod:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 336
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lorg/reflections/ReflectionUtils$18;->apply(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
