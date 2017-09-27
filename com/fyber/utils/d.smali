.class final Lcom/fyber/utils/d;
.super Ljava/util/HashMap;
.source "FyberBaseUrlProvider.java"


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
.field final synthetic a:Lcom/fyber/utils/c;


# direct methods
.method constructor <init>(Lcom/fyber/utils/c;)V
    .locals 2

    .prologue
    .line 22
    iput-object p1, p0, Lcom/fyber/utils/d;->a:Lcom/fyber/utils/c;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 23
    const-string v0, "actions"

    const-string v1, "https://service.sponsorpay.com/actions/v2"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v0, "installs"

    const-string v1, "https://service.sponsorpay.com/installs/v2"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v0, "vcs"

    const-string v1, "https://api.sponsorpay.com/vcs/v1/new_credit.json"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v0, "videos"

    const-string v1, "https://video.fyber.com"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v0, "ofw"

    const-string v1, "https://iframe.sponsorpay.com/mobile"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v0, "interstitial"

    const-string v1, "https://engine.sponsorpay.com/interstitial"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v0, "tracker"

    const-string v1, "https://engine.sponsorpay.com/tracker"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v0, "config"

    const-string v1, "https://engine.sponsorpay.com/sdk-config"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v0, "precaching"

    const-string v1, "https://engine.fyber.com/video-cache"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method
