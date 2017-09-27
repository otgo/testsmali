.class Lorg/reflections/Reflections$2;
.super Ljava/lang/Object;
.source "Reflections.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/Reflections;->getAllAnnotated(Ljava/lang/Iterable;ZZ)Ljava/lang/Iterable;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/reflections/Reflections;


# direct methods
.method constructor <init>(Lorg/reflections/Reflections;)V
    .locals 0
    .param p1, "this$0"    # Lorg/reflections/Reflections;

    .prologue
    .line 422
    iput-object p1, p0, Lorg/reflections/Reflections$2;->this$0:Lorg/reflections/Reflections;

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
    .line 422
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/reflections/Reflections$2;->apply(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljava/lang/String;)Z
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 424
    iget-object v0, p0, Lorg/reflections/Reflections$2;->this$0:Lorg/reflections/Reflections;

    invoke-static {v0}, Lorg/reflections/Reflections;->access$000(Lorg/reflections/Reflections;)[Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/reflections/ReflectionUtils;->forName(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
