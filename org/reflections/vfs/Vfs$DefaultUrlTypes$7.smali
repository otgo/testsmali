.class final enum Lorg/reflections/vfs/Vfs$DefaultUrlTypes$7;
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
    .line 284
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
    .line 290
    new-instance v0, Lorg/reflections/vfs/JarInputDir;

    invoke-direct {v0, p1}, Lorg/reflections/vfs/JarInputDir;-><init>(Ljava/net/URL;)V

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
    .line 286
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
