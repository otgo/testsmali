.class final Lcom/fyber/ads/videos/f;
.super Ljava/lang/Object;
.source "RewardedVideoClient.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/c;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/c;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/fyber/ads/videos/f;->a:Lcom/fyber/ads/videos/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .prologue
    .line 173
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 183
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 175
    :pswitch_0
    const-string v0, "RewardedVideoClient"

    const-string v1, "Timeout reached, canceling request..."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/fyber/ads/videos/f;->a:Lcom/fyber/ads/videos/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/c;->a(Lcom/fyber/ads/videos/c;I)V

    goto :goto_0

    .line 180
    :pswitch_1
    iget-object v0, p0, Lcom/fyber/ads/videos/f;->a:Lcom/fyber/ads/videos/c;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ERROR_DIALOG_MESSAGE_DEFAULT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v1}, Lcom/fyber/utils/r;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/c;->a(Lcom/fyber/ads/videos/c;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
