.class final Lcom/purplebrain/adbuddiz/sdk/i/v$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/i/v$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/purplebrain/adbuddiz/sdk/i/v$a;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/i/v$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/i/v$a$1;->b:Lcom/purplebrain/adbuddiz/sdk/i/v$a;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/i/v$a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/v$a$1;->b:Lcom/purplebrain/adbuddiz/sdk/i/v$a;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/i/v$a$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/v$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/i/v$a$1$1;

    invoke-direct {v2, p0, v0}, Lcom/purplebrain/adbuddiz/sdk/i/v$a$1$1;-><init>(Lcom/purplebrain/adbuddiz/sdk/i/v$a$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABTrackingLinkHelper#FollowTrackingLinkAsyncTask.execute"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
