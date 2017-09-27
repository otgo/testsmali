.class final Ljavassist/DirClassPath;
.super Ljava/lang/Object;
.source "ClassPoolTail.java"

# interfaces
.implements Ljavassist/ClassPath;


# instance fields
.field directory:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "dirName"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Ljavassist/DirClassPath;->directory:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public find(Ljava/lang/String;)Ljava/net/URL;
    .locals 5
    .param p1, "classname"    # Ljava/lang/String;

    .prologue
    .line 55
    sget-char v2, Ljava/io/File;->separatorChar:C

    .line 56
    .local v2, "sep":C
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljavassist/DirClassPath;->directory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "filename":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 66
    :goto_0
    return-object v3

    .line 64
    :catch_0
    move-exception v3

    .line 66
    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 63
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public openClassfile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "classname"    # Ljava/lang/String;

    .prologue
    .line 44
    :try_start_0
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 45
    .local v1, "sep":C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljavassist/DirClassPath;->directory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "filename":Ljava/lang/String;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v0    # "filename":Ljava/lang/String;
    .end local v1    # "sep":C
    :goto_0
    return-object v2

    .line 50
    :catch_0
    move-exception v2

    .line 51
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 49
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Ljavassist/DirClassPath;->directory:Ljava/lang/String;

    return-object v0
.end method
