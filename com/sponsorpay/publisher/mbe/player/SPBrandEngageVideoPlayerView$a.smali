.class final Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView$a;
.super Landroid/os/Handler;
.source "SPBrandEngageVideoPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;)V
    .locals 1

    .prologue
    .line 760
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 761
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView$a;->a:Ljava/lang/ref/WeakReference;

    .line 762
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 766
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/SPNativeVideoPlayerUIThreadActions;->values()[Lcom/sponsorpay/publisher/mbe/player/SPNativeVideoPlayerUIThreadActions;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    aget-object v1, v0, v1

    .line 767
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;

    .line 768
    if-eqz v0, :cond_0

    .line 769
    sget-object v2, Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView$1;->b:[I

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/mbe/player/SPNativeVideoPlayerUIThreadActions;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 772
    :pswitch_0
    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;->b(Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;)V

    goto :goto_0

    .line 776
    :pswitch_1
    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;->c(Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;)V

    goto :goto_0

    .line 780
    :pswitch_2
    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;->d(Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;)Lcom/sponsorpay/view/countdowntimer/b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 781
    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;->d(Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;)Lcom/sponsorpay/view/countdowntimer/b;

    move-result-object v1

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;->e(Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sponsorpay/view/countdowntimer/b;->a(J)V

    goto :goto_0

    .line 786
    :pswitch_3
    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;->f(Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;)Z

    .line 787
    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;->g(Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;)V

    goto :goto_0

    .line 792
    :pswitch_4
    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;->h(Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;)V

    goto :goto_0

    .line 796
    :pswitch_5
    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;->c(Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;)V

    .line 797
    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_ALERT_DIALOG_TITLE:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v1}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_ERROR_DIALOG_MESSAGE_DEFAULT:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v2}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OK"

    invoke-static {v0, v1, v2, v3}, Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;->a(Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 802
    :pswitch_6
    const-string v1, "SPBrandEngageVideoPlayerView"

    const-string v2, "displayErrorLoadingDialog(): Error Loading video"

    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;->i(Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;)Z

    .line 804
    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_ALERT_DIALOG_TITLE:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v1}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_ALERT_DIALOG_MESSAGE:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v2}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OK"

    invoke-static {v0, v1, v2, v3}, Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;->a(Lcom/sponsorpay/publisher/mbe/player/SPBrandEngageVideoPlayerView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 769
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
