.class final Lcom/chartboost/sdk/Chartboost$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost;->cacheInterstitial(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 666
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v0

    if-nez v0, :cond_1

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$6;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 669
    const-string v0, "Chartboost"

    const-string v1, "cacheInterstitial location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 670
    invoke-static {}, Lcom/chartboost/sdk/b;->g()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 671
    invoke-static {}, Lcom/chartboost/sdk/b;->g()Lcom/chartboost/sdk/a;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost$6;->a:Ljava/lang/String;

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, v1, v2}, Lcom/chartboost/sdk/a;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 674
    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/impl/ae;->f()Lcom/chartboost/sdk/impl/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost$6;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ae;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
