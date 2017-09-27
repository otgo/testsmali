.class public Lcom/fyber/requesters/OfferWallRequester;
.super Lcom/fyber/requesters/Requester;
.source "OfferWallRequester.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/requesters/Requester",
        "<",
        "Lcom/fyber/requesters/OfferWallRequester;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/fyber/requesters/RequestCallback;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/fyber/requesters/Requester;-><init>(Lcom/fyber/requesters/Callback;)V

    .line 85
    return-void
.end method

.method private constructor <init>(Lcom/fyber/requesters/Requester;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/fyber/requesters/Requester;-><init>(Lcom/fyber/requesters/Requester;)V

    .line 89
    return-void
.end method

.method public static create(Lcom/fyber/requesters/RequestCallback;)Lcom/fyber/requesters/OfferWallRequester;
    .locals 1
    .param p0    # Lcom/fyber/requesters/RequestCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    new-instance v0, Lcom/fyber/requesters/OfferWallRequester;

    invoke-direct {v0, p0}, Lcom/fyber/requesters/OfferWallRequester;-><init>(Lcom/fyber/requesters/RequestCallback;)V

    return-object v0
.end method

.method public static from(Lcom/fyber/requesters/Requester;)Lcom/fyber/requesters/OfferWallRequester;
    .locals 1
    .param p0    # Lcom/fyber/requesters/Requester;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    new-instance v0, Lcom/fyber/requesters/OfferWallRequester;

    invoke-direct {v0, p0}, Lcom/fyber/requesters/OfferWallRequester;-><init>(Lcom/fyber/requesters/Requester;)V

    return-object v0
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fyber/requesters/OfferWallRequester;->a:Lcom/fyber/requesters/Callback;

    instance-of v0, v0, Lcom/fyber/requesters/RequestCallback;

    return v0
.end method

.method protected final bridge synthetic b()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 24
    return-object p0
.end method

.method public closeOnRedirect(Z)Lcom/fyber/requesters/OfferWallRequester;
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/fyber/requesters/OfferWallRequester;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "CLOSE_ON_REDIRECT"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-object p0
.end method

.method public request(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/fyber/requesters/OfferWallRequester;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "CLOSE_ON_REDIRECT"

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/OfferWallRequester;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 64
    const-string v1, "CUSTOM_PARAMS_KEY"

    invoke-virtual {p0, v1}, Lcom/fyber/requesters/OfferWallRequester;->d(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 65
    const-string v2, "PLACEMENT_ID_KEY"

    invoke-virtual {p0, v2}, Lcom/fyber/requesters/OfferWallRequester;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/fyber/ads/ofw/OfferWallActivity;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "EXTRA_SHOULD_CLOSE_ON_REDIRECT_KEY"

    .line 69
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "EXTRA_KEY_VALUES_MAP"

    .line 70
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_PLACEMENT_ID_KEY"

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_AD_FORMAT"

    sget-object v2, Lcom/fyber/ads/AdFormat;->OFFER_WALL:Lcom/fyber/ads/AdFormat;

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/fyber/requesters/d;

    invoke-direct {v1, p0, v0}, Lcom/fyber/requesters/d;-><init>(Lcom/fyber/requesters/OfferWallRequester;Landroid/content/Intent;)V

    invoke-virtual {p0, v1}, Lcom/fyber/requesters/OfferWallRequester;->a(Lcom/fyber/utils/b;)V

    .line 81
    :cond_0
    return-void
.end method
