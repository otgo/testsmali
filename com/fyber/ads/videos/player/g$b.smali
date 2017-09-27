.class final Lcom/fyber/ads/videos/player/g$b;
.super Landroid/os/Handler;
.source "RewardedVideoPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/ads/videos/player/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fyber/ads/videos/player/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/player/g;)V
    .locals 1

    .prologue
    .line 774
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 775
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/player/g$b;->a:Ljava/lang/ref/WeakReference;

    .line 776
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 780
    invoke-static {}, Lcom/fyber/ads/videos/player/f;->a()[I

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    aget v1, v0, v1

    .line 781
    iget-object v0, p0, Lcom/fyber/ads/videos/player/g$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/ads/videos/player/g;

    .line 782
    if-eqz v0, :cond_0

    .line 783
    sget-object v2, Lcom/fyber/ads/videos/player/i;->b:[I

    add-int/lit8 v1, v1, -0x1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 786
    :pswitch_0
    invoke-static {v0}, Lcom/fyber/ads/videos/player/g;->b(Lcom/fyber/ads/videos/player/g;)V

    goto :goto_0

    .line 790
    :pswitch_1
    invoke-static {v0}, Lcom/fyber/ads/videos/player/g;->c(Lcom/fyber/ads/videos/player/g;)V

    goto :goto_0

    .line 794
    :pswitch_2
    invoke-static {v0}, Lcom/fyber/ads/videos/player/g;->d(Lcom/fyber/ads/videos/player/g;)V

    goto :goto_0

    .line 798
    :pswitch_3
    invoke-static {v0}, Lcom/fyber/ads/videos/player/g;->e(Lcom/fyber/ads/videos/player/g;)Lcom/fyber/views/countdowntimer/b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 799
    invoke-static {v0}, Lcom/fyber/ads/videos/player/g;->e(Lcom/fyber/ads/videos/player/g;)Lcom/fyber/views/countdowntimer/b;

    move-result-object v1

    invoke-static {v0}, Lcom/fyber/ads/videos/player/g;->f(Lcom/fyber/ads/videos/player/g;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/fyber/views/countdowntimer/b;->a(J)V

    goto :goto_0

    .line 804
    :pswitch_4
    invoke-static {v0}, Lcom/fyber/ads/videos/player/g;->g(Lcom/fyber/ads/videos/player/g;)Z

    .line 805
    invoke-static {v0}, Lcom/fyber/ads/videos/player/g;->h(Lcom/fyber/ads/videos/player/g;)V

    goto :goto_0

    .line 810
    :pswitch_5
    invoke-static {v0}, Lcom/fyber/ads/videos/player/g;->i(Lcom/fyber/ads/videos/player/g;)V

    goto :goto_0

    .line 814
    :pswitch_6
    invoke-static {v0}, Lcom/fyber/ads/videos/player/g;->d(Lcom/fyber/ads/videos/player/g;)V

    .line 815
    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ALERT_DIALOG_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v1}, Lcom/fyber/utils/r;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ERROR_DIALOG_MESSAGE_DEFAULT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    .line 816
    invoke-static {v2}, Lcom/fyber/utils/r;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OK"

    .line 815
    invoke-static {v0, v1, v2, v3}, Lcom/fyber/ads/videos/player/g;->a(Lcom/fyber/ads/videos/player/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 820
    :pswitch_7
    const-string v1, "RewardedVideoPlayerView"

    const-string v2, "displayErrorLoadingDialog(): Error Loading video"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    invoke-static {v0}, Lcom/fyber/ads/videos/player/g;->j(Lcom/fyber/ads/videos/player/g;)Z

    .line 822
    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ALERT_DIALOG_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v1}, Lcom/fyber/utils/r;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ALERT_DIALOG_MESSAGE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    .line 823
    invoke-static {v2}, Lcom/fyber/utils/r;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OK"

    .line 822
    invoke-static {v0, v1, v2, v3}, Lcom/fyber/ads/videos/player/g;->a(Lcom/fyber/ads/videos/player/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 783
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
