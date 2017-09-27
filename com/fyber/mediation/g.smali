.class final Lcom/fyber/mediation/g;
.super Ljava/lang/Object;
.source "MediationCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fyber/mediation/d;


# direct methods
.method constructor <init>(Lcom/fyber/mediation/d;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/fyber/mediation/g;->a:Lcom/fyber/mediation/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/fyber/mediation/g;->a:Lcom/fyber/mediation/d;

    invoke-static {v0}, Lcom/fyber/mediation/d;->a(Lcom/fyber/mediation/d;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/mediation/MediationAdapter;

    .line 1129
    sget v2, Lcom/fyber/mediation/a;->a:I

    invoke-virtual {v0, v2}, Lcom/fyber/mediation/MediationAdapter;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1130
    invoke-virtual {v0}, Lcom/fyber/mediation/MediationAdapter;->getVideoMediationAdapter()Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->startPrecaching()V

    goto :goto_0

    .line 153
    :cond_1
    return-void
.end method
