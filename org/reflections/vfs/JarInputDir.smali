.class public Lorg/reflections/vfs/JarInputDir;
.super Ljava/lang/Object;
.source "JarInputDir.java"

# interfaces
.implements Lorg/reflections/vfs/Vfs$Dir;


# instance fields
.field cursor:J

.field jarInputStream:Ljava/util/jar/JarInputStream;

.field nextCursor:J

.field private final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    const-wide/16 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide v0, p0, Lorg/reflections/vfs/JarInputDir;->cursor:J

    .line 20
    iput-wide v0, p0, Lorg/reflections/vfs/JarInputDir;->nextCursor:J

    .line 23
    iput-object p1, p0, Lorg/reflections/vfs/JarInputDir;->url:Ljava/net/URL;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lorg/reflections/vfs/JarInputDir;)Ljava/net/URL;
    .locals 1
    .param p0, "x0"    # Lorg/reflections/vfs/JarInputDir;

    .prologue
    .line 16
    iget-object v0, p0, Lorg/reflections/vfs/JarInputDir;->url:Ljava/net/URL;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/reflections/vfs/JarInputDir;->jarInputStream:Ljava/util/jar/JarInputStream;

    invoke-static {v0}, Lorg/reflections/util/Utils;->close(Ljava/io/InputStream;)V

    .line 66
    return-void
.end method

.method public getFiles()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/reflections/vfs/Vfs$File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lorg/reflections/vfs/JarInputDir$1;

    invoke-direct {v0, p0}, Lorg/reflections/vfs/JarInputDir$1;-><init>(Lorg/reflections/vfs/JarInputDir;)V

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/reflections/vfs/JarInputDir;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
