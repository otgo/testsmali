.class final Lcom/purplebrain/adbuddiz/sdk/c/a$3;
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
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

.field final synthetic b:Lcom/purplebrain/adbuddiz/sdk/c/a;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/c/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/c/a$3;->b:Lcom/purplebrain/adbuddiz/sdk/c/a;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/c/a$3;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/c/a$3;->b:Lcom/purplebrain/adbuddiz/sdk/c/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Lcom/purplebrain/adbuddiz/sdk/c/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/c/a$3;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdBuddiz.showAd() saveView Exception : "

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
