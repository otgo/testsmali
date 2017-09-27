.class public final Lcom/fyber/operations/e;
.super Lcom/fyber/operations/i;
.source "MediationConfigurationNetworkOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/operations/i",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Lcom/fyber/utils/s;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/fyber/operations/i;-><init>(Lcom/fyber/utils/s;Ljava/lang/String;)V

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fyber/operations/e;->c:Ljava/lang/ref/WeakReference;

    .line 52
    const-string v0, "MediationConfigurationNetworkOperation"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/operations/e;->d:Landroid/content/SharedPreferences;

    .line 53
    return-void
.end method

.method public static a(Lcom/fyber/credentials/a;Landroid/app/Activity;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/credentials/a;",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 41
    const-string v0, "config"

    invoke-static {v0}, Lcom/fyber/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0, p0}, Lcom/fyber/utils/s;->a(Ljava/lang/String;Lcom/fyber/credentials/a;)Lcom/fyber/utils/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/utils/s;->c()Lcom/fyber/utils/s;

    move-result-object v0

    .line 43
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/Fyber$a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v1

    new-instance v2, Lcom/fyber/operations/e;

    invoke-virtual {p0}, Lcom/fyber/credentials/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3, p1}, Lcom/fyber/operations/e;-><init>(Lcom/fyber/utils/s;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lcom/fyber/Fyber$a;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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
    .line 57
    iget-object v0, p0, Lcom/fyber/operations/e;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 58
    if-eqz v0, :cond_2

    .line 59
    invoke-static {p1}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "MediationConfigurationNetworkOperation"

    const-string v1, "No configs from the server, fallback to cached version."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/fyber/operations/e;->d:Landroid/content/SharedPreferences;

    const-string v1, "MediationConfigurationNetworkOperation"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-static {p1}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const-string v0, "MediationConfigurationNetworkOperation"

    const-string v1, "There were no cached version to use."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/fyber/operations/e;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 74
    :goto_1
    return-object v0

    .line 66
    :cond_1
    const-string v0, "MediationConfigurationNetworkOperation"

    const-string v1, "Using cached json file."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_2
    const-string v0, "MediationConfigurationNetworkOperation"

    const-string v1, "Unable to get configs cached version."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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
    .line 128
    const-string v0, "MediationConfigurationNetworkOperation"

    const-string v1, "Reading config file"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 132
    invoke-static {p0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    :try_start_0
    const-string v0, "MediationConfigurationNetworkOperation"

    const-string v1, "Parsing configurations"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 136
    const-string v1, "adapters"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 137
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 138
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 139
    const-string v4, "name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 140
    const-string v5, "settings"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 141
    const-string v5, "settings"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 142
    new-instance v6, Ljava/util/HashMap;

    .line 143
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 145
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 146
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 149
    invoke-interface {v6, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    const-string v1, "MediationConfigurationNetworkOperation"

    const-string v3, "A JSON error occurred while parsing the configuration file, there will be no mediation configurations."

    invoke-static {v1, v3, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 165
    :goto_2
    return-object v2

    .line 151
    :cond_0
    :try_start_1
    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 153
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 154
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 157
    :cond_2
    const-string v0, "MediationConfigurationNetworkOperation"

    const-string v1, "configuration loaded successfully"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 163
    :cond_3
    const-string v0, "MediationConfigurationNetworkOperation"

    const-string v1, "Configuration was not found, there will be no mediation configurations."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 33
    .line 2079
    invoke-virtual {p0, p2, p3}, Lcom/fyber/operations/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2080
    const-string v0, "MediationConfigurationNetworkOperation"

    const-string v1, "Invalid signature, those configs will not be used."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    :cond_0
    const-string v0, ""

    .line 33
    return-object v0
.end method

.method protected final synthetic a(Ljava/io/IOException;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 33
    .line 2110
    const-string v0, "MediationConfigurationNetworkOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection error - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/fyber/operations/e;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 33
    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/fyber/operations/e;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 33
    .line 1087
    const-string v0, "MediationConfigurationNetworkOperation"

    const-string v1, "The signature is valid, proceeding..."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    const-string v0, ""

    .line 1091
    invoke-static {p1}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1093
    iget-object v0, p0, Lcom/fyber/operations/e;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MediationConfigurationNetworkOperation"

    .line 1094
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1095
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 1097
    if-eqz v0, :cond_0

    .line 1098
    const-string v0, "MediationConfigurationNetworkOperation"

    const-string v1, "Server Side Configuration has been saved successfully."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :goto_0
    return-object p1

    .line 1100
    :cond_0
    const-string v0, "MediationConfigurationNetworkOperation"

    const-string v1, "Failed to save Server Side Configuration."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p1, v0

    goto :goto_0
.end method

.method protected final a()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "MediationConfigurationNetworkOperation"

    return-object v0
.end method
