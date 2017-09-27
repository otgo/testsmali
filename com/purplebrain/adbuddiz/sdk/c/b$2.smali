.class final Lcom/purplebrain/adbuddiz/sdk/c/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/purplebrain/adbuddiz/sdk/c/b;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/c/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/c/b$2;->b:Lcom/purplebrain/adbuddiz/sdk/c/b;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/c/b$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "show() called right after fetch(), waiting for SDK startup."

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
    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/c/b$2;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/c/b;->d(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    move-result-object v2

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/c/b$2;->b:Lcom/purplebrain/adbuddiz/sdk/c/b;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/c/b$2;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/c/b;->c(Landroid/content/Context;)V
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

    const-string v1, "AdBuddiz._dispatchShowDelayed"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    const-string v1, "AdBuddiz.RewardedVideo._dispatchShowDelayed() Exception: "

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
