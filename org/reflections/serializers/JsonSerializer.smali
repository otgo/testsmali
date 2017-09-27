.class public Lorg/reflections/serializers/JsonSerializer;
.super Ljava/lang/Object;
.source "JsonSerializer.java"

# interfaces
.implements Lorg/reflections/serializers/Serializer;


# instance fields
.field private gson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getGson()Lcom/google/gson/Gson;
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lorg/reflections/serializers/JsonSerializer;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Lcom/google/common/collect/Multimap;

    new-instance v2, Lorg/reflections/serializers/JsonSerializer$2;

    invoke-direct {v2, p0}, Lorg/reflections/serializers/JsonSerializer$2;-><init>(Lorg/reflections/serializers/JsonSerializer;)V

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lcom/google/common/collect/Multimap;

    new-instance v2, Lorg/reflections/serializers/JsonSerializer$1;

    invoke-direct {v2, p0}, Lorg/reflections/serializers/JsonSerializer$1;-><init>(Lorg/reflections/serializers/JsonSerializer;)V

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lorg/reflections/serializers/JsonSerializer;->gson:Lcom/google/gson/Gson;

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/reflections/serializers/JsonSerializer;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)Lorg/reflections/Reflections;
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/reflections/serializers/JsonSerializer;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const-class v2, Lorg/reflections/Reflections;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reflections/Reflections;

    return-object v0
.end method

.method public save(Lorg/reflections/Reflections;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "reflections"    # Lorg/reflections/Reflections;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 38
    :try_start_0
    invoke-static {p2}, Lorg/reflections/util/Utils;->prepareFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 39
    .local v1, "file":Ljava/io/File;
    invoke-virtual {p0, p1}, Lorg/reflections/serializers/JsonSerializer;->toString(Lorg/reflections/Reflections;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/google/common/io/Files;->write(Ljava/lang/CharSequence;Ljava/io/File;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-object v1

    .line 41
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString(Lorg/reflections/Reflections;)Ljava/lang/String;
    .locals 1
    .param p1, "reflections"    # Lorg/reflections/Reflections;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/reflections/serializers/JsonSerializer;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
