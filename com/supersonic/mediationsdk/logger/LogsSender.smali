.class Lcom/supersonic/mediationsdk/logger/LogsSender;
.super Ljava/lang/Object;
.source "LogsSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final AUTHO_PASSWORD:Ljava/lang/String;

.field private final AUTHO_USERNAME:Ljava/lang/String;

.field private final LOG_URL:Ljava/lang/String;

.field private mLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/logger/ServerLogEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/logger/ServerLogEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/mediationsdk/logger/ServerLogEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "http://mobilelogs.ec2ssa.info/log"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/logger/LogsSender;->LOG_URL:Ljava/lang/String;

    .line 19
    const-string v0, "mobilelogs"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/logger/LogsSender;->AUTHO_USERNAME:Ljava/lang/String;

    .line 20
    const-string v0, "k@r@puz"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/logger/LogsSender;->AUTHO_PASSWORD:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/supersonic/mediationsdk/logger/LogsSender;->mLogs:Ljava/util/ArrayList;

    .line 26
    return-void
.end method

.method private getJSONToSend()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 35
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 39
    .local v3, "logContent":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "general_properties"

    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/supersonic/mediationsdk/sdk/GeneralProperties;

    move-result-object v6

    invoke-virtual {v6}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->toJSON()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 43
    .local v4, "logData":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/supersonic/mediationsdk/logger/LogsSender;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/supersonic/mediationsdk/logger/ServerLogEntry;

    .line 44
    .local v2, "log":Lcom/supersonic/mediationsdk/logger/ServerLogEntry;
    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/logger/ServerLogEntry;->toJSON()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "log":Lcom/supersonic/mediationsdk/logger/ServerLogEntry;
    .end local v4    # "logData":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 52
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v3

    .line 46
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "logData":Lorg/json/JSONArray;
    :cond_0
    :try_start_1
    const-string v5, "log_data"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private sendLogs(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "logContent"    # Lorg/json/JSONObject;

    .prologue
    .line 63
    const-string v1, "http://mobilelogs.ec2ssa.info/log"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mobilelogs"

    const-string v4, "k@r@puz"

    invoke-static {v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/server/HttpFunctions;->getStringFromPostWithAutho(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 64
    .local v0, "succeed":Z
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/logger/LogsSender;->getJSONToSend()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/logger/LogsSender;->sendLogs(Lorg/json/JSONObject;)V

    .line 70
    return-void
.end method
