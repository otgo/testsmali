.class final Lorg/reflections/ReflectionUtils$9;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/ReflectionUtils;->withParametersAssignableTo([Ljava/lang/Class;)Lcom/google/common/base/Predicate;
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
.field final synthetic val$types:[Ljava/lang/Class;


# direct methods
.method constructor <init>([Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lorg/reflections/ReflectionUtils$9;->val$types:[Ljava/lang/Class;

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
    .line 225
    check-cast p1, Ljava/lang/reflect/Member;

    invoke-virtual {p0, p1}, Lorg/reflections/ReflectionUtils$9;->apply(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljava/lang/reflect/Member;)Z
    .locals 5
    .param p1, "input"    # Ljava/lang/reflect/Member;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 227
    if-eqz p1, :cond_0

    .line 228
    invoke-static {p1}, Lorg/reflections/ReflectionUtils;->access$200(Ljava/lang/reflect/Member;)[Ljava/lang/Class;

    move-result-object v1

    .line 229
    .local v1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v1

    iget-object v4, p0, Lorg/reflections/ReflectionUtils$9;->val$types:[Ljava/lang/Class;

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 231
    aget-object v3, v1, v0

    iget-object v4, p0, Lorg/reflections/ReflectionUtils$9;->val$types:[Ljava/lang/Class;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v1, v0

    const-class v4, Ljava/lang/Object;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lorg/reflections/ReflectionUtils$9;->val$types:[Ljava/lang/Class;

    aget-object v3, v3, v0

    const-class v4, Ljava/lang/Object;

    if-eq v3, v4, :cond_1

    .line 239
    .end local v0    # "i":I
    .end local v1    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    :goto_1
    return v2

    .line 230
    .restart local v0    # "i":I
    .restart local v1    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method
