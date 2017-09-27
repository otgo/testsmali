.class Lorg/reflections/vfs/SystemDir$1$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "SystemDir.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/vfs/SystemDir$1;->iterator()Ljava/util/Iterator;
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
.field final stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/reflections/vfs/SystemDir$1;


# direct methods
.method constructor <init>(Lorg/reflections/vfs/SystemDir$1;)V
    .locals 2
    .param p1, "this$1"    # Lorg/reflections/vfs/SystemDir$1;

    .prologue
    .line 39
    iput-object p1, p0, Lorg/reflections/vfs/SystemDir$1$1;->this$1:Lorg/reflections/vfs/SystemDir$1;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 40
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/reflections/vfs/SystemDir$1$1;->stack:Ljava/util/Stack;

    .line 41
    iget-object v0, p0, Lorg/reflections/vfs/SystemDir$1$1;->stack:Ljava/util/Stack;

    iget-object v1, p0, Lorg/reflections/vfs/SystemDir$1$1;->this$1:Lorg/reflections/vfs/SystemDir$1;

    iget-object v1, v1, Lorg/reflections/vfs/SystemDir$1;->this$0:Lorg/reflections/vfs/SystemDir;

    invoke-static {v1}, Lorg/reflections/vfs/SystemDir;->access$000(Lorg/reflections/vfs/SystemDir;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lorg/reflections/vfs/SystemDir;->access$100(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/reflections/vfs/SystemDir$1$1;->computeNext()Lorg/reflections/vfs/Vfs$File;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Lorg/reflections/vfs/Vfs$File;
    .locals 3

    .prologue
    .line 44
    :goto_0
    iget-object v1, p0, Lorg/reflections/vfs/SystemDir$1$1;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    iget-object v1, p0, Lorg/reflections/vfs/SystemDir$1$1;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 46
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lorg/reflections/vfs/SystemDir$1$1;->stack:Ljava/util/Stack;

    invoke-static {v0}, Lorg/reflections/vfs/SystemDir;->access$100(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 49
    :cond_0
    new-instance v1, Lorg/reflections/vfs/SystemFile;

    iget-object v2, p0, Lorg/reflections/vfs/SystemDir$1$1;->this$1:Lorg/reflections/vfs/SystemDir$1;

    iget-object v2, v2, Lorg/reflections/vfs/SystemDir$1;->this$0:Lorg/reflections/vfs/SystemDir;

    invoke-direct {v1, v2, v0}, Lorg/reflections/vfs/SystemFile;-><init>(Lorg/reflections/vfs/SystemDir;Ljava/io/File;)V

    .line 53
    .end local v0    # "file":Ljava/io/File;
    :goto_1
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lorg/reflections/vfs/SystemDir$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/reflections/vfs/Vfs$File;

    goto :goto_1
.end method
