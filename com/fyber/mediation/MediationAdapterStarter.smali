.class public final Lcom/fyber/mediation/MediationAdapterStarter;
.super Ljava/lang/Object;
.source "MediationAdapterStarter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediationAdapterStarter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdaptersCount()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x3

    return v0
.end method

.method private static getConfigs(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 76
    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 79
    :cond_0
    return-object v0
.end method

.method private static startAdColony(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    :try_start_0
    new-instance v0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    invoke-direct {v0}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;-><init>()V

    .line 50
    const-string v1, "MediationAdapterStarter"

    const-string v2, "Starting adapter AdColony with version 2.3.0-r3"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, p0, p1}, Lcom/fyber/mediation/MediationAdapter;->startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const-string v1, "MediationAdapterStarter"

    const-string v2, "Adapter AdColony with version 2.3.0-r3 was started successfully"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "adcolony"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v0, "MediationAdapterStarter"

    const-string v1, "Adapter AdColony with version 2.3.0-r3 was not started successfully"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string v1, "MediationAdapterStarter"

    const-string v2, "Exception occurred while loading adapter AdColony with version 2.3.0-r3"

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static startAdapters(Landroid/app/Activity;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    const-string v1, "Applifier"

    invoke-static {p1, v1}, Lcom/fyber/mediation/MediationAdapterStarter;->getConfigs(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/fyber/mediation/MediationAdapterStarter;->startApplifier(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    .line 65
    const-string v1, "AppLovin"

    invoke-static {p1, v1}, Lcom/fyber/mediation/MediationAdapterStarter;->getConfigs(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/fyber/mediation/MediationAdapterStarter;->startAppLovin(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    .line 66
    const-string v1, "AdColony"

    invoke-static {p1, v1}, Lcom/fyber/mediation/MediationAdapterStarter;->getConfigs(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/fyber/mediation/MediationAdapterStarter;->startAdColony(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    .line 67
    return-object v0
.end method

.method private static startAppLovin(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    :try_start_0
    new-instance v0, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;

    invoke-direct {v0}, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;-><init>()V

    .line 35
    const-string v1, "MediationAdapterStarter"

    const-string v2, "Starting adapter AppLovin with version 6.1.4-r1"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, p0, p1}, Lcom/fyber/mediation/MediationAdapter;->startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    const-string v1, "MediationAdapterStarter"

    const-string v2, "Adapter AppLovin with version 6.1.4-r1 was started successfully"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v1, "applovin"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :goto_0
    return-void

    .line 40
    :cond_0
    const-string v0, "MediationAdapterStarter"

    const-string v1, "Adapter AppLovin with version 6.1.4-r1 was not started successfully"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string v1, "MediationAdapterStarter"

    const-string v2, "Exception occurred while loading adapter AppLovin with version 6.1.4-r1"

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static startApplifier(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    :try_start_0
    new-instance v0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;

    invoke-direct {v0}, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;-><init>()V

    .line 20
    const-string v1, "MediationAdapterStarter"

    const-string v2, "Starting adapter Applifier with version 1.5.2-r2"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, p0, p1}, Lcom/fyber/mediation/MediationAdapter;->startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    const-string v1, "MediationAdapterStarter"

    const-string v2, "Adapter Applifier with version 1.5.2-r2 was started successfully"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v1, "applifier"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :goto_0
    return-void

    .line 25
    :cond_0
    const-string v0, "MediationAdapterStarter"

    const-string v1, "Adapter Applifier with version 1.5.2-r2 was not started successfully"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    const-string v1, "MediationAdapterStarter"

    const-string v2, "Exception occurred while loading adapter Applifier with version 1.5.2-r2"

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
