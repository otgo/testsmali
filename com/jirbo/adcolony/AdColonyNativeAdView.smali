.class public Lcom/jirbo/adcolony/AdColonyNativeAdView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/AdColonyNativeAdView$b;,
        Lcom/jirbo/adcolony/AdColonyNativeAdView$a;
    }
.end annotation


# instance fields
.field A:Z

.field B:Z

.field C:Z

.field D:Z

.field E:Z

.field F:Z

.field G:Z

.field H:Z

.field I:Z

.field J:Z

.field K:Z

.field L:Ljava/lang/String;

.field M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

.field N:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

.field O:Lcom/jirbo/adcolony/AdColonyNativeAdMutedListener;

.field P:Lcom/jirbo/adcolony/ADCImage;

.field Q:Lcom/jirbo/adcolony/ADCImage;

.field R:Lcom/jirbo/adcolony/ADCImage;

.field S:Landroid/widget/ImageView;

.field T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

.field U:Landroid/view/View;

.field V:Landroid/graphics/Bitmap;

.field W:Lcom/jirbo/adcolony/ADCImage;

.field a:Landroid/widget/TextView;

.field aA:Lcom/jirbo/adcolony/n$ad;

.field aB:Lcom/jirbo/adcolony/n$a;

.field aC:F

.field aD:F

.field aE:F

.field aF:Z

.field aG:Z

.field aH:Z

.field aI:Landroid/widget/FrameLayout$LayoutParams;

.field aJ:Landroid/widget/FrameLayout$LayoutParams;

.field aK:Ljava/io/FileInputStream;

.field aa:Landroid/widget/ImageView;

.field ab:Z

.field ac:Landroid/widget/Button;

.field ad:Ljava/lang/String;

.field ae:Ljava/lang/String;

.field af:Ljava/lang/String;

.field ag:Landroid/media/MediaPlayer;

.field ah:Landroid/view/Surface;

.field ai:Ljava/lang/String;

.field aj:Ljava/lang/String;

.field ak:Ljava/lang/String;

.field al:Ljava/lang/String;

.field am:Ljava/lang/String;

.field an:Ljava/lang/String;

.field ao:Ljava/lang/String;

.field ap:Ljava/lang/String;

.field aq:Ljava/lang/String;

.field ar:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

.field as:I

.field at:I

.field au:I

.field av:I

.field aw:I

.field ax:I

.field ay:I

.field az:I

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/app/Activity;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Landroid/view/ViewGroup;

.field h:Landroid/graphics/SurfaceTexture;

.field i:I

.field j:I

.field k:I

.field l:I

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:Z

.field s:Z

.field t:Z

.field u:Z

.field v:Z

.field w:Z

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "zone_id"    # Ljava/lang/String;
    .param p3, "width"    # I

    .prologue
    const/4 v0, 0x1

    const/high16 v1, 0x3e800000    # 0.25f

    .line 164
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 81
    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->B:Z

    .line 83
    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->D:Z

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ae:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->af:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ap:Ljava/lang/String;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aq:Ljava/lang/String;

    .line 130
    sget-object v0, Lcom/jirbo/adcolony/AdColonyIAPEngagement;->NONE:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ar:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    .line 137
    const v0, -0x333334

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ax:I

    .line 138
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ay:I

    .line 146
    iput v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aC:F

    .line 147
    iput v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aD:F

    .line 166
    invoke-virtual {p0, p1, p2, p3}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 168
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a()V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;II)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "zone_id"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x3e800000    # 0.25f

    .line 172
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 81
    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->B:Z

    .line 83
    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->D:Z

    .line 110
    iput-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ae:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->af:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ap:Ljava/lang/String;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aq:Ljava/lang/String;

    .line 130
    sget-object v0, Lcom/jirbo/adcolony/AdColonyIAPEngagement;->NONE:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ar:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    .line 137
    const v0, -0x333334

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ax:I

    .line 138
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ay:I

    .line 146
    iput v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aC:F

    .line 147
    iput v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aD:F

    .line 174
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 176
    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a(Z)V

    .line 177
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "zone_id"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "is_private"    # Z

    .prologue
    const/4 v0, 0x1

    const/high16 v1, 0x3e800000    # 0.25f

    .line 181
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 81
    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->B:Z

    .line 83
    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->D:Z

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ae:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->af:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ap:Ljava/lang/String;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aq:Ljava/lang/String;

    .line 130
    sget-object v0, Lcom/jirbo/adcolony/AdColonyIAPEngagement;->NONE:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ar:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    .line 137
    const v0, -0x333334

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ax:I

    .line 138
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ay:I

    .line 146
    iput v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aC:F

    .line 147
    iput v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aD:F

    .line 183
    iput-boolean p4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->G:Z

    .line 185
    invoke-virtual {p0, p1, p2, p3}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 187
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a()V

    .line 188
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a(Z)V

    .line 302
    return-void
