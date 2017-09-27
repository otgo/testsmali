.class public Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;
.super Ljava/lang/Object;
.source "SupersonicAdsAdvertiserAgent.java"

# interfaces
.implements Lcom/supersonicads/sdk/SSAAdvertiserTest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;,
        Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$SuperSonicAdsAdvertiserException;
    }
.end annotation


# static fields
.field private static final BUNDLE_ID:Ljava/lang/String; = "bundleId"

.field private static final DEVICE_IDS:Ljava/lang/String; = "deviceIds"

.field private static final DOMAIN:Ljava/lang/String; = "/campaigns/onLoad?"

.field private static PACKAGE_NAME:Ljava/lang/String; = null

.field private static SERVICE_HOST_NAME:Ljava/lang/String; = null

.field private static SERVICE_PORT:I = 0x0

.field private static SERVICE_PROTOCOL:Ljava/lang/String; = null

.field private static final SIGNATURE:Ljava/lang/String; = "signature"

.field private static final TAG:Ljava/lang/String; = "SupersonicAdsAdvertiserAgent"

.field private static TIME_API:Ljava/lang/String;

.field public static sInstance:Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "http"

    sput-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->SERVICE_PROTOCOL:Ljava/lang/String;

    .line 35
    const-string v0, "www.supersonicads.com"

    sput-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->SERVICE_HOST_NAME:Ljava/lang/String;

    .line 36
    const/16 v0, 0x50

    sput v0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->SERVICE_PORT:I

    .line 38
    const-string v0, "http://www.supersonicads.com/timestamp.php"

    sput-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->TIME_API:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->getRequestParameters(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->SERVICE_PROTOCOL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->SERVICE_HOST_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->SERVICE_PORT:I

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;
    .locals 3

    .prologue
    .line 52
    const-class v1, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;

    monitor-enter v1

    :try_start_0
    const-string v0, "SupersonicAdsAdvertiserAgent"

    const-string v2, "getInstance()"

    invoke-static {v0, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->sInstance:Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;

    invoke-direct {v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;-><init>()V

    sput-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->sInstance:Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;

    .line 57
    :cond_0
    sget-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->sInstance:Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getRequestParameters(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v3, "parameters":Ljava/lang/StringBuilder;
    sget-object v7, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 137
    invoke-static {p1}, Lcom/supersonicads/sdk/utils/SDKUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "pckName":Ljava/lang/String;
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 144
    const-string v7, "&"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bundleId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_0
    invoke-static {p1}, Lcom/supersonicads/sdk/utils/SDKUtils;->loadGoogleAdvertiserInfo(Landroid/content/Context;)V

    .line 153
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getAdvertiserId()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "advertiserId":Ljava/lang/String;
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->isLimitAdTrackingEnabled()Z

    move-result v1

    .line 156
    .local v1, "isLAT":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 159
    const-string v7, "&"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "deviceIds"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "["

    invoke-static {v8}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "AID"

    invoke-static {v8}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-static {v8}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v7, "&"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "isLimitAdTrackingEnabled"

    invoke-static {v8}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v5, "signature":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->getUTCTimeStamp(Landroid/content/Context;)I

    move-result v6

    .line 189
    .local v6, "timeStamp":I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/supersonicads/sdk/utils/SDKUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "md5":Ljava/lang/String;
    const-string v7, "&"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "signature"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 140
    .end local v0    # "advertiserId":Ljava/lang/String;
    .end local v1    # "isLAT":Z
    .end local v2    # "md5":Ljava/lang/String;
    .end local v4    # "pckName":Ljava/lang/String;
    .end local v5    # "signature":Ljava/lang/StringBuilder;
    .end local v6    # "timeStamp":I
    :cond_1
    sget-object v4, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->PACKAGE_NAME:Ljava/lang/String;

    .restart local v4    # "pckName":Ljava/lang/String;
    goto/16 :goto_0

    .line 175
    .restart local v0    # "advertiserId":Ljava/lang/String;
    .restart local v1    # "isLAT":Z
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method private getUTCTimeStamp(Landroid/content/Context;)I
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 293
    :try_start_0
    new-instance v5, Ljava/net/URL;

    sget-object v7, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->TIME_API:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 295
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {p0, v5, p1}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->performRequest(Ljava/net/URL;Landroid/content/Context;)Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;

    move-result-object v1

    .line 297
    .local v1, "result":Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;
    invoke-virtual {v1}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_0

    .line 298
    invoke-virtual {v1}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->getResponseString()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "json":Ljava/lang/String;
    new-instance v2, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v2, v0}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 301
    .local v2, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v7, "timestamp"

    invoke-virtual {v2, v7}, Lcom/supersonicads/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 302
    const-string v7, "timestamp"

    invoke-virtual {v2, v7}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "timestamp":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 307
    .local v3, "time":I
    rem-int/lit8 v7, v3, 0x3c
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int v6, v3, v7

    .line 315
    .end local v0    # "json":Ljava/lang/String;
    .end local v1    # "result":Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;
    .end local v2    # "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    .end local v3    # "time":I
    .end local v4    # "timestamp":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URL;
    :goto_0
    return v6

    .line 313
    :catch_0
    move-exception v7

    .line 315
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearReportApp(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    invoke-static {p1}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper(Landroid/content/Context;)Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setReportAppStarted(Z)V

    .line 117
    return-void
.end method

.method public performRequest(Ljava/net/URL;Landroid/content/Context;)Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;
    .locals 16
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    new-instance v9, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;-><init>(Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;)V

    .line 206
    .local v9, "requestResult":Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;
    const/4 v5, 0x0

    .line 207
    .local v5, "connection":Ljava/net/HttpURLConnection;
    const/4 v10, 0x0

    .line 208
    .local v10, "responseCode":I
    const/4 v6, 0x0

    .line 209
    .local v6, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 215
    .local v2, "builder":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 217
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 218
    const-string v12, "GET"

    invoke-virtual {v5, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 220
    const/16 v12, 0x1388

    invoke-virtual {v5, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 221
    const/16 v12, 0x1388

    invoke-virtual {v5, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 223
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 224
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 226
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 228
    const v12, 0x19000

    new-array v1, v12, [B

    .line 230
    .local v1, "buffer":[B
    const/4 v4, 0x0

    .line 231
    .local v4, "bytesRead":I
    const/4 v11, 0x0

    .line 233
    .local v11, "totalBytesRead":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .local v3, "builder":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 237
    .local v7, "line":Ljava/lang/String;
    :try_start_1
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 239
    .local v8, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 240
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 248
    .end local v8    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v12

    move-object v2, v3

    .line 258
    .end local v1    # "buffer":[B
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "bytesRead":I
    .end local v7    # "line":Ljava/lang/String;
    .end local v11    # "totalBytesRead":I
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    :goto_1
    if-eqz v6, :cond_0

    .line 259
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 263
    :cond_0
    :goto_2
    const/16 v12, 0xc8

    if-eq v10, v12, :cond_1

    .line 264
    const-string v12, "SupersonicAdsAdvertiserAgent"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " RESPONSE CODE: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " URL: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_1
    if-eqz v5, :cond_2

    .line 270
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 273
    :cond_2
    invoke-virtual {v9, v10}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseCode(I)V

    .line 275
    if-nez v2, :cond_9

    .line 276
    const-string v12, "empty"

    invoke-virtual {v9, v12}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    .line 282
    :goto_3
    return-object v9

    .line 243
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "buffer":[B
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    .restart local v4    # "bytesRead":I
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "totalBytesRead":I
    :cond_3
    if-nez v11, :cond_4

    .line 258
    :cond_4
    if-eqz v6, :cond_5

    .line 259
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 263
    :cond_5
    :goto_4
    const/16 v12, 0xc8

    if-eq v10, v12, :cond_6

    .line 264
    const-string v12, "SupersonicAdsAdvertiserAgent"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " RESPONSE CODE: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " URL: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_6
    if-eqz v5, :cond_7

    .line 270
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 273
    :cond_7
    invoke-virtual {v9, v10}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseCode(I)V

    .line 275
    if-nez v3, :cond_8

    .line 276
    const-string v12, "empty"

    invoke-virtual {v9, v12}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    move-object v2, v3

    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    goto :goto_3

    .line 278
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    move-object v2, v3

    .line 280
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    goto :goto_3

    .line 278
    .end local v1    # "buffer":[B
    .end local v4    # "bytesRead":I
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .end local v11    # "totalBytesRead":I
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    goto :goto_3

    .line 249
    :catch_1
    move-exception v12

    .line 258
    :goto_5
    if-eqz v6, :cond_a

    .line 259
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 263
    :cond_a
    :goto_6
    const/16 v12, 0xc8

    if-eq v10, v12, :cond_b

    .line 264
    const-string v12, "SupersonicAdsAdvertiserAgent"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " RESPONSE CODE: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " URL: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_b
    if-eqz v5, :cond_c

    .line 270
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 273
    :cond_c
    invoke-virtual {v9, v10}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseCode(I)V

    .line 275
    if-nez v2, :cond_d

    .line 276
    const-string v12, "empty"

    invoke-virtual {v9, v12}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 278
    :cond_d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 250
    :catch_2
    move-exception v12

    .line 258
    :goto_7
    if-eqz v6, :cond_e

    .line 259
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 263
    :cond_e
    :goto_8
    const/16 v12, 0xc8

    if-eq v10, v12, :cond_f

    .line 264
    const-string v12, "SupersonicAdsAdvertiserAgent"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " RESPONSE CODE: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " URL: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_f
    if-eqz v5, :cond_10

    .line 270
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 273
    :cond_10
    invoke-virtual {v9, v10}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseCode(I)V

    .line 275
    if-nez v2, :cond_11

    .line 276
    const-string v12, "empty"

    invoke-virtual {v9, v12}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 278
    :cond_11
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 251
    :catch_3
    move-exception v12

    .line 258
    :goto_9
    if-eqz v6, :cond_12

    .line 259
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    .line 263
    :cond_12
    :goto_a
    const/16 v12, 0xc8

    if-eq v10, v12, :cond_13

    .line 264
    const-string v12, "SupersonicAdsAdvertiserAgent"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " RESPONSE CODE: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " URL: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_13
    if-eqz v5, :cond_14

    .line 270
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 273
    :cond_14
    invoke-virtual {v9, v10}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseCode(I)V

    .line 275
    if-nez v2, :cond_15

    .line 276
    const-string v12, "empty"

    invoke-virtual {v9, v12}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 278
    :cond_15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 252
    :catch_4
    move-exception v12

    .line 258
    :goto_b
    if-eqz v6, :cond_16

    .line 259
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    .line 263
    :cond_16
    :goto_c
    const/16 v12, 0xc8

    if-eq v10, v12, :cond_17

    .line 264
    const-string v12, "SupersonicAdsAdvertiserAgent"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " RESPONSE CODE: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " URL: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_17
    if-eqz v5, :cond_18

    .line 270
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 273
    :cond_18
    invoke-virtual {v9, v10}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseCode(I)V

    .line 275
    if-nez v2, :cond_19

    .line 276
    const-string v12, "empty"

    invoke-virtual {v9, v12}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 278
    :cond_19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 257
    :catchall_0
    move-exception v12

    .line 258
    :goto_d
    if-eqz v6, :cond_1a

    .line 259
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    .line 263
    :cond_1a
    :goto_e
    const/16 v13, 0xc8

    if-eq v10, v13, :cond_1b

    .line 264
    const-string v13, "SupersonicAdsAdvertiserAgent"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " RESPONSE CODE: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " URL: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_1b
    if-eqz v5, :cond_1c

    .line 270
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 273
    :cond_1c
    invoke-virtual {v9, v10}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseCode(I)V

    .line 275
    if-nez v2, :cond_1d

    .line 276
    const-string v13, "empty"

    invoke-virtual {v9, v13}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    .line 278
    :goto_f
    throw v12

    :cond_1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$Result;->setResponseString(Ljava/lang/String;)V

    goto :goto_f

    .line 261
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "buffer":[B
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    .restart local v4    # "bytesRead":I
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "totalBytesRead":I
    :catch_5
    move-exception v12

    goto/16 :goto_4

    .end local v1    # "buffer":[B
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "bytesRead":I
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .end local v11    # "totalBytesRead":I
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    :catch_6
    move-exception v12

    goto/16 :goto_2

    :catch_7
    move-exception v12

    goto/16 :goto_6

    :catch_8
    move-exception v12

    goto/16 :goto_8

    :catch_9
    move-exception v12

    goto/16 :goto_a

    :catch_a
    move-exception v12

    goto/16 :goto_c

    :catch_b
    move-exception v13

    goto :goto_e

    .line 257
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "buffer":[B
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    .restart local v4    # "bytesRead":I
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v11    # "totalBytesRead":I
    :catchall_1
    move-exception v12

    move-object v2, v3

    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    goto :goto_d

    .line 252
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    :catch_c
    move-exception v12

    move-object v2, v3

    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    goto/16 :goto_b

    .line 251
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    :catch_d
    move-exception v12

    move-object v2, v3

    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    goto/16 :goto_9

    .line 250
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    :catch_e
    move-exception v12

    move-object v2, v3

    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    goto/16 :goto_7

    .line 249
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    :catch_f
    move-exception v12

    move-object v2, v3

    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    goto/16 :goto_5

    .line 248
    .end local v1    # "buffer":[B
    .end local v4    # "bytesRead":I
    .end local v7    # "line":Ljava/lang/String;
    .end local v11    # "totalBytesRead":I
    :catch_10
    move-exception v12

    goto/16 :goto_1
.end method

.method public reportAppStarted(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-static {p1}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper(Landroid/content/Context;)Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getReportAppStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$1;

    invoke-direct {v1, p0, p1}, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent$1;-><init>(Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setDomain(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 99
    sput-object p1, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->SERVICE_PROTOCOL:Ljava/lang/String;

    .line 100
    sput-object p2, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->SERVICE_HOST_NAME:Ljava/lang/String;

    .line 101
    sput p3, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->SERVICE_PORT:I

    .line 102
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 111
    sput-object p1, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->PACKAGE_NAME:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setTimeAPI(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 106
    sput-object p1, Lcom/supersonicads/sdk/agent/SupersonicAdsAdvertiserAgent;->TIME_API:Ljava/lang/String;

    .line 107
    return-void
.end method
