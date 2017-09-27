.class final Lorg/reflections/vfs/Vfs$1;
.super Ljava/lang/Object;
.source "Vfs.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/vfs/Vfs;->findFiles(Ljava/util/Collection;Ljava/lang/String;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;
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
        "Lorg/reflections/vfs/Vfs$File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$nameFilter:Lcom/google/common/base/Predicate;

.field final synthetic val$packagePrefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/common/base/Predicate;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lorg/reflections/vfs/Vfs$1;->val$packagePrefix:Ljava/lang/String;

    iput-object p2, p0, Lorg/reflections/vfs/Vfs$1;->val$nameFilter:Lcom/google/common/base/Predicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 122
    check-cast p1, Lorg/reflections/vfs/Vfs$File;

    invoke-virtual {p0, p1}, Lorg/reflections/vfs/Vfs$1;->apply(Lorg/reflections/vfs/Vfs$File;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/reflections/vfs/Vfs$File;)Z
    .locals 6
    .param p1, "file"    # Lorg/reflections/vfs/Vfs$File;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 124
    invoke-interface {p1}, Lorg/reflections/vfs/Vfs$File;->getRelativePath()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "path":Ljava/lang/String;
    iget-object v4, p0, Lorg/reflections/vfs/Vfs$1;->val$packagePrefix:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    iget-object v4, p0, Lorg/reflections/vfs/Vfs$1;->val$packagePrefix:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lorg/reflections/vfs/Vfs$1;->val$packagePrefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "filename":Ljava/lang/String;
    invoke-static {v0}, Lorg/reflections/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/reflections/vfs/Vfs$1;->val$nameFilter:Lcom/google/common/base/Predicate;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    .end local v0    # "filename":Ljava/lang/String;
    :goto_0
    return v2

    .restart local v0    # "filename":Ljava/lang/String;
    :cond_0
    move v2, v3

    .line 127
    goto :goto_0

    .end local v0    # "filename":Ljava/lang/String;
    :cond_1
    move v2, v3

    .line 129
    goto :goto_0
.end method
