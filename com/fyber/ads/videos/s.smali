.class final Lcom/fyber/ads/videos/s;
.super Ljava/lang/Object;
.source "RewardedVideoClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/p;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/p;)V
    .locals 0

    .prologue
    .line 792
    iput-object p1, p0, Lcom/fyber/ads/videos/s;->a:Lcom/fyber/ads/videos/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 795
    iget-object v0, p0, Lcom/fyber/ads/videos/s;->a:Lcom/fyber/ads/videos/p;

    iget-object v0, v0, Lcom/fyber/ads/videos/p;->a:Lcom/fyber/ads/videos/c;

    const-string v1, "CLOSE_ABORTED"

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/c;->b(Lcom/fyber/ads/videos/c;Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lcom/fyber/ads/videos/s;->a:Lcom/fyber/ads/videos/p;

    iget-object v0, v0, Lcom/fyber/ads/videos/p;->a:Lcom/fyber/ads/videos/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/c;->a(Lcom/fyber/ads/videos/c;Z)Z

    .line 797
    return-void
.end method
