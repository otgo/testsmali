.class Lcom/jirbo/adcolony/AdColonyNativeAdView$a;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/AdColonyNativeAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field final synthetic c:Lcom/jirbo/adcolony/AdColonyNativeAdView;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/AdColonyNativeAdView;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1007
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;-><init>(Lcom/jirbo/adcolony/AdColonyNativeAdView;Landroid/content/Context;Z)V

    .line 1008
    return-void
.end method

.method constructor <init>(Lcom/jirbo/adcolony/AdColonyNativeAdView;Landroid/content/Context;Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1011
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    .line 1012
    invoke-direct {p0, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 1000
    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->a:Z

    .line 1001
    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->b:Z

    .line 1013
    invoke-virtual {p0, p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1014
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->setWillNotDraw(Z)V

    .line 1015
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->setBackgroundColor(I)V

    .line 1016
    iput-boolean p3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->a:Z

    .line 1017
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 6
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 1021
    if-nez p1, :cond_1

    .line 1023
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iput-boolean v4, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    .line 1024
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 1028
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 1029
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iput-object p1, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->h:Landroid/graphics/SurfaceTexture;

    .line 1030
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->a:Z

    if-nez v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ae:Landroid/view/Surface;

    .line 1032
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1033
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iput p2, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->i:I

    .line 1034
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iput p3, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->j:I

    .line 1035
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Landroid/media/MediaPlayer;

    .line 1038
    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyNativeAdView;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aF:Ljava/io/FileInputStream;

    .line 1039
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aF:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 1040
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ae:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 1041
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1042
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1043
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1044
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 1045
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "[ADC] Native Ad Prepare called."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 1046
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->b:Z

    .line 1047
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1048
    new-instance v1, Lcom/jirbo/adcolony/AdColonyNativeAdView$a$1;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView$a$1;-><init>(Lcom/jirbo/adcolony/AdColonyNativeAdView$a;)V

    .line 1060
    iget-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->b:Z

    if-nez v2, :cond_0

    const-wide/16 v2, 0x708

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1062
    :catch_0
    move-exception v0

    .line 1064
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iput-boolean v4, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    .line 1065
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x0

    .line 1076
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "[ADC] Native surface destroyed"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 1077
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iput-boolean v2, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->z:Z

    .line 1078
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1079
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;->setVisibility(I)V

    .line 1080
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1071
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "[ADC] onSurfaceTextureSizeChanged"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 1072
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 1085
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1095
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1096
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1097
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1099
    if-ne v0, v4, :cond_0

    sget-boolean v0, Lcom/jirbo/adcolony/a;->v:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aq:I

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->O:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->f:I

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->O:Lcom/jirbo/adcolony/ADCImage;

    iget v0, v0, Lcom/jirbo/adcolony/ADCImage;->g:I

    add-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Landroid/media/MediaPlayer;

    .line 1102
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1153
    :cond_0
    :goto_0
    return v4

    .line 1103
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->K:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    sput-object v0, Lcom/jirbo/adcolony/a;->K:Lcom/jirbo/adcolony/AdColonyAd;

    .line 1104
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyNativeAdView;->K:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->i:Lcom/jirbo/adcolony/n$a;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/c;->a(Ljava/lang/String;Lcom/jirbo/adcolony/n$a;)V

    .line 1105
    invoke-static {}, Lcom/jirbo/adcolony/ADCVideo;->a()V

    .line 1108
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->K:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v1, "native"

    iput-object v1, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->j:Ljava/lang/String;

    .line 1109
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->K:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v1, "fullscreen"

    iput-object v1, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->k:Ljava/lang/String;

    .line 1110
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->K:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iput-boolean v4, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->r:Z

    .line 1113
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->K:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->C:Z

    iput-boolean v1, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->s:Z

    .line 1115
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->z:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-eqz v0, :cond_0

    :cond_2
    invoke-static {}, Lcom/jirbo/adcolony/q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->L:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->L:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-interface {v0, v4, v1}, Lcom/jirbo/adcolony/AdColonyNativeAdListener;->onAdColonyNativeAdStarted(ZLcom/jirbo/adcolony/AdColonyNativeAdView;)V

    .line 1118
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1120
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    sput v0, Lcom/jirbo/adcolony/ADCVideo;->c:I

    .line 1121
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->K:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->K:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-wide v2, v1, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->n:D

    iput-wide v2, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->o:D

    .line 1122
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1123
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iput-boolean v4, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    .line 1130
    :goto_1
    sput-boolean v5, Lcom/jirbo/adcolony/a;->v:Z

    .line 1131
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/u;

    const-string v1, "video_expanded"

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyNativeAdView;->K:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/u;->b(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 1132
    sget-boolean v0, Lcom/jirbo/adcolony/a;->m:Z

    if-eqz v0, :cond_6

    .line 1134
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "Launching AdColonyOverlay"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 1135
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/jirbo/adcolony/AdColonyOverlay;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1143
    :goto_2
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-eqz v0, :cond_4

    .line 1146
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->K:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->h:Lcom/jirbo/adcolony/n$ab;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ab;->k:Lcom/jirbo/adcolony/ag;

    iget v1, v0, Lcom/jirbo/adcolony/ag;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/jirbo/adcolony/ag;->d:I

    .line 1147
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    const-string v1, "start"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"ad_slot\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->K:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->h:Lcom/jirbo/adcolony/n$ab;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$ab;->k:Lcom/jirbo/adcolony/ag;

    iget v3, v3, Lcom/jirbo/adcolony/ag;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \"replay\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->K:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-boolean v3, v3, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->s:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->K:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 1148
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->h:Lcom/jirbo/adcolony/t;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->K:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyNativeAdView;->K:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->i:Lcom/jirbo/adcolony/n$a;

    iget v2, v2, Lcom/jirbo/adcolony/n$a;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;I)V

    .line 1150
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iput-boolean v4, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->C:Z

    goto/16 :goto_0

    .line 1127
    :cond_5
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->K:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->o:D

    .line 1128
    sput v5, Lcom/jirbo/adcolony/ADCVideo;->c:I

    goto/16 :goto_1

    .line 1139
    :cond_6
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "Launching AdColonyFullscreen"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 1140
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/jirbo/adcolony/AdColonyFullscreen;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2
.end method
