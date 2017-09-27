.class public final Lcom/purplebrain/adbuddiz/sdk/g/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/purplebrain/adbuddiz/sdk/g/c$d;,
        Lcom/purplebrain/adbuddiz/sdk/g/c$c;,
        Lcom/purplebrain/adbuddiz/sdk/g/c$b;,
        Lcom/purplebrain/adbuddiz/sdk/g/c$a;
    }
.end annotation


# static fields
.field private static k:Z


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/purplebrain/adbuddiz/sdk/f/a/f;

.field public c:Landroid/webkit/WebView;

.field public d:Lcom/purplebrain/adbuddiz/sdk/g/a;

.field public e:Lcom/purplebrain/adbuddiz/sdk/g/f;

.field public f:Z

.field public g:Z

.field public h:Landroid/graphics/Point;

.field public i:Lcom/purplebrain/adbuddiz/sdk/g/c$c;

.field public j:Lcom/purplebrain/adbuddiz/sdk/g/c$d;

.field private l:Ljava/util/List;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/f;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->l:Ljava/util/List;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->c:Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->d:Lcom/purplebrain/adbuddiz/sdk/g/a;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->e:Lcom/purplebrain/adbuddiz/sdk/g/f;

    iput-boolean v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->f:Z

    iput-boolean v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->g:Z

    iput-boolean v3, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->m:Z

    const-string v0, "none"

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->n:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->h:Landroid/graphics/Point;

    iput-boolean v2, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->o:Z

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->i:Lcom/purplebrain/adbuddiz/sdk/g/c$c;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->j:Lcom/purplebrain/adbuddiz/sdk/g/c$d;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->a:Landroid/content/Context;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "none"

    aput-object v1, v0, v2

    const-string v1, "portrait"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "landscape"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->l:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/g/c;)Lcom/purplebrain/adbuddiz/sdk/f/a/f;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    return-object v0
.end method

.method public static a()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget-boolean v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->k:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/webkit/WebView;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "NewApi"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    :cond_2
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    return-void
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/g/c;Landroid/net/Uri;)V
    .locals 8

    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "/close"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->i:Lcom/purplebrain/adbuddiz/sdk/g/c$c;

    invoke-interface {v0}, Lcom/purplebrain/adbuddiz/sdk/g/c$c;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "/open"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->i:Lcom/purplebrain/adbuddiz/sdk/g/c$c;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/g/c$c;->a(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->d:Lcom/purplebrain/adbuddiz/sdk/g/a;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/g/d;->b:Lcom/purplebrain/adbuddiz/sdk/g/d;

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\' is not a valid URL. Will not be open"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    const-string v0, "open"

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/g/a;->a(Lcom/purplebrain/adbuddiz/sdk/g/d;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, "/setOrientationProperties"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "allowOrientationChange"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "forceOrientation"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->d:Lcom/purplebrain/adbuddiz/sdk/g/a;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/g/d;->b:Lcom/purplebrain/adbuddiz/sdk/g/d;

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\' is not one of the orientation defined in MRAID 2.0. Allowed values are "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->l:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    const-string v1, "open"

    aput-object v1, v3, v7

    invoke-virtual {v0, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/g/a;->a(Lcom/purplebrain/adbuddiz/sdk/g/d;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->m:Z

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->n:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const-string v0, "/playVideo"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->i:Lcom/purplebrain/adbuddiz/sdk/g/c$c;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/g/c$c;->b(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->d:Lcom/purplebrain/adbuddiz/sdk/g/a;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/g/d;->b:Lcom/purplebrain/adbuddiz/sdk/g/d;

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\' is not a valid URI. Will not be played"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    const-string v0, "playVideo"

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/g/a;->a(Lcom/purplebrain/adbuddiz/sdk/g/d;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/g/c;Landroid/webkit/WebView;)V
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->o:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/g/c$1;

    invoke-direct {v1, p0, p1}, Lcom/purplebrain/adbuddiz/sdk/g/c$1;-><init>(Lcom/purplebrain/adbuddiz/sdk/g/c;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->o:Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/purplebrain/adbuddiz/sdk/g/c;)Lcom/purplebrain/adbuddiz/sdk/g/c$d;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->j:Lcom/purplebrain/adbuddiz/sdk/g/c$d;

    return-object v0
.end method

.method static synthetic c(Lcom/purplebrain/adbuddiz/sdk/g/c;)Lcom/purplebrain/adbuddiz/sdk/g/c$c;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->i:Lcom/purplebrain/adbuddiz/sdk/g/c$c;

    return-object v0
.end method

.method static synthetic d(Lcom/purplebrain/adbuddiz/sdk/g/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/g/f;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->e:Lcom/purplebrain/adbuddiz/sdk/g/f;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->e:Lcom/purplebrain/adbuddiz/sdk/g/f;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->d:Lcom/purplebrain/adbuddiz/sdk/g/a;

    const-string v1, "_setState"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/g/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->d:Lcom/purplebrain/adbuddiz/sdk/g/a;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/g/d;->c:Lcom/purplebrain/adbuddiz/sdk/g/d;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/g/a;->a(Lcom/purplebrain/adbuddiz/sdk/g/d;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final b()Landroid/util/DisplayMetrics;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method
