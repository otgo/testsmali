.class public final Lcom/purplebrain/adbuddiz/sdk/i/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/purplebrain/adbuddiz/sdk/i/c;

.field private b:Lcom/purplebrain/adbuddiz/sdk/e/a/i;

.field private c:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Boolean;

.field private i:Lcom/purplebrain/adbuddiz/sdk/a/l;


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/e/a/i;Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Ljava/lang/String;Ljava/lang/Integer;Lcom/purplebrain/adbuddiz/sdk/a/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->a:Lcom/purplebrain/adbuddiz/sdk/i/c;

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->e:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->i:Lcom/purplebrain/adbuddiz/sdk/a/l;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;)V
    .locals 2

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/i/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/i/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;->w:Ljava/lang/String;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/i/b;->d()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Z
    .locals 3

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "impression"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->g:Ljava/lang/Boolean;

    :cond_0
    const-string v0, "skipoffset"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->e:Ljava/lang/Integer;

    invoke-static {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/h;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/i;Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->h:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    :try_start_0
    const-string v2, "skipoffset"

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->e:Ljava/lang/Integer;

    invoke-static {v2, v3, v4}, Lcom/purplebrain/adbuddiz/sdk/i/h;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/i;Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->h:Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/i/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/i/d/a;->c(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/i/a;->a(Ljava/lang/String;J)J

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->h:Ljava/lang/Boolean;
    :try_end_1
    .catch Lcom/purplebrain/adbuddiz/sdk/i/a/b; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->h:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public final c()J
    .locals 4

    const-string v0, "skipoffset"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->e:Ljava/lang/Integer;

    invoke-static {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/h;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/i;Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/i/d/a;->c(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/i/a;->a(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/i/a/b; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    int-to-long v0, v0

    sub-long v0, v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ABVASTImpressionHelper.getTimeBeforeSendingImpression()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->i:Lcom/purplebrain/adbuddiz/sdk/a/l;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/a/l;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Ljava/lang/String;Z)V

    return-void
.end method
