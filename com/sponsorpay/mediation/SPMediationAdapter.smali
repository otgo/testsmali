.class public abstract Lcom/sponsorpay/mediation/SPMediationAdapter;
.super Ljava/lang/Object;
.source "SPMediationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sponsorpay/mediation/SPMediationAdapter$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method private a([Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 6

    .prologue
    .line 140
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 141
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 142
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 143
    new-instance v0, Lcom/sponsorpay/mediation/a;

    const-string v2, "EventBroadcaster"

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sponsorpay/mediation/a;-><init>(Lcom/sponsorpay/mediation/SPMediationAdapter;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/sponsorpay/mediation/a;->start()V

    .line 155
    return-void
.end method


# virtual methods
.method public abstract getInterstitialMediationAdapter()Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter",
            "<+",
            "Lcom/sponsorpay/mediation/SPMediationAdapter;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getListeners()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract getVideoMediationAdapter()Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter",
            "<+",
            "Lcom/sponsorpay/mediation/SPMediationAdapter;",
            ">;"
        }
    .end annotation
.end method

.method protected varargs notifyListeners([Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 127
    if-eqz p1, :cond_1

    .line 128
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/Class;

    .line 129
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 130
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 135
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/sponsorpay/mediation/SPMediationAdapter;->a([Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 136
    return-void

    .line 133
    :cond_1
    new-array v0, v0, [Ljava/lang/Class;

    goto :goto_1
.end method

.method protected notifyListeners([Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/sponsorpay/mediation/SPMediationAdapter;->a([Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 122
    return-void
.end method

.method public abstract startAdapter(Landroid/app/Activity;)Z
.end method
