.class public abstract Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
.super Ljava/lang/Object;
.source "InterstitialMediationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/fyber/mediation/MediationAdapter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/fyber/ads/interstitials/a;

.field private b:Z

.field private c:Z

.field protected mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected mAdapter:Lcom/fyber/mediation/MediationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fyber/mediation/MediationAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->c:Z

    .line 60
    iput-object p1, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->mAdapter:Lcom/fyber/mediation/MediationAdapter;

    .line 61
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 230
    iput-boolean v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->c:Z

    .line 231
    iput-boolean v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->b:Z

    .line 232
    return-void
.end method

.method private a(Lcom/fyber/ads/interstitials/f;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->a:Lcom/fyber/ads/interstitials/a;

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Lcom/fyber/ads/interstitials/c;->a:Lcom/fyber/ads/interstitials/c;

    iget-object v1, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->a:Lcom/fyber/ads/interstitials/a;

    invoke-virtual {v0, v1, p1, p2}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/a;Lcom/fyber/ads/interstitials/f;Ljava/lang/String;)V

    .line 227
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/fyber/ads/interstitials/a;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 124
    .line 2157
    iget-boolean v1, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->b:Z

    .line 124
    if-eqz v1, :cond_0

    .line 125
    iput-boolean v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->c:Z

    .line 126
    iput-object p2, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->a:Lcom/fyber/ads/interstitials/a;

    .line 127
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 128
    invoke-virtual {p0, p1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->show(Landroid/app/Activity;)Z

    move-result v0

    .line 131
    :goto_0
    return v0

    .line 130
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->checkForAds(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/fyber/ads/interstitials/a;)Z
    .locals 1

    .prologue
    .line 99
    .line 1157
    iget-boolean v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->b:Z

    .line 99
    if-nez v0, :cond_0

    .line 100
    iput-object p2, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->a:Lcom/fyber/ads/interstitials/a;

    .line 101
    invoke-virtual {p0, p1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->checkForAds(Landroid/content/Context;)V

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract checkForAds(Landroid/content/Context;)V
.end method

.method protected fireClickEvent()V
    .locals 2

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->c:Z

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->c:Z

    .line 173
    sget-object v0, Lcom/fyber/ads/interstitials/f;->f:Lcom/fyber/ads/interstitials/f;

    .line 3220
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->a(Lcom/fyber/ads/interstitials/f;Ljava/lang/String;)V

    .line 175
    :cond_0
    return-void
.end method

.method protected fireCloseEvent()V
    .locals 2

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->c:Z

    if-nez v0, :cond_0

    .line 186
    sget-object v0, Lcom/fyber/ads/interstitials/f;->g:Lcom/fyber/ads/interstitials/f;

    .line 4220
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->a(Lcom/fyber/ads/interstitials/f;Ljava/lang/String;)V

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->a()V

    .line 189
    invoke-virtual {p0}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->checkForAds(Landroid/content/Context;)V

    .line 190
    return-void
.end method

.method protected fireImpressionEvent()V
    .locals 2

    .prologue
    .line 164
    sget-object v0, Lcom/fyber/ads/interstitials/f;->e:Lcom/fyber/ads/interstitials/f;

    .line 2220
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->a(Lcom/fyber/ads/interstitials/f;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method protected fireShowErrorEvent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->a()V

    .line 210
    sget-object v0, Lcom/fyber/ads/interstitials/f;->h:Lcom/fyber/ads/interstitials/f;

    invoke-direct {p0, v0, p1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->a(Lcom/fyber/ads/interstitials/f;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->checkForAds(Landroid/content/Context;)V

    .line 212
    return-void
.end method

.method protected fireValidationErrorEvent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->a()V

    .line 198
    sget-object v0, Lcom/fyber/ads/interstitials/f;->d:Lcom/fyber/ads/interstitials/f;

    invoke-direct {p0, v0, p1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->a(Lcom/fyber/ads/interstitials/f;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 241
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->mAdapter:Lcom/fyber/mediation/MediationAdapter;

    invoke-virtual {v0}, Lcom/fyber/mediation/MediationAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setAdAvailable()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->b:Z

    .line 151
    return-void
.end method

.method protected abstract show(Landroid/app/Activity;)Z
.end method
