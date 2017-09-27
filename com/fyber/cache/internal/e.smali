.class public final Lcom/fyber/cache/internal/e;
.super Ljava/lang/Object;
.source "CacheStatistics.java"


# static fields
.field public static final a:Lcom/fyber/cache/internal/e;


# instance fields
.field private final b:Landroid/content/SharedPreferences;

.field private volatile c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/fyber/cache/internal/e;

    invoke-direct {v0}, Lcom/fyber/cache/internal/e;-><init>()V

    sput-object v0, Lcom/fyber/cache/internal/e;->a:Lcom/fyber/cache/internal/e;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/cache/internal/e;->b:Landroid/content/SharedPreferences;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "FyberCacheStatistics"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/cache/internal/e;->b:Landroid/content/SharedPreferences;

    .line 32
    iget-object v0, p0, Lcom/fyber/cache/internal/e;->b:Landroid/content/SharedPreferences;

    const-string v1, "download.count"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fyber/cache/internal/e;->c:I

    .line 33
    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 5

    .prologue
    .line 50
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 51
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/cache/CacheManager;->c()Lcom/fyber/cache/internal/f;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0}, Lcom/fyber/cache/internal/f;->a()Ljava/util/Map;

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

    check-cast v0, Lcom/fyber/cache/internal/c;

    .line 54
    invoke-virtual {v0}, Lcom/fyber/cache/internal/c;->c()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/fyber/cache/internal/c;->a()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/fyber/cache/internal/c;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/cache/internal/h;

    .line 56
    invoke-virtual {v0}, Lcom/fyber/cache/internal/h;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fyber/cache/internal/e;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/fyber/cache/internal/e;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download.count"

    iget v2, p0, Lcom/fyber/cache/internal/e;->c:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/fyber/cache/internal/e;->c:I

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/fyber/cache/internal/e;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fyber/cache/internal/e;->c:I

    .line 41
    invoke-direct {p0}, Lcom/fyber/cache/internal/e;->e()V

    .line 42
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/cache/internal/e;->c:I

    .line 46
    invoke-direct {p0}, Lcom/fyber/cache/internal/e;->e()V

    .line 47
    return-void
.end method
