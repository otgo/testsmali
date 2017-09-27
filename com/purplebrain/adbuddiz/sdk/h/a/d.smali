.class public final Lcom/purplebrain/adbuddiz/sdk/h/a/d;
.super Ljava/lang/Object;


# direct methods
.method public static a()Lcom/purplebrain/adbuddiz/sdk/e/f;
    .locals 4

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "window"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_0

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/f;->a:Lcom/purplebrain/adbuddiz/sdk/e/f;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-le v2, v0, :cond_1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/f;->b:Lcom/purplebrain/adbuddiz/sdk/e/f;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/f;->a:Lcom/purplebrain/adbuddiz/sdk/e/f;

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/f;->b:Lcom/purplebrain/adbuddiz/sdk/e/f;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/f;->a:Lcom/purplebrain/adbuddiz/sdk/e/f;

    goto :goto_0
.end method
