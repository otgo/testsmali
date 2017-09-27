.class final Lcom/fyber/requesters/a;
.super Lcom/fyber/utils/b;
.source "InterstitialRequester.java"


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/fyber/requesters/InterstitialRequester$a;


# direct methods
.method constructor <init>(Lcom/fyber/requesters/InterstitialRequester$a;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/fyber/requesters/a;->b:Lcom/fyber/requesters/InterstitialRequester$a;

    iput-object p2, p0, Lcom/fyber/requesters/a;->a:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/fyber/utils/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/fyber/requesters/a;->a:Landroid/content/Intent;

    const-string v1, "EXTRA_AD_FORMAT"

    sget-object v2, Lcom/fyber/ads/AdFormat;->INTERSTITIAL:Lcom/fyber/ads/AdFormat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcom/fyber/requesters/a;->b:Lcom/fyber/requesters/InterstitialRequester$a;

    iget-object v0, v0, Lcom/fyber/requesters/InterstitialRequester$a;->a:Lcom/fyber/requesters/InterstitialRequester;

    iget-object v0, v0, Lcom/fyber/requesters/InterstitialRequester;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/RequestCallback;

    iget-object v1, p0, Lcom/fyber/requesters/a;->a:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/RequestCallback;->onAdAvailable(Landroid/content/Intent;)V

    .line 102
    return-void
.end method
