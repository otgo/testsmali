.class final Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/purplebrain/adbuddiz/sdk/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$2;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/b;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$2;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V
    .locals 2

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/h/c;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/h/c;-><init>()V

    iput-object p1, v0, Lcom/purplebrain/adbuddiz/sdk/h/c;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$2;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->c(Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/h/c;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/h/c;->f()V

    iget-boolean v0, p1, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/i/i$4;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/i/i$4;-><init>()V

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/i;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
