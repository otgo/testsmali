.class final Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/purplebrain/adbuddiz/sdk/a/c$b;


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

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$4;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/b;->A:Ljava/util/List;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->INVALID_AD:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/f/d;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/d$a;->b:Lcom/purplebrain/adbuddiz/sdk/f/d$a;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$4;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->c(Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/f/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/d$a;Ljava/lang/String;)V

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/h/g;

    invoke-direct {v1}, Lcom/purplebrain/adbuddiz/sdk/h/g;-><init>()V

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$4;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->d(Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;)Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    move-result-object v2

    iput-object v2, v1, Lcom/purplebrain/adbuddiz/sdk/h/g;->g:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->INVALID_AD:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    invoke-virtual {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/h/g;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;)V

    invoke-virtual {v1, p1}, Lcom/purplebrain/adbuddiz/sdk/h/g;->a(Ljava/lang/Throwable;)V

    iput-object v0, v1, Lcom/purplebrain/adbuddiz/sdk/h/g;->i:Lcom/purplebrain/adbuddiz/sdk/f/d;

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/h/g;->f()V

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$4;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->d(Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;)Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$4;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/r;->a()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity$4;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->finish()V

    return-void

    :cond_2
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/r;->b()V

    goto :goto_0
.end method
