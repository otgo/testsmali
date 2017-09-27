.class final Lcom/sponsorpay/publisher/mbe/mediation/b;
.super Landroid/os/Handler;
.source "SPBrandEngageMediationJSInterface.java"


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/mediation/b;->a:Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 34
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 40
    :goto_0
    return-void

    .line 36
    :pswitch_0
    const-string v0, "SPBrandEngageMediationJSInterface"

    const-string v1, "Timeout reached, returning \"false\" as default"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/b;->a:Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x1639
        :pswitch_0
    .end packed-switch
.end method
