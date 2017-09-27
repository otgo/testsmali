.class final Lcom/fyber/ads/videos/h;
.super Lcom/fyber/utils/b;
.source "RewardedVideoClient.java"


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/RewardedVideoActivity;

.field final synthetic b:Lcom/fyber/ads/videos/c;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/c;Lcom/fyber/ads/videos/RewardedVideoActivity;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/fyber/ads/videos/h;->b:Lcom/fyber/ads/videos/c;

    iput-object p2, p0, Lcom/fyber/ads/videos/h;->a:Lcom/fyber/ads/videos/RewardedVideoActivity;

    invoke-direct {p0}, Lcom/fyber/utils/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 309
    iget-object v0, p0, Lcom/fyber/ads/videos/h;->a:Lcom/fyber/ads/videos/RewardedVideoActivity;

    iget-object v1, p0, Lcom/fyber/ads/videos/h;->b:Lcom/fyber/ads/videos/c;

    invoke-static {v1}, Lcom/fyber/ads/videos/c;->c(Lcom/fyber/ads/videos/c;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/fyber/ads/videos/RewardedVideoActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    iget-object v0, p0, Lcom/fyber/ads/videos/h;->a:Lcom/fyber/ads/videos/RewardedVideoActivity;

    iget-object v1, p0, Lcom/fyber/ads/videos/h;->b:Lcom/fyber/ads/videos/c;

    invoke-static {v1}, Lcom/fyber/ads/videos/c;->g(Lcom/fyber/ads/videos/c;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/fyber/ads/videos/h;->b:Lcom/fyber/ads/videos/c;

    invoke-static {v2}, Lcom/fyber/ads/videos/c;->h(Lcom/fyber/ads/videos/c;)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fyber/ads/videos/RewardedVideoActivity;->register(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 315
    return-void
.end method