.end method

.method a(FZ)V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 789
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 790
    :cond_1
    iput p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aD:F

    .line 791
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    float-to-double v0, p1

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_4

    float-to-double v0, p1

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_4

    .line 793
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->x:Z

    if-nez v0, :cond_2

    .line 795
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 798
    :cond_2
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->z:Z

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->V:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_3

    float-to-double v0, p1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->x:Z

    if-nez v0, :cond_3

    .line 802
    new-instance v0, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    .line 803
    const-string v1, "user_action"

    invoke-virtual {v0, v1, p2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 805
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 806
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->V:Landroid/graphics/Bitmap;

    .line 807
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    const-string v2, "sound_unmute"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v1, v2, v0, v3}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 808
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->r:Z

    goto :goto_0

    .line 811
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->V:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_0

    float-to-double v0, p1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 813
    new-instance v0, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    .line 814
    const-string v1, "user_action"

    invoke-virtual {v0, v1, p2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 816
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/ADCImage;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 817
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->V:Landroid/graphics/Bitmap;

    .line 818
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    const-string v2, "sound_mute"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v1, v2, v0, v3}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 819
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->r:Z

    goto/16 :goto_0

    .line 822
    :cond_4
    float-to-double v0, p1

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    float-to-double v0, p1

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_0

    .line 824
    iput p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aC:F

    goto/16 :goto_0
.end method

.method a(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 196
    return-void
.end method

.method a(Landroid/app/Activity;Ljava/lang/String;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 199
    invoke-static {}, Lcom/jirbo/adcolony/a;->e()V

    .line 200
    const/4 v0, 0x0

    sput v0, Lcom/jirbo/adcolony/a;->am:I

    .line 202
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->d:Landroid/app/Activity;

    .line 203
    iput-object p2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->e:Ljava/lang/String;

    .line 204
    iput p3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    .line 205
    iput p3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->k:I

    .line 206
    if-eqz p4, :cond_0

    .line 208
    iput p4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->l:I

    .line 209
    iput p4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    .line 210
    iput-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->o:Z

    .line 213
    :cond_0
    iput-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->r:Z

    .line 215
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aE:F

    .line 218
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_4

    .line 222
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 223
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 224
    iget v0, v2, Landroid/graphics/Point;->x:I

    .line 225
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 233
    :goto_0
    if-ge v0, v1, :cond_5

    :goto_1
    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->az:I

    .line 235
    new-instance v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-direct {v0, p2}, Lcom/jirbo/adcolony/AdColonyInterstitialAd;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    .line 237
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v1, "native"

    iput-object v1, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->k:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v1, "native"

    iput-object v1, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->l:Ljava/lang/String;

    .line 240
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->setBackgroundColor(I)V

    .line 242
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->B:Z

    if-eqz v0, :cond_3

    .line 244
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    if-nez v0, :cond_6

    .line 246
    :cond_1
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->G:Z

    if-nez v0, :cond_2

    .line 248
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v1, "AdColonyNativeAdView created while no ads are available, returning blank view."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 249
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const/4 v1, 0x5

    iput v1, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->g:I

    .line 250
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, p2, v1}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 252
    :cond_2
    iput-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aH:Z

    .line 271
    :cond_3
    :goto_2
    return-void

    .line 229
    :cond_4
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 230
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 233
    goto :goto_1

    .line 255
    :cond_6
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->i:Lcom/jirbo/adcolony/n$ad;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aA:Lcom/jirbo/adcolony/n$ad;

    .line 256
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->G:Z

    if-nez v0, :cond_3

    .line 258
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->G:Z

    if-nez v0, :cond_7

    .line 260
    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_7
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->i:Lcom/jirbo/adcolony/n$ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$ad;->c()Z

    .line 263
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->a(Z)Z

    move-result v0

    if-nez v0, :cond_8

    .line 265
    iput-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aH:Z

    .line 267
    :cond_8
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    iput-boolean v3, v0, Lcom/jirbo/adcolony/n$p;->i:Z

    .line 268
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, p2, v1}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    goto :goto_2
.end method

