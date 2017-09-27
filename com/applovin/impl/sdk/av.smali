.class Lcom/applovin/impl/sdk/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/ar;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/av;->a:Lcom/applovin/impl/sdk/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/av;->a:Lcom/applovin/impl/sdk/ar;

    iget-object v0, v0, Lcom/applovin/impl/sdk/ar;->a:Lcom/applovin/impl/sdk/aq;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aq;->f(Lcom/applovin/impl/sdk/aq;)Lcom/applovin/impl/sdk/z;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/av;->a:Lcom/applovin/impl/sdk/ar;

    iget-object v1, v1, Lcom/applovin/impl/sdk/ar;->a:Lcom/applovin/impl/sdk/aq;

    invoke-static {v1}, Lcom/applovin/impl/sdk/aq;->e(Lcom/applovin/impl/sdk/aq;)Lcom/applovin/sdk/AppLovinAdRewardListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/z;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;)V

    return-void
.end method
