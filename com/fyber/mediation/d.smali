.class public final Lcom/fyber/mediation/d;
.super Ljava/lang/Object;
.source "MediationCoordinator.java"


# static fields
.field public static final a:Lcom/fyber/mediation/d;


# instance fields
.field private b:Z

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/fyber/mediation/d;

    invoke-direct {v0}, Lcom/fyber/mediation/d;-><init>()V

    sput-object v0, Lcom/fyber/mediation/d;->a:Lcom/fyber/mediation/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/d;->b:Z

    .line 46
    new-instance v0, Lcom/fyber/mediation/e;

    invoke-direct {v0, p0}, Lcom/fyber/mediation/e;-><init>(Lcom/fyber/mediation/d;)V

    iput-object v0, p0, Lcom/fyber/mediation/d;->c:Ljava/util/Map;

    .line 59
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/fyber/mediation/d;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/fyber/mediation/d;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/mediation/MediationAdapter;

    invoke-virtual {v0}, Lcom/fyber/mediation/MediationAdapter;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lcom/fyber/mediation/d;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fyber/mediation/d;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/fyber/mediation/d;->b(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 5

    .prologue
    .line 35
    .line 1241
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "notifyMediationAdaptersConfig"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/Map;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1242
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1245
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/fyber/mediation/d;Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 2231
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "notifyMediationAdaptersList"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/List;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2232
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/fyber/mediation/d;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 2233
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 2236
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/fyber/mediation/d;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 159
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 164
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 166
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 168
    if-eqz v2, :cond_0

    .line 169
    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 171
    :cond_0
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    :cond_1
    const-string v0, "MediationCoordinator"

    const-string v1, "There were no configurations to override"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_2
    return-object p0
.end method

.method private static c()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 125
    :try_start_0
    const-string v0, "com.fyber.mediation.MediationConfigProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 126
    const-string v0, "getConfigs"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 127
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 129
    const-string v2, "getRuntimeConfigs"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 130
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 132
    invoke-static {v0, v1}, Lcom/fyber/mediation/d;->b(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    .line 135
    :catch_0
    move-exception v0

    const-string v0, "MediationCoordinator"

    const-string v1, "There was an issue retrieving local configurations for this session."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v0, "MediationCoordinator"

    const-string v1, "MediationConfigProvider class was not found.\nIt could mean that there\'s a proguard entry missing - \"-keep class com.fyber.mediation.MediationConfigProvider { *;}\"\nOr the annotation processor did not run at compile time."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 139
    :catch_1
    move-exception v0

    .line 140
    :goto_2
    const-string v1, "MediationCoordinator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "There was an issue retrieving local configurations for this session - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 139
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/fyber/mediation/d;->b:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    new-instance v1, Lcom/fyber/mediation/g;

    invoke-direct {v1, p0}, Lcom/fyber/mediation/g;-><init>(Lcom/fyber/mediation/d;)V

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber$a;->a(Ljava/lang/Runnable;)V

    .line 156
    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/fyber/mediation/d;->b:Z

    if-eqz v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/mediation/d;->b:Z

    .line 70
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    new-instance v1, Lcom/fyber/mediation/f;

    invoke-direct {v1, p0, p1}, Lcom/fyber/mediation/f;-><init>(Lcom/fyber/mediation/d;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber$a;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;Lcom/fyber/ads/videos/mediation/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fyber/ads/videos/mediation/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 202
    sget v0, Lcom/fyber/mediation/a;->a:I

    invoke-virtual {p0, p2, v0}, Lcom/fyber/mediation/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/fyber/mediation/d;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/mediation/MediationAdapter;

    .line 1085
    invoke-virtual {v0}, Lcom/fyber/mediation/MediationAdapter;->getVideoMediationAdapter()Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;

    move-result-object v1

    .line 1086
    if-eqz v1, :cond_0

    .line 1087
    invoke-virtual {v0}, Lcom/fyber/mediation/MediationAdapter;->getVideoMediationAdapter()Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p4, p3}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->a(Landroid/app/Activity;Lcom/fyber/ads/videos/mediation/b;Ljava/util/Map;)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-direct {p0, p2}, Lcom/fyber/mediation/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->AdapterNotIntegrated:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    invoke-interface {p4, p2, v0, v1, p3}, Lcom/fyber/ads/videos/mediation/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fyber/ads/videos/mediation/TPNVideoEvent;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/fyber/ads/videos/mediation/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fyber/ads/videos/mediation/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 192
    sget v0, Lcom/fyber/mediation/a;->a:I

    invoke-virtual {p0, p2, v0}, Lcom/fyber/mediation/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/fyber/mediation/d;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/mediation/MediationAdapter;

    .line 1076
    invoke-virtual {v0}, Lcom/fyber/mediation/MediationAdapter;->getVideoMediationAdapter()Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;

    move-result-object v0

    .line 1077
    if-eqz v0, :cond_0

    .line 1078
    invoke-virtual {v0, p1, p4, p3}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->a(Landroid/content/Context;Lcom/fyber/ads/videos/mediation/a;Ljava/util/Map;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-direct {p0, p2}, Lcom/fyber/mediation/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->AdapterNotIntegrated:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    invoke-interface {p4, p2, v0, v1, p3}, Lcom/fyber/ads/videos/mediation/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/fyber/ads/interstitials/a;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-virtual {p2}, Lcom/fyber/ads/interstitials/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 221
    sget v2, Lcom/fyber/mediation/a;->b:I

    invoke-virtual {p0, v0, v2}, Lcom/fyber/mediation/d;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    iget-object v2, p0, Lcom/fyber/mediation/d;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/mediation/MediationAdapter;

    .line 1107
    invoke-virtual {v0}, Lcom/fyber/mediation/MediationAdapter;->getInterstitialMediationAdapter()Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;

    move-result-object v0

    .line 1108
    if-eqz v0, :cond_0

    .line 1109
    invoke-virtual {v0, p1, p2}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->a(Landroid/app/Activity;Lcom/fyber/ads/interstitials/a;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 222
    goto :goto_0

    :cond_1
    move v0, v1

    .line 224
    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/fyber/ads/interstitials/a;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 211
    invoke-virtual {p2}, Lcom/fyber/ads/interstitials/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 212
    sget v2, Lcom/fyber/mediation/a;->b:I

    invoke-virtual {p0, v0, v2}, Lcom/fyber/mediation/d;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    iget-object v2, p0, Lcom/fyber/mediation/d;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/mediation/MediationAdapter;

    .line 1098
    invoke-virtual {v0}, Lcom/fyber/mediation/MediationAdapter;->getInterstitialMediationAdapter()Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;

    move-result-object v0

    .line 1099
    if-eqz v0, :cond_0

    .line 1100
    invoke-virtual {v0, p1, p2}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->a(Landroid/content/Context;Lcom/fyber/ads/interstitials/a;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 213
    goto :goto_0

    :cond_1
    move v0, v1

    .line 215
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fyber/mediation/d;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/mediation/MediationAdapter;

    .line 181
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, p2}, Lcom/fyber/mediation/MediationAdapter;->a(I)Z

    move-result v0

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
