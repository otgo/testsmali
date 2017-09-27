.class public Lcom/fyber/currency/internal/b;
.super Ljava/lang/Object;
.source "VirtualCurrencyPrefManager.java"


# static fields
.field private static c:Lcom/fyber/currency/internal/b;


# instance fields
.field private final a:Lcom/fyber/credentials/a;

.field private final b:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "FyberPreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/currency/internal/b;->b:Landroid/content/SharedPreferences;

    .line 51
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->e()Lcom/fyber/credentials/a;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/currency/internal/b;->a:Lcom/fyber/credentials/a;

    .line 52
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/fyber/currency/internal/b;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/fyber/currency/internal/b;->c:Lcom/fyber/currency/internal/b;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lcom/fyber/currency/internal/b;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/fyber/currency/internal/b;->c:Lcom/fyber/currency/internal/b;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/fyber/currency/internal/b;

    invoke-direct {v0, p0}, Lcom/fyber/currency/internal/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fyber/currency/internal/b;->c:Lcom/fyber/currency/internal/b;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lcom/fyber/currency/internal/b;->c:Lcom/fyber/currency/internal/b;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    invoke-static {p1}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-string p1, ""

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "STATE_LATEST_CURRENCY_TRANSACTION_ID_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fyber/currency/internal/b;->a:Lcom/fyber/credentials/a;

    invoke-virtual {v1}, Lcom/fyber/credentials/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/currency/internal/b;->a:Lcom/fyber/credentials/a;

    .line 70
    invoke-virtual {v1}, Lcom/fyber/credentials/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_STATE_LATEST_TRANSACTION_CURRENCY_ID_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fyber/currency/internal/b;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEFAULT_CURRENCY_ID_KEY_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fyber/currency/internal/b;->a:Lcom/fyber/credentials/a;

    invoke-virtual {v2}, Lcom/fyber/credentials/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/fyber/currency/VirtualCurrencyResponse;)V
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/fyber/currency/VirtualCurrencyResponse;->getLatestTransactionId()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NO_TRANSACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/fyber/currency/internal/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 117
    invoke-virtual {p1}, Lcom/fyber/currency/VirtualCurrencyResponse;->getCurrencyId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fyber/currency/internal/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/fyber/currency/VirtualCurrencyResponse;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {p1}, Lcom/fyber/currency/VirtualCurrencyResponse;->getCurrencyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fyber/currency/internal/b;->a(Ljava/lang/String;)V

    .line 126
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fyber/currency/internal/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEFAULT_CURRENCY_ID_KEY_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fyber/currency/internal/b;->a:Lcom/fyber/credentials/a;

    invoke-virtual {v2}, Lcom/fyber/credentials/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    invoke-static {p1}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/fyber/currency/internal/b;->a()Ljava/lang/String;

    move-result-object p1

    .line 94
    :cond_0
    invoke-static {p1}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    const-string v0, "NO_TRANSACTION"

    .line 101
    :goto_0
    return-object v0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/fyber/currency/internal/b;->b:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/fyber/currency/internal/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NO_TRANSACTION"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
