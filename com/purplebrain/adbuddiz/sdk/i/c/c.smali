.class public final Lcom/purplebrain/adbuddiz/sdk/i/c/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/purplebrain/adbuddiz/sdk/i/c/c$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:I

.field public d:Lcom/purplebrain/adbuddiz/sdk/i/c/e;

.field public e:Lcom/purplebrain/adbuddiz/sdk/i/c/c$a;

.field public f:Lcom/purplebrain/adbuddiz/sdk/i/c/e$a;

.field private g:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/Boolean;

.field private k:Lcom/purplebrain/adbuddiz/sdk/a/c$d;


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/String;Ljava/lang/String;JILcom/purplebrain/adbuddiz/sdk/i/c/e;Lcom/purplebrain/adbuddiz/sdk/a/c$d;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->d:Lcom/purplebrain/adbuddiz/sdk/i/c/e;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->e:Lcom/purplebrain/adbuddiz/sdk/i/c/c$a;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/i/c/c$1;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/i/c/c$1;-><init>(Lcom/purplebrain/adbuddiz/sdk/i/c/c;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->f:Lcom/purplebrain/adbuddiz/sdk/i/c/e$a;

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->g:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->a:Ljava/lang/String;

    iput-wide p4, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->b:J

    iput p6, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->c:I

    iput-object p7, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->d:Lcom/purplebrain/adbuddiz/sdk/i/c/e;

    iput-object p8, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->k:Lcom/purplebrain/adbuddiz/sdk/a/c$d;

    return-void
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;)V
    .locals 2

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;->w:Ljava/lang/String;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->d()V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->i:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "impression"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->i:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 4

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->j:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->b:J

    invoke-static {v0, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/i/c/a;->a(Ljava/lang/String;J)Lcom/purplebrain/adbuddiz/sdk/i/c/a;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->j:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->k:Lcom/purplebrain/adbuddiz/sdk/a/c$d;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->g:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->h:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/a/c$d;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/String;Z)V

    return-void
.end method
