.class public final Lcom/purplebrain/adbuddiz/sdk/i/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CB"

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/i/e;->a:Ljava/lang/String;

    const-string v0, "iVBORw0KGgoAAAANSUhEUgAAADwAAAA9CAYAAADxoArXAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA2hpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDowMTgwMTE3NDA3MjA2ODExODIyQUZBQzcyRTg2MTRBQyIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDpGQTEzMjREQ0VGRTcxMUU0OTJCREQ5OTNDODE4MzIwNyIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDpGQTEzMjREQkVGRTcxMUU0OTJCREQ5OTNDODE4MzIwNyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M2IChNYWNpbnRvc2gpIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6Rjc3RjExNzQwNzIwNjgxMTgzRDFFREVDRTlCMUM2OTkiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MDE4MDExNzQwNzIwNjgxMTgyMkFGQUM3MkU4NjE0QUMiLz4gPC9yZGY6RGVzY3Jp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"

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/i/e;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Landroid/graphics/Bitmap;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/i/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/f;->a([C)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0x168

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/i/e;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/h/f;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/h/f;-><init>()V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/w;->h()Ljava/net/URL;

    move-result-object v1

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/h/f;->e:Ljava/net/URL;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/i/e;->a:Ljava/lang/String;

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

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/i/e;->a:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/i/e;->a:Ljava/lang/String;

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
