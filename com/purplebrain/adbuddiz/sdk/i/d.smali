.class public final Lcom/purplebrain/adbuddiz/sdk/i/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "BA"

    invoke-static {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/h/f;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/h/f;-><init>()V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/w;->i()Ljava/net/URL;

    move-result-object v1

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/h/f;->e:Ljava/net/URL;

    const-string v1, "BA"

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/h/f;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/h/f;->f()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "BA"

    invoke-static {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "BA"

    invoke-static {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/m;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v2, 0x168

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_1
.end method
