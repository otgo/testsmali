.class final Lcom/sponsorpay/utils/k;
.super Ljava/util/HashMap;
.source "SponsorPayBaseUrlProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;


# direct methods
.method constructor <init>(Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;)V
    .locals 2

    .prologue
    .line 19
    iput-object p1, p0, Lcom/sponsorpay/utils/k;->a:Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 20
    const-string v0, "actions"

    const-string v1, "https://service.sponsorpay.com/actions/v2"

    invoke-virtual {p0, v0, v1}, Lcom/sponsorpay/utils/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v0, "installs"

    const-string v1, "https://service.sponsorpay.com/installs/v2"

    invoke-virtual {p0, v0, v1}, Lcom/sponsorpay/utils/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v0, "vcs"

    const-string v1, "https://api.sponsorpay.com/vcs/v1/new_credit.json"

    invoke-virtual {p0, v0, v1}, Lcom/sponsorpay/utils/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v0, "mbe"

    const-string v1, "https://video.fyber.com"

    invoke-virtual {p0, v0, v1}, Lcom/sponsorpay/utils/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v0, "ofw"

    const-string v1, "https://iframe.sponsorpay.com/mobile"

    invoke-virtual {p0, v0, v1}, Lcom/sponsorpay/utils/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v0, "interstitial"

    const-string v1, "https://engine.sponsorpay.com/interstitial"

    invoke-virtual {p0, v0, v1}, Lcom/sponsorpay/utils/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v0, "tracker"

    const-string v1, "https://engine.sponsorpay.com/tracker"

    invoke-virtual {p0, v0, v1}, Lcom/sponsorpay/utils/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v0, "config"

    const-string v1, "https://engine.sponsorpay.com/sdk-config"

    invoke-virtual {p0, v0, v1}, Lcom/sponsorpay/utils/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v0, "precaching"

    const-string v1, "https://engine.fyber.com/video-cache"

    invoke-virtual {p0, v0, v1}, Lcom/sponsorpay/utils/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method
