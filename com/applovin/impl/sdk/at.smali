.class Lcom/applovin/impl/sdk/at;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/as;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/as;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/at;->a:Lcom/applovin/impl/sdk/as;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/at;->a:Lcom/applovin/impl/sdk/as;

    iget-object v0, v0, Lcom/applovin/impl/sdk/as;->a:Lcom/applovin/impl/sdk/ar;

    iget-object v0, v0, Lcom/applovin/impl/sdk/ar;->a:Lcom/applovin/impl/sdk/aq;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aq;->a(Lcom/applovin/impl/sdk/aq;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/au;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/au;-><init>(Lcom/applovin/impl/sdk/at;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
