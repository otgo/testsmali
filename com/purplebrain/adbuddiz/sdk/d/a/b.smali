.class public abstract Lcom/purplebrain/adbuddiz/sdk/d/a/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/purplebrain/adbuddiz/sdk/d/a/e;

.field private b:Lcom/purplebrain/adbuddiz/sdk/g/f;

.field private c:Lcom/purplebrain/adbuddiz/sdk/g/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/d/a/e;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/d/a/c;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/d/a/c;-><init>(Lcom/purplebrain/adbuddiz/sdk/d/a/b;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a/b;->b:Lcom/purplebrain/adbuddiz/sdk/g/f;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/d/a/d;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/d/a/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/d/a/b;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/a/b;->c:Lcom/purplebrain/adbuddiz/sdk/g/b;

    return-void
.end method

.method public static b(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/h/q;->b(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/d/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/d/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/d/a/e;

    return-void
.end method

.method public abstract a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)V
.end method

.method public abstract a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V
.end method

.method public abstract a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V
.end method

.method public abstract a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/f;)Z
.end method

.method public final c(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/d/a/b;->b(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/purplebrain/adbuddiz/sdk/h/q;->a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)V

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/g/e;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/g/e;-><init>()V

    iput-object p1, v0, Lcom/purplebrain/adbuddiz/sdk/g/e;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/d/a/b;->b:Lcom/purplebrain/adbuddiz/sdk/g/f;

    iput-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/g/e;->d:Lcom/purplebrain/adbuddiz/sdk/g/f;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/d/a/b;->c:Lcom/purplebrain/adbuddiz/sdk/g/b;

    invoke-virtual {v0, v2}, Lcom/purplebrain/adbuddiz/sdk/g/e;->a(Lcom/purplebrain/adbuddiz/sdk/g/b;)V

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/g/e;->e()V

    move v0, v1

    goto :goto_0

    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_0
.end method
