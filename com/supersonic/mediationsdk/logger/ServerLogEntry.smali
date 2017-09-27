.class Lcom/supersonic/mediationsdk/logger/ServerLogEntry;
.super Ljava/lang/Object;
.source "ServerLogEntry.java"


# instance fields
.field private mLogLevel:I

.field private mMessage:Ljava/lang/String;

.field private mTag:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

.field private mTimetamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "tag"    # Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;
    .param p2, "timestamp"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "level"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/supersonic/mediationsdk/logger/ServerLogEntry;->mTag:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    .line 29
    iput-object p2, p0, Lcom/supersonic/mediationsdk/logger/ServerLogEntry;->mTimetamp:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/supersonic/mediationsdk/logger/ServerLogEntry;->mMessage:Ljava/lang/String;

    .line 31
    iput p4, p0, Lcom/supersonic/mediationsdk/logger/ServerLogEntry;->mLogLevel:I

    .line 32
    return-void
.end method


# virtual methods
.method public getLogLevel()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/supersonic/mediationsdk/logger/ServerLogEntry;->mLogLevel:I

    return v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 41
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 43
    .local v1, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "timestamp"

    iget-object v3, p0, Lcom/supersonic/mediationsdk/logger/ServerLogEntry;->mTimetamp:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v2, "tag"

    iget-object v3, p0, Lcom/supersonic/mediationsdk/logger/ServerLogEntry;->mTag:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v2, "level"

    iget v3, p0, Lcom/supersonic/mediationsdk/logger/ServerLogEntry;->mLogLevel:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    const-string v2, "message"

    iget-object v3, p0, Lcom/supersonic/mediationsdk/logger/ServerLogEntry;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-object v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
