.class public final Lcom/sponsorpay/publisher/mbe/player/caching/d;
.super Ljava/lang/Object;
.source "SPCacheStatistics.java"


# static fields
.field static final a:Lcom/sponsorpay/publisher/mbe/player/caching/d;


# instance fields
.field private final b:Landroid/content/SharedPreferences;

.field private volatile c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/caching/d;

    invoke-direct {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/d;-><init>()V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->a:Lcom/sponsorpay/publisher/mbe/player/caching/d;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->b:Landroid/content/SharedPreferences;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "SPStatistics"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->b:Landroid/content/SharedPreferences;

    .line 30
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->b:Landroid/content/SharedPreferences;

    const-string v1, "download.count"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->c:I

    .line 31
    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 5

    .prologue
    .line 48
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 49
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a()Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->c()Lcom/sponsorpay/publisher/mbe/player/caching/e;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;

    .line 52
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->getDownloadState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->getLocalFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->getVideoEntries()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/mbe/player/caching/h;

    .line 54
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/h;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download.count"

    iget v2, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->c:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->c:I

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->c:I

    .line 39
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->e()V

    .line 40
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->c:I

    .line 44
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->e()V

    .line 45
    return-void
.end method
