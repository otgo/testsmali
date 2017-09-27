.class final Lorg/reflections/ReflectionUtils$8;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/ReflectionUtils;->withParameters([Ljava/lang/Class;)Lcom/google/common/base/Predicate;
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
    .line 216
    iput-object p1, p0, Lorg/reflections/ReflectionUtils$8;->val$types:[Ljava/lang/Class;

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
    .line 216
    check-cast p1, Ljava/lang/reflect/Member;

    invoke-virtual {p0, p1}, Lorg/reflections/ReflectionUtils$8;->apply(Ljava/lang/reflect/Member;)Z

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
    .line 218
    invoke-static {p1}, Lorg/reflections/ReflectionUtils;->access$200(Ljava/lang/reflect/Member;)[Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/reflections/ReflectionUtils$8;->val$types:[Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
