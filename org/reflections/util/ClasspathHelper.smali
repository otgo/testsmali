.class public abstract Lorg/reflections/util/ClasspathHelper;
.super Ljava/lang/Object;
.source "ClasspathHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs classLoaders([Ljava/lang/ClassLoader;)[Ljava/lang/ClassLoader;
    .locals 5
    .param p0, "classLoaders"    # [Ljava/lang/ClassLoader;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    if-eqz p0, :cond_0

    array-length v2, p0

    if-eqz v2, :cond_0

    .line 62
    .end local p0    # "classLoaders":[Ljava/lang/ClassLoader;
    :goto_0
    return-object p0

    .line 61
    .restart local p0    # "classLoaders":[Ljava/lang/ClassLoader;
    :cond_0
    invoke-static {}, Lorg/reflections/util/ClasspathHelper;->contextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .local v0, "contextClassLoader":Ljava/lang/ClassLoader;
    invoke-static {}, Lorg/reflections/util/ClasspathHelper;->staticClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 62
    .local v1, "staticClassLoader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/ClassLoader;

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    :goto_1
    move-object p0, v2

    goto :goto_0

    :cond_1
    new-array v2, v4, [Ljava/lang/ClassLoader;

    aput-object v0, v2, v3

    goto :goto_1

    :cond_2
    new-array v2, v3, [Ljava/lang/ClassLoader;

    goto :goto_1
.end method

.method public static cleanPath(Ljava/net/URL;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 360
    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "path":Ljava/lang/String;
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 364
    :goto_0
    const-string v1, "jar:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    const-string v1, "jar:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    :cond_0
    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    const-string v1, "file:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 370
    :cond_1
    const-string v1, "!/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "!/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    :cond_2
    return-object v0

    .line 363
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static contextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private static distinctUrls(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/URL;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    .local p0, "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/URL;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 391
    .local v0, "distinct":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/net/URL;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    .line 392
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 394
    .end local v1    # "url":Ljava/net/URL;
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method public static varargs forClass(Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/net/URL;
    .locals 14
    .param p1, "classLoaders"    # [Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/net/URL;"
        }
    .end annotation

    .prologue
    .local p0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 138
    invoke-static {p1}, Lorg/reflections/util/ClasspathHelper;->classLoaders([Ljava/lang/ClassLoader;)[Ljava/lang/ClassLoader;

    move-result-object v2

    .line 139
    .local v2, "loaders":[Ljava/lang/ClassLoader;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "."

    const-string v10, "/"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".class"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "resourceName":Ljava/lang/String;
    array-length v8, v2

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v0, v2, v7

    .line 142
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    .line 143
    .local v5, "url":Ljava/net/URL;
    if-eqz v5, :cond_0

    .line 144
    invoke-virtual {v5}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {v5}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "."

    const-string v13, "/"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "normalizedUrl":Ljava/lang/String;
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v3    # "normalizedUrl":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URL;
    :goto_1
    return-object v6

    .line 147
    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/net/MalformedURLException;
    sget-object v6, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v6, :cond_0

    .line 149
    sget-object v6, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    const-string v9, "Could not get URL"

    invoke-interface {v6, v9, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_0
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    .line 153
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static forClassLoader()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/ClassLoader;

    invoke-static {v0}, Lorg/reflections/util/ClasspathHelper;->classLoaders([Ljava/lang/ClassLoader;)[Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lorg/reflections/util/ClasspathHelper;->forClassLoader([Ljava/lang/ClassLoader;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static varargs forClassLoader([Ljava/lang/ClassLoader;)Ljava/util/Collection;
    .locals 7
    .param p0, "classLoaders"    # [Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v2, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/URL;>;"
    invoke-static {p0}, Lorg/reflections/util/ClasspathHelper;->classLoaders([Ljava/lang/ClassLoader;)[Ljava/lang/ClassLoader;

    move-result-object v1

    .line 186
    .local v1, "loaders":[Ljava/lang/ClassLoader;
    array-length v6, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v0, v1, v5

    .line 187
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    :goto_1
    if-eqz v0, :cond_1

    .line 188
    instance-of v4, v0, Ljava/net/URLClassLoader;

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 189
    check-cast v4, Ljava/net/URLClassLoader;

    invoke-virtual {v4}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v3

    .line 190
    .local v3, "urls":[Ljava/net/URL;
    if-eqz v3, :cond_0

    .line 191
    invoke-static {v3}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 194
    .end local v3    # "urls":[Ljava/net/URL;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_1

    .line 186
    :cond_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 197
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    :cond_2
    invoke-static {v2}, Lorg/reflections/util/ClasspathHelper;->distinctUrls(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v4

    return-object v4
.end method

.method public static forJavaClassPath()Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v3, "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/URL;>;"
    const-string v4, "java.class.path"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "javaClassPath":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 213
    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v2, v5, v4

    .line 215
    .local v2, "path":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v7, :cond_0

    .line 218
    sget-object v7, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    const-string v8, "Could not get URL"

    invoke-interface {v7, v8, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "path":Ljava/lang/String;
    :cond_1
    invoke-static {v3}, Lorg/reflections/util/ClasspathHelper;->distinctUrls(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v4

    return-object v4
.end method

.method public static forManifest()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    invoke-static {}, Lorg/reflections/util/ClasspathHelper;->forClassLoader()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/reflections/util/ClasspathHelper;->forManifest(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static forManifest(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/net/URL;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, "urls":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/net/URL;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/URL;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    .line 331
    .local v1, "url":Ljava/net/URL;
    invoke-static {v1}, Lorg/reflections/util/ClasspathHelper;->forManifest(Ljava/net/URL;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 333
    .end local v1    # "url":Ljava/net/URL;
    :cond_0
    invoke-static {v0}, Lorg/reflections/util/ClasspathHelper;->distinctUrls(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method public static forManifest(Ljava/net/URL;)Ljava/util/Collection;
    .locals 13
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v6, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/URL;>;"
    invoke-interface {v6, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 294
    :try_start_0
    invoke-static {p0}, Lorg/reflections/util/ClasspathHelper;->cleanPath(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v5

    .line 295
    .local v5, "part":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .local v2, "jarFile":Ljava/io/File;
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, v5}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 297
    .local v4, "myJar":Ljava/util/jar/JarFile;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v5}, Lorg/reflections/util/ClasspathHelper;->tryToGetValidUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    .line 298
    .local v7, "validUrl":Ljava/net/URL;
    if-eqz v7, :cond_0

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_0
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v3

    .line 300
    .local v3, "manifest":Ljava/util/jar/Manifest;
    if-eqz v3, :cond_2

    .line 301
    invoke-virtual {v3}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v8

    new-instance v9, Ljava/util/jar/Attributes$Name;

    const-string v10, "Class-Path"

    invoke-direct {v9, v10}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "classPath":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 303
    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v10, :cond_2

    aget-object v1, v9, v8

    .line 304
    .local v1, "jar":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Lorg/reflections/util/ClasspathHelper;->tryToGetValidUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    .line 305
    if-eqz v7, :cond_1

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 309
    .end local v0    # "classPath":Ljava/lang/String;
    .end local v1    # "jar":Ljava/lang/String;
    .end local v2    # "jarFile":Ljava/io/File;
    .end local v3    # "manifest":Ljava/util/jar/Manifest;
    .end local v4    # "myJar":Ljava/util/jar/JarFile;
    .end local v5    # "part":Ljava/lang/String;
    .end local v7    # "validUrl":Ljava/net/URL;
    :catch_0
    move-exception v8

    .line 312
    :cond_2
    invoke-static {v6}, Lorg/reflections/util/ClasspathHelper;->distinctUrls(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v8

    return-object v8
.end method

.method public static varargs forPackage(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/util/Collection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "classLoaders"    # [Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {p0}, Lorg/reflections/util/ClasspathHelper;->resourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/reflections/util/ClasspathHelper;->forResource(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static varargs forResource(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/util/Collection;
    .locals 12
    .param p0, "resourceName"    # Ljava/lang/String;
    .param p1, "classLoaders"    # [Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 104
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    invoke-static {p1}, Lorg/reflections/util/ClasspathHelper;->classLoaders([Ljava/lang/ClassLoader;)[Ljava/lang/ClassLoader;

    move-result-object v3

    .line 106
    .local v3, "loaders":[Ljava/lang/ClassLoader;
    array-length v8, v3

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v0, v3, v7

    .line 108
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v6

    .line 109
    .local v6, "urls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 110
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/URL;

    .line 111
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 112
    .local v2, "index":I
    const/4 v9, -0x1

    if-eq v2, v9, :cond_1

    .line 113
    new-instance v9, Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 118
    .end local v2    # "index":I
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "urls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/io/IOException;
    sget-object v9, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v9, :cond_0

    .line 120
    sget-object v9, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error getting resources for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 115
    .restart local v2    # "index":I
    .restart local v5    # "url":Ljava/net/URL;
    .restart local v6    # "urls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :cond_1
    :try_start_1
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 124
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "index":I
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "urls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :cond_2
    invoke-static {v4}, Lorg/reflections/util/ClasspathHelper;->distinctUrls(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v7

    return-object v7
.end method

.method public static forWebInfClasses(Ljavax/servlet/ServletContext;)Ljava/net/URL;
    .locals 3
    .param p0, "servletContext"    # Ljavax/servlet/ServletContext;

    .prologue
    .line 254
    :try_start_0
    const-string v2, "/WEB-INF/classes"

    invoke-interface {p0, v2}, Ljavax/servlet/ServletContext;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 256
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    invoke-virtual {v0}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v2

    .line 263
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 260
    .restart local v1    # "path":Ljava/lang/String;
    :cond_0
    const-string v2, "/WEB-INF/classes"

    invoke-interface {p0, v2}, Ljavax/servlet/ServletContext;->getResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 262
    .end local v1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 263
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static forWebInfLib(Ljavax/servlet/ServletContext;)Ljava/util/Collection;
    .locals 4
    .param p0, "servletContext"    # Ljavax/servlet/ServletContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/servlet/ServletContext;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v1, "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/URL;>;"
    const-string v2, "/WEB-INF/lib"

    invoke-interface {p0, v2}, Ljavax/servlet/ServletContext;->getResourcePaths(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 239
    .local v0, "urlString":Ljava/lang/Object;
    :try_start_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "urlString":Ljava/lang/Object;
    invoke-interface {p0, v0}, Ljavax/servlet/ServletContext;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v3

    goto :goto_0

    .line 242
    :cond_0
    invoke-static {v1}, Lorg/reflections/util/ClasspathHelper;->distinctUrls(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method private static resourceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 377
    if-eqz p0, :cond_1

    .line 378
    const-string v1, "."

    const-string v2, "/"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "resourceName":Ljava/lang/String;
    const-string v1, "\\"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 380
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 385
    .end local v0    # "resourceName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static staticClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/reflections/Reflections;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method static tryToGetValidUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .param p0, "workingDir"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 339
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    .line 350
    :goto_0
    return-object v0

    .line 341
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    goto :goto_0

    .line 343
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    goto/16 :goto_0

    .line 345
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 346
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 350
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
