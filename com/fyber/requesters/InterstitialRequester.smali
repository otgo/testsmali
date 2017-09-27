.class public Lcom/fyber/requesters/InterstitialRequester;
.super Lcom/fyber/requesters/Requester;
.source "InterstitialRequester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/requesters/InterstitialRequester$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/requesters/Requester",
        "<",
        "Lcom/fyber/requesters/InterstitialRequester;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Lcom/fyber/requesters/RequestCallback;


# direct methods
.method private constructor <init>(Lcom/fyber/requesters/RequestCallback;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/fyber/requesters/Requester;-><init>(Lcom/fyber/requesters/Callback;)V

    .line 69
    return-void
.end method

.method private constructor <init>(Lcom/fyber/requesters/Requester;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/fyber/requesters/Requester;-><init>(Lcom/fyber/requesters/Requester;)V

    .line 73
    return-void
.end method

.method public static create(Lcom/fyber/requesters/RequestCallback;)Lcom/fyber/requesters/InterstitialRequester;
    .locals 1
    .param p0    # Lcom/fyber/requesters/RequestCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    new-instance v0, Lcom/fyber/requesters/InterstitialRequester;

    invoke-direct {v0, p0}, Lcom/fyber/requesters/InterstitialRequester;-><init>(Lcom/fyber/requesters/RequestCallback;)V

    return-object v0
.end method

.method public static from(Lcom/fyber/requesters/Requester;)Lcom/fyber/requesters/InterstitialRequester;
    .locals 1
    .param p0    # Lcom/fyber/requesters/Requester;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    new-instance v0, Lcom/fyber/requesters/InterstitialRequester;

    invoke-direct {v0, p0}, Lcom/fyber/requesters/InterstitialRequester;-><init>(Lcom/fyber/requesters/Requester;)V

    return-object v0
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fyber/requesters/InterstitialRequester;->a:Lcom/fyber/requesters/Callback;

    instance-of v0, v0, Lcom/fyber/requesters/RequestCallback;

    return v0
.end method

.method protected final bridge synthetic b()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 21
    return-object p0
.end method

.method public request(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/fyber/requesters/InterstitialRequester;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    sget-object v0, Lcom/fyber/ads/interstitials/c;->a:Lcom/fyber/ads/interstitials/c;

    .line 50
    invoke-virtual {v0}, Lcom/fyber/ads/interstitials/c;->a()Z

    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 54
    const-string v1, "CUSTOM_PARAMS_KEY"

    invoke-virtual {p0, v1}, Lcom/fyber/requesters/InterstitialRequester;->d(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 55
    const-string v2, "PLACEMENT_ID_KEY"

    invoke-virtual {p0, v2}, Lcom/fyber/requesters/InterstitialRequester;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1086
    iget-object v3, p0, Lcom/fyber/requesters/InterstitialRequester;->d:Lcom/fyber/requesters/RequestCallback;

    if-nez v3, :cond_0

    .line 1087
    new-instance v3, Lcom/fyber/requesters/InterstitialRequester$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/fyber/requesters/InterstitialRequester$a;-><init>(Lcom/fyber/requesters/InterstitialRequester;B)V

    iput-object v3, p0, Lcom/fyber/requesters/InterstitialRequester;->d:Lcom/fyber/requesters/RequestCallback;

    .line 1089
    :cond_0
    iget-object v3, p0, Lcom/fyber/requesters/InterstitialRequester;->d:Lcom/fyber/requesters/RequestCallback;

    .line 57
    invoke-virtual {v0, v3}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/requesters/RequestCallback;)V

    .line 58
    invoke-virtual {v0, v1}, Lcom/fyber/ads/interstitials/c;->a(Ljava/util/Map;)Z

    .line 59
    invoke-virtual {v0, v2}, Lcom/fyber/ads/interstitials/c;->a(Ljava/lang/String;)Z

    .line 60
    invoke-virtual {v0, p1}, Lcom/fyber/ads/interstitials/c;->a(Landroid/content/Context;)Z

    .line 65
    :cond_1
    :goto_0
    return-void

    .line 62
    :cond_2
    sget-object v0, Lcom/fyber/requesters/RequestError;->UNABLE_TO_REQUEST_ADS:Lcom/fyber/requesters/RequestError;

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/InterstitialRequester;->a(Lcom/fyber/requesters/RequestError;)V

    goto :goto_0
.end method
