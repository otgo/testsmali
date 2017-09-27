.class public abstract Lcom/purplebrain/adbuddiz/sdk/h/a;
.super Lcom/purplebrain/adbuddiz/sdk/h/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/h/b;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/b;->c:Z

    return-void
.end method


# virtual methods
.method protected final a(Z)V
    .locals 1

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/w;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/w;->b()V

    iget v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/a;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/a;->a:I

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/h/a;->f()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/h/b;->a(Z)V

    goto :goto_0
.end method
