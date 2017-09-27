.class public Lorg/reflections/serializers/XmlSerializer;
.super Ljava/lang/Object;
.source "XmlSerializer.java"

# interfaces
.implements Lorg/reflections/serializers/Serializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createDocument(Lorg/reflections/Reflections;)Lorg/dom4j/Document;
    .locals 13
    .param p1, "reflections"    # Lorg/reflections/Reflections;

    .prologue
    .line 103
    invoke-virtual {p1}, Lorg/reflections/Reflections;->getStore()Lorg/reflections/Store;

    move-result-object v5

    .line 105
    .local v5, "map":Lorg/reflections/Store;
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v9

    invoke-virtual {v9}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 106
    .local v0, "document":Lorg/dom4j/Document;
    const-string v9, "Reflections"

    invoke-interface {v0, v9}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 107
    .local v6, "root":Lorg/dom4j/Element;
    invoke-virtual {v5}, Lorg/reflections/Store;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 108
    .local v3, "indexName":Ljava/lang/String;
    invoke-interface {v6, v3}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 109
    .local v2, "indexElement":Lorg/dom4j/Element;
    invoke-virtual {v5, v3}, Lorg/reflections/Store;->get(Ljava/lang/String;)Lcom/google/common/collect/Multimap;

    move-result-object v10

    invoke-interface {v10}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 110
    .local v4, "key":Ljava/lang/String;
    const-string v11, "entry"

    invoke-interface {v2, v11}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 111
    .local v1, "entryElement":Lorg/dom4j/Element;
    const-string v11, "key"

    invoke-interface {v1, v11}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v11

    invoke-interface {v11, v4}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 112
    const-string v11, "values"

    invoke-interface {v1, v11}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v8

    .line 113
    .local v8, "valuesElement":Lorg/dom4j/Element;
    invoke-virtual {v5, v3}, Lorg/reflections/Store;->get(Ljava/lang/String;)Lcom/google/common/collect/Multimap;

    move-result-object v11

    invoke-interface {v11, v4}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 114
    .local v7, "value":Ljava/lang/String;
    const-string v12, "value"

    invoke-interface {v8, v12}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v12

    invoke-interface {v12, v7}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    .end local v1    # "entryElement":Lorg/dom4j/Element;
    .end local v2    # "indexElement":Lorg/dom4j/Element;
    .end local v3    # "indexName":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "valuesElement":Lorg/dom4j/Element;
    :cond_2
    return-object v0
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)Lorg/reflections/Reflections;
    .locals 19
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 40
    :try_start_0
    const-class v13, Lorg/reflections/Reflections;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 41
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lorg/reflections/Reflections;>;"
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 42
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v1, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/reflections/Reflections;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lorg/reflections/Reflections;>;"
    .local v10, "reflections":Lorg/reflections/Reflections;
    :goto_0
    :try_start_1
    new-instance v13, Lorg/dom4j/io/SAXReader;

    invoke-direct {v13}, Lorg/dom4j/io/SAXReader;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/InputStream;)Lorg/dom4j/Document;

    move-result-object v2

    .line 49
    .local v2, "document":Lorg/dom4j/Document;
    invoke-interface {v2}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v13

    invoke-interface {v13}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 50
    .local v4, "e1":Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, Lorg/dom4j/Element;

    move-object v7, v0

    .line 51
    .local v7, "index":Lorg/dom4j/Element;
    invoke-interface {v7}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 52
    .local v5, "e2":Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, Lorg/dom4j/Element;

    move-object v6, v0

    .line 53
    .local v6, "entry":Lorg/dom4j/Element;
    const-string v15, "key"

    invoke-interface {v6, v15}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v8

    .line 54
    .local v8, "key":Lorg/dom4j/Element;
    const-string v15, "values"

    invoke-interface {v6, v15}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v12

    .line 55
    .local v12, "values":Lorg/dom4j/Element;
    invoke-interface {v12}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 56
    .local v9, "o3":Ljava/lang/Object;
    move-object v0, v9

    check-cast v0, Lorg/dom4j/Element;

    move-object v11, v0

    .line 57
    .local v11, "value":Lorg/dom4j/Element;
    invoke-virtual {v10}, Lorg/reflections/Reflections;->getStore()Lorg/reflections/Store;

    move-result-object v16

    invoke-interface {v7}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lorg/reflections/Store;->getOrCreate(Ljava/lang/String;)Lcom/google/common/collect/Multimap;

    move-result-object v16

    invoke-interface {v8}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v11}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/dom4j/DocumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 61
    .end local v2    # "document":Lorg/dom4j/Document;
    .end local v4    # "e1":Ljava/lang/Object;
    .end local v5    # "e2":Ljava/lang/Object;
    .end local v6    # "entry":Lorg/dom4j/Element;
    .end local v7    # "index":Lorg/dom4j/Element;
    .end local v8    # "key":Lorg/dom4j/Element;
    .end local v9    # "o3":Ljava/lang/Object;
    .end local v11    # "value":Lorg/dom4j/Element;
    .end local v12    # "values":Lorg/dom4j/Element;
    :catch_0
    move-exception v3

    .line 62
    .local v3, "e":Lorg/dom4j/DocumentException;
    new-instance v13, Lorg/reflections/ReflectionsException;

    const-string v14, "could not read."

    invoke-direct {v13, v14, v3}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 43
    .end local v3    # "e":Lorg/dom4j/DocumentException;
    .end local v10    # "reflections":Lorg/reflections/Reflections;
    :catch_1
    move-exception v3

    .line 44
    .local v3, "e":Ljava/lang/Exception;
    new-instance v10, Lorg/reflections/Reflections;

    new-instance v13, Lorg/reflections/util/ConfigurationBuilder;

    invoke-direct {v13}, Lorg/reflections/util/ConfigurationBuilder;-><init>()V

    invoke-direct {v10, v13}, Lorg/reflections/Reflections;-><init>(Lorg/reflections/Configuration;)V

    .restart local v10    # "reflections":Lorg/reflections/Reflections;
    goto/16 :goto_0

    .line 63
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 64
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Could not read. Make sure relevant dependencies exist on classpath."

    invoke-direct {v13, v14, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 67
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v2    # "document":Lorg/dom4j/Document;
    :cond_2
    return-object v10
.end method

.method public save(Lorg/reflections/Reflections;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p1, "reflections"    # Lorg/reflections/Reflections;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p2}, Lorg/reflections/util/Utils;->prepareFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 75
    .local v2, "file":Ljava/io/File;
    :try_start_0
    invoke-direct {p0, p1}, Lorg/reflections/serializers/XmlSerializer;->createDocument(Lorg/reflections/Reflections;)Lorg/dom4j/Document;

    move-result-object v0

    .line 76
    .local v0, "document":Lorg/dom4j/Document;
    new-instance v3, Lorg/dom4j/io/XMLWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createPrettyPrint()Lorg/dom4j/io/OutputFormat;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/OutputStream;Lorg/dom4j/io/OutputFormat;)V

    .line 77
    .local v3, "xmlWriter":Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v3, v0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 78
    invoke-virtual {v3}, Lorg/dom4j/io/XMLWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    return-object v2

    .line 79
    .end local v0    # "document":Lorg/dom4j/Document;
    .end local v3    # "xmlWriter":Lorg/dom4j/io/XMLWriter;
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Lorg/reflections/ReflectionsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not save to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 81
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not save to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Make sure relevant dependencies exist on classpath."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public toString(Lorg/reflections/Reflections;)Ljava/lang/String;
    .locals 5
    .param p1, "reflections"    # Lorg/reflections/Reflections;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lorg/reflections/serializers/XmlSerializer;->createDocument(Lorg/reflections/Reflections;)Lorg/dom4j/Document;

    move-result-object v0

    .line 92
    .local v0, "document":Lorg/dom4j/Document;
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 93
    .local v2, "writer":Ljava/io/StringWriter;
    new-instance v3, Lorg/dom4j/io/XMLWriter;

    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createPrettyPrint()Lorg/dom4j/io/OutputFormat;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 94
    .local v3, "xmlWriter":Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v3, v0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 95
    invoke-virtual {v3}, Lorg/dom4j/io/XMLWriter;->close()V

    .line 96
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 97
    .end local v2    # "writer":Ljava/io/StringWriter;
    .end local v3    # "xmlWriter":Lorg/dom4j/io/XMLWriter;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4
.end method
