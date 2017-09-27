.class public final Lcom/sponsorpay/publisher/mbe/player/b;
.super Ljava/lang/Object;
.source "SPBrandEngageVideoPlayerViewBuilder.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/sponsorpay/publisher/mbe/player/SPNativeVideoPlayerListener;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView$SPBrandEngageVideoPlayerListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;
    .locals 7

    .prologue
    .line 53
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/b;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/b;->b:Lcom/sponsorpay/publisher/mbe/player/SPNativeVideoPlayerListener;

    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/player/b;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/sponsorpay/publisher/mbe/player/b;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/sponsorpay/publisher/mbe/player/b;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/sponsorpay/publisher/mbe/player/b;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;-><init>(Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/player/SPNativeVideoPlayerListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/b;->g:Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView$SPBrandEngageVideoPlayerListener;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/b;->g:Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView$SPBrandEngageVideoPlayerListener;

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;->setPlayerListener(Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView$SPBrandEngageVideoPlayerListener;)V

    .line 57
    :cond_0
    return-object v0
.end method

.method public final a(Landroid/app/Activity;)Lcom/sponsorpay/publisher/mbe/player/b;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/b;->a:Landroid/app/Activity;

    .line 24
    return-object p0
.end method

.method public final a(Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView$SPBrandEngageVideoPlayerListener;)Lcom/sponsorpay/publisher/mbe/player/b;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/b;->g:Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView$SPBrandEngageVideoPlayerListener;

    .line 62
    return-object p0
.end method

.method public final a(Lcom/sponsorpay/publisher/mbe/player/SPNativeVideoPlayerListener;)Lcom/sponsorpay/publisher/mbe/player/b;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/b;->b:Lcom/sponsorpay/publisher/mbe/player/SPNativeVideoPlayerListener;

    .line 29
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/player/b;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/b;->c:Ljava/lang/String;

    .line 34
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/player/b;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/b;->d:Ljava/lang/String;

    .line 39
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/player/b;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/b;->e:Ljava/lang/String;

    .line 44
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/player/b;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/b;->f:Ljava/lang/String;

    .line 49
    return-object p0
.end method
