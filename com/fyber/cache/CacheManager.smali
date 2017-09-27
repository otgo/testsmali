.class public Lcom/fyber/cache/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# static fields
.field private static a:Lcom/fyber/cache/CacheManager;


# instance fields
.field private b:Lcom/fyber/cache/internal/f;

.field private c:Lcom/fyber/cache/internal/a;

.field private d:Lcom/fyber/cache/internal/e;

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/fyber/cache/CacheManager;

    invoke-direct {v0}, Lcom/fyber/cache/CacheManager;-><init>()V

    sput-object v0, Lcom/fyber/cache/CacheManager;->a:Lcom/fyber/cache/CacheManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/fyber/cache/CacheManager;->e:Z

    .line 40
    iput-boolean v0, p0, Lcom/fyber/cache/CacheManager;->f:Z

    .line 41
    iput-boolean v0, p0, Lcom/fyber/cache/CacheManager;->g:Z

    .line 44
    sget-object v0, Lcom/fyber/cache/internal/f;->a:Lcom/fyber/cache/internal/f;

    iput-object v0, p0, Lcom/fyber/cache/CacheManager;->b:Lcom/fyber/cache/internal/f;

    .line 45
    sget-object v0, Lcom/fyber/cache/internal/e;->a:Lcom/fyber/cache/internal/e;

    iput-object v0, p0, Lcom/fyber/cache/CacheManager;->d:Lcom/fyber/cache/internal/e;

    .line 46
    return-void
.end method

.method public static a()Lcom/fyber/cache/CacheManager;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/fyber/cache/CacheManager;->a:Lcom/fyber/cache/CacheManager;

    return-object v0
.end method

.method static synthetic a(Lcom/fyber/cache/CacheManager;Lcom/fyber/cache/internal/e;)Lcom/fyber/cache/internal/e;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/fyber/cache/CacheManager;->d:Lcom/fyber/cache/internal/e;

    return-object p1
.end method

.method static synthetic a(Lcom/fyber/cache/CacheManager;)Lcom/fyber/cache/internal/f;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fyber/cache/CacheManager;->b:Lcom/fyber/cache/internal/f;

    return-object v0
.end method

.method static synthetic a(Lcom/fyber/cache/CacheManager;Lcom/fyber/cache/internal/f;)Lcom/fyber/cache/internal/f;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/fyber/cache/CacheManager;->b:Lcom/fyber/cache/internal/f;

    return-object p1
.end method

.method private c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/fyber/cache/CacheManager;->e:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 189
    const-string v1, "FybCacheManager"

    const-string v2, "The download service is running, let\'s cancel current downloads"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/fyber/cache/CacheVideoDownloadService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    const-string v2, "action.to.perform"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 194
    :cond_0
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/fyber/cache/CacheManager;->e:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 200
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/fyber/cache/CacheVideoDownloadService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    const-string v2, "action.to.perform"

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 204
    :cond_0
    return-void
.end method

.method public static pauseDownloads(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 160
    sget-object v0, Lcom/fyber/cache/CacheManager;->a:Lcom/fyber/cache/CacheManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fyber/cache/CacheManager;->f:Z

    .line 161
    sget-object v0, Lcom/fyber/cache/CacheManager;->a:Lcom/fyber/cache/CacheManager;

    invoke-direct {v0, p0}, Lcom/fyber/cache/CacheManager;->c(Landroid/content/Context;)V

    .line 162
    return-void
.end method

.method public static resumeDownloads(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 150
    sget-object v0, Lcom/fyber/cache/CacheManager;->a:Lcom/fyber/cache/CacheManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/fyber/cache/CacheManager;->f:Z

    .line 151
    sget-object v0, Lcom/fyber/cache/CacheManager;->a:Lcom/fyber/cache/CacheManager;

    invoke-direct {v0, p0}, Lcom/fyber/cache/CacheManager;->d(Landroid/content/Context;)V

    .line 152
    return-void
.end method

.method public static startPrecaching(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 140
    invoke-static {p0}, Lcom/fyber/cache/CacheManager;->resumeDownloads(Landroid/content/Context;)V

    .line 141
    sget-object v0, Lcom/fyber/mediation/d;->a:Lcom/fyber/mediation/d;

    invoke-virtual {v0}, Lcom/fyber/mediation/d;->a()V

    .line 142
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 117
    const-string v0, "FybCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Getting URI for URL - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    sget-object v0, Lcom/fyber/cache/CacheManager;->a:Lcom/fyber/cache/CacheManager;

    .line 1089
    iget-object v0, v0, Lcom/fyber/cache/CacheManager;->b:Lcom/fyber/cache/internal/f;

    .line 118
    invoke-virtual {v0, p1}, Lcom/fyber/cache/internal/f;->a(Ljava/lang/String;)Lcom/fyber/cache/internal/c;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/fyber/cache/internal/c;->c()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/fyber/cache/internal/c;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    invoke-virtual {v0}, Lcom/fyber/cache/internal/c;->a()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 130
    :cond_0
    :goto_0
    const-string v1, "FybCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "URI = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-object v0

    .line 1174
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/cache/CacheManager;->g:Z

    .line 1175
    invoke-direct {p0, p2}, Lcom/fyber/cache/CacheManager;->c(Landroid/content/Context;)V

    .line 125
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/net/Uri;->isRelative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/fyber/cache/a;

    invoke-direct {v2, p0, v0}, Lcom/fyber/cache/a;-><init>(Lcom/fyber/cache/CacheManager;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 75
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 76
    return-void
.end method

.method public final a(Lcom/fyber/cache/internal/a;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/fyber/cache/CacheManager;->c:Lcom/fyber/cache/internal/a;

    .line 104
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/fyber/cache/CacheManager;->e:Z

    .line 111
    return-void
.end method

.method public final b()Lcom/fyber/cache/internal/a;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fyber/cache/CacheManager;->c:Lcom/fyber/cache/internal/a;

    return-object v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/cache/CacheManager;->g:Z

    .line 183
    invoke-direct {p0, p1}, Lcom/fyber/cache/CacheManager;->d(Landroid/content/Context;)V

    .line 184
    return-void
.end method

.method public final c()Lcom/fyber/cache/internal/f;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fyber/cache/CacheManager;->b:Lcom/fyber/cache/internal/f;

    return-object v0
.end method

.method public final d()Lcom/fyber/cache/internal/e;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fyber/cache/CacheManager;->d:Lcom/fyber/cache/internal/e;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/fyber/cache/CacheManager;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/fyber/cache/CacheManager;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
