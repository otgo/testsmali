.class Lcom/applovin/impl/sdk/bk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;


# instance fields
.field final synthetic a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

.field final synthetic b:Lcom/applovin/impl/sdk/bd;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/bd;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bk;->b:Lcom/applovin/impl/sdk/bd;

    iput-object p2, p0, Lcom/applovin/impl/sdk/bk;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeAdsFailedToLoad(I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bk;->b:Lcom/applovin/impl/sdk/bd;

    iget-object v1, p0, Lcom/applovin/impl/sdk/bk;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-static {v0, v1, p1}, Lcom/applovin/impl/sdk/bd;->a(Lcom/applovin/impl/sdk/bd;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;I)V

    return-void
.end method

.method public onNativeAdsLoaded(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bk;->b:Lcom/applovin/impl/sdk/bd;

    iget-object v1, p0, Lcom/applovin/impl/sdk/bk;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-static {v0, v1, p1}, Lcom/applovin/impl/sdk/bd;->a(Lcom/applovin/impl/sdk/bd;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;Ljava/util/List;)V

    return-void
.end method
