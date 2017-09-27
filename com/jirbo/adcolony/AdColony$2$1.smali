.class Lcom/jirbo/adcolony/AdColony$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/AdColony$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/AdColony$2;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/AdColony$2;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColony$2$1;->a:Lcom/jirbo/adcolony/AdColony$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 221
    move v1, v2

    :goto_0
    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 223
    sget-object v0, Lcom/jirbo/adcolony/a;->aq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;

    .line 224
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->d:Landroid/app/Activity;

    if-ne v3, v4, :cond_0

    iget-boolean v3, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-nez v3, :cond_0

    .line 226
    iput-boolean v2, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->A:Z

    .line 227
    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->invalidate()V

    .line 228
    iget-object v3, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    if-eqz v3, :cond_0

    .line 230
    iget-object v3, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    iput-boolean v2, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;->a:Z

    .line 231
    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;->invalidate()V

    .line 221
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 235
    :cond_1
    return-void
.end method
