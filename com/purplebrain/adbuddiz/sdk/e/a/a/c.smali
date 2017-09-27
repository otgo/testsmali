.class public final Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;
.super Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;


# static fields
.field private static i:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    const/4 v1, 0x0

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;->NETWORK_TOO_SLOW:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;->UNSUPPORTED_DEVICE:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;->UNSUPPORTED_OS_VERSION:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;->i:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/e/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/c;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "next_incent"

    return-object v0
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/h/i;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a(Lcom/purplebrain/adbuddiz/sdk/h/i;)V

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/f/d;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/d$a;->d:Lcom/purplebrain/adbuddiz/sdk/f/d$a;

    invoke-direct {v0, v1, v3}, Lcom/purplebrain/adbuddiz/sdk/f/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/d$a;Ljava/lang/String;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a()Lcom/purplebrain/adbuddiz/sdk/c/b;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;->NO_MORE_AVAILABLE_ADS:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    invoke-static {v0, v1, v3, v2, v2}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/h/i;Lcom/purplebrain/adbuddiz/sdk/h/i$a;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->a(Lcom/purplebrain/adbuddiz/sdk/h/i;Lcom/purplebrain/adbuddiz/sdk/h/i$a;Ljava/lang/String;)V

    iget-object v2, p2, Lcom/purplebrain/adbuddiz/sdk/h/i$a;->f:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/f/d;

    sget-object v3, Lcom/purplebrain/adbuddiz/sdk/f/d$a;->d:Lcom/purplebrain/adbuddiz/sdk/f/d$a;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/purplebrain/adbuddiz/sdk/f/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/d$a;Ljava/lang/String;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a()Lcom/purplebrain/adbuddiz/sdk/c/b;

    invoke-static {v0, v2, p3, v1, v1}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;ZZ)V

    :cond_1
    return-void

    :cond_2
    sget-object v3, Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lcom/purplebrain/adbuddiz/sdk/i/p;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/p;->a(Z)Lcom/purplebrain/adbuddiz/sdk/i/p;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/purplebrain/adbuddiz/sdk/h/i;
    .locals 2

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/h/i;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/h/i;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/purplebrain/adbuddiz/sdk/h/i;->e:Z

    return-object v0
.end method

.method public final g()V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->g()V

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/f/d;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/d$a;->d:Lcom/purplebrain/adbuddiz/sdk/f/d$a;

    invoke-direct {v2, v1, v0}, Lcom/purplebrain/adbuddiz/sdk/f/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/d$a;Ljava/lang/String;)V

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;->NO_MORE_AVAILABLE_ADS:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->c:Lcom/purplebrain/adbuddiz/sdk/h/i$a;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->c:Lcom/purplebrain/adbuddiz/sdk/h/i$a;

    iget-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/h/i$a;->f:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;->d:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a()Lcom/purplebrain/adbuddiz/sdk/c/b;

    invoke-static {v2, v1, v0, v4, v4}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;ZZ)V

    return-void
.end method
