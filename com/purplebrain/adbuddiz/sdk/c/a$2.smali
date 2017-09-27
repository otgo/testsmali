.class final Lcom/purplebrain/adbuddiz/sdk/c/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/purplebrain/adbuddiz/sdk/c/a;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/c/a;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/c/a$2;->c:Lcom/purplebrain/adbuddiz/sdk/c/a;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/c/a$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/c/a$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "showAd called right after cacheAds(), waiting for SDK startup."

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/c/a$2;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/c/a$2;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/purplebrain/adbuddiz/sdk/c/a;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    move-result-object v2

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/c/a$2;->c:Lcom/purplebrain/adbuddiz/sdk/c/a;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/c/a$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/c/a$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/c/a;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-void

    :cond_1
    const-wide/16 v2, 0x64

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AdBuddiz._dispatchShowAdDelayed"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    const-string v1, "AdBuddiz.showAd() saveView Exception : "

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
