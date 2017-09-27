.class public Lcom/supersonic/mediationsdk/server/Server;
.super Ljava/lang/Object;
.source "Server.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static UniqueUsersURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "ServerUtils"

    sput-object v0, Lcom/supersonic/mediationsdk/server/Server;->TAG:Ljava/lang/String;

    .line 17
    const-string v0, "http://www.ultraadserver.com/api/rest/v1.1/uniqueusers?"

    sput-object v0, Lcom/supersonic/mediationsdk/server/Server;->UniqueUsersURL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callAsyncRequestURL(Ljava/lang/String;ZI)V
    .locals 3
    .param p0, "requestUrl"    # Ljava/lang/String;
    .param p1, "hit"    # Z
    .param p2, "placementId"    # I

    .prologue
    .line 112
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/supersonic/mediationsdk/server/Server$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/supersonic/mediationsdk/server/Server$2;-><init>(Ljava/lang/String;ZI)V

    const-string v2, "callAsyncRequestURL"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 120
    .local v0, "asyncRequestURL":Ljava/lang/Thread;
    new-instance v1, Lcom/supersonic/mediationsdk/logger/ThreadExceptionHandler;

    invoke-direct {v1}, Lcom/supersonic/mediationsdk/logger/ThreadExceptionHandler;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 121
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 123
    return-void
.end method

.method public static callRequestURL(Ljava/lang/String;ZI)Lorg/json/JSONObject;
    .locals 11
    .param p0, "requestUrl"    # Ljava/lang/String;
    .param p1, "hit"    # Z
    .param p2, "placementId"    # I

    .prologue
    const/4 v10, 0x0

    .line 83
    const/4 v3, 0x0

    .line 85
    .local v3, "obj":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/supersonic/mediationsdk/server/ServerURL;->getRequestURL(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Lcom/supersonic/mediationsdk/server/HttpFunctions;->getStringFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "json":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v3    # "obj":Lorg/json/JSONObject;
    .local v4, "obj":Lorg/json/JSONObject;
    :try_start_1
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v6

    sget-object v7, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NETWORK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "callRequestURL(reqUrl:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "hit:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 105
    .end local v2    # "json":Ljava/lang/String;
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v5    # "url":Ljava/lang/String;
    .restart local v3    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Throwable;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "callRequestURL(reqUrl:"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    .line 94
    const-string v6, "null"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :goto_2
    const-string v6, ", hit:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    if-eqz v1, :cond_1

    .line 100
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v6

    sget-object v7, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NETWORK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", e:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v10}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 102
    :cond_1
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v6

    sget-object v7, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NETWORK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v10}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0

    .line 91
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v3    # "obj":Lorg/json/JSONObject;
    .restart local v2    # "json":Ljava/lang/String;
    .restart local v4    # "obj":Lorg/json/JSONObject;
    .restart local v5    # "url":Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "obj":Lorg/json/JSONObject;
    .restart local v3    # "obj":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method protected static getUniqueUsersBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/supersonic/mediationsdk/server/Server;->UniqueUsersURL:Ljava/lang/String;

    return-object v0
.end method

.method public static notifyUniqueUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "applicationKey"    # Ljava/lang/String;
    .param p1, "applicationUserId"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/supersonic/mediationsdk/server/Server$1;

    invoke-direct {v1, p0, p1}, Lcom/supersonic/mediationsdk/server/Server$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 78
    return-void
.end method
