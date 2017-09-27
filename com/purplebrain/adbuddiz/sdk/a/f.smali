.class public abstract Lcom/purplebrain/adbuddiz/sdk/a/f;
.super Lcom/purplebrain/adbuddiz/sdk/a/c;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field A:Lcom/purplebrain/adbuddiz/sdk/i/c/e;

.field protected B:Lcom/purplebrain/adbuddiz/sdk/i/c/c;

.field protected C:Lcom/purplebrain/adbuddiz/sdk/i/c/b;

.field private D:Landroid/net/wifi/WifiManager$WifiLock;

.field private E:Landroid/view/SurfaceHolder$Callback;

.field private F:Landroid/media/MediaPlayer$OnPreparedListener;

.field private G:Landroid/view/View$OnClickListener;

.field private H:Landroid/view/View$OnClickListener;

.field private I:Landroid/media/MediaPlayer$OnInfoListener;

.field private J:Landroid/media/MediaPlayer$OnCompletionListener;

.field private K:Landroid/media/MediaPlayer$OnErrorListener;

.field private a:Landroid/widget/ImageButton;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field protected r:Landroid/widget/RelativeLayout;

.field protected s:Landroid/view/SurfaceView;

.field protected t:Landroid/view/SurfaceHolder;

.field protected u:Landroid/media/MediaPlayer;

.field protected v:Ljava/lang/Integer;

.field protected w:I

.field protected x:Z

.field protected y:Z

.field z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/a/c;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->r:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->a:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->b:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->c:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->s:Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->t:Landroid/view/SurfaceHolder;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->D:Landroid/net/wifi/WifiManager$WifiLock;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->v:Ljava/lang/Integer;

    iput v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->w:I

    iput-boolean v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->x:Z

    iput-boolean v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->y:Z

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->A:Lcom/purplebrain/adbuddiz/sdk/i/c/e;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->B:Lcom/purplebrain/adbuddiz/sdk/i/c/c;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->C:Lcom/purplebrain/adbuddiz/sdk/i/c/b;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/a/f$1;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/a/f$1;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/f;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->E:Landroid/view/SurfaceHolder$Callback;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/a/f$2;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/a/f$2;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/f;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->F:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/a/f$3;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/a/f$3;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/f;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->G:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/a/f$4;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/a/f$4;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/f;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->H:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/a/f$5;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/a/f$5;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/f;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->I:Landroid/media/MediaPlayer$OnInfoListener;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/a/f$6;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/a/f$6;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/f;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->J:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/a/f$7;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/a/f$7;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/f;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->K:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method private A()Landroid/media/MediaPlayer;
    .locals 4

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->d:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->d()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->F:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->I:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->J:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->K:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->a(Landroid/media/MediaPlayer;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->n:Lcom/purplebrain/adbuddiz/sdk/a/c$b;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "MediaPlayer.create() returned null."

    invoke-direct {v2, v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Lcom/purplebrain/adbuddiz/sdk/a/c$b;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/a/f;)Z
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/String;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/purplebrain/adbuddiz/sdk/a/c;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->d:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->h()Landroid/widget/ImageButton;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v5}, Lcom/purplebrain/adbuddiz/sdk/d/a;->addView(Landroid/view/View;I)V

    if-nez p2, :cond_2

    const/4 v0, 0x0

    iget-boolean v2, p3, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/b;->C:Z

    :cond_1
    invoke-virtual {p0, v0, v5}, Lcom/purplebrain/adbuddiz/sdk/a/f;->a(ZZ)V

    :cond_2
    return-object v1
.end method

.method protected a(Landroid/media/MediaPlayer;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/media/MediaPlayer;II)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "complete"

    iget-boolean v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->x:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "muted"

    iget-boolean v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->z:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->x:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->v:Ljava/lang/Integer;

    :goto_0
    const-string v0, "pos"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->v:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->v:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->w:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->v:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->w:I

    :cond_1
    const-string v0, "max"

    iget v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->w:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->v:Ljava/lang/Integer;

    goto :goto_0
.end method

.method protected a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->g:Z

    return-void
.end method

