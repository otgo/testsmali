.class public Lcom/supersonicads/sdk/controller/OpenUrlActivity;
.super Landroid/app/Activity;
.source "OpenUrlActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supersonicads/sdk/controller/OpenUrlActivity$1;,
        Lcom/supersonicads/sdk/controller/OpenUrlActivity$Client;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OpenUrlActivity"

.field private static final WEB_VIEW_VIEW_ID:I = 0x1


# instance fields
.field isSecondaryWebview:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mUrl:Ljava/lang/String;

.field private mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

.field private mainLayout:Landroid/widget/RelativeLayout;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    .line 166
    return-void
.end method

.method static synthetic access$100(Lcom/supersonicads/sdk/controller/OpenUrlActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/supersonicads/sdk/controller/OpenUrlActivity;)Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    return-object v0
.end method

.method private disableTouch()V
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 221
    return-void
.end method

.method private hideActivityTitle()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->requestWindowFeature(I)Z

    .line 212
    return-void
.end method

.method private hideActivtiyStatusBar()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 215
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 217
    return-void
.end method

.method private initializeWebView()V
    .locals 7

    .prologue
    const/4 v2, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x1

    .line 83
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v1, "webViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    .line 88
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setId(I)V

    .line 90
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Landroid/webkit/WebViewClient;

    invoke-direct {v3}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 92
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 93
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/supersonicads/sdk/controller/OpenUrlActivity$Client;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/supersonicads/sdk/controller/OpenUrlActivity$Client;-><init>(Lcom/supersonicads/sdk/controller/OpenUrlActivity;Lcom/supersonicads/sdk/controller/OpenUrlActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 96
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mainLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 107
    new-instance v2, Landroid/widget/ProgressBar;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v4, 0x1030073

    invoke-direct {v3, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 112
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 115
    .local v0, "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 117
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 121
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mainLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 124
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->loadUrl(Ljava/lang/String;)V

    .line 127
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v3, "secondary"

    invoke-virtual {v2, v5, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->viewableChange(ZLjava/lang/String;)V

    .line 131
    :cond_0
    return-void

    .line 109
    .end local v0    # "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->isSecondaryWebview:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "secondaryClose"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->engageEnd(Ljava/lang/String;)V

    .line 256
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 257
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 155
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 156
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearHistory()V

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "OpenUrlActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenUrlActivity:: loadUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v1, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const-string v2, "OpenUrlActivity"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {p0}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    move-result-object v1

    .line 52
    .local v1, "ssaPubAgt":Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;
    invoke-virtual {v1}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getWebViewController()Lcom/supersonicads/sdk/controller/SupersonicWebView;

    move-result-object v2

    iput-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .line 55
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->hideActivityTitle()V

    .line 58
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->hideActivtiyStatusBar()V

    .line 61
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v2, Lcom/supersonicads/sdk/controller/SupersonicWebView;->EXTERNAL_URL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mUrl:Ljava/lang/String;

    .line 66
    sget-object v2, Lcom/supersonicads/sdk/controller/SupersonicWebView;->SECONDARY_WEB_VIEW:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->isSecondaryWebview:Z

    .line 69
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mainLayout:Landroid/widget/RelativeLayout;

    .line 70
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mainLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 245
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 246
    return-void
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 137
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v3, 0x0

    const-string v4, "secondary"

    invoke-virtual {v2, v3, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->viewableChange(ZLjava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mainLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 143
    .local v0, "parent":Landroid/view/ViewGroup;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 144
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 145
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 146
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V

    .line 151
    .end local v0    # "parent":Landroid/view/ViewGroup;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 78
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->initializeWebView()V

    .line 79
    return-void
.end method
