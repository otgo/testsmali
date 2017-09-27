.class public Lcom/fyber/Fyber;
.super Ljava/lang/Object;
.source "Fyber.java"


# annotations
.annotation runtime Lcom/fyber/mediation/annotations/MediationAPI;
    value = 0x3
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/Fyber$a;,
        Lcom/fyber/Fyber$Settings;
    }
.end annotation


# static fields
.field public static final RELEASE_VERSION_STRING:Ljava/lang/String;

.field private static a:Lcom/fyber/Fyber;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/fyber/Fyber$a;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 66
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "8.0.1"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/Fyber;->RELEASE_VERSION_STRING:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v2, p0, Lcom/fyber/Fyber;->e:Z

    .line 80
    new-instance v0, Lcom/fyber/Fyber$a;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lcom/fyber/Fyber$a;-><init>(Ljava/lang/String;Landroid/content/Context;B)V

    iput-object v0, p0, Lcom/fyber/Fyber;->d:Lcom/fyber/Fyber$a;

    .line 81
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/Fyber;->b:Landroid/content/Context;

    .line 82
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fyber/Fyber;->c:Ljava/lang/ref/WeakReference;

    .line 83
    return-void
.end method

.method public static getConfigs()Lcom/fyber/Fyber$a;
    .locals 1

    .prologue
    .line 597
    sget-object v0, Lcom/fyber/Fyber;->a:Lcom/fyber/Fyber;

    if-eqz v0, :cond_0

    .line 598
    sget-object v0, Lcom/fyber/Fyber;->a:Lcom/fyber/Fyber;

    iget-object v0, v0, Lcom/fyber/Fyber;->d:Lcom/fyber/Fyber$a;

    .line 600
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/fyber/Fyber$a;->a:Lcom/fyber/Fyber$a;

    goto :goto_0
.end method

.method public static with(Ljava/lang/String;Landroid/app/Activity;)Lcom/fyber/Fyber;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 97
    sget-object v0, Lcom/fyber/Fyber;->a:Lcom/fyber/Fyber;

    if-nez v0, :cond_5

    .line 1190
    if-nez p1, :cond_0

    .line 1191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1193
    :cond_0
    invoke-static {p0}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "App id cannot be null nor empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1196
    :cond_1
    invoke-static {p0}, Lcom/fyber/credentials/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Advertisers cannot start the sdk"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_2
    const-class v1, Lcom/fyber/Fyber;

    monitor-enter v1

    .line 102
    :try_start_0
    sget-object v0, Lcom/fyber/Fyber;->a:Lcom/fyber/Fyber;

    if-nez v0, :cond_3

    .line 103
    new-instance v0, Lcom/fyber/Fyber;

    invoke-direct {v0, p0, p1}, Lcom/fyber/Fyber;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    sput-object v0, Lcom/fyber/Fyber;->a:Lcom/fyber/Fyber;

    .line 105
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_4
    :goto_0
    sget-object v0, Lcom/fyber/Fyber;->a:Lcom/fyber/Fyber;

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 106
    :cond_5
    sget-object v0, Lcom/fyber/Fyber;->a:Lcom/fyber/Fyber;

    iget-boolean v0, v0, Lcom/fyber/Fyber;->e:Z

    if-nez v0, :cond_4

    .line 107
    sget-object v0, Lcom/fyber/Fyber;->a:Lcom/fyber/Fyber;

    iget-object v0, v0, Lcom/fyber/Fyber;->d:Lcom/fyber/Fyber$a;

    invoke-static {v0}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/Fyber$a;)Lcom/fyber/credentials/a$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fyber/credentials/a$a;->a(Ljava/lang/String;)Lcom/fyber/credentials/a$a;

    goto :goto_0
.end method


