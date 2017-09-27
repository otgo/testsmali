.class public final Lcom/fyber/ads/interstitials/c;
.super Ljava/lang/Object;
.source "InterstitialClient.java"


# static fields
.field public static final a:Lcom/fyber/ads/interstitials/c;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/fyber/ads/interstitials/e;

.field private d:Lcom/fyber/ads/interstitials/a;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Lcom/fyber/ads/interstitials/b;

.field private h:Lcom/fyber/requesters/RequestCallback;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/fyber/ads/interstitials/c;

    invoke-direct {v0}, Lcom/fyber/ads/interstitials/c;-><init>()V

    sput-object v0, Lcom/fyber/ads/interstitials/c;->a:Lcom/fyber/ads/interstitials/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-object v0, Lcom/fyber/ads/interstitials/e;->a:Lcom/fyber/ads/interstitials/e;

    iput-object v0, p0, Lcom/fyber/ads/interstitials/c;->c:Lcom/fyber/ads/interstitials/e;

    .line 71
    return-void
.end method

.method private a(Lcom/fyber/ads/interstitials/e;)V
    .locals 2

    .prologue
    .line 153
    iput-object p1, p0, Lcom/fyber/ads/interstitials/c;->c:Lcom/fyber/ads/interstitials/e;

    .line 154
    sget-object v0, Lcom/fyber/ads/interstitials/d;->a:[I

    iget-object v1, p0, Lcom/fyber/ads/interstitials/c;->c:Lcom/fyber/ads/interstitials/e;

    invoke-virtual {v1}, Lcom/fyber/ads/interstitials/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 156
    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/interstitials/c;->e:Landroid/content/Context;

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/fyber/ads/interstitials/a;)V
    .locals 4

    .prologue
    .line 187
    if-eqz p1, :cond_1

    .line 188
    iput-object p1, p0, Lcom/fyber/ads/interstitials/c;->d:Lcom/fyber/ads/interstitials/a;

    .line 189
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->h:Lcom/fyber/requesters/RequestCallback;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->h:Lcom/fyber/requesters/RequestCallback;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/fyber/ads/interstitials/c;->e:Landroid/content/Context;

    const-class v3, Lcom/fyber/ads/interstitials/InterstitialActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lcom/fyber/requesters/RequestCallback;->onAdAvailable(Landroid/content/Intent;)V

    .line 192
    :cond_0
    sget-object v0, Lcom/fyber/ads/interstitials/e;->d:Lcom/fyber/ads/interstitials/e;

    invoke-direct {p0, v0}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/e;)V

    .line 201
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->h:Lcom/fyber/requesters/RequestCallback;

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->h:Lcom/fyber/requesters/RequestCallback;

    sget-object v1, Lcom/fyber/ads/AdFormat;->INTERSTITIAL:Lcom/fyber/ads/AdFormat;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/RequestCallback;->onAdNotAvailable(Lcom/fyber/ads/AdFormat;)V

    .line 198
    :cond_2
    sget-object v0, Lcom/fyber/ads/interstitials/e;->a:Lcom/fyber/ads/interstitials/e;

    invoke-direct {p0, v0}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/e;)V

    goto :goto_0
.end method

