.class public final Lcom/purplebrain/adbuddiz/sdk/f/c;
.super Ljava/lang/Object;


# static fields
.field private static j:Z


# instance fields
.field public a:Lcom/purplebrain/adbuddiz/sdk/e/a/i;

.field public b:Landroid/webkit/WebView;

.field public c:Lcom/purplebrain/adbuddiz/sdk/f/a;

.field public d:Lcom/purplebrain/adbuddiz/sdk/f/l;

.field public e:Z

.field public f:Z

.field public g:Landroid/graphics/Point;

.field public h:Lcom/purplebrain/adbuddiz/sdk/f/f;

.field public i:Lcom/purplebrain/adbuddiz/sdk/f/g;

.field private k:Ljava/util/List;

.field private l:Z

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/purplebrain/adbuddiz/sdk/f/c;->j:Z

    return-void
.end method

.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/e/a/i;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->k:Ljava/util/List;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->b:Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->c:Lcom/purplebrain/adbuddiz/sdk/f/a;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->d:Lcom/purplebrain/adbuddiz/sdk/f/l;

    iput-boolean v2, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->e:Z

    iput-boolean v2, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->f:Z

    iput-boolean v3, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->l:Z

    const-string v0, "none"

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->m:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->g:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->h:Lcom/purplebrain/adbuddiz/sdk/f/f;

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->i:Lcom/purplebrain/adbuddiz/sdk/f/g;

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/i;

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

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->k:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/f/c;)Lcom/purplebrain/adbuddiz/sdk/f/g;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->i:Lcom/purplebrain/adbuddiz/sdk/f/g;

    return-object v0
.end method

.method public static a()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget-boolean v0, Lcom/purplebrain/adbuddiz/sdk/f/c;->j:Z

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

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/f/c;Landroid/net/Uri;)V
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

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->h:Lcom/purplebrain/adbuddiz/sdk/f/f;

    invoke-interface {v0}, Lcom/purplebrain/adbuddiz/sdk/f/f;->a()V

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
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->h:Lcom/purplebrain/adbuddiz/sdk/f/f;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/f/f;->a(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->c:Lcom/purplebrain/adbuddiz/sdk/f/a;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/f/h;->b:Lcom/purplebrain/adbuddiz/sdk/f/h;

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

    invoke-virtual {v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/f/a;->a(Lcom/purplebrain/adbuddiz/sdk/f/h;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->c:Lcom/purplebrain/adbuddiz/sdk/f/a;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/h;->b:Lcom/purplebrain/adbuddiz/sdk/f/h;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "UTF-8 is not a valid charset"

    aput-object v3, v2, v6

    const-string v3, "open"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/f/a;->a(Lcom/purplebrain/adbuddiz/sdk/f/h;[Ljava/lang/Object;)V

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

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->c:Lcom/purplebrain/adbuddiz/sdk/f/a;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/f/h;->b:Lcom/purplebrain/adbuddiz/sdk/f/h;

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\' is not one of the orientation defined in MRAID 2.0. Allowed values are "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->k:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    const-string v1, "open"

    aput-object v1, v3, v7

    invoke-virtual {v0, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/f/a;->a(Lcom/purplebrain/adbuddiz/sdk/f/h;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->l:Z

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->m:Ljava/lang/String;

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
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->h:Lcom/purplebrain/adbuddiz/sdk/f/f;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/f/f;->b(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    :catch_2
    move-exception v1

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->c:Lcom/purplebrain/adbuddiz/sdk/f/a;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/f/h;->b:Lcom/purplebrain/adbuddiz/sdk/f/h;

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

    invoke-virtual {v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/f/a;->a(Lcom/purplebrain/adbuddiz/sdk/f/h;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->c:Lcom/purplebrain/adbuddiz/sdk/f/a;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/h;->b:Lcom/purplebrain/adbuddiz/sdk/f/h;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "UTF-8 is not a valid charset"

    aput-object v3, v2, v6

    const-string v3, "playVideo"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/f/a;->a(Lcom/purplebrain/adbuddiz/sdk/f/h;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/purplebrain/adbuddiz/sdk/f/c;)Lcom/purplebrain/adbuddiz/sdk/e/a/i;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    return-object v0
.end method

.method static synthetic c(Lcom/purplebrain/adbuddiz/sdk/f/c;)Lcom/purplebrain/adbuddiz/sdk/f/f;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->h:Lcom/purplebrain/adbuddiz/sdk/f/f;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/f/l;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->d:Lcom/purplebrain/adbuddiz/sdk/f/l;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->d:Lcom/purplebrain/adbuddiz/sdk/f/l;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->c:Lcom/purplebrain/adbuddiz/sdk/f/a;

    const-string v1, "_setState"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/f/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->c:Lcom/purplebrain/adbuddiz/sdk/f/a;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/h;->c:Lcom/purplebrain/adbuddiz/sdk/f/h;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/f/a;->a(Lcom/purplebrain/adbuddiz/sdk/f/h;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final b()Landroid/util/DisplayMetrics;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/c;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method
