.class Lcom/jirbo/adcolony/AdColonyNativeAdView$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/AdColonyNativeAdView$a;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/AdColonyNativeAdView$a;)V
    .locals 0

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a$1;->a:Lcom/jirbo/adcolony/AdColonyNativeAdView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a$1;->a:Lcom/jirbo/adcolony/AdColonyNativeAdView$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->z:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a$1;->a:Lcom/jirbo/adcolony/AdColonyNativeAdView$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->A:Z

    if-nez v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a$1;->a:Lcom/jirbo/adcolony/AdColonyNativeAdView$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->b:Z

    .line 1055
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a$1;->a:Lcom/jirbo/adcolony/AdColonyNativeAdView$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    .line 1056
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a$1;->a:Lcom/jirbo/adcolony/AdColonyNativeAdView$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView$a;->c:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->Q:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1058
    :cond_0
    return-void
.end method
