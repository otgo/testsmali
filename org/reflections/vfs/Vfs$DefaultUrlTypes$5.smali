.class final enum Lorg/reflections/vfs/Vfs$DefaultUrlTypes$5;
.super Lorg/reflections/vfs/Vfs$DefaultUrlTypes;
.source "Vfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/reflections/vfs/Vfs$DefaultUrlTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;-><init>(Ljava/lang/String;ILorg/reflections/vfs/Vfs$1;)V

    return-void
.end method


# virtual methods
.method public createDir(Ljava/net/URL;)Lorg/reflections/vfs/Vfs$Dir;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lorg/reflections/vfs/UrlTypeVFS;

    invoke-direct {v0}, Lorg/reflections/vfs/UrlTypeVFS;-><init>()V

    invoke-virtual {v0, p1}, Lorg/reflections/vfs/UrlTypeVFS;->createDir(Ljava/net/URL;)Lorg/reflections/vfs/Vfs$Dir;

    move-result-object v0

    return-object v0
.end method

.method public matches(Ljava/net/URL;)Z
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 265
    const-string v0, "vfszip"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vfsfile"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
