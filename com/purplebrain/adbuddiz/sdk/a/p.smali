.class public final Lcom/purplebrain/adbuddiz/sdk/a/p;
.super Lcom/purplebrain/adbuddiz/sdk/a/e;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private A:Landroid/graphics/drawable/Drawable;

.field private B:Landroid/view/SurfaceView;

.field private C:Ljava/lang/Integer;

.field private D:Landroid/view/SurfaceHolder$Callback;

.field private E:Landroid/media/MediaPlayer$OnPreparedListener;

.field private F:Landroid/view/View$OnClickListener;

.field private G:Landroid/view/View$OnClickListener;

.field private H:Landroid/media/MediaPlayer$OnCompletionListener;

.field private I:Landroid/media/MediaPlayer$OnErrorListener;

.field a:Landroid/view/SurfaceHolder;

.field p:Landroid/media/MediaPlayer;

.field q:Z

.field r:Z

.field s:Z

.field t:Lcom/purplebrain/adbuddiz/sdk/i/j;

.field u:Lcom/purplebrain/adbuddiz/sdk/i/h;

.field v:Lcom/purplebrain/adbuddiz/sdk/i/b;

.field w:Lcom/purplebrain/adbuddiz/sdk/i/i;

.field x:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

.field private y:Landroid/widget/ImageButton;

.field private z:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v2}, Lcom/purplebrain/adbuddiz/sdk/a/e;-><init>(Z)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->y:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->z:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->A:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->B:Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->a:Landroid/view/SurfaceHolder;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->C:Ljava/lang/Integer;

    iput-boolean v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->q:Z

    iput-boolean v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->r:Z

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->t:Lcom/purplebrain/adbuddiz/sdk/i/j;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->u:Lcom/purplebrain/adbuddiz/sdk/i/h;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->v:Lcom/purplebrain/adbuddiz/sdk/i/b;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->w:Lcom/purplebrain/adbuddiz/sdk/i/i;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->x:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/a/q;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/a/q;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/p;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->D:Landroid/view/SurfaceHolder$Callback;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/a/r;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/a/r;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/p;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->E:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/a/s;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/a/s;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/p;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->F:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/a/t;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/a/t;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/p;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->G:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/a/u;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/a/u;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/p;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->H:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/a/v;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/a/v;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/p;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->I:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->z:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/a/p;->a(ZZZ)V

    return-void
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/a/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/a/p;->q()V

    return-void
.end method

.method static synthetic b(Lcom/purplebrain/adbuddiz/sdk/a/p;)Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;
    .locals 1

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/a/p;->n()Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/purplebrain/adbuddiz/sdk/a/p;)Z
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->b:Landroid/app/Activity;

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

.method private n()Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;
    .locals 3

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->x:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/h/a;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;Lcom/purplebrain/adbuddiz/sdk/e/f;)Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->x:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->x:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    return-object v0
.end method

