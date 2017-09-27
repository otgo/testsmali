.class final Lcom/purplebrain/adbuddiz/sdk/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/purplebrain/adbuddiz/sdk/d/p;


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/d/a;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/d/f;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/f;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->g(Lcom/purplebrain/adbuddiz/sdk/d/a;)Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABAdManager.onNextAdModificationListener onResourceChanged()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
