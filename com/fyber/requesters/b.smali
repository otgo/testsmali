.class final Lcom/fyber/requesters/b;
.super Lcom/fyber/utils/b;
.source "InterstitialRequester.java"


# instance fields
.field final synthetic a:Lcom/fyber/requesters/InterstitialRequester$a;


# direct methods
.method constructor <init>(Lcom/fyber/requesters/InterstitialRequester$a;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/fyber/requesters/b;->a:Lcom/fyber/requesters/InterstitialRequester$a;

    invoke-direct {p0}, Lcom/fyber/utils/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/fyber/requesters/b;->a:Lcom/fyber/requesters/InterstitialRequester$a;

    iget-object v0, v0, Lcom/fyber/requesters/InterstitialRequester$a;->a:Lcom/fyber/requesters/InterstitialRequester;

    iget-object v0, v0, Lcom/fyber/requesters/InterstitialRequester;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/RequestCallback;

    sget-object v1, Lcom/fyber/ads/AdFormat;->INTERSTITIAL:Lcom/fyber/ads/AdFormat;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/RequestCallback;->onAdNotAvailable(Lcom/fyber/ads/AdFormat;)V

    .line 112
    return-void
.end method
