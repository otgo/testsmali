.class public abstract Lorg/reflections/vfs/Vfs;
.super Ljava/lang/Object;
.source "Vfs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/reflections/vfs/Vfs$DefaultUrlTypes;,
        Lorg/reflections/vfs/Vfs$UrlType;,
        Lorg/reflections/vfs/Vfs$File;,
        Lorg/reflections/vfs/Vfs$Dir;
    }
.end annotation


# static fields
.field private static defaultUrlTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/reflections/vfs/Vfs$UrlType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->values()[Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lorg/reflections/vfs/Vfs;->defaultUrlTypes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    return-void
.end method

.method public static addDefaultURLTypes(Lorg/reflections/vfs/Vfs$UrlType;)V
    .locals 2
    .param p0, "urlType"    # Lorg/reflections/vfs/Vfs$UrlType;

    .prologue
    .line 86
    sget-object v0, Lorg/reflections/vfs/Vfs;->defaultUrlTypes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 87
    return-void
.end method

.method public static findFiles(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/URL;",
            ">;",
            "Lcom/google/common/base/Predicate",
            "<",
            "Lorg/reflections/vfs/Vfs$File;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/reflections/vfs/Vfs$File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "inUrls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/URL;>;"
    .local p1, "filePredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Lorg/reflections/vfs/Vfs$File;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v1, "result":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/reflections/vfs/Vfs$File;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    .line 143
    .local v2, "url":Ljava/net/URL;
    :try_start_0
    new-instance v4, Lorg/reflections/vfs/Vfs$2;

    invoke-direct {v4, v2}, Lorg/reflections/vfs/Vfs$2;-><init>(Ljava/net/URL;)V

    .line 144
    invoke-static {v4, p1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v4

    .line 143
    invoke-static {v1, v4}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v4, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v4, :cond_0

    .line 151
    sget-object v4, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not findFiles for url. continuing. ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 156
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "url":Ljava/net/URL;
    :cond_1
    return-object v1
.end method

.method public static findFiles(Ljava/util/Collection;Ljava/lang/String;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;
    .locals 2
    .param p1, "packagePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/URL;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/reflections/vfs/Vfs$File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "inUrls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/URL;>;"
    .local p2, "nameFilter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    new-instance v0, Lorg/reflections/vfs/Vfs$1;

    invoke-direct {v0, p1, p2}, Lorg/reflections/vfs/Vfs$1;-><init>(Ljava/lang/String;Lcom/google/common/base/Predicate;)V

    .line 134
    .local v0, "fileNamePredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Lorg/reflections/vfs/Vfs$File;>;"
    invoke-static {p0, v0}, Lorg/reflections/vfs/Vfs;->findFiles(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v1

    return-object v1
.end method

.method public static fromURL(Ljava/net/URL;)Lorg/reflections/vfs/Vfs$Dir;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 91
    sget-object v0, Lorg/reflections/vfs/Vfs;->defaultUrlTypes:Ljava/util/List;

    invoke-static {p0, v0}, Lorg/reflections/vfs/Vfs;->fromURL(Ljava/net/URL;Ljava/util/List;)Lorg/reflections/vfs/Vfs$Dir;

    move-result-object v0

    return-object v0
.end method

.method public static fromURL(Ljava/net/URL;Ljava/util/List;)Lorg/reflections/vfs/Vfs$Dir;
    .locals 7
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/List",
            "<",
            "Lorg/reflections/vfs/Vfs$UrlType;",
            ">;)",
            "Lorg/reflections/vfs/Vfs$Dir;"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "urlTypes":Ljava/util/List;, "Ljava/util/List<Lorg/reflections/vfs/Vfs$UrlType;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/reflections/vfs/Vfs$UrlType;

    .line 98
    .local v2, "type":Lorg/reflections/vfs/Vfs$UrlType;
    :try_start_0
    invoke-interface {v2, p0}, Lorg/reflections/vfs/Vfs$UrlType;->matches(Ljava/net/URL;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    invoke-interface {v2, p0}, Lorg/reflections/vfs/Vfs$UrlType;->createDir(Ljava/net/URL;)Lorg/reflections/vfs/Vfs$Dir;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 100
    .local v0, "dir":Lorg/reflections/vfs/Vfs$Dir;
    if-eqz v0, :cond_0

    return-object v0

    .line 102
    .end local v0    # "dir":Lorg/reflections/vfs/Vfs$Dir;
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v4, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v4, :cond_0

    .line 104
    sget-object v4, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not create Dir using "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from url "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". skipping."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 109
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "type":Lorg/reflections/vfs/Vfs$UrlType;
    :cond_1
    new-instance v3, Lorg/reflections/ReflectionsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not create Vfs.Dir from url, no matching UrlType was found ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "either use fromURL(final URL url, final List<UrlType> urlTypes) or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "use the static setDefaultURLTypes(final List<UrlType> urlTypes) or addDefaultURLTypes(UrlType urlType) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "with your specialized UrlType."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static varargs fromURL(Ljava/net/URL;[Lorg/reflections/vfs/Vfs$UrlType;)Lorg/reflections/vfs/Vfs$Dir;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "urlTypes"    # [Lorg/reflections/vfs/Vfs$UrlType;

    .prologue
    .line 117
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/reflections/vfs/Vfs;->fromURL(Ljava/net/URL;Ljava/util/List;)Lorg/reflections/vfs/Vfs$Dir;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultUrlTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/reflections/vfs/Vfs$UrlType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    sget-object v0, Lorg/reflections/vfs/Vfs;->defaultUrlTypes:Ljava/util/List;

    return-object v0
.end method

.method public static getFile(Ljava/net/URL;)Ljava/io/File;
    .locals 5
    .param p0, "url"    # Ljava/net/URL;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 165
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 167
    :catch_0
    move-exception v2

    .line 171
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .restart local v1    # "path":Ljava/lang/String;
    const-string v2, ".jar!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    const-string v3, ".jar!"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, ".jar"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 173
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    if-nez v2, :cond_0

    .line 179
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    .line 180
    .restart local v1    # "path":Ljava/lang/String;
    const-string v2, "jar:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "jar:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 181
    :cond_3
    const-string v2, "wsjar:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "wsjar:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    :cond_4
    const-string v2, "file:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "file:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 183
    :cond_5
    const-string v2, ".jar!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    const-string v3, ".jar!"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, ".jar"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 184
    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    const-string v2, "%20"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 187
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-nez v2, :cond_0

    .line 192
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 189
    :catch_1
    move-exception v2

    goto :goto_2

    .line 175
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public static setDefaultURLTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/reflections/vfs/Vfs$UrlType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "urlTypes":Ljava/util/List;, "Ljava/util/List<Lorg/reflections/vfs/Vfs$UrlType;>;"
    sput-object p0, Lorg/reflections/vfs/Vfs;->defaultUrlTypes:Ljava/util/List;

    .line 82
    return-void
.end method
