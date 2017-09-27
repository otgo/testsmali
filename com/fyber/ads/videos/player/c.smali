.class public final Lcom/fyber/ads/videos/player/c;
.super Landroid/widget/LinearLayout;
.source "NativeVideoPlayerMicroBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/app/Activity;

.field private e:Lcom/fyber/views/close/b;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/16 v2, 0xa

    const/4 v7, 0x0

    const/4 v6, -0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    iput-boolean v5, p0, Lcom/fyber/ads/videos/player/c;->g:Z

    .line 54
    const-string v0, "microBrowser"

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/player/c;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 56
    iput-object p1, p0, Lcom/fyber/ads/videos/player/c;->d:Landroid/app/Activity;

    .line 57
    iput-object p2, p0, Lcom/fyber/ads/videos/player/c;->f:Ljava/lang/String;

    .line 61
    const-string v0, "#333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/player/c;->setBackgroundColor(I)V

    .line 62
    invoke-virtual {p0, v5}, Lcom/fyber/ads/videos/player/c;->setOrientation(I)V

    .line 64
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fyber/ads/videos/player/c;->d:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-virtual {v0, v7, v2, v7, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 68
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 71
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 73
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 74
    new-instance v2, Lcom/fyber/views/close/b;

    iget-object v3, p0, Lcom/fyber/ads/videos/player/c;->d:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/fyber/views/close/b;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fyber/ads/videos/player/c;->e:Lcom/fyber/views/close/b;

    .line 75
    iget-object v2, p0, Lcom/fyber/ads/videos/player/c;->e:Lcom/fyber/views/close/b;

    invoke-virtual {v2, v1}, Lcom/fyber/views/close/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v1, p0, Lcom/fyber/ads/videos/player/c;->e:Lcom/fyber/views/close/b;

    invoke-virtual {v1, p0}, Lcom/fyber/views/close/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 79
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 81
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fyber/ads/videos/player/c;->d:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fyber/ads/videos/player/c;->b:Landroid/widget/TextView;

    .line 82
    iget-object v2, p0, Lcom/fyber/ads/videos/player/c;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v1, p0, Lcom/fyber/ads/videos/player/c;->b:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 84
    iget-object v1, p0, Lcom/fyber/ads/videos/player/c;->b:Landroid/widget/TextView;

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 85
    iget-object v1, p0, Lcom/fyber/ads/videos/player/c;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object v1, p0, Lcom/fyber/ads/videos/player/c;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 87
    iget-object v1, p0, Lcom/fyber/ads/videos/player/c;->b:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 88
    iget-object v1, p0, Lcom/fyber/ads/videos/player/c;->b:Landroid/widget/TextView;

    const/16 v2, 0x3039

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 89
    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {p0}, Lcom/fyber/ads/videos/player/c;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v5, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 90
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {p0}, Lcom/fyber/ads/videos/player/c;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 91
    iget-object v3, p0, Lcom/fyber/ads/videos/player/c;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 93
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 94
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 95
    const/4 v2, 0x3

    const/16 v3, 0x3039

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 97
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fyber/ads/videos/player/c;->d:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fyber/ads/videos/player/c;->c:Landroid/widget/TextView;

    .line 98
    iget-object v2, p0, Lcom/fyber/ads/videos/player/c;->c:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 99
    iget-object v2, p0, Lcom/fyber/ads/videos/player/c;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v1, p0, Lcom/fyber/ads/videos/player/c;->c:Landroid/widget/TextView;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 101
    iget-object v1, p0, Lcom/fyber/ads/videos/player/c;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    iget-object v1, p0, Lcom/fyber/ads/videos/player/c;->c:Landroid/widget/TextView;

    sget-object v2, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_LOADING_MESSAGE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v2}, Lcom/fyber/utils/r;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lcom/fyber/ads/videos/player/c;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 106
    iget-object v1, p0, Lcom/fyber/ads/videos/player/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 107
    iget-object v1, p0, Lcom/fyber/ads/videos/player/c;->e:Lcom/fyber/views/close/b;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 109
    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/player/c;->addView(Landroid/view/View;)V

    .line 111
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 112
    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/fyber/ads/videos/player/c;->d:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fyber/ads/videos/player/c;->a:Landroid/webkit/WebView;

    .line 113
    iget-object v1, p0, Lcom/fyber/ads/videos/player/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v0, p0, Lcom/fyber/ads/videos/player/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 115
    iget-object v0, p0, Lcom/fyber/ads/videos/player/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/fyber/ads/videos/player/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/fyber/utils/x;->a(Landroid/webkit/WebSettings;)V

    .line 117
    iget-object v0, p0, Lcom/fyber/ads/videos/player/c;->a:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/fyber/utils/x;->a(Landroid/webkit/WebView;)V

    .line 119
    iget-object v0, p0, Lcom/fyber/ads/videos/player/c;->a:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 121
    iget-object v0, p0, Lcom/fyber/ads/videos/player/c;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/fyber/ads/videos/player/d;

    invoke-direct {v1, p0}, Lcom/fyber/ads/videos/player/d;-><init>(Lcom/fyber/ads/videos/player/c;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 143
    iget-object v0, p0, Lcom/fyber/ads/videos/player/c;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/fyber/ads/videos/player/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/fyber/ads/videos/player/c;->a:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/player/c;->addView(Landroid/view/View;)V

    .line 147
    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/videos/player/c;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fyber/ads/videos/player/c;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/fyber/ads/videos/player/c;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fyber/ads/videos/player/c;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/fyber/ads/videos/player/c;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fyber/ads/videos/player/c;->a:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/fyber/ads/videos/player/c;->d:Landroid/app/Activity;

    new-instance v1, Lcom/fyber/ads/videos/player/e;

    invoke-direct {v1, p0}, Lcom/fyber/ads/videos/player/e;-><init>(Lcom/fyber/ads/videos/player/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method

.method public final b()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/fyber/ads/videos/player/c;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/videos/player/c;->g:Z

    .line 171
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/fyber/ads/videos/player/c;->g:Z

    return v0
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 179
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/videos/player/c;->a:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 183
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    :goto_1
    const-string v1, "NativeVideoPlayerMicroBrowser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPause video on micro-browser has raised:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/ads/videos/player/c;->g:Z

    .line 165
    invoke-virtual {p0}, Lcom/fyber/ads/videos/player/c;->e()V

    .line 166
    iget-object v0, p0, Lcom/fyber/ads/videos/player/c;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 167
    return-void
.end method
