.class final Lcom/sponsorpay/publisher/mbe/h;
.super Ljava/lang/Object;
.source "SPBrandEngageClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/h;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 354
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/h;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->g(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/h;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->c(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/h;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->j(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/h;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->h(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/h;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v2}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->i(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 358
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/h;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->k(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Z

    .line 359
    return-void
.end method
