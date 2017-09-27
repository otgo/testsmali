.class Lorg/reflections/vfs/JarInputDir$1$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "JarInputDir.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/vfs/JarInputDir$1;->iterator()Ljava/util/Iterator;
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
.field final synthetic this$1:Lorg/reflections/vfs/JarInputDir$1;


# direct methods
.method constructor <init>(Lorg/reflections/vfs/JarInputDir$1;)V
    .locals 4
    .param p1, "this$1"    # Lorg/reflections/vfs/JarInputDir$1;

    .prologue
    .line 33
    iput-object p1, p0, Lorg/reflections/vfs/JarInputDir$1$1;->this$1:Lorg/reflections/vfs/JarInputDir$1;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 36
    :try_start_0
    iget-object v1, p0, Lorg/reflections/vfs/JarInputDir$1$1;->this$1:Lorg/reflections/vfs/JarInputDir$1;

    iget-object v1, v1, Lorg/reflections/vfs/JarInputDir$1;->this$0:Lorg/reflections/vfs/JarInputDir;

    new-instance v2, Ljava/util/jar/JarInputStream;

    iget-object v3, p0, Lorg/reflections/vfs/JarInputDir$1$1;->this$1:Lorg/reflections/vfs/JarInputDir$1;

    iget-object v3, v3, Lorg/reflections/vfs/JarInputDir$1;->this$0:Lorg/reflections/vfs/JarInputDir;

    invoke-static {v3}, Lorg/reflections/vfs/JarInputDir;->access$000(Lorg/reflections/vfs/JarInputDir;)Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, v1, Lorg/reflections/vfs/JarInputDir;->jarInputStream:Ljava/util/jar/JarInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-void

    .line 37
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/reflections/ReflectionsException;

    const-string v2, "Could not open url connection"

    invoke-direct {v1, v2, v0}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/reflections/vfs/JarInputDir$1$1;->computeNext()Lorg/reflections/vfs/Vfs$File;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Lorg/reflections/vfs/Vfs$File;
    .locals 10

    .prologue
    .line 43
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/reflections/vfs/JarInputDir$1$1;->this$1:Lorg/reflections/vfs/JarInputDir$1;

    iget-object v1, v1, Lorg/reflections/vfs/JarInputDir$1;->this$0:Lorg/reflections/vfs/JarInputDir;

    iget-object v1, v1, Lorg/reflections/vfs/JarInputDir;->jarInputStream:Ljava/util/jar/JarInputStream;

    invoke-virtual {v1}, Ljava/util/jar/JarInputStream;->getNextJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v2

    .line 44
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    if-nez v2, :cond_1

    .line 45
    invoke-virtual {p0}, Lorg/reflections/vfs/JarInputDir$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/reflections/vfs/Vfs$File;

    .line 52
    :goto_0
    return-object v1

    .line 48
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    .line 49
    .local v8, "size":J
    const-wide/16 v4, 0x0

    cmp-long v1, v8, v4

    if-gez v1, :cond_2

    const-wide v4, 0xffffffffL

    add-long/2addr v8, v4

    .line 50
    :cond_2
    iget-object v1, p0, Lorg/reflections/vfs/JarInputDir$1$1;->this$1:Lorg/reflections/vfs/JarInputDir$1;

    iget-object v1, v1, Lorg/reflections/vfs/JarInputDir$1;->this$0:Lorg/reflections/vfs/JarInputDir;

    iget-wide v4, v1, Lorg/reflections/vfs/JarInputDir;->nextCursor:J

    add-long/2addr v4, v8

    iput-wide v4, v1, Lorg/reflections/vfs/JarInputDir;->nextCursor:J

    .line 51
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lorg/reflections/vfs/JarInputFile;

    iget-object v3, p0, Lorg/reflections/vfs/JarInputDir$1$1;->this$1:Lorg/reflections/vfs/JarInputDir$1;

    iget-object v3, v3, Lorg/reflections/vfs/JarInputDir$1;->this$0:Lorg/reflections/vfs/JarInputDir;

    iget-object v4, p0, Lorg/reflections/vfs/JarInputDir$1$1;->this$1:Lorg/reflections/vfs/JarInputDir$1;

    iget-object v4, v4, Lorg/reflections/vfs/JarInputDir$1;->this$0:Lorg/reflections/vfs/JarInputDir;

    iget-wide v4, v4, Lorg/reflections/vfs/JarInputDir;->cursor:J

    iget-object v6, p0, Lorg/reflections/vfs/JarInputDir$1$1;->this$1:Lorg/reflections/vfs/JarInputDir$1;

    iget-object v6, v6, Lorg/reflections/vfs/JarInputDir$1;->this$0:Lorg/reflections/vfs/JarInputDir;

    iget-wide v6, v6, Lorg/reflections/vfs/JarInputDir;->nextCursor:J

    invoke-direct/range {v1 .. v7}, Lorg/reflections/vfs/JarInputFile;-><init>(Ljava/util/zip/ZipEntry;Lorg/reflections/vfs/JarInputDir;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "size":J
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/reflections/ReflectionsException;

    const-string v3, "could not get next zip entry"

    invoke-direct {v1, v3, v0}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
