.class Lorg/reflections/vfs/ZipDir$1$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "ZipDir.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/vfs/ZipDir$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<",
        "Lorg/reflections/vfs/Vfs$File;",
        ">;"
    }
.end annotation


# instance fields
.field final entries:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/reflections/vfs/ZipDir$1;


# direct methods
.method constructor <init>(Lorg/reflections/vfs/ZipDir$1;)V
    .locals 1
    .param p1, "this$1"    # Lorg/reflections/vfs/ZipDir$1;

    .prologue
    .line 26
    iput-object p1, p0, Lorg/reflections/vfs/ZipDir$1$1;->this$1:Lorg/reflections/vfs/ZipDir$1;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 27
    iget-object v0, p0, Lorg/reflections/vfs/ZipDir$1$1;->this$1:Lorg/reflections/vfs/ZipDir$1;

    iget-object v0, v0, Lorg/reflections/vfs/ZipDir$1;->this$0:Lorg/reflections/vfs/ZipDir;

    iget-object v0, v0, Lorg/reflections/vfs/ZipDir;->jarFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Lorg/reflections/vfs/ZipDir$1$1;->entries:Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lorg/reflections/vfs/ZipDir$1$1;->computeNext()Lorg/reflections/vfs/Vfs$File;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Lorg/reflections/vfs/Vfs$File;
    .locals 3

    .prologue
    .line 30
    :cond_0
    iget-object v1, p0, Lorg/reflections/vfs/ZipDir$1$1;->entries:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    iget-object v1, p0, Lorg/reflections/vfs/ZipDir$1$1;->entries:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 32
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lorg/reflections/vfs/ZipFile;

    iget-object v2, p0, Lorg/reflections/vfs/ZipDir$1$1;->this$1:Lorg/reflections/vfs/ZipDir$1;

    iget-object v2, v2, Lorg/reflections/vfs/ZipDir$1;->this$0:Lorg/reflections/vfs/ZipDir;

    invoke-direct {v1, v2, v0}, Lorg/reflections/vfs/ZipFile;-><init>(Lorg/reflections/vfs/ZipDir;Ljava/util/zip/ZipEntry;)V

    .line 37
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lorg/reflections/vfs/ZipDir$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/reflections/vfs/Vfs$File;

    goto :goto_0
.end method
