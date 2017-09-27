.class final Lcom/sponsorpay/mediation/b;
.super Ljava/util/HashMap;
.source "SPMediationCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/sponsorpay/mediation/SPMediationAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x30be10da6905b68aL


# instance fields
.field final synthetic a:Lcom/sponsorpay/mediation/SPMediationCoordinator;


# direct methods
.method constructor <init>(Lcom/sponsorpay/mediation/SPMediationCoordinator;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sponsorpay/mediation/b;->a:Lcom/sponsorpay/mediation/SPMediationCoordinator;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/mediation/SPMediationAdapter;

    return-object v0
.end method

.method public final synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/sponsorpay/mediation/SPMediationAdapter;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/mediation/SPMediationAdapter;

    return-object v0
.end method
