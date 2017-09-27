.class public final Lcom/fyber/ads/videos/mediation/d;
.super Ljava/lang/Object;
.source "RewardedVideoMediationJSInterface.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/fyber/ads/videos/mediation/e;

    invoke-direct {v2, p0}, Lcom/fyber/ads/videos/mediation/e;-><init>(Lcom/fyber/ads/videos/mediation/d;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/mediation/d;->b:Landroid/os/Handler;

    .line 74
    const-string v0, "SynchJS"

    iput-object v0, p0, Lcom/fyber/ads/videos/mediation/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    if-eqz p2, :cond_1

    .line 48
    iput-object p2, p0, Lcom/fyber/ads/videos/mediation/d;->a:Landroid/webkit/ValueCallback;

    .line 49
    iget-object v0, p0, Lcom/fyber/ads/videos/mediation/d;->b:Landroid/os/Handler;

    const/16 v1, 0x1639

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 52
    :try_start_0
    const-string v0, "javascript:try{ JSON.parse(Sponsorpay.MBE.SDKInterface.do_getOffer()).uses_tpn;}catch(error){false;};"

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "evaluateJavascript"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/webkit/ValueCallback;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 55
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p0, v2, v0

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 58
    :goto_1
    const-string v1, "RewardedVideoMediationJSInterface"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_0
    const-string v0, "javascript:window.SynchJS.setValue((function(){try{return JSON.parse(Sponsorpay.MBE.SDKInterface.do_getOffer()).uses_tpn;}catch(js_eval_err){return false;}})());"

    .line 64
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_1
    const-string v0, "RewardedVideoMediationJSInterface"

    const-string v1, "There is no ValueCallback to notify. Aborting..."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fyber/ads/videos/mediation/d;->b:Landroid/os/Handler;

    const/16 v1, 0x1639

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 96
    iget-object v0, p0, Lcom/fyber/ads/videos/mediation/d;->a:Landroid/webkit/ValueCallback;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/videos/mediation/d;->a:Landroid/webkit/ValueCallback;

    .line 98
    return-void
.end method

.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fyber/ads/videos/mediation/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/fyber/ads/videos/mediation/d;->a(Ljava/lang/String;)V

    .line 83
    return-void
.end method