.method a(Z)V
    .locals 13

    .prologue
    const/16 v12, 0x30

    const/16 v11, 0xe

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 305
    iput-boolean v8, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->z:Z

    .line 306
    iput-boolean v8, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->q:Z

    .line 307
    invoke-virtual {p0, v8}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->setWillNotDraw(Z)V

    .line 309
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iput-object p0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->x:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    .line 311
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->B:Z

    if-eqz v0, :cond_14

    .line 313
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->h:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v9, v8}, Lcom/jirbo/adcolony/d;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aH:Z

    if-nez v0, :cond_5

    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/c;->b(Ljava/lang/String;)V

    .line 318
    :goto_0
    const-string v0, "video_filepath"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->f:Ljava/lang/String;

    .line 319
    const-string v0, "advertiser_name"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ai:Ljava/lang/String;

    .line 320
    const-string v0, "description"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aj:Ljava/lang/String;

    .line 321
    const-string v0, "title"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ak:Ljava/lang/String;

    .line 322
    const-string v0, "poster_image"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->al:Ljava/lang/String;

    .line 323
    const-string v0, "unmute"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->am:Ljava/lang/String;

    .line 324
    const-string v0, "mute"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->an:Ljava/lang/String;

    .line 325
    const-string v0, "thumb_image"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ao:Ljava/lang/String;

    .line 326
    const-string v0, "native_engagement_enabled"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->i(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    .line 327
    const-string v0, "native_engagement_label"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Ljava/lang/String;

    .line 328
    const-string v0, "native_engagement_command"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ae:Ljava/lang/String;

    .line 329
    const-string v0, "native_engagement_type"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->af:Ljava/lang/String;

    .line 330
    const-string v0, "v4iap_enabled"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->i(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->J:Z

    .line 331
    const-string v0, "click_to_install"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->i(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->K:Z

    .line 332
    const-string v0, "store_url"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->L:Ljava/lang/String;

    .line 334
    sget-object v0, Lcom/jirbo/adcolony/a;->ad:Ljava/lang/String;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aq:Ljava/lang/String;

    .line 336
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->J:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jirbo/adcolony/AdColonyIAPEngagement;->AUTOMATIC:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ar:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    .line 337
    :cond_1
    const-string v0, "product_id"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ap:Ljava/lang/String;

    .line 338
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/n$p;->b:Z

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->y:Z

    .line 340
    :goto_1
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aA:Lcom/jirbo/adcolony/n$ad;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aA:Lcom/jirbo/adcolony/n$ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$ad;->m()V

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/n$p;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->i:Lcom/jirbo/adcolony/n$ad;

    if-nez v0, :cond_7

    .line 343
    :cond_3
    const/16 v0, 0xd

    sput v0, Lcom/jirbo/adcolony/a;->am:I

    .line 540
    :cond_4
    :goto_2
    return-void

    .line 314
    :cond_5
    iput-boolean v9, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    goto/16 :goto_0

    .line 339
    :cond_6
    iput-boolean v9, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->y:Z

    goto :goto_1

    .line 346
    :cond_7
    iput-boolean v9, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->s:Z

    .line 347
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->G:Z

    if-nez v0, :cond_4

    .line 352
    :cond_8
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->B:Z

    if-eqz v0, :cond_c

    .line 355
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->z:Lcom/jirbo/adcolony/n$ac;

    iget v0, v0, Lcom/jirbo/adcolony/n$ac;->b:I

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->as:I

    .line 356
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->z:Lcom/jirbo/adcolony/n$ac;

    iget v0, v0, Lcom/jirbo/adcolony/n$ac;->c:I

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->at:I

    .line 358
    invoke-static {}, Lcom/jirbo/adcolony/a;->h()V

    .line 360
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 362
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->at:I

    int-to-double v0, v0

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    int-to-double v2, v2

    iget v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->as:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    .line 363
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->l:I

    .line 366
    :cond_9
    if-nez p1, :cond_a

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    div-int/lit8 v1, v1, 0x6

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    .line 368
    :cond_a
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->as:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 369
    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->at:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 370
    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->as:I

    int-to-float v2, v2

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->at:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 372
    cmpl-float v0, v0, v1

    if-lez v0, :cond_15

    .line 375
    iput-boolean v9, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aG:Z

    .line 376
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    .line 385
    :goto_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    invoke-direct {v0, v1, v2, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aJ:Landroid/widget/FrameLayout$LayoutParams;

    .line 386
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->k:I

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->l:I

    invoke-direct {v0, v1, v2, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aI:Landroid/widget/FrameLayout$LayoutParams;

    .line 388
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    if-eqz v0, :cond_16

    if-nez p1, :cond_16

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aF:Z

    if-eqz v0, :cond_16

    .line 390
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aJ:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->l:I

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    div-int/lit8 v2, v2, 0xa

    sub-int/2addr v1, v2

    invoke-virtual {v0, v8, v1, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 391
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aI:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->l:I

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    div-int/lit8 v2, v2, 0xa

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->l:I

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    div-int/lit8 v3, v3, 0xa

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v8, v1, v8, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 409
    :cond_b
    :goto_4
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->al:Ljava/lang/String;

    invoke-direct {v0, v1, v9, v8}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->P:Lcom/jirbo/adcolony/ADCImage;

    .line 410
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->P:Lcom/jirbo/adcolony/ADCImage;

    iget v0, v0, Lcom/jirbo/adcolony/ADCImage;->f:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float v0, v10, v0

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->P:Lcom/jirbo/adcolony/ADCImage;

    iget v1, v1, Lcom/jirbo/adcolony/ADCImage;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    div-float v1, v10, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_19

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->P:Lcom/jirbo/adcolony/ADCImage;

    iget v0, v0, Lcom/jirbo/adcolony/ADCImage;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float v0, v10, v0

    .line 413
    :goto_5
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->P:Lcom/jirbo/adcolony/ADCImage;

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3, v9}, Lcom/jirbo/adcolony/ADCImage;->a(DZ)V

    .line 415
    iput-boolean v8, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->B:Z

    .line 418
    :cond_c
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    if-eqz v0, :cond_d

    .line 420
    new-instance v0, Landroid/widget/Button;

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ac:Landroid/widget/Button;

    .line 421
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ac:Landroid/widget/Button;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ac:Landroid/widget/Button;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 423
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ac:Landroid/widget/Button;

    const-wide/high16 v2, 0x4032000000000000L    # 18.0

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    int-to-double v4, v1

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->az:I

    int-to-double v6, v1

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 424
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ac:Landroid/widget/Button;

    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 425
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ac:Landroid/widget/Button;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ax:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 426
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ac:Landroid/widget/Button;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ay:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 427
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ac:Landroid/widget/Button;

    new-instance v1, Lcom/jirbo/adcolony/AdColonyNativeAdView$1;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView$1;-><init>(Lcom/jirbo/adcolony/AdColonyNativeAdView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 473
    :cond_d
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->am:Ljava/lang/String;

    invoke-direct {v0, v1, v9, v8}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/ADCImage;

    .line 474
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->an:Ljava/lang/String;

    invoke-direct {v0, v1, v9, v8}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    .line 475
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ao:Ljava/lang/String;

    invoke-direct {v0, v1, v9, v8}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->W:Lcom/jirbo/adcolony/ADCImage;

    .line 476
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->W:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->W:Lcom/jirbo/adcolony/ADCImage;

    iget v1, v1, Lcom/jirbo/adcolony/ADCImage;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v2, v1

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    int-to-double v4, v1

    const-wide/high16 v6, 0x4016000000000000L    # 5.5

    div-double/2addr v4, v6

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    int-to-float v1, v1

    float-to-double v6, v1

    div-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-float v1, v2

    div-float v1, v10, v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3, v9}, Lcom/jirbo/adcolony/ADCImage;->a(DZ)V

    .line 477
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aE:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3, v9}, Lcom/jirbo/adcolony/ADCImage;->a(DZ)V

    .line 478
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/ADCImage;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aE:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3, v9}, Lcom/jirbo/adcolony/ADCImage;->a(DZ)V

    .line 480
    new-instance v0, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;-><init>(Lcom/jirbo/adcolony/AdColonyNativeAdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    .line 481
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aa:Landroid/widget/ImageView;

    .line 482
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    .line 483
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aa:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->W:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 485
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->r:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 487
    :goto_6
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget v1, v1, Lcom/jirbo/adcolony/ADCImage;->f:I

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->g:I

    invoke-direct {v0, v1, v2, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 488
    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->k:I

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->f:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v8, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 489
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    new-instance v2, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;

    invoke-direct {v2, p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;-><init>(Lcom/jirbo/adcolony/AdColonyNativeAdView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->V:Landroid/graphics/Bitmap;

    .line 512
    iget-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 513
    :cond_e
    iget-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->v:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 515
    :cond_f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v11, :cond_10

    new-instance v1, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v2

    iget-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    invoke-direct {v1, p0, v2, v3}, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;-><init>(Lcom/jirbo/adcolony/AdColonyNativeAdView;Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->U:Landroid/view/View;

    .line 520
    :cond_10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v11, :cond_11

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->U:Landroid/view/View;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aJ:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    :cond_11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v11, :cond_12

    iput-boolean v9, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    .line 523
    :cond_12
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aI:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    iget-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->y:Z

    if-eqz v1, :cond_13

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v11, :cond_13

    iget-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->D:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    :cond_13
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    if-eqz v0, :cond_4

    .line 529
    if-eqz p1, :cond_1b

    .line 531
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->k:I

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->l:I

    div-int/lit8 v2, v2, 0x5

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 538
    :goto_7
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ac:Landroid/widget/Button;

    invoke-virtual {p0, v1, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 349
    :cond_14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v11, :cond_8

    goto/16 :goto_2

    .line 381
    :cond_15
    iput-boolean v9, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aF:Z

    .line 382
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    goto/16 :goto_3

    .line 393
    :cond_16
    if-nez p1, :cond_17

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aF:Z

    if-eqz v0, :cond_17

    .line 395
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aJ:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->l:I

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v8, v1, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 396
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aI:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->l:I

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->l:I

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v8, v1, v8, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_4

    .line 398
    :cond_17
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    if-eqz v0, :cond_18

    if-nez p1, :cond_18

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aG:Z

    if-eqz v0, :cond_18

    .line 400
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aJ:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->k:I

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, v8, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 401
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aI:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->k:I

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->k:I

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v8, v2, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_4

    .line 403
    :cond_18
    if-nez p1, :cond_b

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aG:Z

    if-eqz v0, :cond_b

    .line 405
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aJ:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->k:I

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, v8, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 406
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aI:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->k:I

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->k:I

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v8, v2, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_4

    .line 410
    :cond_19
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->P:Lcom/jirbo/adcolony/ADCImage;

    iget v0, v0, Lcom/jirbo/adcolony/ADCImage;->f:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->au:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float v0, v10, v0

    goto/16 :goto_5

    .line 486
    :cond_1a
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_6

    .line 535
    :cond_1b
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->k:I

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->av:I

    div-int/lit8 v2, v2, 0x5

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto/16 :goto_7
.end method

.method a(ZZ)V
    .locals 4

    .prologue
    .line 611
    if-eqz p1, :cond_1

    .line 613
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->r:Z

    .line 615
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a(FZ)V

    .line 616
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/ADCImage;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->V:Landroid/graphics/Bitmap;

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->V:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_0

    .line 620
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->r:Z

    .line 622
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 624
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aD:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    .line 626
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aD:F

    invoke-virtual {p0, v0, p2}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a(FZ)V

    .line 633
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->V:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 630
    :cond_3
    const/high16 v0, 0x3e800000    # 0.25f

    invoke-virtual {p0, v0, p2}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a(FZ)V

    goto :goto_1
.end method

.method declared-synchronized b()V
    .locals 2

    .prologue
    .line 837
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 843
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 838
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aD:F

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->setVolume(F)V

    .line 839
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 840
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/d;->a(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 841
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->s:Z

    .line 842
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->N:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->N:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lcom/jirbo/adcolony/AdColonyNativeAdListener;->onAdColonyNativeAdStarted(ZLcom/jirbo/adcolony/AdColonyNativeAdView;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 837
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 552
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->a(Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aH:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/AdColony;->isZoneNative(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 553
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()V
    .locals 3

    .prologue
    .line 850
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->v:Z

    if-nez v0, :cond_0

    .line 852
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    const-string v1, "video_paused"

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/t;->b(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 853
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 855
    :cond_0
    return-void
.end method

.method c(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 766
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 768
    if-eqz p1, :cond_1

    .line 770
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 771
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 772
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/ADCImage;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->V:Landroid/graphics/Bitmap;

    .line 782
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aD:F

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aD:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 777
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 778
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->V:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public canceled()Z
    .locals 1

    .prologue
    .line 690
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->I:Z

    return v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 649
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "[ADC] Native Ad Destroy called."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 650
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ah:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ah:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 652
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    .line 653
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jirbo/adcolony/n$p;->i:Z

    .line 654
    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 655
    return-void
.end method

.method public getAdvertiserImage()Landroid/widget/ImageView;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 662
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->W:Lcom/jirbo/adcolony/ADCImage;

    if-nez v0, :cond_0

    .line 664
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ao:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->W:Lcom/jirbo/adcolony/ADCImage;

    .line 665
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->W:Lcom/jirbo/adcolony/ADCImage;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aE:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3, v4}, Lcom/jirbo/adcolony/ADCImage;->a(DZ)V

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aa:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 670
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aa:Landroid/widget/ImageView;

    .line 671
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aa:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->W:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aa:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getAdvertiserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ai:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aj:Ljava/lang/String;

    return-object v0
.end method

.method public getEngagementCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ae:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 287
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ae:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEngagementLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 281
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEngagementType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->af:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 293
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->af:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNativeAdHeight()I
    .locals 2

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->l:I

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->l:I

    div-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->l:I

    goto :goto_0
.end method

.method public getNativeAdWidth()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->k:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ak:Ljava/lang/String;

    return-object v0
.end method

.method public iapEnabled()Z
    .locals 1

    .prologue
    .line 695
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->J:Z

    return v0
.end method

.method public iapEngagementType()Lcom/jirbo/adcolony/AdColonyIAPEngagement;
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->z:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    sget-object v1, Lcom/jirbo/adcolony/AdColonyIAPEngagement;->END_CARD:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/AdColonyIAPEngagement;->END_CARD:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    .line 704
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ar:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    goto :goto_0
.end method

.method public iapProductID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ap:Ljava/lang/String;

    return-object v0
.end method

.method public isEngagementEnabled()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    return v0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 547
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->a(Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aH:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->s:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->F:Z

    if-nez v1, :cond_1

    .line 548
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyAddedToListView()V
    .locals 4

    .prologue
    .line 1067
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->m:Z

    if-nez v0, :cond_0

    .line 1069
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->m:Z

    .line 1073
    :goto_0
    return-void

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->U:Landroid/view/View;

    check-cast v0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->h:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->i:I

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->j:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 892
    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aK:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    :goto_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 900
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 901
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v1, "native"

    iput-object v1, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->k:Ljava/lang/String;

    .line 902
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v1, "native"

    iput-object v1, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->l:Ljava/lang/String;

    .line 903
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iput-boolean v5, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->s:Z

    .line 904
    iput-boolean v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    .line 905
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 906
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    .line 907
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iput v4, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->r:I

    .line 908
    new-instance v0, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    .line 909
    const-string v1, "ad_slot"

    sget-object v2, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v2, v2, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget v2, v2, Lcom/jirbo/adcolony/u;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 910
    const-string v1, "replay"

    invoke-virtual {v0, v1, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 911
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    const-string v2, "native_complete"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v1, v2, v0, v3}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 912
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iput-boolean v4, v0, Lcom/jirbo/adcolony/n$a;->r:Z

    .line 914
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->N:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->N:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    invoke-interface {v0, v4, p0}, Lcom/jirbo/adcolony/AdColonyNativeAdListener;->onAdColonyNativeAdFinished(ZLcom/jirbo/adcolony/AdColonyNativeAdView;)V

    .line 915
    :cond_1
    iput-boolean v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->C:Z

    .line 916
    return-void

    .line 894
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v5, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 940
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 944
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 946
    :cond_2
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aw:I

    .line 947
    :cond_3
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aw:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aw:I

    iput v4, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->r:I

    .line 949
    :cond_4
    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 950
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->getNativeAdHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-le v0, v4, :cond_8

    iget v0, v3, Landroid/graphics/Rect;->right:I

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->getNativeAdWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-le v0, v4, :cond_8

    move v0, v1

    .line 952
    :goto_1
    if-nez v0, :cond_5

    iget-boolean v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->n:Z

    if-eqz v4, :cond_6

    :cond_5
    iget-boolean v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->n:Z

    if-eqz v4, :cond_9

    if-eqz v0, :cond_6

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    .line 953
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->getNativeAdHeight()I

    move-result v4

    if-ge v0, v4, :cond_9

    iget v0, v3, Landroid/graphics/Rect;->top:I

    if-eqz v0, :cond_9

    .line 955
    :cond_6
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->v:Z

    if-nez v0, :cond_7

    .line 957
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "[ADC] Scroll Pause"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 958
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    const-string v1, "video_paused"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v3}, Lcom/jirbo/adcolony/t;->b(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 959
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 960
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 991
    :cond_7
    :goto_2
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->A:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->invalidate()V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 950
    goto :goto_1

    .line 963
    :cond_9
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 965
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->z:Z

    if-nez v0, :cond_a

    .line 967
    invoke-virtual {p1, v5, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    goto :goto_2

    .line 971
    :cond_a
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v2, "native"

    iput-object v2, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->k:Ljava/lang/String;

    .line 972
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v2, "native"

    iput-object v2, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->l:Ljava/lang/String;

    .line 973
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v2, v3, v4}, Lcom/jirbo/adcolony/d;->a(DLcom/jirbo/adcolony/AdColonyAd;)V

    .line 976
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->H:Z

    if-nez v0, :cond_7

    .line 978
    iput-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->H:Z

    .line 979
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    const-string v2, "native_start"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"ad_slot\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v4, v4, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget v4, v4, Lcom/jirbo/adcolony/u;->j:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \"replay\":false}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v2, v3, v4}, Lcom/jirbo/adcolony/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 980
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/n$a;->r:Z

    .line 981
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/n$a;->q:Z

    .line 982
    invoke-static {}, Lcom/jirbo/adcolony/a;->h()V

    .line 983
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->i:Lcom/jirbo/adcolony/n$ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ad;->j:Lcom/jirbo/adcolony/ADCData$c;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v1, v1, Lcom/jirbo/adcolony/n$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCData$c;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$c;

    goto/16 :goto_2

    .line 987
    :cond_b
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;->a:Z

    if-nez v0, :cond_7

    .line 989
    invoke-virtual {p1, v5, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    goto/16 :goto_2
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "player"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 923
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 924
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 925
    iput-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    .line 926
    iput-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->z:Z

    .line 927
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    .line 928
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iput v3, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->r:I

    .line 929
    return v2
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 862
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "[ADC] Native Ad onPrepared called."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 863
    iput-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->z:Z

    .line 865
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->V:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 868
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 869
    iput-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    .line 870
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    .line 871
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iput v3, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->r:I

    .line 883
    :goto_0
    return-void

    .line 875
    :cond_1
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->r:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->V:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 877
    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->c(Z)V

    goto :goto_0

    .line 881
    :cond_2
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aD:F

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->setVolume(F)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1003
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 1062
    :goto_0
    return v0

    .line 1004
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1006
    if-ne v2, v1, :cond_3

    sget-boolean v2, Lcom/jirbo/adcolony/a;->E:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/jirbo/adcolony/q;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1008
    iget-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->K:Z

    if-nez v2, :cond_5

    .line 1010
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    sput-object v2, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    .line 1011
    sget-object v2, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v2, v2, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/c;->a(Ljava/lang/String;Lcom/jirbo/adcolony/n$a;)V

    .line 1012
    invoke-static {}, Lcom/jirbo/adcolony/ADCVideo;->a()V

    .line 1017
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->C:Z

    iput-boolean v3, v2, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->u:Z

    .line 1020
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iput-boolean v1, v2, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->t:Z

    .line 1021
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v3, "native"

    iput-object v3, v2, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->k:Ljava/lang/String;

    .line 1022
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v3, "fullscreen"

    iput-object v3, v2, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->l:Ljava/lang/String;

    .line 1023
    sput-boolean v0, Lcom/jirbo/adcolony/a;->E:Z

    .line 1024
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    const-string v2, "video_expanded"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/t;->b(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 1025
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->N:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->N:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    invoke-interface {v0, v1, p0}, Lcom/jirbo/adcolony/AdColonyNativeAdListener;->onAdColonyNativeAdStarted(ZLcom/jirbo/adcolony/AdColonyNativeAdView;)V

    .line 1026
    :cond_1
    sget-boolean v0, Lcom/jirbo/adcolony/a;->m:Z

    if-eqz v0, :cond_4

    .line 1028
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v2, "Launching AdColonyOverlay"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 1029
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/jirbo/adcolony/AdColonyOverlay;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1036
    :goto_1
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-eqz v0, :cond_2

    .line 1039
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const/4 v2, -0x1

    iput v2, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->f:I

    .line 1040
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->i:Lcom/jirbo/adcolony/n$ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ad;->r:Lcom/jirbo/adcolony/af;

    iget v2, v0, Lcom/jirbo/adcolony/af;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/jirbo/adcolony/af;->d:I

    .line 1042
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Lcom/jirbo/adcolony/n$a;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/n$a;->r:Z

    .line 1044
    :cond_2
    iput-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    .line 1045
    iput-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->C:Z

    :cond_3
    :goto_2
    move v0, v1

    .line 1062
    goto/16 :goto_0

    .line 1033
    :cond_4
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v2, "Launching AdColonyFullscreen"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 1034
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/jirbo/adcolony/AdColonyFullscreen;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1052
    :cond_5
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->L:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1053
    sget-object v3, Lcom/jirbo/adcolony/a;->P:Landroid/app/Activity;

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1055
    :catch_0
    move-exception v2

    .line 1057
    sget-object v2, Lcom/jirbo/adcolony/a;->P:Landroid/app/Activity;

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Unable to open store."

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 730
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "[ADC] Native Ad Pause called."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 731
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 733
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    const-string v1, "video_paused"

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/t;->b(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 734
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->v:Z

    .line 735
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 736
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 737
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 739
    :cond_0
    return-void
.end method

.method public prepareForListView()V
    .locals 1

    .prologue
    .line 1077
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->n:Z

    .line 1078
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 749
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "[ADC] Native Ad Resume called."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 750
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->v:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 752
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    const-string v1, "video_resumed"

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/t;->b(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 753
    iput-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->v:Z

    .line 754
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget v1, v1, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->r:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 755
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 756
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 757
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 759
    :cond_0
    return-void
.end method

.method public setMuted(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 639
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a(ZZ)V

    .line 640
    return-void
.end method

.method public setOverlayButtonColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 570
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ac:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 571
    :cond_0
    iput p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ax:I

    .line 572
    return-void
.end method

.method public setOverlayButtonTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ac:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 580
    :cond_0
    iput p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ay:I

    .line 581
    return-void
.end method

.method public setOverlayButtonTypeface(Landroid/graphics/Typeface;I)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ab:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ac:Landroid/widget/Button;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 585
    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 829
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a(FZ)V

    .line 830
    return-void
.end method

.method public withListener(Lcom/jirbo/adcolony/AdColonyNativeAdListener;)Lcom/jirbo/adcolony/AdColonyNativeAdView;
    .locals 1
    .param p1, "listener"    # Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    .prologue
    .line 713
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->N:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    .line 714
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->M:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iput-object p1, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->C:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    .line 715
    return-object p0
.end method

.method public withMutedListener(Lcom/jirbo/adcolony/AdColonyNativeAdMutedListener;)Lcom/jirbo/adcolony/AdColonyNativeAdView;
    .locals 0
    .param p1, "mute_listener"    # Lcom/jirbo/adcolony/AdColonyNativeAdMutedListener;

    .prologue
    .line 719
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->O:Lcom/jirbo/adcolony/AdColonyNativeAdMutedListener;

    .line 720
    return-object p0
.end method
