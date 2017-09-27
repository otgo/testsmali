.class final Lcom/purplebrain/adbuddiz/sdk/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/purplebrain/adbuddiz/sdk/a/j;


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/h;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->x:Ljava/util/List;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->INVALID_AD:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/d;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/e/e;->a:Lcom/purplebrain/adbuddiz/sdk/e/e;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->c(Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/e/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/e;Ljava/lang/String;)V

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/g/g;

    invoke-direct {v1}, Lcom/purplebrain/adbuddiz/sdk/g/g;-><init>()V

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/h;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->d(Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;)Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    move-result-object v2

    iput-object v2, v1, Lcom/purplebrain/adbuddiz/sdk/g/g;->d:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->INVALID_AD:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    iput-object v2, v1, Lcom/purplebrain/adbuddiz/sdk/g/g;->c:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    invoke-virtual {v1, p1}, Lcom/purplebrain/adbuddiz/sdk/g/g;->a(Ljava/lang/Throwable;)V

    iput-object v0, v1, Lcom/purplebrain/adbuddiz/sdk/g/g;->f:Lcom/purplebrain/adbuddiz/sdk/e/d;

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/g/g;->e()V

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->finish()V

    return-void
.end method
