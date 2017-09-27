.class public final Lcom/fyber/operations/b;
.super Ljava/lang/Object;
.source "InterstitialAdsProcessorOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:[Lcom/fyber/ads/interstitials/a;


# direct methods
.method private constructor <init>([Lcom/fyber/ads/interstitials/a;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/fyber/operations/b;->a:[Lcom/fyber/ads/interstitials/a;

    .line 28
    return-void
.end method

.method public static a([Lcom/fyber/ads/interstitials/a;)V
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    new-instance v1, Lcom/fyber/operations/b;

    invoke-direct {v1, p0}, Lcom/fyber/operations/b;-><init>([Lcom/fyber/ads/interstitials/a;)V

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber$a;->a(Ljava/lang/Runnable;)V

    .line 24
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 32
    iget-object v1, p0, Lcom/fyber/operations/b;->a:[Lcom/fyber/ads/interstitials/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 33
    const-string v4, "InterstitialAdsProcessorOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Processing ad from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/fyber/ads/interstitials/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v4, Lcom/fyber/mediation/d;->a:Lcom/fyber/mediation/d;

    invoke-virtual {v3}, Lcom/fyber/ads/interstitials/a;->a()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/fyber/mediation/a;->b:I

    invoke-virtual {v4, v5, v6}, Lcom/fyber/mediation/d;->a(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 35
    const-string v4, "InterstitialAdsProcessorOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/fyber/ads/interstitials/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is available, proceeding..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object v4, Lcom/fyber/ads/interstitials/c;->a:Lcom/fyber/ads/interstitials/c;

    sget-object v5, Lcom/fyber/ads/interstitials/f;->a:Lcom/fyber/ads/interstitials/f;

    invoke-virtual {v4, v3, v5}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/a;Lcom/fyber/ads/interstitials/f;)V

    .line 38
    sget-object v4, Lcom/fyber/ads/interstitials/c;->a:Lcom/fyber/ads/interstitials/c;

    invoke-virtual {v4, v3}, Lcom/fyber/ads/interstitials/c;->b(Lcom/fyber/ads/interstitials/a;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    const-string v0, "InterstitialAdsProcessorOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad is available from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/fyber/ads/interstitials/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/fyber/ads/interstitials/c;->a:Lcom/fyber/ads/interstitials/c;

    sget-object v1, Lcom/fyber/ads/interstitials/f;->b:Lcom/fyber/ads/interstitials/f;

    invoke-virtual {v0, v3, v1}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/a;Lcom/fyber/ads/interstitials/f;)V

    .line 43
    sget-object v0, Lcom/fyber/ads/interstitials/c;->a:Lcom/fyber/ads/interstitials/c;

    sget-object v1, Lcom/fyber/ads/interstitials/f;->b:Lcom/fyber/ads/interstitials/f;

    invoke-virtual {v0, v7, v1}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/a;Lcom/fyber/ads/interstitials/f;)V

    .line 44
    sget-object v0, Lcom/fyber/ads/interstitials/c;->a:Lcom/fyber/ads/interstitials/c;

    invoke-virtual {v0, v3}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/a;)V

    .line 61
    :goto_1
    return-void

    .line 47
    :cond_0
    const-string v4, "InterstitialAdsProcessorOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "No ad available from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/fyber/ads/interstitials/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sget-object v4, Lcom/fyber/ads/interstitials/c;->a:Lcom/fyber/ads/interstitials/c;

    sget-object v5, Lcom/fyber/ads/interstitials/f;->c:Lcom/fyber/ads/interstitials/f;

    invoke-virtual {v4, v3, v5}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/a;Lcom/fyber/ads/interstitials/f;)V

    .line 32
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 53
    :cond_1
    const-string v4, "InterstitialAdsProcessorOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/fyber/ads/interstitials/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not integrated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v4, Lcom/fyber/ads/interstitials/c;->a:Lcom/fyber/ads/interstitials/c;

    sget-object v5, Lcom/fyber/ads/interstitials/f;->i:Lcom/fyber/ads/interstitials/f;

    invoke-virtual {v4, v3, v5}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/a;Lcom/fyber/ads/interstitials/f;)V

    goto :goto_2

    .line 57
    :cond_2
    const-string v0, "InterstitialAdsProcessorOperation"

    const-string v1, "There are no ads available currently."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/fyber/ads/interstitials/c;->a:Lcom/fyber/ads/interstitials/c;

    sget-object v1, Lcom/fyber/ads/interstitials/f;->c:Lcom/fyber/ads/interstitials/f;

    invoke-virtual {v0, v7, v1}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/a;Lcom/fyber/ads/interstitials/f;)V

    .line 60
    sget-object v0, Lcom/fyber/ads/interstitials/c;->a:Lcom/fyber/ads/interstitials/c;

    invoke-virtual {v0, v7}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/a;)V

    goto :goto_1
.end method
