.class Lcom/applovin/impl/sdk/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/applovin/impl/sdk/ab;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ab;I)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad;->b:Lcom/applovin/impl/sdk/ab;

    iput p2, p0, Lcom/applovin/impl/sdk/ad;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->b:Lcom/applovin/impl/sdk/ab;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ab;->a(Lcom/applovin/impl/sdk/ab;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/sdk/ad;->a:I

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    return-void
.end method
