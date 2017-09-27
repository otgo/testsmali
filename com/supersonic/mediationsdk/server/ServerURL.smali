.class public Lcom/supersonic/mediationsdk/server/ServerURL;
.super Ljava/lang/Object;
.source "ServerURL.java"


# static fields
.field private static final AMPERSAND:Ljava/lang/String; = "&"

.field public static final APPLICATION_KEY:Ljava/lang/String; = "applicationKey"

.field public static final APPLICATION_USER_ID:Ljava/lang/String; = "applicationUserId"

.field private static BASE_URL_PREFIX:Ljava/lang/String; = null

.field private static BASE_URL_SUFFIX:Ljava/lang/String; = null

.field private static final EQUAL:Ljava/lang/String; = "="

.field private static final IMPRESSION:Ljava/lang/String; = "impression"

.field private static final PLACEMENT:Ljava/lang/String; = "placementId"

.field public static final PLUGIN_TYPE:Ljava/lang/String; = "pluginType"

.field public static final PLUGIN_VERSION:Ljava/lang/String; = "pluginVersion"

.field public static final SDK_VERSION:Ljava/lang/String; = "sdkVersion"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "https://init.supersonicads.com/api/rest/v"

    sput-object v0, Lcom/supersonic/mediationsdk/server/ServerURL;->BASE_URL_PREFIX:Ljava/lang/String;

    .line 17
    const-string v0, "/ultra/cpv?platform=android&"

    sput-object v0, Lcom/supersonic/mediationsdk/server/ServerURL;->BASE_URL_SUFFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createURLParams(Ljava/util/Vector;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "array":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v2, ""

    .line 81
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 82
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    goto :goto_0

    .line 86
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-object v2
.end method

.method private static getBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sdkVersion"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/supersonic/mediationsdk/server/ServerURL;->BASE_URL_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/server/ServerURL;->BASE_URL_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCPVProvidersURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "applicationKey"    # Ljava/lang/String;
    .param p1, "applicationUserId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 48
    .local v0, "array":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v3, Landroid/util/Pair;

    const-string v4, "applicationKey"

    invoke-direct {v3, v4, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v3, Landroid/util/Pair;

    const-string v4, "applicationUserId"

    invoke-direct {v3, v4, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v3, Landroid/util/Pair;

    const-string v4, "sdkVersion"

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-static {}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/supersonic/mediationsdk/config/ConfigFile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 52
    new-instance v3, Landroid/util/Pair;

    const-string v4, "pluginType"

    invoke-static {}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/supersonic/mediationsdk/config/ConfigFile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    invoke-static {}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/supersonic/mediationsdk/config/ConfigFile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getPluginVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 55
    new-instance v3, Landroid/util/Pair;

    const-string v4, "pluginVersion"

    invoke-static {}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/supersonic/mediationsdk/config/ConfigFile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getPluginVersion()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_1
    invoke-static {v0}, Lcom/supersonic/mediationsdk/server/ServerURL;->createURLParams(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "params":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/supersonic/mediationsdk/server/ServerURL;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "str":Ljava/lang/String;
    return-object v2
.end method

.method public static getRequestURL(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 6
    .param p0, "requestUrl"    # Ljava/lang/String;
    .param p1, "hit"    # Z
    .param p2, "placementId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 71
    .local v0, "array":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v3, Landroid/util/Pair;

    const-string v4, "impression"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v3, Landroid/util/Pair;

    const-string v4, "placementId"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-static {v0}, Lcom/supersonic/mediationsdk/server/ServerURL;->createURLParams(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "params":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "str":Ljava/lang/String;
    return-object v2
.end method

.method public static getUniqueUsersURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "applicationKey"    # Ljava/lang/String;
    .param p1, "applicationUserId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 37
    .local v0, "array":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v3, Landroid/util/Pair;

    const-string v4, "applicationKey"

    invoke-direct {v3, v4, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v3, Landroid/util/Pair;

    const-string v4, "applicationUserId"

    invoke-direct {v3, v4, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v3, Landroid/util/Pair;

    const-string v4, "sdkVersion"

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-static {v0}, Lcom/supersonic/mediationsdk/server/ServerURL;->createURLParams(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "params":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/supersonic/mediationsdk/server/Server;->getUniqueUsersBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "str":Ljava/lang/String;
    return-object v2
.end method
