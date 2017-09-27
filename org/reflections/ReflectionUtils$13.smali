.class final Lorg/reflections/ReflectionUtils$13;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/ReflectionUtils;->withType(Ljava/lang/Class;)Lcom/google/common/base/Predicate;
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
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$type:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lorg/reflections/ReflectionUtils$13;->val$type:Ljava/lang/Class;

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
    .line 281
    check-cast p1, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Lorg/reflections/ReflectionUtils$13;->apply(Ljava/lang/reflect/Field;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p1, "input"    # Ljava/lang/reflect/Field;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 283
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/reflections/ReflectionUtils$13;->val$type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