.method public final a(Lcom/fyber/ads/interstitials/a;Lcom/fyber/ads/interstitials/f;)V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/a;Lcom/fyber/ads/interstitials/f;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public final a(Lcom/fyber/ads/interstitials/a;Lcom/fyber/ads/interstitials/f;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->f:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/fyber/operations/c;->a(Ljava/lang/String;Lcom/fyber/ads/interstitials/a;Lcom/fyber/ads/interstitials/f;)V

    .line 263
    sget-object v0, Lcom/fyber/ads/interstitials/d;->b:[I

    invoke-virtual {p2}, Lcom/fyber/ads/interstitials/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 265
    :pswitch_0
    sget-object v0, Lcom/fyber/ads/interstitials/e;->a:Lcom/fyber/ads/interstitials/e;

    invoke-direct {p0, v0}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/e;)V

    .line 266
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->g:Lcom/fyber/ads/interstitials/b;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->g:Lcom/fyber/ads/interstitials/b;

    sget-object v1, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;->ReasonUserClickedOnAd:Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    invoke-interface {v0, v1}, Lcom/fyber/ads/interstitials/b;->onInterstitialAdClosed(Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;)V

    goto :goto_0

    .line 271
    :pswitch_1
    sget-object v0, Lcom/fyber/ads/interstitials/e;->a:Lcom/fyber/ads/interstitials/e;

    invoke-direct {p0, v0}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/e;)V

    .line 272
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->g:Lcom/fyber/ads/interstitials/b;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->g:Lcom/fyber/ads/interstitials/b;

    sget-object v1, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;->ReasonUserClosedAd:Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    invoke-interface {v0, v1}, Lcom/fyber/ads/interstitials/b;->onInterstitialAdClosed(Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;)V

    goto :goto_0

    .line 277
    :pswitch_2
    sget-object v0, Lcom/fyber/ads/interstitials/e;->a:Lcom/fyber/ads/interstitials/e;

    invoke-direct {p0, v0}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/e;)V

    .line 279
    :pswitch_3
    const-string v0, "InterstitialClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An error occurred. Message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->g:Lcom/fyber/ads/interstitials/b;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->g:Lcom/fyber/ads/interstitials/b;

    invoke-interface {v0, p3}, Lcom/fyber/ads/interstitials/b;->onInterstitialAdError(Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/fyber/ads/interstitials/b;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/fyber/ads/interstitials/c;->g:Lcom/fyber/ads/interstitials/b;

    .line 304
    return-void
.end method

.method public final a(Lcom/fyber/requesters/RequestCallback;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/fyber/ads/interstitials/c;->h:Lcom/fyber/requesters/RequestCallback;

    .line 296
    return-void
.end method

.method public final a(Lcom/fyber/requesters/RequestError;)V
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/fyber/ads/interstitials/e;->a:Lcom/fyber/ads/interstitials/e;

    invoke-direct {p0, v0}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/e;)V

    .line 174
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->h:Lcom/fyber/requesters/RequestCallback;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->h:Lcom/fyber/requesters/RequestCallback;

    invoke-interface {v0, p1}, Lcom/fyber/requesters/RequestCallback;->onRequestError(Lcom/fyber/requesters/RequestError;)V

    .line 177
    :cond_0
    return-void
.end method

.method public final a([Lcom/fyber/ads/interstitials/a;)V
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/fyber/ads/interstitials/e;->c:Lcom/fyber/ads/interstitials/e;

    invoke-direct {p0, v0}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/e;)V

    .line 169
    invoke-static {p1}, Lcom/fyber/operations/b;->a([Lcom/fyber/ads/interstitials/a;)V

    .line 170
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->c:Lcom/fyber/ads/interstitials/e;

    invoke-virtual {v0}, Lcom/fyber/ads/interstitials/e;->c()Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->c:Lcom/fyber/ads/interstitials/e;

    invoke-virtual {v0}, Lcom/fyber/ads/interstitials/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    sget-object v0, Lcom/fyber/mediation/d;->a:Lcom/fyber/mediation/d;

    iget-object v1, p0, Lcom/fyber/ads/interstitials/c;->d:Lcom/fyber/ads/interstitials/a;

    invoke-virtual {v0, p1, v1}, Lcom/fyber/mediation/d;->a(Landroid/app/Activity;Lcom/fyber/ads/interstitials/a;)Z

    move-result v0

    .line 227
    if-eqz v0, :cond_1

    .line 228
    iget-object v1, p0, Lcom/fyber/ads/interstitials/c;->g:Lcom/fyber/ads/interstitials/b;

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/fyber/ads/interstitials/c;->g:Lcom/fyber/ads/interstitials/b;

    invoke-interface {v1}, Lcom/fyber/ads/interstitials/b;->onInterstitialAdShown()V

    .line 231
    :cond_0
    sget-object v1, Lcom/fyber/ads/interstitials/e;->e:Lcom/fyber/ads/interstitials/e;

    invoke-direct {p0, v1}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/e;)V

    .line 235
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 83
    .line 1107
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->c:Lcom/fyber/ads/interstitials/e;

    invoke-virtual {v0}, Lcom/fyber/ads/interstitials/e;->c()Z

    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 2095
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/interstitials/c;->d:Lcom/fyber/ads/interstitials/a;

    .line 2096
    iput-object p1, p0, Lcom/fyber/ads/interstitials/c;->e:Landroid/content/Context;

    .line 2097
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/ads/interstitials/c;->f:Ljava/lang/String;

    .line 2098
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/fyber/ads/interstitials/c;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/fyber/ads/interstitials/c;->b:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/fyber/operations/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2099
    sget-object v0, Lcom/fyber/ads/interstitials/e;->b:Lcom/fyber/ads/interstitials/e;

    invoke-direct {p0, v0}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/e;)V

    .line 85
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    .line 87
    :cond_0
    const-string v0, "InterstitialClient"

    const-string v1, "FybInterstitialClient cannot request offers at this point. It might be requesting offers right now or an offer might be currently being presented to the user."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 141
    .line 3111
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->c:Lcom/fyber/ads/interstitials/e;

    invoke-virtual {v0}, Lcom/fyber/ads/interstitials/e;->b()Z

    move-result v0

    .line 141
    if-eqz v0, :cond_0

    .line 142
    iput-object p1, p0, Lcom/fyber/ads/interstitials/c;->i:Ljava/lang/String;

    .line 143
    sget-object v0, Lcom/fyber/ads/interstitials/e;->a:Lcom/fyber/ads/interstitials/e;

    invoke-direct {p0, v0}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/e;)V

    .line 144
    const/4 v0, 0x1

    .line 148
    :goto_0
    return v0

    .line 146
    :cond_0
    const-string v0, "InterstitialClient"

    const-string v1, "Cannot change the placement ID while a request to the server is going on or an offer is being presented to the user."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 123
    .line 2111
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->c:Lcom/fyber/ads/interstitials/e;

    invoke-virtual {v0}, Lcom/fyber/ads/interstitials/e;->b()Z

    move-result v0

    .line 123
    if-eqz v0, :cond_0

    .line 124
    iput-object p1, p0, Lcom/fyber/ads/interstitials/c;->b:Ljava/util/Map;

    .line 125
    sget-object v0, Lcom/fyber/ads/interstitials/e;->a:Lcom/fyber/ads/interstitials/e;

    invoke-direct {p0, v0}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/e;)V

    .line 126
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    .line 128
    :cond_0
    const-string v0, "InterstitialClient"

    const-string v1, "Cannot change custom parameters while a request to the server is going on or an offer is being presented to the user."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/fyber/ads/interstitials/a;)Z
    .locals 2

    .prologue
    .line 212
    sget-object v0, Lcom/fyber/mediation/d;->a:Lcom/fyber/mediation/d;

    iget-object v1, p0, Lcom/fyber/ads/interstitials/c;->e:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/fyber/mediation/d;->a(Landroid/content/Context;Lcom/fyber/ads/interstitials/a;)Z

    move-result v0

    return v0
.end method
