.class final Lcom/purplebrain/adbuddiz/sdk/a/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/purplebrain/adbuddiz/sdk/g/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/a/d;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/d$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/d;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/a/d;->a(Lcom/purplebrain/adbuddiz/sdk/a/d;)Lcom/purplebrain/adbuddiz/sdk/g/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/d;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/a/d;->a(Lcom/purplebrain/adbuddiz/sdk/a/d;)Lcom/purplebrain/adbuddiz/sdk/g/e;

    move-result-object v0

    iget-boolean v1, v0, Lcom/purplebrain/adbuddiz/sdk/g/e;->f:Z

    if-eqz v1, :cond_0

    iput-boolean v3, v0, Lcom/purplebrain/adbuddiz/sdk/g/e;->f:Z

    iget-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/g/e;->e:Lcom/purplebrain/adbuddiz/sdk/a/c$d;

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/g/e;->c:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/g/e;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v0, v3}, Lcom/purplebrain/adbuddiz/sdk/a/c$d;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/d;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/a/d;->a(Lcom/purplebrain/adbuddiz/sdk/a/d;)Lcom/purplebrain/adbuddiz/sdk/g/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/d;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/a/d;->a(Lcom/purplebrain/adbuddiz/sdk/a/d;)Lcom/purplebrain/adbuddiz/sdk/g/e;

    move-result-object v0

    iget-boolean v1, v0, Lcom/purplebrain/adbuddiz/sdk/g/e;->f:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/g/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Number of resource to load : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/g/e;->j:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/g/e;->a(ZJ)V

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/d;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/a/d;->b(Lcom/purplebrain/adbuddiz/sdk/a/d;)Lcom/purplebrain/adbuddiz/sdk/g/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/d;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/a/d;->b(Lcom/purplebrain/adbuddiz/sdk/a/d;)Lcom/purplebrain/adbuddiz/sdk/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/g/b;->b()V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/b;->w:Ljava/lang/Long;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/d;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/a/d;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Z)V

    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/d;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/a/d;->a(Lcom/purplebrain/adbuddiz/sdk/a/d;)Lcom/purplebrain/adbuddiz/sdk/g/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/d;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/a/d;->a(Lcom/purplebrain/adbuddiz/sdk/a/d;)Lcom/purplebrain/adbuddiz/sdk/g/e;

    move-result-object v0

    iget-boolean v1, v0, Lcom/purplebrain/adbuddiz/sdk/g/e;->f:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/g/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/g/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Number of resource available : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, v2, :cond_2

    new-array v1, v6, [Ljava/lang/Object;

    iget-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/g/e;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    iget-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/g/e;->i:J

    invoke-virtual {v0, v6, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/g/e;->a(ZJ)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/d;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/a/d;->b(Lcom/purplebrain/adbuddiz/sdk/a/d;)Lcom/purplebrain/adbuddiz/sdk/g/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d$1;->a:Lcom/purplebrain/adbuddiz/sdk/a/d;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/a/d;->b(Lcom/purplebrain/adbuddiz/sdk/a/d;)Lcom/purplebrain/adbuddiz/sdk/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/g/b;->b()V

    :cond_1
    return-void

    :cond_2
    new-array v1, v6, [Ljava/lang/Object;

    iget-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/g/e;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    iget-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/g/e;->j:J

    invoke-virtual {v0, v5, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/g/e;->a(ZJ)V

    goto :goto_0
.end method