.method protected final a(ZZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->z:Z

    if-ne v0, p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->c:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->b:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    :cond_2
    iput-boolean p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->z:Z

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->a:Landroid/widget/ImageButton;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->a:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method protected a_()V
    .locals 0

    return-void
.end method

.method protected b()Landroid/view/View;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->d:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->s:Landroid/view/SurfaceView;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->s:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->s:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->s:Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->G:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->s:Landroid/view/SurfaceView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->s:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->t:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->t:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->t:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->E:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->t:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->A()Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->s:Landroid/view/SurfaceView;

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v1}, Lcom/purplebrain/adbuddiz/sdk/a/f;->a(Landroid/media/MediaPlayer;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->n:Lcom/purplebrain/adbuddiz/sdk/a/c$b;

    invoke-interface {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/a/c$b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final b(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected final b(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "complete"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->x:Z

    const-string v0, "muted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/a/f;->a(ZZ)V

    const-string v0, "pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->v:Ljava/lang/Integer;

    :cond_0
    const-string v0, "max"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->w:I

    return-void
.end method

.method protected b(Z)V
    .locals 6

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->v:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :try_start_0
    const-string v0, "file"

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->x:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->B:Lcom/purplebrain/adbuddiz/sdk/i/c/c;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->a()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->a:Ljava/lang/String;

    iget-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->b:J

    invoke-static {v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/i/c/a;->a(Ljava/lang/String;J)Lcom/purplebrain/adbuddiz/sdk/i/c/a;

    move-result-object v1

    iget-wide v2, v1, Lcom/purplebrain/adbuddiz/sdk/i/c/a;->a:J

    iget v1, v0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->c:I

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Impression will be send in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/i/c/c$a;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v0, v4, v5}, Lcom/purplebrain/adbuddiz/sdk/i/c/c$a;-><init>(Lcom/purplebrain/adbuddiz/sdk/i/c/c;J)V

    iput-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->e:Lcom/purplebrain/adbuddiz/sdk/i/c/c$a;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->e:Lcom/purplebrain/adbuddiz/sdk/i/c/c$a;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c/c$a;->start()Landroid/os/CountDownTimer;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->A:Lcom/purplebrain/adbuddiz/sdk/i/c/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->A:Lcom/purplebrain/adbuddiz/sdk/i/c/e;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->start()Landroid/os/CountDownTimer;

    :cond_3
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->C:Lcom/purplebrain/adbuddiz/sdk/i/c/b;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c/b;->start()Landroid/os/CountDownTimer;

    :cond_4
    return-void

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->d:Landroid/app/Activity;

    const-string v1, "android.permission.WAKE_LOCK"

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/a/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->d:Landroid/app/Activity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    const-string v2, "mediaPlayerLock"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->D:Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->D:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Impression will be send on event \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "skipoffset"

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->d:Lcom/purplebrain/adbuddiz/sdk/i/c/e;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->d:Lcom/purplebrain/adbuddiz/sdk/i/c/e;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->f:Lcom/purplebrain/adbuddiz/sdk/i/c/e$a;

    iput-object v0, v1, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->a:Lcom/purplebrain/adbuddiz/sdk/i/c/e$a;

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->d()V

    goto :goto_1
.end method

.method protected b_()V
    .locals 9

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/i/c/b;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    invoke-direct {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/c/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/d/a;Landroid/media/MediaPlayer;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->C:Lcom/purplebrain/adbuddiz/sdk/i/c/b;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->A:Lcom/purplebrain/adbuddiz/sdk/i/c/e;

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->c()Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->x:Z

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c/d;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    iget v4, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->w:I

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->f()[Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->a(Lcom/purplebrain/adbuddiz/sdk/d/a;Landroid/media/MediaPlayer;JI[Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/i/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->A:Lcom/purplebrain/adbuddiz/sdk/i/c/e;

    :cond_1
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->A:Lcom/purplebrain/adbuddiz/sdk/i/c/e;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Z)V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->c()Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c/d;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)J

    move-result-wide v4

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->e()Ljava/lang/String;

    move-result-object v3

    iget v6, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->w:I

    iget-object v7, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->A:Lcom/purplebrain/adbuddiz/sdk/i/c/e;

    iget-object v8, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->k:Lcom/purplebrain/adbuddiz/sdk/a/c$d;

    invoke-direct/range {v0 .. v8}, Lcom/purplebrain/adbuddiz/sdk/i/c/c;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/String;Ljava/lang/String;JILcom/purplebrain/adbuddiz/sdk/i/c/e;Lcom/purplebrain/adbuddiz/sdk/a/c$d;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->B:Lcom/purplebrain/adbuddiz/sdk/i/c/c;

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract c()Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;
.end method

.method protected abstract d()Landroid/net/Uri;
.end method

.method protected abstract e()Ljava/lang/String;
.end method

.method protected abstract f()[Ljava/lang/String;
.end method

.method protected g()Ljava/lang/Double;
    .locals 4

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->c()Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c/d;->c(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)I

    move-result v1

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c/d;->d(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)I

    move-result v0

    int-to-double v2, v1

    int-to-double v0, v0

    div-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected h()Landroid/widget/ImageButton;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iget-boolean v1, v1, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b:Z

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->d:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->a:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->a:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->a:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->H:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    const-string v0, "iVBORw0KGgoAAAANSUhEUgAAAEgAAABICAYAAABV7bNHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAONJREFUeNrs3EEOgkAMQFEx3Ft68jEeQKImzLT1/YQdC/ICm2nDNsa46X13BIAAAQIECBAgQAIEqD/QAegc5wGoEE4WoLQ4GYBS46wGSo+zEqgEziqgMjgrgErhzAYqhzMTqCTOLKCyODOASuNcDVQe50qgFjiv9g/v+9v5tAMzQIAAAQIECBAgAQIECBAgQIAA6Qeg7csrvEHnHV2Qrp5qBKDmSLMmqwGoKdLs7Y4A1Axp1YZZAGqCtHrLNQAVR8qyaR+AiiLtiZ7lyAi0+XdHjU8MECBAgAQIECBAgAC16inAAAx7JBiffjKJAAAAAElFTkSuQmCC"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/f;->a([C)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0x1e0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->b:Landroid/graphics/drawable/Drawable;

    const-string v0, "iVBORw0KGgoAAAANSUhEUgAAAEgAAABICAYAAABV7bNHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA5VJREFUeNrsmz1oFEEUx3cvJwomnBi0ESSIRgSjiZLCQhCChagg2iSFICJRG7EJiincFCqihXZGxSKKdoIflRYpoogmpyQGMVFO8QMFFT9AxTNk/S/uwRU3M29u9zYzO/Pgx8G8vTdz/9uZnY+3ru/7jjW2ZawEViArkBXICmQFsgJZgQy1LOUi13VnvKGY0Lbg42nS9boazaSDhn4At8EVMBSWWYHKBCq3SXAaDIA/poxBnsS1zeA8eAG6atm3VcHz/xvLL7JB0BR3uzIK3TlHI8bYAMZAZ9q6GFUcyjjTAK6BE8H4moYu5lXoKqxrc2AXGPFpdglkorZRNXF84nc3gjxBpAHg6iiQx/lR1BjB3XEQ/BKIdFw3gTzBD5KN1wImBTE7dRHII3SLauI2ggecmD/AUtUF8oiDa7XxGwQiDaosEFUcP2I988FLTuydsjGTWIvJTgJdzpxtmvD9lWAYzKngewOWgaIqE8U4Zsgly4N1hOvGwRGGbzHYo8pEUaZbUbpYYFPgMKHuOjDKiD8hMzdSTRzqYvUsoQ2bOHV0xC1QkkZtwyFCux8z6rio22q+GjtGGJP6GeVbqeMv9SmW5LajK9GGUdDGaV8OfGbsva8BT9J+qrEabOP4v4N7DB/liZiKY59ugX+IUb7WFIE6QD3HP8IoX2KKQLNAO8dfYJQ3mXSy2szxvecM4MYI1Mjx/WSU15skUBwHkakW6AvHN1fyzkqlQBMc3yJG+TdTBPob7v84ko/z16YIdFfQXdolH/+pE6hf4F8vOYFM1WI1H94hrPbNA58Yi9XWcLGb2jtoCuwX/HldDHE+OsRsNZ0F6hEMzoHtY5TfcmgHAGSBXEn6aizOSXBGcM0WsIrhu0qfTuq1aV8EBwh1Z8E4I/4zlQ4OvRgFug9aifX2cOJ3p/XgkGpBt3oEZlfwvQLLw8mlo8og7SUwJpVsAbjBECewXhlxaj0GJZ28kBNkn90xOf1lIRjmxPxabQZsGhKo2kBBEHOHiSl4deHT6rdAnD4Tkzg3gzFCd72gc5arbBpwkBy1lyhMYOeiZriqIFAlkVjXFYnCTIcxY2mfau9pRHlXo/S02h5n27KKrMy98DNKNlqws7gbvIuzYaoIVC6SrBXCrY/rNdm90/iFuiAX8VS4dTFVq0qzjl72FtwEl8HDJCrUSaAV4HnSlerUxWbE7HvzViArkBXICmQFsgJZgUy1fwIMAL0jl379L/YCAAAAAElFTkSuQmCC"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/f;->a([C)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0x1e0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->c:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/h; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->z:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/a/f;->a(ZZ)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->a:Landroid/widget/ImageButton;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected j()V
    .locals 0

    return-void
.end method

.method public final o()V
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->b_()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->b(Z)V

    :cond_0
    return-void
.end method

.method public w()V
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->A:Lcom/purplebrain/adbuddiz/sdk/i/c/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->A:Lcom/purplebrain/adbuddiz/sdk/i/c/e;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->B:Lcom/purplebrain/adbuddiz/sdk/i/c/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->B:Lcom/purplebrain/adbuddiz/sdk/i/c/c;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->e:Lcom/purplebrain/adbuddiz/sdk/i/c/c$a;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->e:Lcom/purplebrain/adbuddiz/sdk/i/c/c$a;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c/c$a;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->C:Lcom/purplebrain/adbuddiz/sdk/i/c/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->C:Lcom/purplebrain/adbuddiz/sdk/i/c/b;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c/b;->cancel()V

    :cond_3
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->z()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public x()V
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->u:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->t:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->t:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->t:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final y()Lcom/purplebrain/adbuddiz/sdk/d/a;
    .locals 2

    invoke-super {p0}, Lcom/purplebrain/adbuddiz/sdk/a/c;->y()Lcom/purplebrain/adbuddiz/sdk/d/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->g()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Ljava/lang/Double;)V

    return-object v0
.end method

.method final z()V
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->D:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->D:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/f;->D:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_0
    return-void
.end method
