.class public final Lcom/chartboost/sdk/CBImpressionActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 34
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public forwardTouchEvents(Landroid/app/Activity;)V
    .locals 0
    .param p1, "host"    # Landroid/app/Activity;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/chartboost/sdk/CBImpressionActivity;->a:Landroid/app/Activity;

    .line 39
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v1, 0x1000000

    const/4 v2, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-static {}, Lcom/chartboost/sdk/impl/bg;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 50
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBImpressionActivity;->requestWindowFeature(I)Z

    .line 53
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "paramFullscreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 58
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBImpressionActivity;->setContentView(Landroid/view/View;)V

    .line 59
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/CBImpressionActivity;)V

    .line 62
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->c(Landroid/app/Activity;)V

    .line 63
    invoke-static {}, Lcom/chartboost/sdk/impl/ba;->d()V

    .line 64
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 95
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->b(Landroid/app/Activity;)V

    .line 96
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 83
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/k;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/k;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/Libraries/k;)V

    .line 84
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 77
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/k;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/k;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Libraries/k;)V

    .line 78
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 70
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->a()V

    .line 71
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->a(Landroid/app/Activity;)V

    .line 72
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 89
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/k;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/k;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Libraries/k;)V

    .line 90
    return-void
.end method
