.class final Lorg/reflections/vfs/Vfs$2;
.super Ljava/lang/Object;
.source "Vfs.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/vfs/Vfs;->findFiles(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lorg/reflections/vfs/Vfs$2;->val$url:Ljava/net/URL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
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
    .line 146
    iget-object v0, p0, Lorg/reflections/vfs/Vfs$2;->val$url:Ljava/net/URL;

    invoke-static {v0}, Lorg/reflections/vfs/Vfs;->fromURL(Ljava/net/URL;)Lorg/reflections/vfs/Vfs$Dir;

    move-result-object v0

    invoke-interface {v0}, Lorg/reflections/vfs/Vfs$Dir;->getFiles()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
