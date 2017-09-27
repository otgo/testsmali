.class public final Lcom/purplebrain/adbuddiz/sdk/a/a;
.super Lcom/purplebrain/adbuddiz/sdk/a/c;


# instance fields
.field protected a:Lcom/purplebrain/adbuddiz/sdk/i/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/a/c;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/i/v;

    return-void
.end method

.method private c()Landroid/graphics/Bitmap;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/a;->l()Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/a;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    sget-object v3, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    invoke-static {v0, v3, v2}, Lcom/purplebrain/adbuddiz/sdk/i/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;Lcom/purplebrain/adbuddiz/sdk/f/e;)Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "No matching creative available for \'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/purplebrain/adbuddiz/sdk/f/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' orientation."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Please check that your app has the following orientation on the AdBuddiz publisher portal: \'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/purplebrain/adbuddiz/sdk/f/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' or \'Both\'."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/a;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    sget-object v3, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/f/e;->b(Lcom/purplebrain/adbuddiz/sdk/f/e;)Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/purplebrain/adbuddiz/sdk/i/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;Lcom/purplebrain/adbuddiz/sdk/f/e;)Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    move-result-object v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/a;->d:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/e/c;->a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    if-nez v0, :cond_1

    const-string v1, "ABAdBuddizAdDisplayer.getBitmap() : Decode returned null."

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/i/o;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/a;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/a;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-static {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/b/f;->a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/a;->n:Lcom/purplebrain/adbuddiz/sdk/a/c$b;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Bitmap returned null."

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/a/c$b;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_2
    :try_start_3
    const-string v3, "ABAdBuddizAdDisplayer.getBitmap() : Cannot decode bitmap."

    invoke-static {v3, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/a;->d:Landroid/app/Activity;

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/a/a;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-static {v3, v4}, Lcom/purplebrain/adbuddiz/sdk/i/b/f;->a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/a;->n:Lcom/purplebrain/adbuddiz/sdk/a/c$b;

    invoke-interface {v3, v0}, Lcom/purplebrain/adbuddiz/sdk/a/c$b;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    throw v0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/purplebrain/adbuddiz/sdk/a/c;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/a;->k:Lcom/purplebrain/adbuddiz/sdk/a/c$d;

    const/4 v2, 0x1

    invoke-interface {v1, p3, p4, v2}, Lcom/purplebrain/adbuddiz/sdk/a/c$d;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected final a()V
    .locals 2

    invoke-super {p0}, Lcom/purplebrain/adbuddiz/sdk/a/c;->a()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/i/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/a;->a:Lcom/purplebrain/adbuddiz/sdk/i/v;

    iget-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/i/v;->c:Lcom/purplebrain/adbuddiz/sdk/i/v$a;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/i/v;->c:Lcom/purplebrain/adbuddiz/sdk/i/v$a;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/v$a;->a()V

    :cond_0
    return-void
.end method

.method protected final b()Landroid/view/View;
    .locals 4

    const/4 v3, -0x2

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/a/a;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/a;->d:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/a/a$1;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/a/a$1;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/a;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object v1
.end method
