.class public final Lcom/purplebrain/adbuddiz/sdk/i/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

.field public b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/i/a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/i/a;->c:Landroid/content/Context;

    const-class v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "a"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/a;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-virtual {v2}, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/i/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "p"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "fs"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/a;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/i/j;->b(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "wt"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/a;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/i/j;->c(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "suf"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/a;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/i/j;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/i/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/i/j;->f(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "sbc"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/i/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/i/j;->g(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "snc"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_2
    return-object v0
.end method
