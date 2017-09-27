.class public Lcom/purplebrain/adbuddiz/sdk/h/t;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/purplebrain/adbuddiz/sdk/h/t;


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/h/t;->e:Lcom/purplebrain/adbuddiz/sdk/h/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/t;->a:Ljava/lang/Long;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/t;->b:Ljava/lang/Long;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/t;->c:Ljava/lang/Long;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/t;->d:Ljava/lang/Long;

    return-void
.end method

.method public static a()Lcom/purplebrain/adbuddiz/sdk/h/t;
    .locals 2

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/t;->e:Lcom/purplebrain/adbuddiz/sdk/h/t;

    if-nez v0, :cond_1

    const-class v1, Lcom/purplebrain/adbuddiz/sdk/h/t;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/t;->e:Lcom/purplebrain/adbuddiz/sdk/h/t;

    if-nez v0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/h/t;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/h/t;-><init>()V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/h/t;->e:Lcom/purplebrain/adbuddiz/sdk/h/t;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/h/t;->e:Lcom/purplebrain/adbuddiz/sdk/h/t;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b()J
    .locals 2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    iget-wide v0, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->o:J

    return-wide v0
.end method

.method public static c()J
    .locals 2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->o:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1f4

    goto :goto_0
.end method

.method public static d()J
    .locals 2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->p:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0xea60

    goto :goto_0
.end method

.method public static e()J
    .locals 2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->q:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0xea60

    goto :goto_0
.end method
