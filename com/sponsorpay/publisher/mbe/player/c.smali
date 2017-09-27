.class public final Lcom/sponsorpay/publisher/mbe/player/c;
.super Landroid/widget/LinearLayout;
.source "SPNativeVideoPlayerMicroBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/app/Activity;

.field private e:Lcom/sponsorpay/view/close/b;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, -0x2

    const/4 v0, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x1

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    iput-boolean v2, p0, Lcom/sponsorpay/publisher/mbe/player/c;->g:Z

    .line 57
    const-string v1, "microBrowser"

    invoke-virtual {p0, v1}, Lcom/sponsorpay/publisher/mbe/player/c;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 59
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/c;->d:Landroid/app/Activity;

    .line 60
    iput-object p2, p0, Lcom/sponsorpay/publisher/mbe/player/c;->f:Ljava/lang/String;

    .line 64
    const-string v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sponsorpay/publisher/mbe/player/c;->setBackgroundColor(I)V

    .line 65
    invoke-virtual {p0, v2}, Lcom/sponsorpay/publisher/mbe/player/c;->setOrientation(I)V

    .line 67
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/player/c;->d:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    invoke-virtual {v1, v0, v8, v0, v8}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 71
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 74
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 75
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 76
    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 77
    new-instance v4, Lcom/sponsorpay/view/close/b;

    iget-object v5, p0, Lcom/sponsorpay/publisher/mbe/player/c;->d:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/sponsorpay/view/close/b;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sponsorpay/publisher/mbe/player/c;->e:Lcom/sponsorpay/view/close/b;

    .line 78
    iget-object v4, p0, Lcom/sponsorpay/publisher/mbe/player/c;->e:Lcom/sponsorpay/view/close/b;

    invoke-virtual {v4, v3}, Lcom/sponsorpay/view/close/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/player/c;->e:Lcom/sponsorpay/view/close/b;

    invoke-virtual {v3, p0}, Lcom/sponsorpay/view/close/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 82
    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 84
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sponsorpay/publisher/mbe/player/c;->d:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sponsorpay/publisher/mbe/player/c;->b:Landroid/widget/TextView;

    .line 85
    iget-object v4, p0, Lcom/sponsorpay/publisher/mbe/player/c;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/player/c;->b:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 87
    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/player/c;->b:Landroid/widget/TextView;

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 88
    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/player/c;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/player/c;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 90
    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/player/c;->b:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 91
    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/player/c;->b:Landroid/widget/TextView;

    const/16 v4, 0x3039

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    .line 92
    const/high16 v3, 0x42480000    # 50.0f

    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/player/c;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 93
    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/player/c;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v2, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    .line 94
    iget-object v5, p0, Lcom/sponsorpay/publisher/mbe/player/c;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 96
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 97
    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 98
    const/4 v4, 0x3

    const/16 v5, 0x3039

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 100
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sponsorpay/publisher/mbe/player/c;->d:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sponsorpay/publisher/mbe/player/c;->c:Landroid/widget/TextView;

    .line 101
    iget-object v4, p0, Lcom/sponsorpay/publisher/mbe/player/c;->c:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 102
    iget-object v4, p0, Lcom/sponsorpay/publisher/mbe/player/c;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/player/c;->c:Landroid/widget/TextView;

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 104
    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/player/c;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/player/c;->c:Landroid/widget/TextView;

    sget-object v4, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_LOADING_MESSAGE:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v4}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/player/c;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 109
    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/player/c;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 110
    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/player/c;->e:Lcom/sponsorpay/view/close/b;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 112
    invoke-virtual {p0, v1}, Lcom/sponsorpay/publisher/mbe/player/c;->addView(Landroid/view/View;)V

    .line 114
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 115
    new-instance v3, Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/sponsorpay/publisher/mbe/player/c;->d:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sponsorpay/publisher/mbe/player/c;->a:Landroid/webkit/WebView;

    .line 116
    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/player/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 118
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 120
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-static {v1}, Lcom/sponsorpay/utils/i;->a(Landroid/webkit/WebSettings;)V

    .line 121
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/c;->a:Landroid/webkit/WebView;

    invoke-static {v1}, Lcom/sponsorpay/utils/i;->a(Landroid/webkit/WebView;)V

    .line 123
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/c;->a:Landroid/webkit/WebView;

    new-instance v3, Landroid/webkit/WebChromeClient;

    invoke-direct {v3}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 125
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/c;->a:Landroid/webkit/WebView;

    new-instance v3, Lcom/sponsorpay/publisher/mbe/player/d;

    invoke-direct {v3, p0}, Lcom/sponsorpay/publisher/mbe/player/d;-><init>(Lcom/sponsorpay/publisher/mbe/player/c;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 146
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v1, v8, :cond_3

    move v1, v2

    :goto_0
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/c;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/c;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "youtube"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_4

    .line 147
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/c;->f:Ljava/lang/String;

    const-string v1, "v="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    array-length v3, v1

    if-le v3, v2, :cond_1

    aget-object v0, v1, v2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<iframe class=\"youtube-player\" style=\"border: 0; width: 100%; height: 95%;padding:0px; margin:0px\" id=\"ytplayer\" type=\"text/html\" src=\"http://www.youtube.com/embed/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?fs=0\" frameborder=\"0\" allowfullscreen autobuffer controls onclick=\"this.play()\">\n</iframe>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v2}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/c;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/c;->f:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/c;->a:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/c;->addView(Landroid/view/View;)V

    .line 160
    return-void

    :cond_3
    move v1, v0

    .line 146
    goto :goto_0

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/c;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/mbe/player/c;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/c;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/sponsorpay/publisher/mbe/player/c;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/c;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/sponsorpay/publisher/mbe/player/c;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/c;->a:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/c;->d:Landroid/app/Activity;

    new-instance v1, Lcom/sponsorpay/publisher/mbe/player/e;

    invoke-direct {v1, p0}, Lcom/sponsorpay/publisher/mbe/player/e;-><init>(Lcom/sponsorpay/publisher/mbe/player/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method

.method public final b()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/c;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/c;->g:Z

    .line 184
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/c;->g:Z

    return v0
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 192
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/c;->a:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 196
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    :goto_1
    const-string v1, "SPNativeVideoPlayerMicroBrowser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPause video on micro-browser has raised:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 193
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
    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/c;->g:Z

    .line 178
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/player/c;->e()V

    .line 179
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/c;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 180
    return-void
.end method
