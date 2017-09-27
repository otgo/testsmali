.class public final Lcom/purplebrain/adbuddiz/sdk/g/b;
.super Landroid/os/CountDownTimer;


# instance fields
.field private a:Lcom/purplebrain/adbuddiz/sdk/d/a;

.field private b:Lcom/purplebrain/adbuddiz/sdk/f/b;

.field private c:Ljava/lang/Long;

.field private d:Ljava/lang/Long;


# direct methods
.method private constructor <init>(Lcom/purplebrain/adbuddiz/sdk/f/b;Lcom/purplebrain/adbuddiz/sdk/d/a;)V
    .locals 5

    const/4 v4, 0x0

    const-wide/32 v0, 0x7fffffff

    const-wide/16 v2, 0xfa

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    iput-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/g/b;->c:Ljava/lang/Long;

    iput-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/g/b;->d:Ljava/lang/Long;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/g/b;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/g/b;->b:Lcom/purplebrain/adbuddiz/sdk/f/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/b;->c:Ljava/lang/Long;

    return-void
.end method

.method public static a(Lcom/purplebrain/adbuddiz/sdk/d/a;)Lcom/purplebrain/adbuddiz/sdk/g/b;
    .locals 2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/g/b;

    invoke-direct {v1, v0, p0}, Lcom/purplebrain/adbuddiz/sdk/g/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/b;Lcom/purplebrain/adbuddiz/sdk/d/a;)V

    return-object v1
.end method


# virtual methods
.method public final a()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/b;->d:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/b;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/b;->b:Lcom/purplebrain/adbuddiz/sdk/f/b;

    iget-object v2, v2, Lcom/purplebrain/adbuddiz/sdk/f/b;->w:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/b;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/b;->d:Ljava/lang/Long;

    return-void
.end method

.method public final onFinish()V
    .locals 0

    return-void
.end method

.method public final onTick(J)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/g/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/b;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Z)V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/g/b;->cancel()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABMRAIDCloseTimer.onTick"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    const-string v1, "ABMRAIDCloseTimer.onTick()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
