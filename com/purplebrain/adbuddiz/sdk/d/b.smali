.class public final Lcom/purplebrain/adbuddiz/sdk/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/purplebrain/adbuddiz/sdk/d/a;


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/d/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/d/b;->b:Lcom/purplebrain/adbuddiz/sdk/d/a;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/d/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/b;->b:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Lcom/purplebrain/adbuddiz/sdk/d/a;)Landroid/view/OrientationEventListener;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/b;->b:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Lcom/purplebrain/adbuddiz/sdk/d/a;)Landroid/view/OrientationEventListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/b;->b:Lcom/purplebrain/adbuddiz/sdk/d/a;

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/d/h;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/d/b;->b:Lcom/purplebrain/adbuddiz/sdk/d/a;

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/d/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/d/h;-><init>(Lcom/purplebrain/adbuddiz/sdk/d/a;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Lcom/purplebrain/adbuddiz/sdk/d/a;Landroid/view/OrientationEventListener;)Landroid/view/OrientationEventListener;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/b;->b:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Lcom/purplebrain/adbuddiz/sdk/d/a;)Landroid/view/OrientationEventListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABAdManager.registerOrientationEventListener"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/h/p;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/e/a/a;Ljava/lang/Throwable;)V

    const-string v1, "ABAdManager.registerOrientationEventListener() Exception : "

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
