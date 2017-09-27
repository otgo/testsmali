.class Lcom/jirbo/adcolony/ad;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/ad$b;,
        Lcom/jirbo/adcolony/ad$a;
    }
.end annotation


# static fields
.field static aB:[F


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

.field L:Z

.field M:Z

.field N:Z

.field O:Z

.field P:Z

.field Q:Z

.field R:Z

.field S:Z

.field T:Z

.field U:Z

.field V:Z

.field W:Landroid/graphics/Canvas;

.field a:Landroid/webkit/WebView;

.field aA:[Ljava/lang/String;

.field aC:F

.field aD:F

.field aE:F

.field aF:F

.field aG:F

.field aH:F

.field aI:F

.field aJ:Landroid/graphics/Paint;

.field aK:Landroid/graphics/RectF;

.field aL:Lcom/jirbo/adcolony/ad$b;

.field aM:Landroid/os/Handler;

.field aa:Ljava/lang/String;

.field ab:Ljava/lang/String;

.field ac:Ljava/lang/String;

.field ad:Ljava/lang/String;

.field ae:Ljava/lang/String;

.field af:Ljava/lang/String;

.field ag:Lcom/jirbo/adcolony/aa$b;

.field ah:Landroid/graphics/Paint;

.field ai:Landroid/graphics/Paint;

.field aj:Landroid/graphics/Paint;

.field ak:Landroid/graphics/Paint;

.field al:Landroid/graphics/Rect;

.field am:Lcom/jirbo/adcolony/ADCImage;

.field an:Lcom/jirbo/adcolony/ADCImage;

.field ao:Lcom/jirbo/adcolony/ADCImage;

.field ap:Lcom/jirbo/adcolony/ADCImage;

.field aq:Lcom/jirbo/adcolony/ADCImage;

.field ar:Lcom/jirbo/adcolony/ADCImage;

.field as:Lcom/jirbo/adcolony/ADCImage;

.field at:Lcom/jirbo/adcolony/ADCImage;

.field au:Lcom/jirbo/adcolony/ADCImage;

.field av:Lcom/jirbo/adcolony/ADCImage;

.field aw:Lcom/jirbo/adcolony/ADCImage;

.field ax:[Lcom/jirbo/adcolony/ADCImage;

.field ay:[Lcom/jirbo/adcolony/ADCImage;

.field az:Lcom/jirbo/adcolony/m;

.field b:Landroid/webkit/WebView;

.field c:Landroid/view/View;

.field d:Lcom/jirbo/adcolony/ADCVideo;

.field e:D

.field f:D

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field p:I

.field q:I

.field r:I

.field s:I

.field t:I

.field u:I

.field v:J

.field w:J

.field x:F

.field y:Z

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const/16 v0, 0x50

    new-array v0, v0, [F

    sput-object v0, Lcom/jirbo/adcolony/ad;->aB:[F

    return-void
.end method

.method constructor <init>(Lcom/jirbo/adcolony/ADCVideo;)V
    .locals 10

    .prologue
    const/4 v7, 0x3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 136
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    iput-wide v8, p0, Lcom/jirbo/adcolony/ad;->e:D

    .line 40
    iput-wide v8, p0, Lcom/jirbo/adcolony/ad;->f:D

    .line 42
    const/16 v0, 0x63

    iput v0, p0, Lcom/jirbo/adcolony/ad;->g:I

    .line 43
    iput v2, p0, Lcom/jirbo/adcolony/ad;->h:I

    .line 63
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ad;->y:Z

    .line 64
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ad;->z:Z

    .line 65
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ad;->A:Z

    .line 66
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ad;->B:Z

    .line 67
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ad;->C:Z

    .line 68
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ad;->D:Z

    .line 92
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v0, v0, Lcom/jirbo/adcolony/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->aa:Ljava/lang/String;

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ah:Landroid/graphics/Paint;

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ai:Landroid/graphics/Paint;

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->aj:Landroid/graphics/Paint;

    .line 104
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ak:Landroid/graphics/Paint;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->al:Landroid/graphics/Rect;

    .line 120
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/jirbo/adcolony/ADCImage;

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ax:[Lcom/jirbo/adcolony/ADCImage;

    .line 121
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/jirbo/adcolony/ADCImage;

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ay:[Lcom/jirbo/adcolony/ADCImage;

    .line 125
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->aA:[Ljava/lang/String;

    .line 131
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->aJ:Landroid/graphics/Paint;

    .line 132
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->aK:Landroid/graphics/RectF;

    .line 594
    new-instance v0, Lcom/jirbo/adcolony/ad$b;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ad$b;-><init>(Lcom/jirbo/adcolony/ad;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->aL:Lcom/jirbo/adcolony/ad$b;

    .line 596
    new-instance v0, Lcom/jirbo/adcolony/ad$2;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ad$2;-><init>(Lcom/jirbo/adcolony/ad;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->aM:Landroid/os/Handler;

    .line 138
    iput-object p1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    .line 140
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/c;->t:Z

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->M:Z

    .line 141
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    if-eqz v0, :cond_0

    .line 143
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->M:Z

    sget-object v3, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->z:Lcom/jirbo/adcolony/n$ac;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$ac;->l:Lcom/jirbo/adcolony/n$g;

    iget-boolean v3, v3, Lcom/jirbo/adcolony/n$g;->a:Z

    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->M:Z

    .line 144
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    sget-object v3, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iget-wide v4, v3, Lcom/jirbo/adcolony/AdColonyAd;->q:D

    iput-wide v4, v0, Lcom/jirbo/adcolony/AdColonyAd;->p:D

    .line 147
    :cond_0
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/jirbo/adcolony/ad;->x:F

    .line 149
    sget-boolean v0, Lcom/jirbo/adcolony/a;->Y:Z

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->Q:Z

    .line 151
    sget-object v0, Lcom/jirbo/adcolony/a;->ad:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jirbo/adcolony/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 153
    sget-object v0, Lcom/jirbo/adcolony/a;->ad:Ljava/lang/String;

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 154
    if-ltz v0, :cond_11

    sget-object v3, Lcom/jirbo/adcolony/a;->ad:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/jirbo/adcolony/a;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jirbo/adcolony/a;->ad:Ljava/lang/String;

    .line 158
    :cond_1
    iget-object v0, p1, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    sget-object v3, Lcom/jirbo/adcolony/a;->ad:Ljava/lang/String;

    iput-object v3, v0, Lcom/jirbo/adcolony/AdColonyAd;->o:Ljava/lang/String;

    .line 159
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v3, "DEC URL = "

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v3, p1, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyAd;->o:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 161
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->y:Lcom/jirbo/adcolony/n$h;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/n$h;->d:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-nez v0, :cond_12

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->N:Z

    .line 164
    :cond_2
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->N:Z

    if-eqz v0, :cond_13

    .line 167
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "end_card_filepath"

    invoke-static {v3}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->am:Lcom/jirbo/adcolony/ADCImage;

    .line 168
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->am:Lcom/jirbo/adcolony/ADCImage;

    iget v0, v0, Lcom/jirbo/adcolony/ADCImage;->f:I

    iput v0, p0, Lcom/jirbo/adcolony/ad;->n:I

    .line 169
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->am:Lcom/jirbo/adcolony/ADCImage;

    iget v0, v0, Lcom/jirbo/adcolony/ADCImage;->g:I

    iput v0, p0, Lcom/jirbo/adcolony/ad;->o:I

    .line 172
    iget v0, p0, Lcom/jirbo/adcolony/ad;->n:I

    if-nez v0, :cond_3

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->n:I

    .line 173
    :cond_3
    iget v0, p0, Lcom/jirbo/adcolony/ad;->o:I

    if-nez v0, :cond_4

    const/16 v0, 0x140

    iput v0, p0, Lcom/jirbo/adcolony/ad;->o:I

    .line 176
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ax:[Lcom/jirbo/adcolony/ADCImage;

    new-instance v3, Lcom/jirbo/adcolony/ADCImage;

    const-string v4, "info_image_normal"

    invoke-static {v4}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v2

    .line 177
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ax:[Lcom/jirbo/adcolony/ADCImage;

    new-instance v3, Lcom/jirbo/adcolony/ADCImage;

    const-string v4, "download_image_normal"

    invoke-static {v4}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v1

    .line 178
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ax:[Lcom/jirbo/adcolony/ADCImage;

    new-instance v3, Lcom/jirbo/adcolony/ADCImage;

    const-string v4, "replay_image_normal"

    invoke-static {v4}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v6

    .line 179
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ax:[Lcom/jirbo/adcolony/ADCImage;

    new-instance v3, Lcom/jirbo/adcolony/ADCImage;

    const-string v4, "continue_image_normal"

    invoke-static {v4}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v7

    .line 182
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ay:[Lcom/jirbo/adcolony/ADCImage;

    new-instance v3, Lcom/jirbo/adcolony/ADCImage;

    const-string v4, "info_image_down"

    invoke-static {v4}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;Z)V

    aput-object v3, v0, v2

    .line 183
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ay:[Lcom/jirbo/adcolony/ADCImage;

    new-instance v3, Lcom/jirbo/adcolony/ADCImage;

    const-string v4, "download_image_down"

    invoke-static {v4}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;Z)V

    aput-object v3, v0, v1

    .line 184
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ay:[Lcom/jirbo/adcolony/ADCImage;

    new-instance v3, Lcom/jirbo/adcolony/ADCImage;

    const-string v4, "replay_image_down"

    invoke-static {v4}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;Z)V

    aput-object v3, v0, v6

    .line 185
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ay:[Lcom/jirbo/adcolony/ADCImage;

    new-instance v3, Lcom/jirbo/adcolony/ADCImage;

    const-string v4, "continue_image_down"

    invoke-static {v4}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;Z)V

    aput-object v3, v0, v7

    .line 187
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aA:[Ljava/lang/String;

    const-string v3, "Info"

    aput-object v3, v0, v2

    .line 188
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aA:[Ljava/lang/String;

    const-string v3, "Download"

    aput-object v3, v0, v1

    .line 189
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aA:[Ljava/lang/String;

    const-string v3, "Replay"

    aput-object v3, v0, v6

    .line 190
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aA:[Ljava/lang/String;

    const-string v3, "Continue"

    aput-object v3, v0, v7

    .line 209
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->M:Z

    if-eqz v0, :cond_6

    .line 212
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "skip_video_image_normal"

    invoke-static {v3}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->an:Lcom/jirbo/adcolony/ADCImage;

    .line 213
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "skip_video_image_down"

    invoke-static {v3}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ao:Lcom/jirbo/adcolony/ADCImage;

    .line 214
    const-string v0, "skip_delay"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->h(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/jirbo/adcolony/ad;->p:I

    .line 218
    :cond_6
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aJ:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 219
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v3

    .line 220
    const/high16 v3, 0x40c00000    # 6.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_7

    const/high16 v0, 0x40c00000    # 6.0f

    .line 221
    :cond_7
    const/high16 v3, 0x40800000    # 4.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_8

    .line 222
    :cond_8
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aJ:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 223
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aJ:Landroid/graphics/Paint;

    const v3, -0x333334

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ad;->S:Z

    .line 227
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ad;->L:Z

    .line 228
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ad;->T:Z

    .line 229
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    if-eqz v0, :cond_9

    .line 231
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->z:Lcom/jirbo/adcolony/n$ac;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ac;->m:Lcom/jirbo/adcolony/n$g;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/n$g;->a:Z

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->L:Z

    .line 232
    const-string v0, "image_overlay_enabled"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->i(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->T:Z

    .line 234
    :cond_9
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->L:Z

    if-eqz v0, :cond_e

    .line 237
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "engagement_image_normal"

    invoke-static {v3}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->at:Lcom/jirbo/adcolony/ADCImage;

    .line 238
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "engagement_image_down"

    invoke-static {v3}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->au:Lcom/jirbo/adcolony/ADCImage;

    .line 239
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->z:Lcom/jirbo/adcolony/n$ac;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ac;->m:Lcom/jirbo/adcolony/n$g;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$g;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ad:Ljava/lang/String;

    .line 240
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->z:Lcom/jirbo/adcolony/n$ac;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ac;->m:Lcom/jirbo/adcolony/n$g;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$g;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ab:Ljava/lang/String;

    .line 241
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->z:Lcom/jirbo/adcolony/n$ac;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ac;->m:Lcom/jirbo/adcolony/n$g;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$g;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ac:Ljava/lang/String;

    .line 242
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->z:Lcom/jirbo/adcolony/n$ac;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ac;->m:Lcom/jirbo/adcolony/n$g;

    iget v0, v0, Lcom/jirbo/adcolony/n$g;->c:I

    iput v0, p0, Lcom/jirbo/adcolony/ad;->r:I

    .line 243
    const-string v0, "engagement_delay"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->h(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/jirbo/adcolony/ad;->q:I

    .line 244
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ab:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "Learn More"

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ab:Ljava/lang/String;

    .line 245
    :cond_a
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ac:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ad;->G:Z

    .line 247
    :cond_b
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->G:Z

    if-eqz v0, :cond_c

    .line 249
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->b:Landroid/webkit/WebView;

    .line 250
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 253
    :cond_c
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->at:Lcom/jirbo/adcolony/ADCImage;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->au:Lcom/jirbo/adcolony/ADCImage;

    if-nez v0, :cond_e

    :cond_d
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ad;->L:Z

    .line 255
    :cond_e
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->T:Z

    if-eqz v0, :cond_f

    .line 257
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    const-string v1, "image_overlay_filepath"

    invoke-static {v1}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->aw:Lcom/jirbo/adcolony/ADCImage;

    .line 258
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/jirbo/adcolony/ad;->r:I

    int-to-double v0, v0

    iget v2, p0, Lcom/jirbo/adcolony/ad;->x:F

    float-to-double v2, v2

    div-double/2addr v2, v8

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->aw:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->g:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 260
    :goto_3
    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->aw:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v2, v0, v1}, Lcom/jirbo/adcolony/ADCImage;->a(D)V

    .line 263
    :cond_f
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->f()V

    .line 266
    :cond_10
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ah:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 267
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aj:Landroid/graphics/Paint;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 268
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aj:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 269
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ai:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ai:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 271
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ai:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 272
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ak:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 273
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ak:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 278
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 279
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_4
    return-void

    .line 154
    :cond_11
    const-string v0, ""

    goto/16 :goto_0

    :cond_12
    move v0, v2

    .line 161
    goto/16 :goto_1

    .line 192
    :cond_13
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v0, :cond_5

    .line 195
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "reload_image_normal"

    invoke-static {v3}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ar:Lcom/jirbo/adcolony/ADCImage;

    .line 196
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "close_image_normal"

    invoke-static {v3}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ap:Lcom/jirbo/adcolony/ADCImage;

    .line 199
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "close_image_down"

    invoke-static {v3}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->aq:Lcom/jirbo/adcolony/ADCImage;

    .line 200
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "reload_image_down"

    invoke-static {v3}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->as:Lcom/jirbo/adcolony/ADCImage;

    .line 203
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "browser_icon"

    invoke-static {v3}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->av:Lcom/jirbo/adcolony/ADCImage;

    .line 205
    new-instance v0, Lcom/jirbo/adcolony/ad$a;

    invoke-direct {v0, p0, p1}, Lcom/jirbo/adcolony/ad$a;-><init>(Lcom/jirbo/adcolony/ad;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->c:Landroid/view/View;

    .line 206
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->b()V

    goto/16 :goto_2

    .line 258
    :cond_14
    iget v0, p0, Lcom/jirbo/adcolony/ad;->r:I

    int-to-double v0, v0

    iget v2, p0, Lcom/jirbo/adcolony/ad;->x:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->aw:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->g:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto/16 :goto_3

    .line 281
    :catch_0
    move-exception v0

    goto :goto_4
.end method


# virtual methods
.method a(II)I
    .locals 3

    .prologue
    .line 808
    const/4 v0, 0x0

    .line 810
    iget v1, p0, Lcom/jirbo/adcolony/ad;->g:I

    if-lt p1, v1, :cond_1

    iget v1, p0, Lcom/jirbo/adcolony/ad;->g:I

    add-int/lit8 v1, v1, 0x3e

    if-ge p1, v1, :cond_1

    const/4 v0, 0x1

    .line 816
    :cond_0
    :goto_0
    return v0

    .line 811
    :cond_1
    iget v1, p0, Lcom/jirbo/adcolony/ad;->g:I

    add-int/lit8 v1, v1, 0x4e

    if-lt p1, v1, :cond_2

    iget v1, p0, Lcom/jirbo/adcolony/ad;->g:I

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x3e

    if-ge p1, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 812
    :cond_2
    iget v1, p0, Lcom/jirbo/adcolony/ad;->g:I

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x4e

    if-lt p1, v1, :cond_3

    iget v1, p0, Lcom/jirbo/adcolony/ad;->g:I

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x3e

    if-ge p1, v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 813
    :cond_3
    iget v1, p0, Lcom/jirbo/adcolony/ad;->g:I

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x4e

    if-lt p1, v1, :cond_4

    iget v1, p0, Lcom/jirbo/adcolony/ad;->g:I

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x3e

    if-ge p1, v1, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    .line 814
    :cond_4
    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/jirbo/adcolony/ad;->M:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/e;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->an:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->f:I

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->an:Lcom/jirbo/adcolony/ADCImage;

    iget v1, v1, Lcom/jirbo/adcolony/ADCImage;->g:I

    if-gt p2, v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0
.end method

.method public a()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const-wide/high16 v12, 0x4084000000000000L    # 640.0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    const-wide v2, 0x3fe6666666666666L    # 0.7

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    .line 837
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCVideo;->b()Z

    move-result v6

    .line 838
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->y:Z

    or-int/2addr v0, v6

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->y:Z

    .line 840
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_1

    .line 842
    iget v0, p0, Lcom/jirbo/adcolony/ad;->s:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->s:I

    .line 844
    :cond_0
    if-eqz v6, :cond_1

    .line 846
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v1, v1, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v7, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v7, v7, Lcom/jirbo/adcolony/ADCVideo;->u:I

    const/16 v8, 0x11

    invoke-direct {v0, v1, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ad;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 847
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v7, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v7, v7, Lcom/jirbo/adcolony/ADCVideo;->x:I

    iget-object v8, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v8, v8, Lcom/jirbo/adcolony/ADCVideo;->y:I

    const/16 v9, 0x11

    invoke-direct {v1, v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 848
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->y:Z

    .line 852
    :cond_1
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->y:Z

    if-eqz v0, :cond_9

    .line 854
    iput-boolean v14, p0, Lcom/jirbo/adcolony/ad;->y:Z

    .line 857
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->z:Z

    if-eqz v0, :cond_4

    .line 859
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 860
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v7, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v7

    .line 861
    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    iget v8, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v7, v8

    .line 862
    mul-float/2addr v1, v1

    mul-float/2addr v7, v7

    add-float/2addr v1, v7

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 863
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v1, v7

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v7

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 864
    div-double/2addr v0, v8

    .line 866
    const-wide v8, 0x4071800000000000L    # 280.0

    div-double v8, v0, v8

    cmpg-double v7, v8, v2

    if-gez v7, :cond_a

    move-wide v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/jirbo/adcolony/ad;->f:D

    .line 867
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->isTablet()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/jirbo/adcolony/ad;->f:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/jirbo/adcolony/ad;->f:D

    .line 870
    :cond_2
    iget-wide v0, p0, Lcom/jirbo/adcolony/ad;->f:D

    mul-double/2addr v0, v10

    const-wide/high16 v2, 0x4032000000000000L    # 18.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_b

    const/high16 v0, 0x41900000    # 18.0f

    .line 871
    :goto_1
    iget-wide v2, p0, Lcom/jirbo/adcolony/ad;->f:D

    mul-double/2addr v2, v10

    const-wide/high16 v8, 0x4032000000000000L    # 18.0

    cmpg-double v1, v2, v8

    if-gez v1, :cond_c

    const/high16 v1, 0x41900000    # 18.0f

    .line 872
    :goto_2
    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->ai:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 873
    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->ak:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 874
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aj:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 877
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->L:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->at:Lcom/jirbo/adcolony/ADCImage;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->au:Lcom/jirbo/adcolony/ADCImage;

    if-eqz v0, :cond_3

    .line 879
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->at:Lcom/jirbo/adcolony/ADCImage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->ab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->at:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->f:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ad;->b(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->at:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->a(II)V

    .line 880
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->au:Lcom/jirbo/adcolony/ADCImage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->ab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->au:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->f:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ad;->b(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->au:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->a(II)V

    .line 884
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v1, v1, Lcom/jirbo/adcolony/ADCVideo;->u:I

    if-le v0, v1, :cond_d

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    .line 886
    :goto_3
    iput-boolean v14, p0, Lcom/jirbo/adcolony/ad;->z:Z

    .line 889
    :cond_4
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v0, :cond_6

    .line 891
    if-eqz v6, :cond_5

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v2, v2, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v3, v3, Lcom/jirbo/adcolony/ADCVideo;->u:I

    iget v6, p0, Lcom/jirbo/adcolony/ad;->m:I

    sub-int/2addr v3, v6

    const/16 v6, 0x11

    invoke-direct {v1, v2, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 892
    :cond_5
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->y:I

    int-to-double v0, v0

    div-double/2addr v0, v12

    cmpg-double v0, v0, v4

    if-gez v0, :cond_e

    move-wide v0, v4

    :goto_4
    iput-wide v0, p0, Lcom/jirbo/adcolony/ad;->e:D

    .line 893
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->isTablet()Z

    move-result v0

    if-nez v0, :cond_6

    iget-wide v0, p0, Lcom/jirbo/adcolony/ad;->e:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_6

    const-wide v0, 0x3ff3333333333333L    # 1.2

    iput-wide v0, p0, Lcom/jirbo/adcolony/ad;->e:D

    .line 895
    :cond_6
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->N:Z

    if-eqz v0, :cond_7

    .line 898
    iget v0, p0, Lcom/jirbo/adcolony/ad;->n:I

    iget v1, p0, Lcom/jirbo/adcolony/ad;->o:I

    div-int/2addr v0, v1

    int-to-double v2, v0

    .line 899
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 900
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    int-to-double v0, v0

    div-double/2addr v0, v2

    iget-object v6, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v6, v6, Lcom/jirbo/adcolony/ADCVideo;->u:I

    int-to-double v6, v6

    div-double/2addr v6, v4

    cmpl-double v0, v0, v6

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    int-to-double v0, v0

    div-double/2addr v0, v4

    .line 903
    :goto_5
    iget-object v6, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    mul-double/2addr v2, v0

    double-to-int v2, v2

    iput v2, v6, Lcom/jirbo/adcolony/ADCVideo;->x:I

    .line 904
    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, v2, Lcom/jirbo/adcolony/ADCVideo;->y:I

    .line 907
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v1, v1, Lcom/jirbo/adcolony/ADCVideo;->u:I

    if-le v0, v1, :cond_10

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->y:I

    int-to-double v0, v0

    div-double/2addr v0, v12

    :goto_6
    iput-wide v0, p0, Lcom/jirbo/adcolony/ad;->e:D

    .line 910
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    int-to-double v0, v0

    iget v2, p0, Lcom/jirbo/adcolony/ad;->n:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v2, v2, Lcom/jirbo/adcolony/ADCVideo;->u:I

    int-to-double v2, v2

    iget v4, p0, Lcom/jirbo/adcolony/ad;->o:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    int-to-double v0, v0

    iget v2, p0, Lcom/jirbo/adcolony/ad;->o:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 912
    :goto_7
    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->am:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v2, v0, v1}, Lcom/jirbo/adcolony/ADCImage;->a(D)V

    .line 913
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->am:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v1, v1, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v2, v2, Lcom/jirbo/adcolony/ADCVideo;->u:I

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->d(II)V

    .line 917
    :cond_7
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->L:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->at:Lcom/jirbo/adcolony/ADCImage;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->au:Lcom/jirbo/adcolony/ADCImage;

    if-eqz v0, :cond_8

    .line 919
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->at:Lcom/jirbo/adcolony/ADCImage;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->au:Lcom/jirbo/adcolony/ADCImage;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->at:Lcom/jirbo/adcolony/ADCImage;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCImage;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->au:Lcom/jirbo/adcolony/ADCImage;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCImage;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12

    .line 923
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->at:Lcom/jirbo/adcolony/ADCImage;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCImage;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/jirbo/adcolony/ad;->f:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 924
    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->au:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v2, v1

    iget-wide v4, p0, Lcom/jirbo/adcolony/ad;->f:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 925
    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->at:Lcom/jirbo/adcolony/ADCImage;

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->at:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->f:I

    invoke-virtual {v2, v3, v0}, Lcom/jirbo/adcolony/ADCImage;->b(II)V

    .line 926
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->au:Lcom/jirbo/adcolony/ADCImage;

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->au:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->f:I

    invoke-virtual {v0, v2, v1}, Lcom/jirbo/adcolony/ADCImage;->b(II)V

    .line 932
    :cond_8
    :goto_8
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->M:Z

    if-eqz v0, :cond_9

    .line 934
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->an:Lcom/jirbo/adcolony/ADCImage;

    iget-wide v2, p0, Lcom/jirbo/adcolony/ad;->f:D

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCImage;->a(D)V

    .line 935
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ao:Lcom/jirbo/adcolony/ADCImage;

    iget-wide v2, p0, Lcom/jirbo/adcolony/ad;->f:D

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCImage;->a(D)V

    .line 940
    :cond_9
    return-void

    .line 866
    :cond_a
    const-wide v8, 0x4071800000000000L    # 280.0

    div-double/2addr v0, v8

    goto/16 :goto_0

    .line 870
    :cond_b
    iget-wide v0, p0, Lcom/jirbo/adcolony/ad;->f:D

    mul-double/2addr v0, v10

    double-to-float v0, v0

    goto/16 :goto_1

    .line 871
    :cond_c
    iget-wide v2, p0, Lcom/jirbo/adcolony/ad;->f:D

    mul-double/2addr v2, v10

    double-to-float v1, v2

    goto/16 :goto_2

    .line 884
    :cond_d
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    goto/16 :goto_3

    .line 892
    :cond_e
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->y:I

    int-to-double v0, v0

    div-double/2addr v0, v12

    goto/16 :goto_4

    .line 900
    :cond_f
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    int-to-double v0, v0

    div-double/2addr v0, v2

    goto/16 :goto_5

    .line 907
    :cond_10
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->y:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x408e000000000000L    # 960.0

    div-double/2addr v0, v2

    goto/16 :goto_6

    .line 910
    :cond_11
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    int-to-double v0, v0

    iget v2, p0, Lcom/jirbo/adcolony/ad;->n:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto/16 :goto_7

    .line 928
    :cond_12
    iput-boolean v14, p0, Lcom/jirbo/adcolony/ad;->L:Z

    goto :goto_8
.end method

.method a(I)V
    .locals 4

    .prologue
    .line 504
    :try_start_0
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->C:Z

    if-nez v0, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 506
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->C:Z

    .line 507
    packed-switch p1, :pswitch_data_0

    .line 572
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 576
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 577
    new-instance v1, Lcom/jirbo/adcolony/ad$1;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/ad$1;-><init>(Lcom/jirbo/adcolony/ad;)V

    .line 584
    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 592
    :cond_1
    :goto_1
    return-void

    .line 511
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 512
    const-string v0, "info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"ad_slot\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyAd;->i:Lcom/jirbo/adcolony/n$ad;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$ad;->r:Lcom/jirbo/adcolony/af;

    iget v2, v2, Lcom/jirbo/adcolony/af;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v0, v1, v2}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 513
    const-string v0, "info_url"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    sget-object v1, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "INFO "

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 516
    const-string v1, "market:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "amzn:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 518
    :cond_2
    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCVideo;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 587
    :catch_0
    move-exception v0

    .line 590
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->C:Z

    goto :goto_1

    .line 522
    :cond_3
    :try_start_1
    sput-object v0, Lcom/jirbo/adcolony/AdColonyBrowser;->url:Ljava/lang/String;

    .line 523
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    const-class v3, Lcom/jirbo/adcolony/AdColonyBrowser;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCVideo;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 530
    :pswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 531
    const-string v0, "download"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"ad_slot\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyAd;->i:Lcom/jirbo/adcolony/n$ad;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$ad;->r:Lcom/jirbo/adcolony/af;

    iget v2, v2, Lcom/jirbo/adcolony/af;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v0, v1, v2}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 532
    const-string v0, "download_url"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    sget-object v1, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "DOWNLOAD "

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 535
    const-string v1, "market:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "amzn:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 537
    :cond_4
    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCVideo;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 541
    :cond_5
    sput-object v0, Lcom/jirbo/adcolony/AdColonyBrowser;->url:Ljava/lang/String;

    .line 542
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    const-class v3, Lcom/jirbo/adcolony/AdColonyBrowser;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCVideo;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 549
    :pswitch_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 550
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->i()V

    .line 551
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    goto/16 :goto_0

    .line 558
    :pswitch_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 559
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->a()V

    .line 560
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->g()V

    goto/16 :goto_0

    .line 566
    :pswitch_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 567
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->h()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1214
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->N:Z

    if-eqz v0, :cond_1

    .line 1221
    :cond_0
    :goto_0
    return-void

    .line 1216
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1218
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 1219
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 1228
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->N:Z

    if-eqz v0, :cond_0

    .line 1238
    :goto_0
    return-void

    .line 1230
    :cond_0
    if-eqz p1, :cond_1

    .line 1232
    const-string v0, "adc_bridge.fireChangeEvent({viewable:true});"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ad;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1236
    :cond_1
    const-string v0, "adc_bridge.fireChangeEvent({viewable:false});"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ad;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/jirbo/adcolony/ADCImage;II)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 826
    if-nez p1, :cond_1

    .line 827
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCImage;->c()I

    move-result v1

    iget v2, p1, Lcom/jirbo/adcolony/ADCImage;->f:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x8

    if-ge p2, v1, :cond_0

    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCImage;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    if-le p2, v1, :cond_0

    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCImage;->d()I

    move-result v1

    iget v2, p1, Lcom/jirbo/adcolony/ADCImage;->g:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x8

    if-ge p3, v1, :cond_0

    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCImage;->d()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    if-le p3, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method b(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aj:Landroid/graphics/Paint;

    sget-object v1, Lcom/jirbo/adcolony/ad;->aB:[F

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 1429
    const/4 v1, 0x0

    .line 1430
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1431
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    sget-object v3, Lcom/jirbo/adcolony/ad;->aB:[F

    aget v3, v3, v0

    add-float/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1432
    :cond_0
    float-to-int v0, v1

    return v0
.end method

.method b()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 949
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    .line 950
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 951
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 952
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 955
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 956
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 958
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON_DEMAND:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 959
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 960
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 965
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/jirbo/adcolony/ad$3;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/ad$3;-><init>(Lcom/jirbo/adcolony/ad;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 990
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/jirbo/adcolony/ADCVideo;->Q:Landroid/widget/FrameLayout;

    .line 993
    const-string v0, "hardware_acceleration_disabled"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->Q:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 998
    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    :cond_0
    :goto_0
    new-instance v0, Lcom/jirbo/adcolony/m;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-direct {v0, v1, v2, v3}, Lcom/jirbo/adcolony/m;-><init>(Lcom/jirbo/adcolony/ADCVideo;Landroid/webkit/WebView;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->az:Lcom/jirbo/adcolony/m;

    .line 1010
    new-instance v0, Lcom/jirbo/adcolony/ad$4;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ad$4;-><init>(Lcom/jirbo/adcolony/ad;)V

    .line 1093
    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1094
    return-void

    .line 1000
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method b(I)V
    .locals 1

    .prologue
    .line 1482
    iput p1, p0, Lcom/jirbo/adcolony/ad;->h:I

    .line 1483
    if-gez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->h:I

    .line 1484
    :cond_0
    return-void
.end method

.method b(Z)V
    .locals 1

    .prologue
    .line 1245
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->N:Z

    if-eqz v0, :cond_0

    .line 1259
    :cond_0
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1099
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 1124
    :goto_0
    return-void

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->o:Ljava/lang/String;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyAd;->o:Ljava/lang/String;

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    :goto_1
    new-instance v0, Lcom/jirbo/adcolony/f;

    const-string v1, "htmltest"

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/f;-><init>(Ljava/lang/String;)V

    .line 1108
    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->af:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/f;->a(Ljava/lang/String;)V

    .line 1111
    sget-boolean v0, Lcom/jirbo/adcolony/a;->m:Z

    if-eqz v0, :cond_2

    const-string v0, "true"

    .line 1112
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "var is_tablet="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ad;->a(Ljava/lang/String;)V

    .line 1114
    sget-boolean v0, Lcom/jirbo/adcolony/a;->m:Z

    if-eqz v0, :cond_3

    const-string v0, "tablet"

    .line 1117
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adc_bridge.adc_version=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/jirbo/adcolony/a;->ag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ad;->a(Ljava/lang/String;)V

    .line 1118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adc_bridge.os_version=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/jirbo/adcolony/a;->af:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ad;->a(Ljava/lang/String;)V

    .line 1119
    const-string v1, "adc_bridge.os_name=\'android\'"

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ad;->a(Ljava/lang/String;)V

    .line 1120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adc_bridge.device_type=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ad;->a(Ljava/lang/String;)V

    .line 1121
    const-string v0, "adc_bridge.fireChangeEvent({state:\'default\'});"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ad;->a(Ljava/lang/String;)V

    .line 1122
    const-string v0, "adc_bridge.fireReadyEvent()"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ad;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1105
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyAd;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->af:Ljava/lang/String;

    const-string v3, "text/html"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1111
    :cond_2
    const-string v0, "false"

    goto/16 :goto_2

    .line 1114
    :cond_3
    const-string v0, "phone"

    goto/16 :goto_3
.end method

.method c(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1348
    sput-boolean v2, Lcom/jirbo/adcolony/a;->M:Z

    .line 1350
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyAd;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->getCurrentPosition()I

    move-result v0

    sput v0, Lcom/jirbo/adcolony/ADCVideo;->a:I

    .line 1353
    new-instance v1, Lcom/jirbo/adcolony/v;

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    check-cast v0, Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-direct {v1, v2, v0}, Lcom/jirbo/adcolony/v;-><init>(Lcom/jirbo/adcolony/ADCVideo;Lcom/jirbo/adcolony/AdColonyV4VCAd;)V

    sput-object v1, Lcom/jirbo/adcolony/v;->I:Lcom/jirbo/adcolony/v;

    .line 1367
    :goto_0
    return-void

    .line 1357
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1359
    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a()V

    .line 1357
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1361
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCVideo;->finish()V

    .line 1362
    sget-object v0, Lcom/jirbo/adcolony/a;->W:Lcom/jirbo/adcolony/a$a;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/a$a;->b(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 1363
    sput-boolean v2, Lcom/jirbo/adcolony/a;->ak:Z

    .line 1364
    sput-boolean v2, Lcom/jirbo/adcolony/a;->E:Z

    .line 1365
    sput-boolean v2, Lcom/jirbo/adcolony/AdColonyBrowser;->A:Z

    goto :goto_0
.end method

.method public d()V
    .locals 6

    .prologue
    .line 1141
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v1, Lcom/jirbo/adcolony/ADCVideo;->e:Z

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/d;->a(ZLcom/jirbo/adcolony/AdColonyAd;)V

    .line 1144
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->D:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/jirbo/adcolony/a;->ab:Z

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1147
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1148
    new-instance v1, Lcom/jirbo/adcolony/ad$5;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/ad$5;-><init>(Lcom/jirbo/adcolony/ad;)V

    .line 1162
    sget v2, Lcom/jirbo/adcolony/a;->ac:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1166
    :cond_0
    sget-boolean v0, Lcom/jirbo/adcolony/a;->Z:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->g()V

    .line 1168
    :cond_1
    const-string v0, "card_shown"

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v0, v1}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 1170
    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->aL:Lcom/jirbo/adcolony/ad$b;

    monitor-enter v1

    .line 1172
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ag:Lcom/jirbo/adcolony/aa$b;

    .line 1173
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->y:Lcom/jirbo/adcolony/n$h;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/n$h;->e:Z

    if-eqz v0, :cond_2

    .line 1175
    new-instance v0, Lcom/jirbo/adcolony/aa$b;

    sget-object v2, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$a;->y:Lcom/jirbo/adcolony/n$h;

    iget-wide v2, v2, Lcom/jirbo/adcolony/n$h;->g:D

    invoke-direct {v0, v2, v3}, Lcom/jirbo/adcolony/aa$b;-><init>(D)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ag:Lcom/jirbo/adcolony/aa$b;

    .line 1177
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1180
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v0, :cond_3

    .line 1182
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1183
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1184
    new-instance v2, Lcom/jirbo/adcolony/ad$6;

    invoke-direct {v2, p0, v1}, Lcom/jirbo/adcolony/ad$6;-><init>(Lcom/jirbo/adcolony/ad;Landroid/view/View;)V

    .line 1193
    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1194
    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1195
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1196
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->Q:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1198
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/jirbo/adcolony/ADCVideo;->r:J

    .line 1199
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->f()V

    .line 1200
    return-void

    .line 1177
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method e()V
    .locals 2

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    sget-object v1, Lcom/jirbo/adcolony/a;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1206
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "Loading - end card url = "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    sget-object v1, Lcom/jirbo/adcolony/a;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 1207
    return-void
.end method

.method f()V
    .locals 4

    .prologue
    .line 1278
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1279
    new-instance v1, Lcom/jirbo/adcolony/ad$7;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/ad$7;-><init>(Lcom/jirbo/adcolony/ad;)V

    .line 1286
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1288
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ADCVideo;->L:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/immersion/hapticmediasdk/HapticContentSDK;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->stop()I

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    .line 1291
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->a()V

    .line 1292
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/v;->I:Lcom/jirbo/adcolony/v;

    .line 1293
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    .line 1294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->I:Z

    .line 1295
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    .line 1296
    return-void
.end method

.method g()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1303
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->Q:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 1337
    :cond_0
    :goto_0
    return-void

    .line 1306
    :cond_1
    sput-boolean v8, Lcom/jirbo/adcolony/a;->M:Z

    .line 1308
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/jirbo/adcolony/ADCVideo;->s:J

    .line 1309
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-wide v2, v0, Lcom/jirbo/adcolony/ADCVideo;->q:D

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-wide v4, v1, Lcom/jirbo/adcolony/ADCVideo;->s:J

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-wide v6, v1, Lcom/jirbo/adcolony/ADCVideo;->r:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/jirbo/adcolony/ADCVideo;->q:D

    .line 1310
    sput-boolean v8, Lcom/jirbo/adcolony/a;->ak:Z

    .line 1312
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1314
    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a()V

    .line 1312
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1318
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->V:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1325
    :goto_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCVideo;->finish()V

    .line 1327
    iput-object v9, p0, Lcom/jirbo/adcolony/ad;->ag:Lcom/jirbo/adcolony/aa$b;

    .line 1328
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v0, :cond_4

    .line 1330
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->Q:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1331
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 1332
    iput-object v9, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    .line 1334
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 1335
    sput-boolean v8, Lcom/jirbo/adcolony/AdColonyBrowser;->A:Z

    .line 1336
    sput-boolean v8, Lcom/jirbo/adcolony/a;->E:Z

    goto :goto_0

    .line 1320
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method h()V
    .locals 1

    .prologue
    .line 1344
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ad;->c(Z)V

    .line 1345
    return-void
.end method

.method i()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 1374
    const-string v0, "replay"

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v0, v1}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 1375
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sput-boolean v2, Lcom/jirbo/adcolony/ADCVideo;->e:Z

    .line 1376
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sput-boolean v6, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    .line 1377
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sput v6, Lcom/jirbo/adcolony/ADCVideo;->a:I

    .line 1378
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iput-boolean v2, v0, Lcom/jirbo/adcolony/AdColonyAd;->u:Z

    .line 1379
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/jirbo/adcolony/AdColonyAd;->p:D

    .line 1380
    iput-boolean v6, p0, Lcom/jirbo/adcolony/ad;->S:Z

    .line 1384
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1385
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1386
    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v3, v3, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v4, v4, Lcom/jirbo/adcolony/ADCVideo;->u:I

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1387
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1388
    new-instance v2, Lcom/jirbo/adcolony/ad$8;

    invoke-direct {v2, p0, v0}, Lcom/jirbo/adcolony/ad$8;-><init>(Lcom/jirbo/adcolony/ad;Landroid/view/View;)V

    .line 1396
    const-wide/16 v4, 0x384

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1398
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->start()V

    .line 1399
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ADCVideo;->L:Z

    if-eqz v0, :cond_1

    .line 1403
    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-static {v1, v2}, Lcom/immersion/hapticmediasdk/HapticContentSDKFactory;->GetNewSDKInstance(ILandroid/content/Context;)Lcom/immersion/hapticmediasdk/HapticContentSDK;

    move-result-object v1

    iput-object v1, v0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/immersion/hapticmediasdk/HapticContentSDK;

    .line 1404
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/immersion/hapticmediasdk/HapticContentSDK;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->openHaptics(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1410
    :goto_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/immersion/hapticmediasdk/HapticContentSDK;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iput-boolean v6, v0, Lcom/jirbo/adcolony/ADCVideo;->L:Z

    .line 1411
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ADCVideo;->L:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/immersion/hapticmediasdk/HapticContentSDK;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->play()I

    .line 1413
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/d;->a(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 1414
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->requestFocus()Z

    .line 1415
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0, v6}, Lcom/jirbo/adcolony/e;->setBackgroundColor(I)V

    .line 1416
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0, v6}, Lcom/jirbo/adcolony/e;->setVisibility(I)V

    .line 1417
    invoke-virtual {p0, v6}, Lcom/jirbo/adcolony/ad;->a(Z)V

    .line 1418
    return-void

    .line 1406
    :catch_0
    move-exception v0

    .line 1408
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iput-boolean v6, v0, Lcom/jirbo/adcolony/ADCVideo;->L:Z

    goto :goto_0
.end method

.method j()V
    .locals 2

    .prologue
    .line 1442
    .line 1443
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/jirbo/adcolony/ad$9;

    invoke-direct {v1, p0, p0}, Lcom/jirbo/adcolony/ad$9;-><init>(Lcom/jirbo/adcolony/ad;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1452
    return-void
.end method

.method k()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1461
    iget v0, p0, Lcom/jirbo/adcolony/ad;->h:I

    const/16 v1, 0x46

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->E:Z

    if-nez v0, :cond_1

    .line 1464
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ad;->E:Z

    .line 1465
    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/ad;->b(Z)V

    .line 1473
    :cond_0
    :goto_0
    return-void

    .line 1467
    :cond_1
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->E:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jirbo/adcolony/ad;->h:I

    if-nez v0, :cond_0

    .line 1470
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ad;->E:Z

    .line 1471
    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/ad;->b(Z)V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1131
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->d()V

    .line 1132
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->F:Z

    if-eqz v0, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->a()V

    .line 294
    iput-object p1, p0, Lcom/jirbo/adcolony/ad;->W:Landroid/graphics/Canvas;

    .line 297
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->O:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->M:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lcom/jirbo/adcolony/ad;->p:I

    if-le v0, v1, :cond_6

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->O:Z

    .line 298
    :cond_2
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->P:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->L:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lcom/jirbo/adcolony/ad;->q:I

    if-le v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->P:Z

    .line 301
    :cond_3
    const/high16 v2, 0x431d0000    # 157.0f

    .line 306
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->N:Z

    if-eqz v0, :cond_a

    .line 308
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->z:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 309
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->am:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v1, v1, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->am:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->f:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v3, v3, Lcom/jirbo/adcolony/ADCVideo;->u:I

    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->am:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->g:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, p1, v1, v3}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;II)V

    .line 310
    const-wide v0, 0x4067400000000000L    # 186.0

    iget-wide v4, p0, Lcom/jirbo/adcolony/ad;->e:D

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->am:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCImage;->c()I

    move-result v1

    add-int/2addr v1, v0

    .line 311
    const-wide v4, 0x407d600000000000L    # 470.0

    iget-wide v6, p0, Lcom/jirbo/adcolony/ad;->e:D

    mul-double/2addr v4, v6

    double-to-int v0, v4

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->am:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/ADCImage;->d()I

    move-result v3

    add-int/2addr v3, v0

    .line 313
    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->ax:[Lcom/jirbo/adcolony/ADCImage;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 316
    iget v4, p0, Lcom/jirbo/adcolony/ad;->t:I

    add-int/lit8 v5, v0, 0x1

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/jirbo/adcolony/ad;->u:I

    add-int/lit8 v5, v0, 0x1

    if-ne v4, v5, :cond_8

    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->A:Z

    if-nez v4, :cond_8

    iget v4, p0, Lcom/jirbo/adcolony/ad;->u:I

    if-eqz v4, :cond_8

    .line 318
    :cond_4
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->ay:[Lcom/jirbo/adcolony/ADCImage;

    aget-object v4, v4, v0

    iget-wide v6, p0, Lcom/jirbo/adcolony/ad;->e:D

    invoke-virtual {v4, v6, v7}, Lcom/jirbo/adcolony/ADCImage;->a(D)V

    .line 319
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->ay:[Lcom/jirbo/adcolony/ADCImage;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1, v1, v3}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;II)V

    .line 320
    int-to-double v4, v1

    float-to-double v6, v2

    iget-wide v8, p0, Lcom/jirbo/adcolony/ad;->e:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v1, v4

    .line 332
    :cond_5
    :goto_4
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->ai:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 333
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->ai:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 334
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->aA:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/jirbo/adcolony/ad;->ax:[Lcom/jirbo/adcolony/ADCImage;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/jirbo/adcolony/ADCImage;->c()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/jirbo/adcolony/ad;->ax:[Lcom/jirbo/adcolony/ADCImage;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/jirbo/adcolony/ADCImage;->f:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/jirbo/adcolony/ad;->ax:[Lcom/jirbo/adcolony/ADCImage;

    aget-object v6, v6, v0

    .line 335
    invoke-virtual {v6}, Lcom/jirbo/adcolony/ADCImage;->d()I

    move-result v6

    iget-object v7, p0, Lcom/jirbo/adcolony/ad;->ax:[Lcom/jirbo/adcolony/ADCImage;

    aget-object v7, v7, v0

    iget v7, v7, Lcom/jirbo/adcolony/ADCImage;->g:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/jirbo/adcolony/ad;->ai:Landroid/graphics/Paint;

    .line 334
    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 297
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 298
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 324
    :cond_8
    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->A:Z

    if-nez v4, :cond_9

    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lcom/jirbo/adcolony/ad;->u:I

    if-eq v4, v5, :cond_5

    .line 326
    :cond_9
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->ax:[Lcom/jirbo/adcolony/ADCImage;

    aget-object v4, v4, v0

    iget-wide v6, p0, Lcom/jirbo/adcolony/ad;->e:D

    invoke-virtual {v4, v6, v7}, Lcom/jirbo/adcolony/ADCImage;->a(D)V

    .line 327
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->ax:[Lcom/jirbo/adcolony/ADCImage;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1, v1, v3}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;II)V

    .line 328
    int-to-double v4, v1

    float-to-double v6, v2

    iget-wide v8, p0, Lcom/jirbo/adcolony/ad;->e:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v1, v4

    goto :goto_4

    .line 342
    :cond_a
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v0, :cond_e

    .line 345
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ap:Lcom/jirbo/adcolony/ADCImage;

    iget-wide v2, p0, Lcom/jirbo/adcolony/ad;->f:D

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCImage;->a(D)V

    .line 346
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aq:Lcom/jirbo/adcolony/ADCImage;

    iget-wide v2, p0, Lcom/jirbo/adcolony/ad;->f:D

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCImage;->a(D)V

    .line 347
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ar:Lcom/jirbo/adcolony/ADCImage;

    iget-wide v2, p0, Lcom/jirbo/adcolony/ad;->f:D

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCImage;->a(D)V

    .line 348
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->as:Lcom/jirbo/adcolony/ADCImage;

    iget-wide v2, p0, Lcom/jirbo/adcolony/ad;->f:D

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCImage;->a(D)V

    .line 350
    sget-boolean v0, Lcom/jirbo/adcolony/a;->m:Z

    if-nez v0, :cond_b

    iget v0, p0, Lcom/jirbo/adcolony/ad;->i:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/jirbo/adcolony/ad;->i:I

    :goto_5
    iput v0, p0, Lcom/jirbo/adcolony/ad;->i:I

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->j:I

    .line 352
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->k:I

    .line 353
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->l:I

    .line 356
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->H:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ap:Lcom/jirbo/adcolony/ADCImage;

    iget v1, p0, Lcom/jirbo/adcolony/ad;->i:I

    iget v2, p0, Lcom/jirbo/adcolony/ad;->j:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;II)V

    .line 360
    :goto_6
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->I:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ar:Lcom/jirbo/adcolony/ADCImage;

    iget v1, p0, Lcom/jirbo/adcolony/ad;->k:I

    iget v2, p0, Lcom/jirbo/adcolony/ad;->l:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;II)V

    .line 364
    :goto_7
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->j()V

    goto/16 :goto_0

    .line 350
    :cond_b
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->ap:Lcom/jirbo/adcolony/ADCImage;

    iget v1, v1, Lcom/jirbo/adcolony/ADCImage;->f:I

    sub-int/2addr v0, v1

    goto :goto_5

    .line 357
    :cond_c
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aq:Lcom/jirbo/adcolony/ADCImage;

    iget v1, p0, Lcom/jirbo/adcolony/ad;->i:I

    iget v2, p0, Lcom/jirbo/adcolony/ad;->j:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;II)V

    goto :goto_6

    .line 361
    :cond_d
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->as:Lcom/jirbo/adcolony/ADCImage;

    iget v1, p0, Lcom/jirbo/adcolony/ad;->k:I

    iget v2, p0, Lcom/jirbo/adcolony/ad;->l:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;II)V

    goto :goto_7

    .line 372
    :cond_e
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_15

    .line 374
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/e;->getCurrentPosition()I

    move-result v1

    int-to-double v2, v1

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/e;->getDuration()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v2, v4

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v0, v2, v3, v1}, Lcom/jirbo/adcolony/d;->a(DLcom/jirbo/adcolony/AdColonyAd;)V

    .line 375
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ADCVideo;->L:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/immersion/hapticmediasdk/HapticContentSDK;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/e;->getCurrentPosition()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->update(J)I

    .line 379
    :cond_f
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->getCurrentPosition()I

    move-result v1

    .line 380
    iget v0, p0, Lcom/jirbo/adcolony/ad;->s:I

    sub-int/2addr v0, v1

    .line 381
    add-int/lit16 v0, v0, 0x3e7

    div-int/lit16 v0, v0, 0x3e8

    .line 382
    iget-boolean v2, p0, Lcom/jirbo/adcolony/ad;->S:Z

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    const/4 v0, 0x0

    move v6, v0

    .line 383
    :goto_8
    if-nez v6, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->S:Z

    .line 385
    :cond_10
    const/16 v0, 0x1f4

    if-lt v1, v0, :cond_14

    .line 388
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->B:Z

    if-eqz v0, :cond_11

    .line 390
    const-wide v2, 0x4076800000000000L    # 360.0

    iget v0, p0, Lcom/jirbo/adcolony/ad;->s:I

    int-to-double v4, v0

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v8

    div-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lcom/jirbo/adcolony/ad;->aD:F

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ad;->B:Z

    .line 394
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 395
    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->ai:Landroid/graphics/Paint;

    const-string v3, "0123456789"

    const/4 v4, 0x0

    const/16 v5, 0x9

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 396
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->aG:F

    .line 400
    :cond_11
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->aE:F

    .line 401
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->aF:F

    .line 404
    iget v0, p0, Lcom/jirbo/adcolony/ad;->aG:F

    iput v0, p0, Lcom/jirbo/adcolony/ad;->aH:F

    .line 405
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    int-to-float v0, v0

    iget v2, p0, Lcom/jirbo/adcolony/ad;->aG:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/jirbo/adcolony/ad;->m:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/jirbo/adcolony/ad;->aI:F

    .line 406
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aK:Landroid/graphics/RectF;

    iget v2, p0, Lcom/jirbo/adcolony/ad;->aH:F

    iget v3, p0, Lcom/jirbo/adcolony/ad;->aG:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/jirbo/adcolony/ad;->aI:F

    const/high16 v4, 0x40000000    # 2.0f

    iget v5, p0, Lcom/jirbo/adcolony/ad;->aG:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jirbo/adcolony/ad;->aH:F

    const/high16 v5, 0x40000000    # 2.0f

    iget v7, p0, Lcom/jirbo/adcolony/ad;->aG:F

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    iget v5, p0, Lcom/jirbo/adcolony/ad;->aI:F

    iget v7, p0, Lcom/jirbo/adcolony/ad;->aG:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v5, v7

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 409
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aJ:Landroid/graphics/Paint;

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    iget-wide v4, p0, Lcom/jirbo/adcolony/ad;->e:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x1000000

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 410
    iget v0, p0, Lcom/jirbo/adcolony/ad;->aD:F

    float-to-double v2, v0

    iget v0, p0, Lcom/jirbo/adcolony/ad;->s:I

    int-to-double v4, v0

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v8

    int-to-double v0, v1

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v8

    sub-double v0, v4, v0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/jirbo/adcolony/ad;->aC:F

    .line 411
    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->aK:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    iget v3, p0, Lcom/jirbo/adcolony/ad;->aC:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/jirbo/adcolony/ad;->aJ:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 414
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-nez v0, :cond_12

    .line 416
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ai:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 417
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ai:Landroid/graphics/Paint;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-wide v4, p0, Lcom/jirbo/adcolony/ad;->e:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 418
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ai:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 419
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ai:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->aK:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->aK:Landroid/graphics/RectF;

    .line 421
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    float-to-double v2, v2

    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->ai:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    float-to-double v4, v4

    const-wide v6, 0x3ff599999999999aL    # 1.35

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->ai:Landroid/graphics/Paint;

    .line 420
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 428
    :cond_12
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->M:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->O:Z

    if-eqz v0, :cond_13

    .line 430
    iget v0, p0, Lcom/jirbo/adcolony/ad;->t:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_16

    .line 432
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ao:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v1, v1, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->ao:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->f:I

    sub-int/2addr v1, v2

    iget-wide v2, p0, Lcom/jirbo/adcolony/ad;->e:D

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;II)V

    .line 441
    :cond_13
    :goto_9
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->L:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->P:Z

    if-eqz v0, :cond_14

    .line 443
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->G:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->T:Z

    if-nez v0, :cond_18

    .line 445
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->J:Z

    if-eqz v0, :cond_17

    .line 447
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->au:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v1, v1, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->au:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->f:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/jirbo/adcolony/ad;->aG:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v2, v2, Lcom/jirbo/adcolony/ADCVideo;->u:I

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->au:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->g:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/jirbo/adcolony/ad;->m:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/jirbo/adcolony/ad;->aG:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->c(II)V

    .line 448
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->au:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;)V

    .line 457
    :goto_a
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aj:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 458
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ab:Ljava/lang/String;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->at:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->e:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->at:Lcom/jirbo/adcolony/ADCImage;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCImage;->e:Landroid/graphics/Rect;

    .line 459
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->aj:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    float-to-double v4, v4

    const-wide v6, 0x3ff599999999999aL    # 1.35

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->aj:Landroid/graphics/Paint;

    .line 458
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 472
    :cond_14
    :goto_b
    sget-object v0, Lcom/jirbo/adcolony/v;->I:Lcom/jirbo/adcolony/v;

    if-eqz v0, :cond_15

    .line 474
    sget-object v0, Lcom/jirbo/adcolony/v;->I:Lcom/jirbo/adcolony/v;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/v;->onDraw(Landroid/graphics/Canvas;)V

    .line 477
    :cond_15
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    goto/16 :goto_0

    .line 436
    :cond_16
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->an:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v1, v1, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->an:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->f:I

    sub-int/2addr v1, v2

    iget-wide v2, p0, Lcom/jirbo/adcolony/ad;->e:D

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;II)V

    goto/16 :goto_9

    .line 452
    :cond_17
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->at:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v1, v1, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->at:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->f:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/jirbo/adcolony/ad;->aG:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v2, v2, Lcom/jirbo/adcolony/ADCVideo;->u:I

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->at:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->g:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/jirbo/adcolony/ad;->m:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/jirbo/adcolony/ad;->aG:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->c(II)V

    .line 453
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->at:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;)V

    goto/16 :goto_a

    .line 461
    :cond_18
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->G:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ad;->T:Z

    if-eqz v0, :cond_14

    .line 463
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aw:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v1, v1, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->aw:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->f:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/jirbo/adcolony/ad;->aG:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v2, v2, Lcom/jirbo/adcolony/ADCVideo;->u:I

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->aw:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->g:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/jirbo/adcolony/ad;->m:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/jirbo/adcolony/ad;->aG:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->c(II)V

    .line 464
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aw:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;)V

    goto/16 :goto_b

    :cond_19
    move v6, v0

    goto/16 :goto_8
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v0, 0x1

    .line 1266
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ad;->c(Z)V

    .line 1267
    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 489
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/jirbo/adcolony/ad;->m:I

    .line 491
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Kindle Fire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    iput v0, p0, Lcom/jirbo/adcolony/ad;->m:I

    .line 492
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SCH-I800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x19

    iput v0, p0, Lcom/jirbo/adcolony/ad;->m:I

    .line 493
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M380K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M380S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M380W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x28

    iput v0, p0, Lcom/jirbo/adcolony/ad;->m:I

    .line 494
    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x3

    const-wide/16 v10, 0xfa

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 614
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 617
    sget-object v0, Lcom/jirbo/adcolony/v;->I:Lcom/jirbo/adcolony/v;

    if-eqz v0, :cond_0

    .line 619
    sget-object v0, Lcom/jirbo/adcolony/v;->I:Lcom/jirbo/adcolony/v;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/v;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v2

    .line 798
    :goto_0
    return v0

    .line 624
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    .line 625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 630
    if-nez v4, :cond_7

    .line 633
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v4, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v4, :cond_3

    .line 636
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->ap:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v4, v1, v0}, Lcom/jirbo/adcolony/ad;->a(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 638
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ad;->H:Z

    .line 639
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    move v0, v2

    .line 640
    goto :goto_0

    .line 644
    :cond_1
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->ar:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v4, v1, v0}, Lcom/jirbo/adcolony/ad;->a(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 646
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ad;->I:Z

    .line 647
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    move v0, v2

    .line 648
    goto :goto_0

    :cond_2
    move v0, v3

    .line 652
    goto :goto_0

    .line 656
    :cond_3
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v4, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->N:Z

    if-eqz v4, :cond_4

    .line 658
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->am:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCImage;->c()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-wide v4, p0, Lcom/jirbo/adcolony/ad;->e:D

    mul-double/2addr v4, v8

    div-double/2addr v0, v4

    double-to-int v1, v0

    .line 659
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->am:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v4}, Lcom/jirbo/adcolony/ADCImage;->d()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    float-to-double v4, v0

    iget-wide v6, p0, Lcom/jirbo/adcolony/ad;->e:D

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    double-to-int v0, v4

    .line 661
    iget v4, p0, Lcom/jirbo/adcolony/ad;->t:I

    if-nez v4, :cond_4

    const/16 v4, 0xeb

    if-lt v0, v4, :cond_4

    const/16 v4, 0x131

    if-ge v0, v4, :cond_4

    .line 663
    invoke-virtual {p0, v1, v0}, Lcom/jirbo/adcolony/ad;->a(II)I

    move-result v4

    .line 664
    iput v4, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 665
    iput v4, p0, Lcom/jirbo/adcolony/ad;->u:I

    .line 666
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ad;->A:Z

    .line 667
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    .line 672
    :cond_4
    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->M:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->O:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->an:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v4, v1, v0}, Lcom/jirbo/adcolony/ad;->a(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 674
    const/16 v0, 0xa

    iput v0, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 675
    iget v0, p0, Lcom/jirbo/adcolony/ad;->t:I

    iput v0, p0, Lcom/jirbo/adcolony/ad;->u:I

    .line 676
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ad;->A:Z

    .line 677
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    move v0, v2

    .line 678
    goto/16 :goto_0

    .line 682
    :cond_5
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ad;->L:Z

    if-eqz v3, :cond_14

    iget-boolean v3, p0, Lcom/jirbo/adcolony/ad;->P:Z

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->at:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v3, v1, v0}, Lcom/jirbo/adcolony/ad;->a(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->aw:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v3, v1, v0}, Lcom/jirbo/adcolony/ad;->a(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 684
    :cond_6
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ad;->J:Z

    .line 685
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    move v0, v2

    .line 686
    goto/16 :goto_0

    .line 693
    :cond_7
    if-ne v4, v2, :cond_13

    .line 696
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v4, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v4, :cond_b

    .line 699
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->ap:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v4, v1, v0}, Lcom/jirbo/adcolony/ad;->a(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->H:Z

    if-eqz v4, :cond_9

    .line 701
    const/4 v0, 0x4

    iput v0, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 702
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 703
    :cond_8
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aM:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->aM:Landroid/os/Handler;

    iget v3, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 704
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 703
    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v2

    .line 705
    goto/16 :goto_0

    .line 709
    :cond_9
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->ar:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v4, v1, v0}, Lcom/jirbo/adcolony/ad;->a(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->I:Z

    if-eqz v4, :cond_b

    .line 711
    iput v5, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 712
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 713
    :cond_a
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aM:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->aM:Landroid/os/Handler;

    iget v3, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 714
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 713
    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v2

    .line 715
    goto/16 :goto_0

    .line 720
    :cond_b
    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v4, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-eqz v4, :cond_c

    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->N:Z

    if-eqz v4, :cond_c

    .line 722
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->am:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCImage;->c()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-wide v4, p0, Lcom/jirbo/adcolony/ad;->e:D

    mul-double/2addr v4, v8

    div-double/2addr v0, v4

    double-to-int v1, v0

    .line 723
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->am:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v4}, Lcom/jirbo/adcolony/ADCImage;->d()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    float-to-double v4, v0

    iget-wide v6, p0, Lcom/jirbo/adcolony/ad;->e:D

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    double-to-int v0, v4

    .line 724
    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->A:Z

    if-nez v4, :cond_c

    const/16 v4, 0xeb

    if-lt v0, v4, :cond_c

    const/16 v4, 0x131

    if-ge v0, v4, :cond_c

    .line 726
    invoke-virtual {p0, v1, v0}, Lcom/jirbo/adcolony/ad;->a(II)I

    move-result v4

    .line 727
    if-lez v4, :cond_c

    iget v5, p0, Lcom/jirbo/adcolony/ad;->u:I

    if-ne v4, v5, :cond_c

    .line 729
    iget-object v5, p0, Lcom/jirbo/adcolony/ad;->aM:Landroid/os/Handler;

    iget-object v6, p0, Lcom/jirbo/adcolony/ad;->aM:Landroid/os/Handler;

    .line 730
    invoke-virtual {v6, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 729
    invoke-virtual {v5, v4, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 736
    :cond_c
    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->M:Z

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->O:Z

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->an:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v4, v1, v0}, Lcom/jirbo/adcolony/ad;->a(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 738
    const/16 v0, 0xa

    iput v0, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 739
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ad;->A:Z

    .line 740
    iget v0, p0, Lcom/jirbo/adcolony/ad;->t:I

    iput v0, p0, Lcom/jirbo/adcolony/ad;->u:I

    .line 741
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->aM:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad;->aM:Landroid/os/Handler;

    iget v3, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 742
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 741
    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v2

    .line 743
    goto/16 :goto_0

    .line 747
    :cond_d
    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->L:Z

    if-eqz v4, :cond_12

    iget-boolean v4, p0, Lcom/jirbo/adcolony/ad;->P:Z

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->at:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v4, v1, v0}, Lcom/jirbo/adcolony/ad;->a(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->aw:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v4, v1, v0}, Lcom/jirbo/adcolony/ad;->a(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 749
    :cond_e
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ad;->J:Z

    .line 752
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ad:Ljava/lang/String;

    const-string v1, "market:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ad:Ljava/lang/String;

    const-string v1, "amzn:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 754
    :cond_f
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/jirbo/adcolony/ad;->ad:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCVideo;->startActivity(Landroid/content/Intent;)V

    .line 770
    :goto_1
    const-string v0, "in_video_engagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"ad_slot\":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyAd;->i:Lcom/jirbo/adcolony/n$ad;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$ad;->r:Lcom/jirbo/adcolony/af;

    iget v3, v3, Lcom/jirbo/adcolony/af;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v0, v1, v3}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    move v0, v2

    .line 771
    goto/16 :goto_0

    .line 756
    :cond_10
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->B:Lcom/jirbo/adcolony/n$aa;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->B:Lcom/jirbo/adcolony/n$aa;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/n$aa;->c:Z

    if-eqz v0, :cond_11

    .line 758
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/jirbo/adcolony/ad;->ae:Ljava/lang/String;

    .line 759
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/AdColonyAd;

    sget-object v1, Lcom/jirbo/adcolony/AdColonyIAPEngagement;->OVERLAY:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    iput-object v1, v0, Lcom/jirbo/adcolony/AdColonyAd;->z:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    .line 760
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ad;->L:Z

    .line 761
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ad;->U:Z

    .line 762
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ad;->T:Z

    .line 763
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->h()V

    goto :goto_1

    .line 767
    :cond_11
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->ad:Ljava/lang/String;

    sput-object v0, Lcom/jirbo/adcolony/AdColonyBrowser;->url:Ljava/lang/String;

    .line 768
    iget-object v0, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    const-class v4, Lcom/jirbo/adcolony/AdColonyBrowser;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCVideo;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 775
    :cond_12
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ad;->H:Z

    .line 776
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ad;->I:Z

    .line 777
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ad;->J:Z

    .line 778
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ad;->A:Z

    .line 779
    iput v3, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 780
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    move v0, v2

    .line 781
    goto/16 :goto_0

    .line 787
    :cond_13
    if-ne v4, v5, :cond_14

    .line 790
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ad;->H:Z

    .line 791
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ad;->I:Z

    .line 792
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ad;->J:Z

    .line 793
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ad;->A:Z

    .line 794
    iput v3, p0, Lcom/jirbo/adcolony/ad;->t:I

    .line 795
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    move v0, v2

    .line 796
    goto/16 :goto_0

    :cond_14
    move v0, v2

    .line 798
    goto/16 :goto_0
.end method