# virtual methods
.method public start()Lcom/fyber/Fyber$Settings;
    .locals 3

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/fyber/Fyber;->e:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fyber/utils/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/fyber/Fyber;->d:Lcom/fyber/Fyber$a;

    iget-object v1, p0, Lcom/fyber/Fyber;->d:Lcom/fyber/Fyber$a;

    invoke-static {v1}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/Fyber$a;)Lcom/fyber/credentials/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/credentials/a$a;->a()Lcom/fyber/credentials/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/Fyber$a;Lcom/fyber/credentials/a;)Lcom/fyber/credentials/a;

    .line 183
    iget-object v0, p0, Lcom/fyber/Fyber;->d:Lcom/fyber/Fyber$a;

    invoke-static {v0}, Lcom/fyber/Fyber$a;->c(Lcom/fyber/Fyber$a;)Lcom/fyber/credentials/a;

    move-result-object v1

    .line 1203
    iget-object v0, p0, Lcom/fyber/Fyber;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1204
    if-eqz v0, :cond_1

    .line 1205
    sget-object v2, Lcom/fyber/mediation/d;->a:Lcom/fyber/mediation/d;

    invoke-virtual {v2, v0}, Lcom/fyber/mediation/d;->a(Landroid/app/Activity;)V

    .line 1210
    :goto_0
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v0

    iget-object v2, p0, Lcom/fyber/Fyber;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/fyber/cache/CacheManager;->a(Landroid/content/Context;)V

    .line 1213
    :try_start_0
    invoke-virtual {v1}, Lcom/fyber/credentials/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fyber/reporters/internal/b;->a(Ljava/lang/String;)Lcom/fyber/reporters/internal/b;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/Fyber;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/fyber/reporters/internal/b;->report(Landroid/content/Context;)Z
    :try_end_0
    .catch Lcom/fyber/exceptions/IdException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/Fyber;->e:Z

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/fyber/Fyber;->d:Lcom/fyber/Fyber$a;

    invoke-static {v0}, Lcom/fyber/Fyber$a;->b(Lcom/fyber/Fyber$a;)Lcom/fyber/Fyber$Settings;

    move-result-object v0

    return-object v0

    .line 1207
    :cond_1
    const-string v0, "Fyber"

    const-string v2, "There was an issue starting the adapters - the activity might have been closed."

    invoke-static {v0, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public withManualPrecaching()Lcom/fyber/Fyber;
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/fyber/Fyber;->e:Z

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/fyber/Fyber;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/fyber/cache/CacheManager;->pauseDownloads(Landroid/content/Context;)V

    .line 137
    :cond_0
    return-object p0
.end method

.method public withParameters(Ljava/util/Map;)Lcom/fyber/Fyber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fyber/Fyber;"
        }
    .end annotation

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/fyber/Fyber;->e:Z

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/fyber/Fyber;->d:Lcom/fyber/Fyber$a;

    invoke-static {v0}, Lcom/fyber/Fyber$a;->b(Lcom/fyber/Fyber$a;)Lcom/fyber/Fyber$Settings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fyber/Fyber$Settings;->addParameters(Ljava/util/Map;)Lcom/fyber/Fyber$Settings;

    .line 169
    :cond_0
    return-object p0
.end method

.method public withSecurityToken(Ljava/lang/String;)Lcom/fyber/Fyber;
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/fyber/Fyber;->e:Z

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/fyber/Fyber;->d:Lcom/fyber/Fyber$a;

    invoke-static {v0}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/Fyber$a;)Lcom/fyber/credentials/a$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fyber/credentials/a$a;->c(Ljava/lang/String;)Lcom/fyber/credentials/a$a;

    .line 150
    :cond_0
    return-object p0
.end method

.method public withUserId(Ljava/lang/String;)Lcom/fyber/Fyber;
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/fyber/Fyber;->e:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/fyber/Fyber;->d:Lcom/fyber/Fyber$a;

    invoke-static {v0}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/Fyber$a;)Lcom/fyber/credentials/a$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fyber/credentials/a$a;->b(Ljava/lang/String;)Lcom/fyber/credentials/a$a;

    .line 122
    :cond_0
    return-object p0
.end method
