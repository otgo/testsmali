.class final Lcom/fyber/mediation/f;
.super Lcom/fyber/utils/b;
.source "MediationCoordinator.java"


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/fyber/mediation/d;


# direct methods
.method constructor <init>(Lcom/fyber/mediation/d;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/fyber/mediation/f;->b:Lcom/fyber/mediation/d;

    iput-object p2, p0, Lcom/fyber/mediation/f;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/fyber/utils/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 75
    :try_start_0
    const-string v0, "com.fyber.mediation.MediationAdapterStarter"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 77
    const-string v0, "getAdaptersCount"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 78
    const/4 v1, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 79
    if-lez v0, :cond_1

    .line 81
    invoke-static {}, Lcom/fyber/mediation/d;->b()Ljava/util/Map;

    move-result-object v1

    .line 83
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->e()Lcom/fyber/credentials/a;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/fyber/credentials/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    iget-object v3, p0, Lcom/fyber/mediation/f;->a:Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/fyber/operations/e;->a(Lcom/fyber/credentials/a;Landroid/app/Activity;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 88
    if-eqz v0, :cond_2

    .line 89
    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 91
    invoke-static {v1, v0}, Lcom/fyber/mediation/d;->a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    :goto_0
    move-object v1, v0

    .line 98
    :cond_0
    :goto_1
    :try_start_2
    const-string v0, "startAdapters"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/util/Map;

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 100
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fyber/mediation/f;->a:Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 101
    iget-object v2, p0, Lcom/fyber/mediation/f;->b:Lcom/fyber/mediation/d;

    invoke-static {v2}, Lcom/fyber/mediation/d;->a(Lcom/fyber/mediation/d;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 103
    iget-object v0, p0, Lcom/fyber/mediation/f;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/fyber/mediation/d;->a(Landroid/app/Activity;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    .line 116
    :goto_2
    iget-object v0, p0, Lcom/fyber/mediation/f;->b:Lcom/fyber/mediation/d;

    invoke-static {v0}, Lcom/fyber/mediation/d;->a(Lcom/fyber/mediation/d;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "Fyber"

    new-instance v2, Lcom/fyber/mediation/exchange/a;

    invoke-direct {v2}, Lcom/fyber/mediation/exchange/a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/fyber/mediation/f;->b:Lcom/fyber/mediation/d;

    iget-object v1, p0, Lcom/fyber/mediation/f;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/fyber/mediation/d;->a(Lcom/fyber/mediation/d;Landroid/app/Activity;)V

    .line 119
    return-void

    .line 94
    :catch_0
    move-exception v0

    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    .line 108
    :catch_1
    move-exception v0

    const-string v0, "MediationCoordinator"

    const-string v1, "There was an issue starting mediation for this session"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "MediationCoordinator"

    const-string v1, "MediationAdapterStarter class was not found.\nIt could mean that there\'s a proguard entry missing - \"-keep class com.fyber.mediation.MediationAdapterStarter { *;}\"\nOr the annotation processor did not run at compile time."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 105
    :cond_1
    :try_start_4
    const-string v0, "MediationCoordinator"

    const-string v1, "No mediation adapters to start"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    .line 112
    :catch_2
    move-exception v0

    .line 113
    :goto_4
    const-string v1, "MediationCoordinator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "There was an issue starting mediation for this session - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 112
    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_4

    .line 94
    :catch_5
    move-exception v0

    goto :goto_3

    :cond_2
    move-object v0, v1

    goto/16 :goto_0
.end method
