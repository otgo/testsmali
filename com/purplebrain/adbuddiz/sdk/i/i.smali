.class public final Lcom/purplebrain/adbuddiz/sdk/i/i;
.super Ljava/lang/Object;


# direct methods
.method public static a()V
    .locals 1

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/i/i$6;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/i/i$6;-><init>()V

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getDelegate()Lcom/purplebrain/adbuddiz/sdk/AdBuddizDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/i/i$1;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/i/i$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
