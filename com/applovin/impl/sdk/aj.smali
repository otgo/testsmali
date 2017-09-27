.class Lcom/applovin/impl/sdk/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/sdk/AppLovinAd;

.field final synthetic b:D

.field final synthetic c:Z

.field final synthetic d:Lcom/applovin/impl/sdk/ae;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ae;Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 1

    iput-object p1, p0, Lcom/applovin/impl/sdk/aj;->d:Lcom/applovin/impl/sdk/ae;

    iput-object p2, p0, Lcom/applovin/impl/sdk/aj;->a:Lcom/applovin/sdk/AppLovinAd;

    iput-wide p3, p0, Lcom/applovin/impl/sdk/aj;->b:D

    iput-boolean p5, p0, Lcom/applovin/impl/sdk/aj;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/aj;->d:Lcom/applovin/impl/sdk/ae;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ae;->d(Lcom/applovin/impl/sdk/ae;)Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/aj;->a:Lcom/applovin/sdk/AppLovinAd;

    iget-wide v2, p0, Lcom/applovin/impl/sdk/aj;->b:D

    iget-boolean v4, p0, Lcom/applovin/impl/sdk/aj;->c:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;->videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V

    return-void
.end method
