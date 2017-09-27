.class final Lcom/fyber/ads/videos/j;
.super Ljava/lang/Object;
.source "RewardedVideoClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/c;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/c;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/fyber/ads/videos/j;->a:Lcom/fyber/ads/videos/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/fyber/ads/videos/j;->a:Lcom/fyber/ads/videos/c;

    sget-object v1, Lcom/fyber/ads/videos/t$a;->e:Lcom/fyber/ads/videos/t$a;

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/c;->a(Lcom/fyber/ads/videos/c;Lcom/fyber/ads/videos/t$a;)V

    .line 571
    iget-object v0, p0, Lcom/fyber/ads/videos/j;->a:Lcom/fyber/ads/videos/c;

    invoke-static {v0}, Lcom/fyber/ads/videos/c;->m(Lcom/fyber/ads/videos/c;)V

    .line 572
    iget-object v0, p0, Lcom/fyber/ads/videos/j;->a:Lcom/fyber/ads/videos/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/c;->a(Lcom/fyber/ads/videos/c;Z)Z

    .line 573
    return-void
.end method
