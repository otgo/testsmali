.class public Lorg/reflections/Reflections;
.super Ljava/lang/Object;
.source "Reflections.java"


# static fields
.field public static log:Lorg/slf4j/Logger;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field protected final transient configuration:Lorg/reflections/Configuration;

.field protected store:Lorg/reflections/Store;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const-class v0, Lorg/reflections/Reflections;

    invoke-static {v0}, Lorg/reflections/util/Utils;->findLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Lorg/reflections/util/ConfigurationBuilder;

    invoke-direct {v0}, Lorg/reflections/util/ConfigurationBuilder;-><init>()V

    iput-object v0, p0, Lorg/reflections/Reflections;->configuration:Lorg/reflections/Configuration;

    .line 175
    new-instance v0, Lorg/reflections/Store;

    iget-object v1, p0, Lorg/reflections/Reflections;->configuration:Lorg/reflections/Configuration;

    invoke-direct {v0, v1}, Lorg/reflections/Store;-><init>(Lorg/reflections/Configuration;)V

    iput-object v0, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    .line 176
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lorg/reflections/scanners/Scanner;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "scanners"    # [Lorg/reflections/scanners/Scanner;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 143
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {p0, v0}, Lorg/reflections/Reflections;-><init>([Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Lorg/reflections/Configuration;)V
    .locals 4
    .param p1, "configuration"    # Lorg/reflections/Configuration;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lorg/reflections/Reflections;->configuration:Lorg/reflections/Configuration;

    .line 120
    new-instance v1, Lorg/reflections/Store;

    invoke-direct {v1, p1}, Lorg/reflections/Store;-><init>(Lorg/reflections/Configuration;)V

    iput-object v1, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    .line 122
    invoke-interface {p1}, Lorg/reflections/Configuration;->getScanners()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/reflections/Configuration;->getScanners()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    invoke-interface {p1}, Lorg/reflections/Configuration;->getScanners()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reflections/scanners/Scanner;

    .line 125
    .local v0, "scanner":Lorg/reflections/scanners/Scanner;
    invoke-interface {v0, p1}, Lorg/reflections/scanners/Scanner;->setConfiguration(Lorg/reflections/Configuration;)V

    .line 126
    iget-object v2, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/reflections/Store;->getOrCreate(Ljava/lang/String;)Lcom/google/common/collect/Multimap;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/reflections/scanners/Scanner;->setStore(Lcom/google/common/collect/Multimap;)V

    goto :goto_0

    .line 129
    .end local v0    # "scanner":Lorg/reflections/scanners/Scanner;
    :cond_0
    invoke-virtual {p0}, Lorg/reflections/Reflections;->scan()V

    .line 131
    :cond_1
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 170
    invoke-static {p1}, Lorg/reflections/util/ConfigurationBuilder;->build([Ljava/lang/Object;)Lorg/reflections/util/ConfigurationBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/reflections/Reflections;-><init>(Lorg/reflections/Configuration;)V

    .line 171
    return-void
.end method

.method static synthetic access$000(Lorg/reflections/Reflections;)[Ljava/lang/ClassLoader;
    .locals 1
    .param p0, "x0"    # Lorg/reflections/Reflections;

    .prologue
    .line 108
    invoke-direct {p0}, Lorg/reflections/Reflections;->loaders()[Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static collect()Lorg/reflections/Reflections;
    .locals 3

    .prologue
    .line 269
    const-string v0, "META-INF/reflections/"

    new-instance v1, Lorg/reflections/util/FilterBuilder;

    invoke-direct {v1}, Lorg/reflections/util/FilterBuilder;-><init>()V

    const-string v2, ".*-reflections.xml"

    invoke-virtual {v1, v2}, Lorg/reflections/util/FilterBuilder;->include(Ljava/lang/String;)Lorg/reflections/util/FilterBuilder;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/reflections/serializers/Serializer;

    invoke-static {v0, v1, v2}, Lorg/reflections/Reflections;->collect(Ljava/lang/String;Lcom/google/common/base/Predicate;[Lorg/reflections/serializers/Serializer;)Lorg/reflections/Reflections;

    move-result-object v0

    return-object v0
.end method

.method public static varargs collect(Ljava/lang/String;Lcom/google/common/base/Predicate;[Lorg/reflections/serializers/Serializer;)Lorg/reflections/Reflections;
    .locals 22
    .param p0, "packagePrefix"    # Ljava/lang/String;
    .param p2, "optionalSerializer"    # [Lorg/reflections/serializers/Serializer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Lorg/reflections/serializers/Serializer;",
            ")",
            "Lorg/reflections/Reflections;"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, "resourceNameFilter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    array-length v15, v0

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    const/4 v15, 0x0

    aget-object v9, p2, v15

    .line 283
    .local v9, "serializer":Lorg/reflections/serializers/Serializer;
    :goto_0
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/ClassLoader;

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lorg/reflections/util/ClasspathHelper;->forPackage(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/util/Collection;

    move-result-object v13

    .line 284
    .local v13, "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/URL;>;"
    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v8, 0x0

    .line 312
    :cond_0
    :goto_1
    return-object v8

    .line 281
    .end local v9    # "serializer":Lorg/reflections/serializers/Serializer;
    .end local v13    # "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/URL;>;"
    :cond_1
    new-instance v9, Lorg/reflections/serializers/XmlSerializer;

    invoke-direct {v9}, Lorg/reflections/serializers/XmlSerializer;-><init>()V

    goto :goto_0

    .line 285
    .restart local v9    # "serializer":Lorg/reflections/serializers/Serializer;
    .restart local v13    # "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/URL;>;"
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 286
    .local v10, "start":J
    new-instance v8, Lorg/reflections/Reflections;

    invoke-direct {v8}, Lorg/reflections/Reflections;-><init>()V

    .line 287
    .local v8, "reflections":Lorg/reflections/Reflections;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v13, v0, v1}, Lorg/reflections/vfs/Vfs;->findFiles(Ljava/util/Collection;Ljava/lang/String;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v4

    .line 288
    .local v4, "files":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/reflections/vfs/Vfs$File;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/reflections/vfs/Vfs$File;

    .line 289
    .local v3, "file":Lorg/reflections/vfs/Vfs$File;
    const/4 v6, 0x0

    .line 291
    .local v6, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {v3}, Lorg/reflections/vfs/Vfs$File;->openInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 292
    invoke-interface {v9, v6}, Lorg/reflections/serializers/Serializer;->read(Ljava/io/InputStream;)Lorg/reflections/Reflections;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lorg/reflections/Reflections;->merge(Lorg/reflections/Reflections;)Lorg/reflections/Reflections;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    invoke-static {v6}, Lorg/reflections/util/Utils;->close(Ljava/io/InputStream;)V

    goto :goto_2

    .line 293
    :catch_0
    move-exception v2

    .line 294
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v15, Lorg/reflections/ReflectionsException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "could not merge "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v2}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    invoke-static {v6}, Lorg/reflections/util/Utils;->close(Ljava/io/InputStream;)V

    throw v15

    .line 300
    .end local v3    # "file":Lorg/reflections/vfs/Vfs$File;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    :cond_3
    sget-object v15, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v15, :cond_0

    .line 301
    invoke-virtual {v8}, Lorg/reflections/Reflections;->getStore()Lorg/reflections/Store;

    move-result-object v12

    .line 302
    .local v12, "store":Lorg/reflections/Store;
    const/4 v7, 0x0

    .line 303
    .local v7, "keys":I
    const/4 v14, 0x0

    .line 304
    .local v14, "values":I
    invoke-virtual {v12}, Lorg/reflections/Store;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 305
    .local v5, "index":Ljava/lang/String;
    invoke-virtual {v12, v5}, Lorg/reflections/Store;->get(Ljava/lang/String;)Lcom/google/common/collect/Multimap;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v16

    add-int v7, v7, v16

    .line 306
    invoke-virtual {v12, v5}, Lorg/reflections/Store;->get(Ljava/lang/String;)Lcom/google/common/collect/Multimap;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/google/common/collect/Multimap;->size()I

    move-result v16

    add-int v14, v14, v16

    .line 307
    goto :goto_3

    .line 309
    .end local v5    # "index":Ljava/lang/String;
    :cond_4
    sget-object v16, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    const-string v17, "Reflections took %d ms to collect %d url%s, producing %d keys and %d values [%s]"

    const/4 v15, 0x6

    new-array v0, v15, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/4 v15, 0x0

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v10

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v18, v15

    const/4 v15, 0x1

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v18, v15

    const/16 v19, 0x2

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v15

    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v15, v0, :cond_5

    const-string v15, "s"

    :goto_4
    aput-object v15, v18, v19

    const/4 v15, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v18, v15

    const/4 v15, 0x4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v18, v15

    const/4 v15, 0x5

    const-string v19, ", "

    invoke-static/range {v19 .. v19}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v18, v15

    .line 309
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 310
    :cond_5
    const-string v15, ""

    goto :goto_4
.end method

.method private static index(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/reflections/scanners/Scanner;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 631
    .local p0, "scannerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/reflections/scanners/Scanner;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loaders()[Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lorg/reflections/Reflections;->configuration:Lorg/reflections/Configuration;

    invoke-interface {v0}, Lorg/reflections/Configuration;->getClassLoaders()[Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public collect(Ljava/io/File;)Lorg/reflections/Reflections;
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 333
    const/4 v1, 0x0

    .line 335
    .local v1, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    .end local v1    # "inputStream":Ljava/io/FileInputStream;
    .local v2, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {p0, v2}, Lorg/reflections/Reflections;->collect(Ljava/io/InputStream;)Lorg/reflections/Reflections;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 340
    invoke-static {v2}, Lorg/reflections/util/Utils;->close(Ljava/io/InputStream;)V

    return-object v3

    .line 337
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v1    # "inputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_0
    :try_start_2
    new-instance v3, Lorg/reflections/ReflectionsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not obtain input stream from file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    :goto_1
    invoke-static {v1}, Lorg/reflections/util/Utils;->close(Ljava/io/InputStream;)V

    throw v3

    .end local v1    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v1    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_1

    .line 337
    .end local v1    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v1    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public collect(Ljava/io/InputStream;)Lorg/reflections/Reflections;
    .locals 4
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 320
    :try_start_0
    iget-object v1, p0, Lorg/reflections/Reflections;->configuration:Lorg/reflections/Configuration;

    invoke-interface {v1}, Lorg/reflections/Configuration;->getSerializer()Lorg/reflections/serializers/Serializer;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/reflections/serializers/Serializer;->read(Ljava/io/InputStream;)Lorg/reflections/Reflections;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/reflections/Reflections;->merge(Lorg/reflections/Reflections;)Lorg/reflections/Reflections;

    .line 321
    sget-object v1, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reflections collected metadata from input stream using serializer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/reflections/Reflections;->configuration:Lorg/reflections/Configuration;

    invoke-interface {v3}, Lorg/reflections/Configuration;->getSerializer()Lorg/reflections/serializers/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_0
    return-object p0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lorg/reflections/ReflectionsException;

    const-string v2, "could not merge input stream"

    invoke-direct {v1, v2, v0}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getAllAnnotated(Ljava/lang/Iterable;ZZ)Ljava/lang/Iterable;
    .locals 6
    .param p2, "inherited"    # Z
    .param p3, "honorInherited"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, "annotated":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    if-eqz p3, :cond_1

    .line 421
    if-eqz p2, :cond_0

    .line 422
    iget-object v1, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    const-class v2, Lorg/reflections/scanners/SubTypesScanner;

    invoke-static {v2}, Lorg/reflections/Reflections;->index(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/common/base/Predicate;

    const/4 v4, 0x0

    new-instance v5, Lorg/reflections/Reflections$2;

    invoke-direct {v5, p0}, Lorg/reflections/Reflections$2;-><init>(Lorg/reflections/Reflections;)V

    aput-object v5, v3, v4

    invoke-static {p1, v3}, Lorg/reflections/ReflectionUtils;->filter(Ljava/lang/Iterable;[Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/reflections/Store;->get(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    .line 427
    .local v0, "subTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    const-class v2, Lorg/reflections/scanners/SubTypesScanner;

    invoke-static {v2}, Lorg/reflections/Reflections;->index(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/reflections/Store;->getAll(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    .line 433
    .end local v0    # "subTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .end local p1    # "annotated":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object p1

    .line 432
    .restart local p1    # "annotated":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    :cond_1
    iget-object v1, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    const-class v2, Lorg/reflections/scanners/TypeAnnotationsScanner;

    invoke-static {v2}, Lorg/reflections/Reflections;->index(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lorg/reflections/Store;->getAll(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    .line 433
    .restart local v0    # "subTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    const-class v2, Lorg/reflections/scanners/SubTypesScanner;

    invoke-static {v2}, Lorg/reflections/Reflections;->index(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/reflections/Store;->getAll(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    goto :goto_0
.end method

.method public getAllTypes()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 591
    iget-object v1, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    const-class v2, Lorg/reflections/scanners/SubTypesScanner;

    invoke-static {v2}, Lorg/reflections/Reflections;->index(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/reflections/Store;->getAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    .line 592
    .local v0, "allTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    new-instance v1, Lorg/reflections/ReflectionsException;

    const-string v2, "Couldn\'t find subtypes of Object. Make sure SubTypesScanner initialized to include Object class - new SubTypesScanner(false)"

    invoke-direct {v1, v2}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 596
    :cond_0
    return-object v0
.end method

.method public getConfiguration()Lorg/reflections/Configuration;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lorg/reflections/Reflections;->configuration:Lorg/reflections/Configuration;

    return-object v0
.end method

.method public getConstructorParamNames(Ljava/lang/reflect/Constructor;)Ljava/util/List;
    .locals 6
    .param p1, "constructor"    # Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 559
    iget-object v1, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    const-class v2, Lorg/reflections/scanners/MethodParameterNamesScanner;

    invoke-static {v2}, Lorg/reflections/Reflections;->index(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Lorg/reflections/util/Utils;->name(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lorg/reflections/Store;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    .line 560
    .local v0, "names":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/google/common/collect/Iterables;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-array v1, v5, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getConstructorUsage(Ljava/lang/reflect/Constructor;)Ljava/util/Set;
    .locals 5
    .param p1, "constructor"    # Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Member;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 581
    iget-object v0, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    const-class v1, Lorg/reflections/scanners/MemberUsageScanner;

    invoke-static {v1}, Lorg/reflections/Reflections;->index(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Lorg/reflections/util/Utils;->name(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/reflections/Store;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lorg/reflections/util/Utils;->getMembersFromDescriptors(Ljava/lang/Iterable;[Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getConstructorsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 480
    .local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v1, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    const-class v2, Lorg/reflections/scanners/MethodAnnotationsScanner;

    invoke-static {v2}, Lorg/reflections/Reflections;->index(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/reflections/Store;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    .line 481
    .local v0, "methods":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/reflections/Reflections;->loaders()[Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/reflections/util/Utils;->getConstructorsFromDescriptors(Ljava/lang/Iterable;[Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public getConstructorsAnnotatedWith(Ljava/lang/annotation/Annotation;)Ljava/util/Set;
    .locals 4
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 489
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/reflections/Reflections;->getConstructorsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/common/base/Predicate;

    const/4 v2, 0x0

    invoke-static {p1}, Lorg/reflections/ReflectionUtils;->withAnnotation(Ljava/lang/annotation/Annotation;)Lcom/google/common/base/Predicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/reflections/ReflectionUtils;->filter(Ljava/lang/Iterable;[Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public varargs getConstructorsMatchParams([Ljava/lang/Class;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 494
    .local p1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    const-class v1, Lorg/reflections/scanners/MethodParameterScanner;

    invoke-static {v1}, Lorg/reflections/Reflections;->index(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Lorg/reflections/util/Utils;->names([Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/reflections/Store;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-direct {p0}, Lorg/reflections/Reflections;->loaders()[Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/reflections/util/Utils;->getConstructorsFromDescriptors(Ljava/lang/Iterable;[Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getConstructorsWithAnyParamAnnotated(Ljava/lang/Class;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    .local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    const-class v1, Lorg/reflections/scanners/MethodParameterScanner;

    invoke-static {v1}, Lorg/reflections/Reflections;->index(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/reflections/Store;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-direct {p0}, Lorg/reflections/Reflections;->loaders()[Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/reflections/util/Utils;->getConstructorsFromDescriptors(Ljava/lang/Iterable;[Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getConstructorsWithAnyParamAnnotated(Ljava/lang/annotation/Annotation;)Ljava/util/Set;
    .locals 4
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 504
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/reflections/Reflections;->getConstructorsWithAnyParamAnnotated(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/common/base/Predicate;

    const/4 v2, 0x0

    invoke-static {p1}, Lorg/reflections/ReflectionUtils;->withAnyParameterAnnotation(Ljava/lang/annotation/Annotation;)Lcom/google/common/base/Predicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/reflections/ReflectionUtils;->filter(Ljava/lang/Iterable;[Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFieldUsage(Ljava/lang/reflect/Field;)Ljava/util/Set;
    .locals 5
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Member;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 567
    iget-object v0, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    const-class v1, Lorg/reflections/scanners/MemberUsageScanner;

    invoke-static {v1}, Lorg/reflections/Reflections;->index(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Lorg/reflections/util/Utils;->name(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/reflections/Store;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lorg/reflections/util/Utils;->getMembersFromDescriptors(Ljava/lang/Iterable;[Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFieldsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    .local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 513
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    iget-object v2, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    const-class v3, Lorg/reflections/scanners/FieldAnnotationsScanner;

    invoke-static {v3}, Lorg/reflections/Reflections;->index(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/reflections/Store;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 514
    .local v0, "annotated":Ljava/lang/String;
    invoke-direct {p0}, Lorg/reflections/Reflections;->loaders()[Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/reflections/util/Utils;->getFieldFromString(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 516
    .end local v0    # "annotated":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getFieldsAnnotatedWith(Ljava/lang/annotation/Annotation;)Ljava/util/Set;
    .locals 4
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/reflections/Reflections;->getFieldsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/common/base/Predicate;

    const/4 v2, 0x0

    invoke-static {p1}, Lorg/reflections/ReflectionUtils;->withAnnotation(Ljava/lang/annotation/Annotation;)Lcom/google/common/base/Predicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/reflections/ReflectionUtils;->filter(Ljava/lang/Iterable;[Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMethodParamNames(Ljava/lang/reflect/Method;)Ljava/util/List;
    .locals 6
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 551
    iget-object v1, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    const-class v2, Lorg/reflections/scanners/MethodParameterNamesScanner;

    invoke-static {v2}, Lorg/reflections/Reflections;->index(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Lorg/reflections/util/Utils;->name(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lorg/reflections/Store;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    .line 552
    .local v0, "names":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/google/common/collect/Iterables;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-array v1, v5, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getMethodUsage(Ljava/lang/reflect/Method;)Ljava/util/Set;
    .locals 5
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Member;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 574
    iget-object v0, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    const-class v1, Lorg/reflections/scanners/MemberUsageScanner;

    invoke-static {v1}, Lorg/reflections/Reflections;->index(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Lorg/reflections/util/Utils;->name(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/reflections/Store;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lorg/reflections/util/Utils;->getMembersFromDescriptors(Ljava/lang/Iterable;[Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMethodsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 442
    .local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v1, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    const-class v2, Lorg/reflections/scanners/MethodAnnotationsScanner;

    invoke-static {v2}, Lorg/reflections/Reflections;->index(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/reflections/Store;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    .line 443
    .local v0, "methods":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/reflections/Reflections;->loaders()[Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/reflections/util/Utils;->getMethodsFromDescriptors(Ljava/lang/Iterable;[Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public getMethodsAnnotatedWith(Ljava/lang/annotation/Annotation;)Ljava/util/Set;
    .locals 4
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/reflections/Reflections;->getMethodsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/common/base/Predicate;

    const/4 v2, 0x0

    invoke-static {p1}, Lorg/reflections/ReflectionUtils;->withAnnotation(Ljava/lang/annotation/Annotation;)Lcom/google/common/base/Predicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/reflections/ReflectionUtils;->filter(Ljava/lang/Iterable;[Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public varargs getMethodsMatchParams([Ljava/lang/Class;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    .local p1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    const-class v1, Lorg/reflections/scanners/MethodParameterScanner;

    invoke-static {v1}, Lorg/reflections/Reflections;->index(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Lorg/reflections/util/Utils;->names([Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/reflections/Store;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-direct {p0}, Lorg/reflections/Reflections;->loaders()[Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/reflections/util/Utils;->getMethodsFromDescriptors(Ljava/lang/Iterable;[Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMethodsReturn(Ljava/lang/Class;)Ljava/util/Set;
    .locals 4
    .param p1, "returnType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    const-class v1, Lorg/reflections/scanners/MethodParameterScanner;

    invoke-static {v1}, Lorg/reflections/Reflections;->index(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Lorg/reflections/util/Utils;->names([Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/reflections/Store;->get(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-direct {p0}, Lorg/reflections/Reflections;->loaders()[Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/reflections/util/Utils;->getMethodsFromDescriptors(Ljava/lang/Iterable;[Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMethodsWithAnyParamAnnotated(Ljava/lang/Class;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    .local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    const-class v1, Lorg/reflections/scanners/MethodParameterScanner;

    invoke-static {v1}, Lorg/reflections/Reflections;->index(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/reflections/Store;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-direct {p0}, Lorg/reflections/Reflections;->loaders()[Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/reflections/util/Utils;->getMethodsFromDescriptors(Ljava/lang/Iterable;[Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMethodsWithAnyParamAnnotated(Ljava/lang/annotation/Annotation;)Ljava/util/Set;
    .locals 4
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/reflections/Reflections;->getMethodsWithAnyParamAnnotated(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/common/base/Predicate;

    const/4 v2, 0x0

    invoke-static {p1}, Lorg/reflections/ReflectionUtils;->withAnyParameterAnnotation(Ljava/lang/annotation/Annotation;)Lcom/google/common/base/Predicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/reflections/ReflectionUtils;->filter(Ljava/lang/Iterable;[Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getResources(Lcom/google/common/base/Predicate;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 531
    .local p1, "namePredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    const-class v2, Lorg/reflections/scanners/ResourcesScanner;

    invoke-static {v2}, Lorg/reflections/Reflections;->index(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/reflections/Store;->get(Ljava/lang/String;)Lcom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    .line 532
    .local v0, "resources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    const-class v2, Lorg/reflections/scanners/ResourcesScanner;

    invoke-static {v2}, Lorg/reflections/Reflections;->index(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/reflections/Store;->get(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v1

    return-object v1
.end method

.method public getResources(Ljava/util/regex/Pattern;)Ljava/util/Set;
    .locals 1
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 540
    new-instance v0, Lorg/reflections/Reflections$3;

    invoke-direct {v0, p0, p1}, Lorg/reflections/Reflections$3;-><init>(Lorg/reflections/Reflections;Ljava/util/regex/Pattern;)V

    invoke-virtual {p0, v0}, Lorg/reflections/Reflections;->getResources(Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getStore()Lorg/reflections/Store;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    return-object v0
.end method

.method public getSubTypesOf(Ljava/lang/Class;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    const-class v1, Lorg/reflections/scanners/SubTypesScanner;

    .line 368
    invoke-static {v1}, Lorg/reflections/Reflections;->index(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/reflections/Store;->getAll(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-direct {p0}, Lorg/reflections/Reflections;->loaders()[Ljava/lang/ClassLoader;

    move-result-object v1

    .line 367
    invoke-static {v0, v1}, Lorg/reflections/ReflectionUtils;->forNames(Ljava/lang/Iterable;[Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public getTypesAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/reflections/Reflections;->getTypesAnnotatedWith(Ljava/lang/Class;Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getTypesAnnotatedWith(Ljava/lang/Class;Z)Ljava/util/Set;
    .locals 7
    .param p2, "honorInherited"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;Z)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 393
    .local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v2, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    const-class v3, Lorg/reflections/scanners/TypeAnnotationsScanner;

    invoke-static {v3}, Lorg/reflections/Reflections;->index(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/reflections/Store;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    .line 394
    .local v0, "annotated":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    const-class v2, Ljava/lang/annotation/Inherited;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    invoke-virtual {p0, v0, v2, p2}, Lorg/reflections/Reflections;->getAllAnnotated(Ljava/lang/Iterable;ZZ)Ljava/lang/Iterable;

    move-result-object v1

    .line 395
    .local v1, "classes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/reflections/Reflections;->loaders()[Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/reflections/ReflectionUtils;->forNames(Ljava/lang/Iterable;[Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0}, Lorg/reflections/Reflections;->loaders()[Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/reflections/ReflectionUtils;->forNames(Ljava/lang/Iterable;[Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v2

    return-object v2
.end method

.method public getTypesAnnotatedWith(Ljava/lang/annotation/Annotation;)Ljava/util/Set;
    .locals 1
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 404
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/reflections/Reflections;->getTypesAnnotatedWith(Ljava/lang/annotation/Annotation;Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getTypesAnnotatedWith(Ljava/lang/annotation/Annotation;Z)Ljava/util/Set;
    .locals 9
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;
    .param p2, "honorInherited"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 413
    iget-object v3, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    const-class v4, Lorg/reflections/scanners/TypeAnnotationsScanner;

    invoke-static {v4}, Lorg/reflections/Reflections;->index(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lorg/reflections/Store;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    .line 414
    .local v0, "annotated":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/reflections/Reflections;->loaders()[Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/reflections/ReflectionUtils;->forNames(Ljava/lang/Iterable;[Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v3

    new-array v4, v8, [Lcom/google/common/base/Predicate;

    invoke-static {p1}, Lorg/reflections/ReflectionUtils;->withAnnotation(Ljava/lang/annotation/Annotation;)Lcom/google/common/base/Predicate;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lorg/reflections/ReflectionUtils;->filter(Ljava/lang/Iterable;[Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v2

    .line 415
    .local v2, "filter":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Class<*>;>;"
    invoke-static {v2}, Lorg/reflections/util/Utils;->names(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/annotation/Inherited;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    invoke-virtual {p0, v3, v4, p2}, Lorg/reflections/Reflections;->getAllAnnotated(Ljava/lang/Iterable;ZZ)Ljava/lang/Iterable;

    move-result-object v1

    .line 416
    .local v1, "classes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-array v3, v8, [Lcom/google/common/base/Predicate;

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v3}, Lorg/reflections/ReflectionUtils;->filter(Ljava/lang/Iterable;[Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0}, Lorg/reflections/Reflections;->loaders()[Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/reflections/ReflectionUtils;->forNames(Ljava/lang/Iterable;[Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v3

    return-object v3
.end method

.method public merge(Lorg/reflections/Reflections;)Lorg/reflections/Reflections;
    .locals 8
    .param p1, "reflections"    # Lorg/reflections/Reflections;

    .prologue
    .line 348
    iget-object v4, p1, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    if-eqz v4, :cond_2

    .line 349
    iget-object v4, p1, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    invoke-virtual {v4}, Lorg/reflections/Store;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 350
    .local v1, "indexName":Ljava/lang/String;
    iget-object v5, p1, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    invoke-virtual {v5, v1}, Lorg/reflections/Store;->get(Ljava/lang/String;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    .line 351
    .local v0, "index":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 352
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0, v2}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 353
    .local v3, "string":Ljava/lang/String;
    iget-object v7, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    invoke-virtual {v7, v1}, Lorg/reflections/Store;->getOrCreate(Ljava/lang/String;)Lcom/google/common/collect/Multimap;

    move-result-object v7

    invoke-interface {v7, v2, v3}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 358
    .end local v0    # "index":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "indexName":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "string":Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method public save(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 616
    iget-object v0, p0, Lorg/reflections/Reflections;->configuration:Lorg/reflections/Configuration;

    invoke-interface {v0}, Lorg/reflections/Configuration;->getSerializer()Lorg/reflections/serializers/Serializer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/reflections/Reflections;->save(Ljava/lang/String;Lorg/reflections/serializers/Serializer;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public save(Ljava/lang/String;Lorg/reflections/serializers/Serializer;)Ljava/io/File;
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "serializer"    # Lorg/reflections/serializers/Serializer;

    .prologue
    .line 625
    invoke-interface {p2, p0, p1}, Lorg/reflections/serializers/Serializer;->save(Lorg/reflections/Reflections;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 626
    .local v0, "file":Ljava/io/File;
    sget-object v1, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v1, :cond_0

    .line 627
    sget-object v1, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reflections successfully saved in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 628
    :cond_0
    return-object v0
.end method

.method protected scan()V
    .locals 21

    .prologue
    .line 180
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/reflections/Reflections;->configuration:Lorg/reflections/Configuration;

    invoke-interface {v13}, Lorg/reflections/Configuration;->getUrls()Ljava/util/Set;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/reflections/Reflections;->configuration:Lorg/reflections/Configuration;

    invoke-interface {v13}, Lorg/reflections/Configuration;->getUrls()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 181
    :cond_0
    sget-object v13, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v13, :cond_1

    sget-object v13, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    const-string v14, "given scan urls are empty. set urls in the configuration"

    invoke-interface {v13, v14}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 234
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    sget-object v13, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v13, :cond_3

    sget-object v13, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    invoke-interface {v13}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 186
    sget-object v13, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "going to scan these urls:\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-static {v15}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/reflections/Reflections;->configuration:Lorg/reflections/Configuration;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/reflections/Configuration;->getUrls()Ljava/util/Set;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 189
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 190
    .local v10, "time":J
    const/4 v8, 0x0

    .line 191
    .local v8, "scannedUrls":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/reflections/Reflections;->configuration:Lorg/reflections/Configuration;

    invoke-interface {v13}, Lorg/reflections/Configuration;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 192
    .local v3, "executorService":Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 194
    .local v5, "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<*>;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/reflections/Reflections;->configuration:Lorg/reflections/Configuration;

    invoke-interface {v13}, Lorg/reflections/Configuration;->getUrls()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/net/URL;

    .line 196
    .local v9, "url":Ljava/net/URL;
    if-eqz v3, :cond_5

    .line 197
    :try_start_0
    new-instance v14, Lorg/reflections/Reflections$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v9}, Lorg/reflections/Reflections$1;-><init>(Lorg/reflections/Reflections;Ljava/net/URL;)V

    invoke-interface {v3, v14}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 204
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/reflections/Reflections;->scan(Ljava/net/URL;)V
    :try_end_0
    .catch Lorg/reflections/ReflectionsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 207
    :catch_0
    move-exception v2

    .line 208
    .local v2, "e":Lorg/reflections/ReflectionsException;
    sget-object v14, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v14, :cond_4

    sget-object v14, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    invoke-interface {v14}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v14

    if-eqz v14, :cond_4

    sget-object v14, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    const-string v15, "could not create Vfs.Dir from url. ignoring the exception and continuing"

    invoke-interface {v14, v15, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 213
    .end local v2    # "e":Lorg/reflections/ReflectionsException;
    .end local v9    # "url":Ljava/net/URL;
    :cond_6
    if-eqz v3, :cond_7

    .line 214
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    .line 215
    .local v4, "future":Ljava/util/concurrent/Future;
    :try_start_1
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 219
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "future":Ljava/util/concurrent/Future;
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v10, v14, v10

    .line 221
    sget-object v13, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v13, :cond_1

    .line 222
    const/4 v7, 0x0

    .line 223
    .local v7, "keys":I
    const/4 v12, 0x0

    .line 224
    .local v12, "values":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    invoke-virtual {v13}, Lorg/reflections/Store;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 225
    .local v6, "index":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    invoke-virtual {v14, v6}, Lorg/reflections/Store;->get(Ljava/lang/String;)Lcom/google/common/collect/Multimap;

    move-result-object v14

    invoke-interface {v14}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v14

    add-int/2addr v7, v14

    .line 226
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    invoke-virtual {v14, v6}, Lorg/reflections/Store;->get(Ljava/lang/String;)Lcom/google/common/collect/Multimap;

    move-result-object v14

    invoke-interface {v14}, Lcom/google/common/collect/Multimap;->size()I

    move-result v14

    add-int/2addr v12, v14

    .line 227
    goto :goto_4

    .line 229
    .end local v6    # "index":Ljava/lang/String;
    :cond_8
    sget-object v14, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    const-string v15, "Reflections took %d ms to scan %d urls, producing %d keys and %d values %s"

    const/4 v13, 0x5

    new-array v0, v13, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v13, 0x0

    .line 230
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v16, v13

    const/4 v13, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v16, v13

    const/4 v13, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v16, v13

    const/4 v13, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v16, v13

    const/16 v17, 0x4

    if-eqz v3, :cond_9

    instance-of v13, v3, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v13, :cond_9

    const-string v13, "[using %d cores]"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 232
    .end local v3    # "executorService":Ljava/util/concurrent/ExecutorService;
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    :goto_5
    aput-object v13, v16, v17

    .line 229
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v14, v13}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    .restart local v3    # "executorService":Ljava/util/concurrent/ExecutorService;
    :cond_9
    const-string v13, ""

    goto :goto_5
.end method

.method protected scan(Ljava/net/URL;)V
    .locals 13
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 237
    invoke-static {p1}, Lorg/reflections/vfs/Vfs;->fromURL(Ljava/net/URL;)Lorg/reflections/vfs/Vfs$Dir;

    move-result-object v1

    .line 240
    .local v1, "dir":Lorg/reflections/vfs/Vfs$Dir;
    :try_start_0
    invoke-interface {v1}, Lorg/reflections/vfs/Vfs$Dir;->getFiles()Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/reflections/vfs/Vfs$File;

    .line 242
    .local v3, "file":Lorg/reflections/vfs/Vfs$File;
    iget-object v9, p0, Lorg/reflections/Reflections;->configuration:Lorg/reflections/Configuration;

    invoke-interface {v9}, Lorg/reflections/Configuration;->getInputsFilter()Lcom/google/common/base/Predicate;

    move-result-object v5

    .line 243
    .local v5, "inputsFilter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    invoke-interface {v3}, Lorg/reflections/vfs/Vfs$File;->getRelativePath()Ljava/lang/String;

    move-result-object v6

    .line 244
    .local v6, "path":Ljava/lang/String;
    const/16 v9, 0x2f

    const/16 v10, 0x2e

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, "fqn":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-interface {v5, v6}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-interface {v5, v4}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 246
    :cond_1
    const/4 v0, 0x0

    .line 247
    .local v0, "classObject":Ljava/lang/Object;
    iget-object v9, p0, Lorg/reflections/Reflections;->configuration:Lorg/reflections/Configuration;

    invoke-interface {v9}, Lorg/reflections/Configuration;->getScanners()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v0    # "classObject":Ljava/lang/Object;
    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/reflections/scanners/Scanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    .local v7, "scanner":Lorg/reflections/scanners/Scanner;
    :try_start_1
    invoke-interface {v7, v6}, Lorg/reflections/scanners/Scanner;->acceptsInput(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-interface {v7, v4}, Lorg/reflections/scanners/Scanner;->acceptResult(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 250
    :cond_3
    invoke-interface {v7, v3, v0}, Lorg/reflections/scanners/Scanner;->scan(Lorg/reflections/vfs/Vfs$File;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .restart local v0    # "classObject":Ljava/lang/Object;
    goto :goto_0

    .line 252
    .end local v0    # "classObject":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 253
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v10, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v10, :cond_2

    sget-object v10, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    invoke-interface {v10}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 254
    sget-object v10, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "could not scan file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v3}, Lorg/reflections/vfs/Vfs$File;->getRelativePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in url "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " with scanner "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 260
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Lorg/reflections/vfs/Vfs$File;
    .end local v4    # "fqn":Ljava/lang/String;
    .end local v5    # "inputsFilter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "scanner":Lorg/reflections/scanners/Scanner;
    :catchall_0
    move-exception v8

    invoke-interface {v1}, Lorg/reflections/vfs/Vfs$Dir;->close()V

    throw v8

    :cond_4
    invoke-interface {v1}, Lorg/reflections/vfs/Vfs$Dir;->close()V

    .line 262
    return-void
.end method
