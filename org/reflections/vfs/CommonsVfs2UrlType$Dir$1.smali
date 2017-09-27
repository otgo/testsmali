.class Lorg/reflections/vfs/CommonsVfs2UrlType$Dir$1;
.super Ljava/lang/Object;
.source "CommonsVfs2UrlType.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;->getFiles()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/reflections/vfs/Vfs$File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;


# direct methods
.method constructor <init>(Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;)V
    .locals 0
    .param p1, "this$0"    # Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;

    .prologue
    .line 53
    iput-object p1, p0, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir$1;->this$0:Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/reflections/vfs/Vfs$File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir$FileAbstractIterator;

    iget-object v1, p0, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir$1;->this$0:Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/reflections/vfs/CommonsVfs2UrlType$Dir$FileAbstractIterator;-><init>(Lorg/reflections/vfs/CommonsVfs2UrlType$Dir;Lorg/reflections/vfs/CommonsVfs2UrlType$1;)V

    return-object v0
.end method
