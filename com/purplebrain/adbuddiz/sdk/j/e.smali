.class public final Lcom/purplebrain/adbuddiz/sdk/j/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;Landroid/media/MediaPlayer;Lcom/purplebrain/adbuddiz/sdk/j/a/a;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p2, Lcom/purplebrain/adbuddiz/sdk/j/a/a;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v0, "e"

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p2, Lcom/purplebrain/adbuddiz/sdk/j/a/a;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, p0, v0}, Lcom/purplebrain/adbuddiz/sdk/j/e;->a(Ljava/lang/String;Ljava/util/List;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;Ljava/lang/Integer;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;Landroid/media/MediaPlayer;Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;->w:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p0, p2}, Lcom/purplebrain/adbuddiz/sdk/j/d/a;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;)Ljava/util/List;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Event-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, p0, v0}, Lcom/purplebrain/adbuddiz/sdk/j/e;->a(Ljava/lang/String;Ljava/util/List;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;Ljava/lang/Integer;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;Ljava/lang/Integer;)V
    .locals 12

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    new-instance v2, Ljava/net/URL;

    if-eqz p2, :cond_0

    const-string v3, "[ASSETURI]"

    const-string v4, "u"

    invoke-virtual {p2, v4}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p3, :cond_1

    const-string v3, "[CONTENTPLAYHEAD]"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x36ee80

    div-int/2addr v4, v5

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const v6, 0xea60

    div-int/2addr v5, v6

    rem-int/lit8 v5, v5, 0x3c

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    rem-int/lit8 v6, v6, 0x3c

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    rem-int/lit8 v7, v7, 0x64

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%02d:%02d:%02d.%03d"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v11

    const/4 v4, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v4

    const/4 v4, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v4

    const/4 v4, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v4

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v3, "[CACHEBUSTING]"

    new-instance v4, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%08d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/j/c/a;

    invoke-direct {v0, p0, v2}, Lcom/purplebrain/adbuddiz/sdk/j/c/a;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/j/c/a;->f()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_2
    return-void
.end method
