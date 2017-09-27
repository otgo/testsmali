.class final Lcom/fyber/ads/ofw/a;
.super Landroid/webkit/WebChromeClient;
.source "OfferWallActivity.java"


# instance fields
.field final synthetic a:Lcom/fyber/ads/ofw/OfferWallActivity;


# direct methods
.method constructor <init>(Lcom/fyber/ads/ofw/OfferWallActivity;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/fyber/ads/ofw/a;->a:Lcom/fyber/ads/ofw/OfferWallActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .prologue
    .line 160
    const/16 v0, 0x32

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/ofw/a;->a:Lcom/fyber/ads/ofw/OfferWallActivity;

    invoke-static {v0}, Lcom/fyber/ads/ofw/OfferWallActivity;->a(Lcom/fyber/ads/ofw/OfferWallActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/fyber/ads/ofw/a;->a:Lcom/fyber/ads/ofw/OfferWallActivity;

    invoke-static {v0}, Lcom/fyber/ads/ofw/OfferWallActivity;->a(Lcom/fyber/ads/ofw/OfferWallActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 162
    iget-object v0, p0, Lcom/fyber/ads/ofw/a;->a:Lcom/fyber/ads/ofw/OfferWallActivity;

    invoke-static {v0}, Lcom/fyber/ads/ofw/OfferWallActivity;->b(Lcom/fyber/ads/ofw/OfferWallActivity;)Landroid/app/ProgressDialog;

    .line 164
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 165
    return-void
.end method
