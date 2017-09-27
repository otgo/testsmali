.class final Lcom/purplebrain/adbuddiz/sdk/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/purplebrain/adbuddiz/sdk/a/l;


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/e;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->b(Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;)Z

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/g/d;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/g/d;-><init>()V

    iput-object p1, v0, Lcom/purplebrain/adbuddiz/sdk/g/d;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    iput-object p2, v0, Lcom/purplebrain/adbuddiz/sdk/g/d;->d:Ljava/lang/String;

    iput-boolean p3, v0, Lcom/purplebrain/adbuddiz/sdk/g/d;->e:Z

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/g/d;->e()V

    :cond_0
    return-void
.end method
