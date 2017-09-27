.class final Lcom/sponsorpay/publisher/mbe/i;
.super Ljava/lang/Object;
.source "SPBrandEngageClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/i;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/i;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    sget-object v1, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->ERROR:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;)V

    .line 656
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/i;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->l(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)V

    .line 657
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/i;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Z)Z

    .line 658
    return-void
.end method
