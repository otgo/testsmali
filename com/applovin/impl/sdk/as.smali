.class Lcom/applovin/impl/sdk/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/ar;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/as;->a:Lcom/applovin/impl/sdk/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/as;->a:Lcom/applovin/impl/sdk/ar;

    iget-object v0, v0, Lcom/applovin/impl/sdk/ar;->a:Lcom/applovin/impl/sdk/aq;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aq;->d(Lcom/applovin/impl/sdk/aq;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/at;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/at;-><init>(Lcom/applovin/impl/sdk/as;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
