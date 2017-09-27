.class public Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;
.super Landroid/widget/RelativeLayout;
.source "UnityAdsMuteVideoButton.java"


# instance fields
.field private a:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

.field private b:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 13
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->UnMuted:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->a:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->b:Landroid/widget/RelativeLayout;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->UnMuted:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->a:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->b:Landroid/widget/RelativeLayout;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->UnMuted:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->a:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->b:Landroid/widget/RelativeLayout;

    .line 29
    return-void
.end method


# virtual methods
.method public setLayout(Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->b:Landroid/widget/RelativeLayout;

    .line 33
    return-void
.end method

.method public setState(Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 36
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->a:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iput-object p1, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->a:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    .line 39
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->b:Landroid/widget/RelativeLayout;

    sget v1, Lcom/unity3d/ads/android/R$id;->unityAdsMuteButtonSpeakerX:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->b:Landroid/widget/RelativeLayout;

    sget v2, Lcom/unity3d/ads/android/R$id;->unityAdsMuteButtonSpeakerWaves:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 42
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 43
    sget-object v2, Lcom/unity3d/ads/android/view/h;->a:[I

    iget-object v3, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->a:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    invoke-virtual {v3}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->a:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 45
    :pswitch_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 46
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 49
    :pswitch_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 50
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
