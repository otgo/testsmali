.class public final Lcom/purplebrain/adbuddiz/sdk/i/j;
.super Landroid/os/CountDownTimer;


# instance fields
.field public a:J

.field public b:J

.field private c:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

.field private d:Landroid/media/MediaPlayer;

.field private e:Lcom/purplebrain/adbuddiz/sdk/i/b;

.field private f:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Landroid/media/MediaPlayer;Ljava/lang/Integer;Lcom/purplebrain/adbuddiz/sdk/i/b;)V
    .locals 6

    const-wide/32 v0, 0x7fffffff

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/j;->f:Ljava/util/List;

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/i/j;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/i/j;->d:Landroid/media/MediaPlayer;

    iput-object p4, p0, Lcom/purplebrain/adbuddiz/sdk/i/j;->e:Lcom/purplebrain/adbuddiz/sdk/i/b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/j;->a:J

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/d/a;->c(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/j;->b:J

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;->c:Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    invoke-direct {p0, v0, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/i/j;->a(Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;D)V

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;->d:Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-direct {p0, v0, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/i/j;->a(Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;D)V

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;->e:Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-direct {p0, v0, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/i/j;->a(Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;D)V

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;->u:Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/d/a;->b(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/i;

    const-string v1, "offset"

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/i;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/i/l;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/purplebrain/adbuddiz/sdk/i/l;-><init>(Lcom/purplebrain/adbuddiz/sdk/i/j;B)V

    iget-wide v4, p0, Lcom/purplebrain/adbuddiz/sdk/i/j;->b:J

    invoke-static {v1, v4, v5}, Lcom/purplebrain/adbuddiz/sdk/i/a;->a(Ljava/lang/String;J)J

    move-result-wide v4

    long-to-int v1, v4

    iput v1, v3, Lcom/purplebrain/adbuddiz/sdk/i/l;->a:I

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;->u:Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;

    iput-object v1, v3, Lcom/purplebrain/adbuddiz/sdk/i/l;->b:Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/i/b/b/i;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v3, Lcom/purplebrain/adbuddiz/sdk/i/l;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/j;->f:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/j;->f:Ljava/util/List;

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/i/k;

    invoke-direct {v1, p0}, Lcom/purplebrain/adbuddiz/sdk/i/k;-><init>(Lcom/purplebrain/adbuddiz/sdk/i/j;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/j;->a:J

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/i/l;

    iget v0, v0, Lcom/purplebrain/adbuddiz/sdk/i/l;->a:I

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v0, v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private a(Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;D)V
    .locals 4

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/j;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    invoke-static {v0, p1}, Lcom/purplebrain/adbuddiz/sdk/i/d/a;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/i/l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/purplebrain/adbuddiz/sdk/i/l;-><init>(Lcom/purplebrain/adbuddiz/sdk/i/j;B)V

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/j;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/i/d/a;->c(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v2, p2

    double-to-int v2, v2

    iput v2, v1, Lcom/purplebrain/adbuddiz/sdk/i/l;->a:I

    iput-object p1, v1, Lcom/purplebrain/adbuddiz/sdk/i/l;->b:Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;

    iput-object v0, v1, Lcom/purplebrain/adbuddiz/sdk/i/l;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 0

    return-void
.end method

.method public final onTick(J)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/j;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/j;->a:J

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/i/l;

    iget v2, v0, Lcom/purplebrain/adbuddiz/sdk/i/l;->a:I

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/i/j;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    if-gt v2, v3, :cond_0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/purplebrain/adbuddiz/sdk/i/l;->b:Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;

    iget-object v4, v4, Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;->w:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/i/j;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/purplebrain/adbuddiz/sdk/i/j;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v2, "TimeEvent"

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/i/l;->c:Ljava/util/List;

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/i/j;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    iget-object v5, p0, Lcom/purplebrain/adbuddiz/sdk/i/j;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Ljava/lang/String;Ljava/util/List;Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/j;->e:Lcom/purplebrain/adbuddiz/sdk/i/b;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/i/l;->b:Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;

    invoke-virtual {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/b;->a(Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;)V

    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ABVASTTimeBasedTrackingEventHelper.onTick()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
