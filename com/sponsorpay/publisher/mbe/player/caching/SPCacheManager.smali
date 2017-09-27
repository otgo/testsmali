.class public Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;
.super Ljava/lang/Object;
.source "SPCacheManager.java"


# static fields
.field private static a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;


# instance fields
.field private b:Lcom/sponsorpay/publisher/mbe/player/caching/e;

.field private c:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration;

.field private d:Lcom/sponsorpay/publisher/mbe/player/caching/d;

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    invoke-direct {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;-><init>()V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->e:Z

    .line 24
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->f:Z

    .line 25
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->g:Z

    .line 28
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->a:Lcom/sponsorpay/publisher/mbe/player/caching/e;

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->b:Lcom/sponsorpay/publisher/mbe/player/caching/e;

    .line 29
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->a:Lcom/sponsorpay/publisher/mbe/player/caching/d;

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->d:Lcom/sponsorpay/publisher/mbe/player/caching/d;

    .line 30
    return-void
.end method

.method public static a()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    return-object v0
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;Lcom/sponsorpay/publisher/mbe/player/caching/d;)Lcom/sponsorpay/publisher/mbe/player/caching/d;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->d:Lcom/sponsorpay/publisher/mbe/player/caching/d;

    return-object p1
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;)Lcom/sponsorpay/publisher/mbe/player/caching/e;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->b:Lcom/sponsorpay/publisher/mbe/player/caching/e;

    return-object v0
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;Lcom/sponsorpay/publisher/mbe/player/caching/e;)Lcom/sponsorpay/publisher/mbe/player/caching/e;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->b:Lcom/sponsorpay/publisher/mbe/player/caching/e;

    return-object p1
.end method

.method private c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 115
    iget-boolean v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->e:Z

    if-eqz v1, :cond_0

    .line 116
    const-string v1, "SPCacheManager"

    const-string v2, "The download service is running, let\'s cancel current downloads"

    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    const-string v2, "action.to.perform"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 121
    :cond_0
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 125
    iget-boolean v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->e:Z

    if-eqz v1, :cond_0

    .line 127
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    const-string v2, "action.to.perform"

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 131
    :cond_0
    return-void
.end method

.method public static pauseDownloads(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->f:Z

    .line 91
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    invoke-direct {v0, p0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->c(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method public static resumeDownloads(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->f:Z

    .line 96
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    invoke-direct {v0, p0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->d(Landroid/content/Context;)V

    .line 97
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 75
    const-string v0, "SPCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Getting URI for URL - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    iget-object v0, v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->b:Lcom/sponsorpay/publisher/mbe/player/caching/e;

    invoke-virtual {v0, p1}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->a(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->getDownloadState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->getLocalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->getLocalFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 85
    :goto_0
    const-string v1, "SPCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "URI = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-object v0

    .line 82
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->g:Z

    invoke-direct {p0, p2}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->c(Landroid/content/Context;)V

    .line 83
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sponsorpay/publisher/mbe/player/caching/b;

    invoke-direct {v2, p0, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/b;-><init>(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 52
    return-void
.end method

.method public final a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->c:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration;

    .line 68
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->e:Z

    .line 72
    return-void
.end method

.method public final b()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->c:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration;

    return-object v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->g:Z

    .line 106
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->d(Landroid/content/Context;)V

    .line 107
    return-void
.end method

.method public final c()Lcom/sponsorpay/publisher/mbe/player/caching/e;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->b:Lcom/sponsorpay/publisher/mbe/player/caching/e;

    return-object v0
.end method

.method public final d()Lcom/sponsorpay/publisher/mbe/player/caching/d;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->d:Lcom/sponsorpay/publisher/mbe/player/caching/d;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
