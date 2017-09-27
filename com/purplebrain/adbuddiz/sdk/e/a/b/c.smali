.class public abstract Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;

.field private b:Ljava/lang/Boolean;

.field private c:Lcom/purplebrain/adbuddiz/sdk/h/e$a;

.field private d:Lcom/purplebrain/adbuddiz/sdk/h/b$a;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;->b:Ljava/lang/Boolean;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$1;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$1;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;->c:Lcom/purplebrain/adbuddiz/sdk/h/e$a;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$2;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$2;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;->d:Lcom/purplebrain/adbuddiz/sdk/h/b$a;

    return-void
.end method

.method protected constructor <init>(B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;->b:Ljava/lang/Boolean;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$1;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$1;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;->c:Lcom/purplebrain/adbuddiz/sdk/h/e$a;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$2;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$2;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;->d:Lcom/purplebrain/adbuddiz/sdk/h/b$a;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public static c(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/lang/String;

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

.method protected static d(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V
    .locals 3

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/b/c$a;

    return-void
.end method

.method public abstract a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V
.end method

.method public abstract a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V
.end method

.method public abstract a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/util/Collection;)V
.end method

.method public abstract a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/e;)Z
.end method

.method public b(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;->c(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/purplebrain/adbuddiz/sdk/i/m;->b(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)V

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/h/e;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/h/e;-><init>()V

    iput-object p1, v0, Lcom/purplebrain/adbuddiz/sdk/h/e;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/purplebrain/adbuddiz/sdk/h/b;->c:Z

    :cond_1
    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;->c:Lcom/purplebrain/adbuddiz/sdk/h/e$a;

    iput-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/h/e;->f:Lcom/purplebrain/adbuddiz/sdk/h/e$a;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/b/c;->d:Lcom/purplebrain/adbuddiz/sdk/h/b$a;

    invoke-virtual {v0, v2}, Lcom/purplebrain/adbuddiz/sdk/h/e;->a(Lcom/purplebrain/adbuddiz/sdk/h/b$a;)V

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/h/e;->f()V

    move v0, v1

    goto :goto_0

    :cond_2
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_0
.end method
