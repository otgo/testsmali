.class final Lcom/purplebrain/adbuddiz/sdk/e/a$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/purplebrain/adbuddiz/sdk/e/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/e/a;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$5;->a:Lcom/purplebrain/adbuddiz/sdk/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a$5;->a:Lcom/purplebrain/adbuddiz/sdk/e/a;

    iget-boolean v1, p1, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b:Z

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a(Lcom/purplebrain/adbuddiz/sdk/e/a;Z)Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;

    move-result-object v0

    iget-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    if-ne p1, v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABAdManager.onNextAdModificationListener onResourceChanged()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
