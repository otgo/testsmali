.class public final Lcom/fyber/ads/videos/player/j;
.super Ljava/lang/Object;
.source "RewardedVideoPlayerViewBuilder.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/fyber/ads/videos/player/b;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/fyber/ads/videos/player/g$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/fyber/ads/videos/player/g;
    .locals 7

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    iget-object v1, p0, Lcom/fyber/ads/videos/player/j;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 53
    new-instance v0, Lcom/fyber/ads/videos/player/g;

    iget-object v1, p0, Lcom/fyber/ads/videos/player/j;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/fyber/ads/videos/player/j;->b:Lcom/fyber/ads/videos/player/b;

    iget-object v3, p0, Lcom/fyber/ads/videos/player/j;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/fyber/ads/videos/player/j;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/fyber/ads/videos/player/j;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/fyber/ads/videos/player/j;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/fyber/ads/videos/player/g;-><init>(Landroid/app/Activity;Lcom/fyber/ads/videos/player/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/fyber/ads/videos/player/j;->g:Lcom/fyber/ads/videos/player/g$a;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/fyber/ads/videos/player/j;->g:Lcom/fyber/ads/videos/player/g$a;

    invoke-virtual {v0, v1}, Lcom/fyber/ads/videos/player/g;->a(Lcom/fyber/ads/videos/player/g$a;)V

    .line 60
    :cond_0
    return-object v0
.end method

.method public final a(Landroid/app/Activity;)Lcom/fyber/ads/videos/player/j;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/fyber/ads/videos/player/j;->a:Landroid/app/Activity;

    .line 22
    return-object p0
.end method

.method public final a(Lcom/fyber/ads/videos/player/b;)Lcom/fyber/ads/videos/player/j;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/fyber/ads/videos/player/j;->b:Lcom/fyber/ads/videos/player/b;

    .line 27
    return-object p0
.end method

.method public final a(Lcom/fyber/ads/videos/player/g$a;)Lcom/fyber/ads/videos/player/j;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/fyber/ads/videos/player/j;->g:Lcom/fyber/ads/videos/player/g$a;

    .line 65
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/fyber/ads/videos/player/j;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/fyber/ads/videos/player/j;->c:Ljava/lang/String;

    .line 32
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/fyber/ads/videos/player/j;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/fyber/ads/videos/player/j;->d:Ljava/lang/String;

    .line 37
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/fyber/ads/videos/player/j;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/fyber/ads/videos/player/j;->e:Ljava/lang/String;

    .line 42
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/fyber/ads/videos/player/j;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/fyber/ads/videos/player/j;->f:Ljava/lang/String;

    .line 47
    return-object p0
.end method
