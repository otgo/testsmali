.class final Lcom/purplebrain/adbuddiz/sdk/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/purplebrain/adbuddiz/sdk/a/i;


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/f;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V
    .locals 2

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/g/c;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/g/c;-><init>()V

    iput-object p1, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->c(Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/g/c;->e()V

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/h/k;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/h/k;-><init>()V

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/g;->a(Ljava/lang/Runnable;)V

    return-void
.end method
