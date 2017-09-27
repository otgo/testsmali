.class final Lcom/sponsorpay/mediation/c;
.super Ljava/lang/Thread;
.source "SPMediationCoordinator.java"


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/sponsorpay/mediation/SPMediationCoordinator;


# direct methods
.method constructor <init>(Lcom/sponsorpay/mediation/SPMediationCoordinator;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sponsorpay/mediation/c;->b:Lcom/sponsorpay/mediation/SPMediationCoordinator;

    iput-object p3, p0, Lcom/sponsorpay/mediation/c;->a:Landroid/app/Activity;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 63
    const-string v0, "SPMediationCoordinator"

    const-string v1, "Starting mediation networks..."

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/sponsorpay/mediation/SPMediationConfigurator;->INSTANCE:Lcom/sponsorpay/mediation/SPMediationConfigurator;

    invoke-virtual {v0}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->getMediationAdapters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 70
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sponsorpay/mediation/SPMediationAdapter;

    .line 71
    invoke-virtual {v2}, Lcom/sponsorpay/mediation/SPMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-virtual {v2}, Lcom/sponsorpay/mediation/SPMediationAdapter;->getVersion()Ljava/lang/String;

    move-result-object v5

    .line 74
    const-string v6, "SPMediationCoordinator"

    const-string v7, "Starting adapter %s version %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const-string v0, "SPMediationCoordinator"

    const-string v5, "Adapter version is compatible with SDK. Proceeding..."

    invoke-static {v0, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/sponsorpay/mediation/c;->a:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Lcom/sponsorpay/mediation/SPMediationAdapter;->startAdapter(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "SPMediationCoordinator"

    const-string v5, "Adapter has been started successfully"

    invoke-static {v0, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/sponsorpay/mediation/c;->b:Lcom/sponsorpay/mediation/SPMediationCoordinator;

    invoke-static {v0}, Lcom/sponsorpay/mediation/SPMediationCoordinator;->a(Lcom/sponsorpay/mediation/SPMediationCoordinator;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const-string v2, "SPMediationCoordinator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Adapter not found - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 82
    :cond_0
    :try_start_1
    const-string v0, "SPMediationCoordinator"

    const-string v2, "Warning - the adapter has NOT been started."

    invoke-static {v0, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 89
    :catch_1
    move-exception v0

    .line 90
    const-string v1, "SPMediationCoordinator"

    const-string v2, "An error occurred"

    invoke-static {v1, v2, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 85
    :cond_1
    :try_start_2
    const-string v0, "SPMediationCoordinator"

    const-string v2, "Adapter version is NOT compatible with this SDK."

    invoke-static {v0, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 91
    :catch_2
    move-exception v0

    .line 92
    const-string v2, "SPMediationCoordinator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "An error occurred while trying to instantiate "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 95
    :cond_2
    const-string v0, "SPMediationCoordinator"

    const-string v1, "Initialization complete..."

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/sponsorpay/mediation/c;->b:Lcom/sponsorpay/mediation/SPMediationCoordinator;

    iget-object v1, p0, Lcom/sponsorpay/mediation/c;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/sponsorpay/mediation/SPMediationCoordinator;->a(Lcom/sponsorpay/mediation/SPMediationCoordinator;Landroid/app/Activity;)V

    .line 98
    return-void
.end method
