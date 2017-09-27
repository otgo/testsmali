.class Lorg/reflections/vfs/UrlTypeVFS$1;
.super Ljava/lang/Object;
.source "UrlTypeVFS.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/reflections/vfs/UrlTypeVFS;
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
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/reflections/vfs/UrlTypeVFS;


# direct methods
.method constructor <init>(Lorg/reflections/vfs/UrlTypeVFS;)V
    .locals 0
    .param p1, "this$0"    # Lorg/reflections/vfs/UrlTypeVFS;

    .prologue
    .line 90
    iput-object p1, p0, Lorg/reflections/vfs/UrlTypeVFS$1;->this$0:Lorg/reflections/vfs/UrlTypeVFS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 92
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

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

    .prologue
    .line 90
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/reflections/vfs/UrlTypeVFS$1;->apply(Ljava/io/File;)Z

    move-result v0

    return v0
.end method