.method private o()Landroid/widget/ImageButton;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->y:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->y:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->y:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->G:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    const-string v0, "iVBORw0KGgoAAAANSUhEUgAAAEgAAABICAYAAABV7bNHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAONJREFUeNrs3EEOgkAMQFEx3Ft68jEeQKImzLT1/YQdC/ICm2nDNsa46X13BIAAAQIECBAgQAIEqD/QAegc5wGoEE4WoLQ4GYBS46wGSo+zEqgEziqgMjgrgErhzAYqhzMTqCTOLKCyODOASuNcDVQe50qgFjiv9g/v+9v5tAMzQIAAAQIECBAgAQIECBAgQIAA6Qeg7csrvEHnHV2Qrp5qBKDmSLMmqwGoKdLs7Y4A1Axp1YZZAGqCtHrLNQAVR8qyaR+AiiLtiZ7lyAi0+XdHjU8MECBAgAQIECBAgAC16inAAAx7JBiffjKJAAAAAElFTkSuQmCC"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/d;->a([C)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0x1e0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/a/p;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->z:Landroid/graphics/drawable/Drawable;

    const-string v0, "iVBORw0KGgoAAAANSUhEUgAAAEgAAABICAYAAABV7bNHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA5VJREFUeNrsmz1oFEEUx3cvJwomnBi0ESSIRgSjiZLCQhCChagg2iSFICJRG7EJiincFCqihXZGxSKKdoIflRYpoogmpyQGMVFO8QMFFT9AxTNk/S/uwRU3M29u9zYzO/Pgx8G8vTdz/9uZnY+3ru/7jjW2ZawEViArkBXICmQFsgJZgQy1LOUi13VnvKGY0Lbg42nS9boazaSDhn4At8EVMBSWWYHKBCq3SXAaDIA/poxBnsS1zeA8eAG6atm3VcHz/xvLL7JB0BR3uzIK3TlHI8bYAMZAZ9q6GFUcyjjTAK6BE8H4moYu5lXoKqxrc2AXGPFpdglkorZRNXF84nc3gjxBpAHg6iiQx/lR1BjB3XEQ/BKIdFw3gTzBD5KN1wImBTE7dRHII3SLauI2ggecmD/AUtUF8oiDa7XxGwQiDaosEFUcP2I988FLTuydsjGTWIvJTgJdzpxtmvD9lWAYzKngewOWgaIqE8U4Zsgly4N1hOvGwRGGbzHYo8pEUaZbUbpYYFPgMKHuOjDKiD8hMzdSTRzqYvUsoQ2bOHV0xC1QkkZtwyFCux8z6rio22q+GjtGGJP6GeVbqeMv9SmW5LajK9GGUdDGaV8OfGbsva8BT9J+qrEabOP4v4N7DB/liZiKY59ugX+IUb7WFIE6QD3HP8IoX2KKQLNAO8dfYJQ3mXSy2szxvecM4MYI1Mjx/WSU15skUBwHkakW6AvHN1fyzkqlQBMc3yJG+TdTBPob7v84ko/z16YIdFfQXdolH/+pE6hf4F8vOYFM1WI1H94hrPbNA58Yi9XWcLGb2jtoCuwX/HldDHE+OsRsNZ0F6hEMzoHtY5TfcmgHAGSBXEn6aizOSXBGcM0WsIrhu0qfTuq1aV8EBwh1Z8E4I/4zlQ4OvRgFug9aifX2cOJ3p/XgkGpBt3oEZlfwvQLLw8mlo8og7SUwJpVsAbjBECewXhlxaj0GJZ28kBNkn90xOf1lIRjmxPxabQZsGhKo2kBBEHOHiSl4deHT6rdAnD4Tkzg3gzFCd72gc5arbBpwkBy1lyhMYOeiZriqIFAlkVjXFYnCTIcxY2mfau9pRHlXo/S02h5n27KKrMy98DNKNlqws7gbvIuzYaoIVC6SrBXCrY/rNdm90/iFuiAX8VS4dTFVq0qzjl72FtwEl8HDJCrUSaAV4HnSlerUxWbE7HvzViArkBXICmQFsgJZgUy1fwIMAL0jl379L/YCAAAAAElFTkSuQmCC"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/d;->a([C)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0x1e0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/a/p;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->A:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/d; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->s:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v3}, Lcom/purplebrain/adbuddiz/sdk/a/p;->a(ZZZ)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->y:Landroid/widget/ImageButton;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private p()Landroid/media/MediaPlayer;
    .locals 4

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/a/p;->n()Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/h/q;->b(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    :try_start_0
    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->b:Landroid/app/Activity;

    invoke-virtual {v1, v3, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->E:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->H:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->I:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v2}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/i/a/a;->h:Lcom/purplebrain/adbuddiz/sdk/i/a/a;

    invoke-static {v2, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Landroid/media/MediaPlayer;Lcom/purplebrain/adbuddiz/sdk/i/a/a;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->l:Lcom/purplebrain/adbuddiz/sdk/a/j;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "MediaPlayer.create() returned null."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/a/j;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private q()V
    .locals 6

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/i/i;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->h:Lcom/purplebrain/adbuddiz/sdk/c/a;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    invoke-direct {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/i;-><init>(Lcom/purplebrain/adbuddiz/sdk/c/a;Landroid/media/MediaPlayer;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->w:Lcom/purplebrain/adbuddiz/sdk/i/i;

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/i/b;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    check-cast v1, Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->x:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->C:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->i:Lcom/purplebrain/adbuddiz/sdk/a/l;

    invoke-direct/range {v0 .. v5}, Lcom/purplebrain/adbuddiz/sdk/i/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/a/i;Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Ljava/lang/String;Ljava/lang/Integer;Lcom/purplebrain/adbuddiz/sdk/a/l;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->v:Lcom/purplebrain/adbuddiz/sdk/i/b;

    :cond_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->q:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->x:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->h:Lcom/purplebrain/adbuddiz/sdk/c/a;

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->C:Ljava/lang/Integer;

    invoke-static {v0, v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/i/h;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/i;Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Lcom/purplebrain/adbuddiz/sdk/c/a;Ljava/lang/Integer;)Lcom/purplebrain/adbuddiz/sdk/i/h;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->u:Lcom/purplebrain/adbuddiz/sdk/i/h;

    :cond_2
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->h:Lcom/purplebrain/adbuddiz/sdk/c/a;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->x:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->C:Ljava/lang/Integer;

    iget-boolean v4, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->q:Z

    invoke-static {v0, v2, v3, v4}, Lcom/purplebrain/adbuddiz/sdk/i/h;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/i;Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Ljava/lang/Integer;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Z)V

    :cond_3
    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->q:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    :try_start_0
    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/i/j;

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/a/p;->n()Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->C:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->v:Lcom/purplebrain/adbuddiz/sdk/i/b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/purplebrain/adbuddiz/sdk/i/j;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Landroid/media/MediaPlayer;Ljava/lang/Integer;Lcom/purplebrain/adbuddiz/sdk/i/b;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->t:Lcom/purplebrain/adbuddiz/sdk/i/j;
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/i/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABVASTAdDisplayer.prepareTimerForTrackingEvent()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->x:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/i/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/i/a/a;

    invoke-static {v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Landroid/media/MediaPlayer;Lcom/purplebrain/adbuddiz/sdk/i/a/a;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->l:Lcom/purplebrain/adbuddiz/sdk/a/j;

    invoke-interface {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/a/j;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/purplebrain/adbuddiz/sdk/e/a/a;Ljava/lang/String;)Landroid/view/View;
    .locals 5

    const/4 v4, -0x2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/purplebrain/adbuddiz/sdk/a/e;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/purplebrain/adbuddiz/sdk/e/a/a;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->h:Lcom/purplebrain/adbuddiz/sdk/c/a;

    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->b:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/a/p;->o()Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/c/a;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method protected final a(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->C:Ljava/lang/Integer;

    :goto_0
    const-string v0, "pos"

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->C:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "complete"

    iget-boolean v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->q:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "muted"

    iget-boolean v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->s:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->C:Ljava/lang/Integer;

    goto :goto_0
.end method

.method final a(ZZZ)V
    .locals 4

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->s:Z

    if-ne v0, p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->A:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;->h:Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->z:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;->g:Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;

    const/4 v0, 0x0

    :cond_2
    iput-boolean p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->s:Z

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->y:Landroid/widget/ImageButton;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->y:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_4
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->x:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    invoke-static {v0, v2, v1}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Landroid/media/MediaPlayer;Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;)V

    goto :goto_0
.end method

.method protected final b()Landroid/view/View;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->B:Landroid/view/SurfaceView;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->B:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->B:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->B:Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->B:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->a:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->a:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->a:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->D:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->a:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/a/p;->p()Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->B:Landroid/view/SurfaceView;

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->l:Lcom/purplebrain/adbuddiz/sdk/a/j;

    invoke-interface {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/a/j;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final b(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->C:Ljava/lang/Integer;

    const-string v0, "complete"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->q:Z

    const-string v0, "muted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/a/p;->a(ZZZ)V

    :cond_0
    return-void
.end method

.method final b(Z)V
    .locals 4

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->C:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->C:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->q:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->v:Lcom/purplebrain/adbuddiz/sdk/i/b;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/b;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/b;->d()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->u:Lcom/purplebrain/adbuddiz/sdk/i/h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->u:Lcom/purplebrain/adbuddiz/sdk/i/h;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/h;->start()Landroid/os/CountDownTimer;

    :cond_2
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->t:Lcom/purplebrain/adbuddiz/sdk/i/j;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/j;->start()Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->w:Lcom/purplebrain/adbuddiz/sdk/i/i;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/i;->start()Landroid/os/CountDownTimer;

    :cond_3
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->C:Ljava/lang/Integer;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->q:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->x:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    const-string v1, "i"

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Impression"

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Ljava/lang/String;Ljava/util/List;Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->x:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;->a:Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;

    invoke-static {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Landroid/media/MediaPlayer;Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->v:Lcom/purplebrain/adbuddiz/sdk/i/b;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;->a:Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/b;->a(Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->x:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;->b:Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;

    invoke-static {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Landroid/media/MediaPlayer;Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->v:Lcom/purplebrain/adbuddiz/sdk/i/b;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;->b:Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/b;->a(Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/b;->c()J

    move-result-wide v2

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/i/c;

    invoke-direct {v1, v0, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/i/c;-><init>(Lcom/purplebrain/adbuddiz/sdk/i/b;J)V

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/i/b;->a:Lcom/purplebrain/adbuddiz/sdk/i/c;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/i/b;->a:Lcom/purplebrain/adbuddiz/sdk/i/c;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c;->start()Landroid/os/CountDownTimer;

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/a/p;->q()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/a/p;->b(Z)V

    :cond_0
    return-void
.end method

.method protected final i()V
    .locals 3

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->w:Lcom/purplebrain/adbuddiz/sdk/i/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->w:Lcom/purplebrain/adbuddiz/sdk/i/i;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->x:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    invoke-static {v1, v0, v2}, Lcom/purplebrain/adbuddiz/sdk/i/h;->a(Landroid/media/MediaPlayer;Lcom/purplebrain/adbuddiz/sdk/e/a/i;Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->x:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;->t:Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;

    invoke-static {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Landroid/media/MediaPlayer;Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->v:Lcom/purplebrain/adbuddiz/sdk/i/b;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;->t:Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/b;->a(Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->x:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;->s:Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;

    invoke-static {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Landroid/media/MediaPlayer;Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->v:Lcom/purplebrain/adbuddiz/sdk/i/b;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;->s:Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/b;->a(Lcom/purplebrain/adbuddiz/sdk/i/b/b/d;)V

    goto :goto_0
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->v:Lcom/purplebrain/adbuddiz/sdk/i/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->v:Lcom/purplebrain/adbuddiz/sdk/i/b;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/i/b;->a:Lcom/purplebrain/adbuddiz/sdk/i/c;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/i/b;->a:Lcom/purplebrain/adbuddiz/sdk/i/c;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->t:Lcom/purplebrain/adbuddiz/sdk/i/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->t:Lcom/purplebrain/adbuddiz/sdk/i/j;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/j;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->w:Lcom/purplebrain/adbuddiz/sdk/i/i;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->w:Lcom/purplebrain/adbuddiz/sdk/i/i;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/i;->cancel()V

    :cond_3
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->u:Lcom/purplebrain/adbuddiz/sdk/i/h;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->u:Lcom/purplebrain/adbuddiz/sdk/i/h;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/h;->cancel()V

    :cond_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->a:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->a:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/p;->a:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final m()Lcom/purplebrain/adbuddiz/sdk/c/a;
    .locals 6

    invoke-super {p0}, Lcom/purplebrain/adbuddiz/sdk/a/e;->m()Lcom/purplebrain/adbuddiz/sdk/c/a;

    move-result-object v0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/a/p;->n()Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    move-result-object v1

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/i/d/a;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)I

    move-result v1

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/a/p;->n()Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    move-result-object v2

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/i/d/a;->b(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)I

    move-result v2

    int-to-double v4, v1

    int-to-double v2, v2

    div-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Ljava/lang/Double;)V

    return-object v0
.end method
