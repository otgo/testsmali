.class Lcom/jirbo/adcolony/AdColonyNativeAdView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/AdColonyNativeAdView;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/AdColonyNativeAdView;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/AdColonyNativeAdView;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->a:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 493
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->a:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->r:Z

    if-eqz v0, :cond_2

    .line 495
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->a:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->O:Lcom/jirbo/adcolony/AdColonyNativeAdMutedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->a:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->O:Lcom/jirbo/adcolony/AdColonyNativeAdMutedListener;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->a:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-interface {v0, v1, v2}, Lcom/jirbo/adcolony/AdColonyNativeAdMutedListener;->onAdColonyNativeAdMuted(Lcom/jirbo/adcolony/AdColonyNativeAdView;Z)V

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->a:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-virtual {v0, v2, v2}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a(ZZ)V

    .line 498
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->a:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iput-boolean v2, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->x:Z

    .line 507
    :cond_1
    :goto_0
    return-void

    .line 500
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->a:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->V:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->a:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->R:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->a:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_1

    .line 502
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->a:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->O:Lcom/jirbo/adcolony/AdColonyNativeAdMutedListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->a:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->O:Lcom/jirbo/adcolony/AdColonyNativeAdMutedListener;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->a:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-interface {v0, v1, v3}, Lcom/jirbo/adcolony/AdColonyNativeAdMutedListener;->onAdColonyNativeAdMuted(Lcom/jirbo/adcolony/AdColonyNativeAdView;Z)V

    .line 503
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->a:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iput-boolean v3, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->x:Z

    .line 505
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->a:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-virtual {v0, v3, v2}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->a(ZZ)V

    goto :goto_0
.end method
