.class final Lcom/sponsorpay/publisher/ofw/b;
.super Landroid/webkit/WebChromeClient;
.source "SPOfferWallActivity.java"


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sponsorpay/publisher/ofw/b;->a:Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .prologue
    .line 145
    const/16 v0, 0x32

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/b;->a:Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;

    invoke-static {v0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->a(Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/b;->a:Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;

    invoke-static {v0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->a(Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 147
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/b;->a:Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;

    invoke-static {v0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->b(Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;)Landroid/app/ProgressDialog;

    .line 149
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 150
    return-void
.end method
