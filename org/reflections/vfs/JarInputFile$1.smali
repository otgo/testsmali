.class Lorg/reflections/vfs/JarInputFile$1;
.super Ljava/io/InputStream;
.source "JarInputFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/vfs/JarInputFile;->openInputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/reflections/vfs/JarInputFile;


# direct methods
.method constructor <init>(Lorg/reflections/vfs/JarInputFile;)V
    .locals 0
    .param p1, "this$0"    # Lorg/reflections/vfs/JarInputFile;

    .prologue
    .line 33
    iput-object p1, p0, Lorg/reflections/vfs/JarInputFile$1;->this$0:Lorg/reflections/vfs/JarInputFile;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v1, p0, Lorg/reflections/vfs/JarInputFile$1;->this$0:Lorg/reflections/vfs/JarInputFile;

    invoke-static {v1}, Lorg/reflections/vfs/JarInputFile;->access$000(Lorg/reflections/vfs/JarInputFile;)Lorg/reflections/vfs/JarInputDir;

    move-result-object v1

    iget-wide v2, v1, Lorg/reflections/vfs/JarInputDir;->cursor:J

    iget-object v1, p0, Lorg/reflections/vfs/JarInputFile$1;->this$0:Lorg/reflections/vfs/JarInputFile;

    invoke-static {v1}, Lorg/reflections/vfs/JarInputFile;->access$100(Lorg/reflections/vfs/JarInputFile;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/reflections/vfs/JarInputFile$1;->this$0:Lorg/reflections/vfs/JarInputFile;

    invoke-static {v1}, Lorg/reflections/vfs/JarInputFile;->access$000(Lorg/reflections/vfs/JarInputFile;)Lorg/reflections/vfs/JarInputDir;

    move-result-object v1

    iget-wide v2, v1, Lorg/reflections/vfs/JarInputDir;->cursor:J

    iget-object v1, p0, Lorg/reflections/vfs/JarInputFile$1;->this$0:Lorg/reflections/vfs/JarInputFile;

    invoke-static {v1}, Lorg/reflections/vfs/JarInputFile;->access$200(Lorg/reflections/vfs/JarInputFile;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 37
    iget-object v1, p0, Lorg/reflections/vfs/JarInputFile$1;->this$0:Lorg/reflections/vfs/JarInputFile;

    invoke-static {v1}, Lorg/reflections/vfs/JarInputFile;->access$000(Lorg/reflections/vfs/JarInputFile;)Lorg/reflections/vfs/JarInputDir;

    move-result-object v1

    iget-object v1, v1, Lorg/reflections/vfs/JarInputDir;->jarInputStream:Ljava/util/jar/JarInputStream;

    invoke-virtual {v1}, Ljava/util/jar/JarInputStream;->read()I

    move-result v0

    .line 38
    .local v0, "read":I
    iget-object v1, p0, Lorg/reflections/vfs/JarInputFile$1;->this$0:Lorg/reflections/vfs/JarInputFile;

    invoke-static {v1}, Lorg/reflections/vfs/JarInputFile;->access$000(Lorg/reflections/vfs/JarInputFile;)Lorg/reflections/vfs/JarInputDir;

    move-result-object v1

    iget-wide v2, v1, Lorg/reflections/vfs/JarInputDir;->cursor:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/reflections/vfs/JarInputDir;->cursor:J

    .line 41
    .end local v0    # "read":I
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
