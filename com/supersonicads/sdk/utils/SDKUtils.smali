.class public Lcom/supersonicads/sdk/utils/SDKUtils;
.super Ljava/lang/Object;
.source "SDKUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mAdvertisingId:Ljava/lang/String;

.field private static mIsLimitedTrackingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/supersonicads/sdk/utils/SDKUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lcom/supersonicads/sdk/utils/SDKUtils;->mIsLimitedTrackingEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDpToPx(I)I
    .locals 4
    .param p0, "dp"    # I

    .prologue
    .line 129
    const/4 v1, 0x0

    int-to-float v2, p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 134
    .local v0, "pixels":I
    return v0
.end method

.method public static convertPxToDp(I)I
    .locals 4
    .param p0, "pixels"    # I

    .prologue
    .line 119
    const/4 v1, 0x1

    int-to-float v2, p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 124
    .local v0, "dp":I
    return v0
.end method

.method public static convertStreamToString(Ljava/io/InputStream;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "isGzipEnabled"    # Z
    .param p2, "dir"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    move-object v0, p0

    .line 324
    .local v0, "cleanedIs":Ljava/io/InputStream;
    if-eqz p1, :cond_0

    .line 325
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .end local v0    # "cleanedIs":Ljava/io/InputStream;
    invoke-direct {v0, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 328
    .restart local v0    # "cleanedIs":Ljava/io/InputStream;
    :cond_0
    const/4 v3, 0x0

    .line 331
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .local v2, "outputFile":Ljava/io/File;
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 335
    .local v6, "writer":Ljava/io/Writer;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v7, v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 336
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .local v5, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 338
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 346
    .end local v1    # "line":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v7

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_1
    if-eqz v3, :cond_1

    .line 347
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 350
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 352
    if-eqz p1, :cond_2

    .line 353
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 356
    :cond_2
    invoke-virtual {v6}, Ljava/io/Writer;->close()V

    throw v7

    .line 342
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 346
    if-eqz v4, :cond_4

    .line 347
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 350
    :cond_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 352
    if-eqz p1, :cond_5

    .line 353
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 356
    :cond_5
    invoke-virtual {v6}, Ljava/io/Writer;->close()V

    return-object v7

    .line 346
    .end local v1    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    goto :goto_1
.end method

.method public static createErrorMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "stage"    # Ljava/lang/String;

    .prologue
    .line 223
    const-string v1, "%s Failure occurred during initiation at: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "message":Ljava/lang/String;
    return-object v0
.end method

.method public static dpToPx(J)I
    .locals 4
    .param p0, "dp"    # J

    .prologue
    .line 102
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 103
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    long-to-float v2, p0

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 104
    .local v1, "px":I
    return v1
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 391
    const-string v0, ""

    .line 394
    .local v0, "encodedString":Ljava/lang/String;
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    const-string v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 397
    :goto_0
    return-object v0

    .line 395
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;)[B
    .locals 3
    .param p0, "x"    # Ljava/lang/String;

    .prologue
    .line 297
    const/4 v0, 0x0

    .line 300
    .local v0, "digest":Ljava/security/MessageDigest;
    :try_start_0
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 304
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 312
    :goto_0
    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 315
    :goto_1
    return-object v2

    .line 306
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 308
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 309
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 315
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getAdvertiserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    sget-object v0, Lcom/supersonicads/sdk/utils/SDKUtils;->mAdvertisingId:Ljava/lang/String;

    return-object v0
.end method

.method private static getAndroidID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 408
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getApplicationRotation(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 142
    .local v0, "defaultDisplay":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    return v1
.end method

.method public static getAvailableSpaceInMB(Landroid/content/Context;Ljava/lang/String;)J
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cacheRootDirectory"    # Ljava/lang/String;

    .prologue
    .line 76
    const-wide/16 v0, 0x400

    .line 77
    .local v0, "SIZE_KB":J
    const-wide/32 v2, 0x100000

    .line 79
    .local v2, "SIZE_MB":J
    const-wide/16 v4, -0x1

    .line 84
    .local v4, "availableSpace":J
    new-instance v8, Landroid/os/StatFs;

    invoke-direct {v8, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 86
    .local v8, "stat":Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v12, v9

    mul-long v4, v10, v12

    .line 88
    const-wide/32 v10, 0x100000

    div-long v6, v4, v10

    .line 90
    .local v6, "res1":J
    return-wide v6
.end method

.method public static getConnectionType(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .local v2, "connectionType":Ljava/lang/StringBuilder;
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 368
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 370
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 371
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 372
    .local v5, "typeName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, "subTypeName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 376
    .local v4, "typeId":I
    if-nez v4, :cond_1

    .line 377
    const-string v6, "3g"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .end local v3    # "subTypeName":Ljava/lang/String;
    .end local v4    # "typeId":I
    .end local v5    # "typeName":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 378
    .restart local v3    # "subTypeName":Ljava/lang/String;
    .restart local v4    # "typeId":I
    .restart local v5    # "typeName":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 379
    const-string v6, "wifi"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 381
    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getCurrentTimeMillis()Ljava/lang/Long;
    .locals 3

    .prologue
    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 236
    .local v0, "time":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method public static getDeviceDefaultOrientation(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 147
    const-string v5, "window"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 149
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 151
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 153
    .local v1, "rotation":I
    if-eqz v1, :cond_0

    if-ne v1, v3, :cond_1

    :cond_0
    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v3, :cond_3

    :cond_1
    if-eq v1, v4, :cond_2

    const/4 v5, 0x3

    if-ne v1, v5, :cond_4

    :cond_2
    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v4, :cond_4

    .line 159
    :cond_3
    :goto_0
    return v3

    :cond_4
    move v3, v4

    goto :goto_0
.end method

.method public static getDeviceHeight()I
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 114
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1
.end method

.method public static getDeviceScale()F
    .locals 2

    .prologue
    .line 240
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 241
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    return v1
.end method

.method public static getDeviceWidth()I
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 109
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "assetSplit":[Ljava/lang/String;
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-object v3, v0, v6

    .line 60
    .local v3, "fileName":Ljava/lang/String;
    const-string v6, "\\?"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "fileNameArr":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v5, v4, v6

    .line 64
    .local v5, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 66
    .local v2, "encodedlFileName":Ljava/lang/String;
    :try_start_0
    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 71
    :goto_0
    return-object v2

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIInAppBillingServiceClass(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 9
    .param p0, "binder"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    .line 479
    const/4 v2, 0x0

    .line 484
    .local v2, "exception":Ljava/lang/Exception;
    :try_start_0
    const-string v5, "com.android.vending.billing.IInAppBillingService$Stub"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 487
    .local v3, "mStubClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "asInterface"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 488
    .local v0, "asInterfaceMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 504
    .local v4, "object":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 505
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 506
    sget-object v5, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 509
    sget-object v5, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .end local v0    # "asInterfaceMethod":Ljava/lang/reflect/Method;
    .end local v3    # "mStubClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "object":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v4

    .line 492
    :catch_0
    move-exception v1

    .line 493
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    move-object v2, v1

    .line 504
    if-eqz v2, :cond_1

    .line 505
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 506
    sget-object v5, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 509
    sget-object v5, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 494
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 495
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    move-object v2, v1

    .line 504
    if-eqz v2, :cond_1

    .line 505
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 506
    sget-object v5, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 509
    sget-object v5, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 496
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 497
    .local v1, "e":Ljava/lang/IllegalAccessException;
    move-object v2, v1

    .line 504
    if-eqz v2, :cond_1

    .line 505
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 506
    sget-object v5, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 509
    sget-object v5, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 498
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 499
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    move-object v2, v1

    .line 504
    if-eqz v2, :cond_1

    .line 505
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 506
    sget-object v5, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 509
    sget-object v5, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 500
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v1

    .line 501
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v2, v1

    .line 504
    if-eqz v2, :cond_1

    .line 505
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 506
    sget-object v5, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 509
    sget-object v5, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 504
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_8

    .line 505
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 506
    sget-object v6, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 509
    sget-object v6, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    throw v5
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 415
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 416
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 417
    .local v3, "messageDigest":[B
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 418
    .local v4, "number":Ljava/math/BigInteger;
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "hashtext":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    if-ge v5, v6, :cond_0

    .line 421
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 425
    .end local v1    # "hashtext":Ljava/lang/String;
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "messageDigest":[B
    .end local v4    # "number":Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 423
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "hashtext":Ljava/lang/String;
    .restart local v2    # "md":Ljava/security/MessageDigest;
    .restart local v3    # "messageDigest":[B
    .restart local v4    # "number":Ljava/math/BigInteger;
    :cond_0
    return-object v1
.end method

.method public static getOrientation(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->orientation:I

    .line 167
    .local v2, "orientation":I
    const-string v3, "portrait"

    .line 169
    .local v3, "strOrientation":Ljava/lang/String;
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 170
    const-string v3, "landscape"

    .line 173
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 175
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "orientation"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-object v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getOrientationNew(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 186
    invoke-static {p0}, Lcom/supersonicads/sdk/utils/SDKUtils;->getDeviceDefaultOrientation(Landroid/content/Context;)I

    move-result v0

    .line 188
    .local v0, "defaultOrientation":I
    invoke-static {p0}, Lcom/supersonicads/sdk/utils/SDKUtils;->getApplicationRotation(Landroid/content/Context;)I

    move-result v3

    .line 190
    .local v3, "rotation":I
    const-string v5, "portrait"

    .line 191
    .local v5, "strOrientation":Ljava/lang/String;
    if-eq v3, v6, :cond_0

    const/4 v7, 0x3

    if-ne v3, v7, :cond_2

    :cond_0
    move v4, v6

    .line 192
    .local v4, "shouldChange":Z
    :goto_0
    if-eqz v4, :cond_3

    .line 193
    if-ne v0, v6, :cond_1

    .line 194
    const-string v5, "landscape"

    .line 205
    :cond_1
    :goto_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 207
    .local v2, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "orientation"

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_2
    return-object v2

    .line 191
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v4    # "shouldChange":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 198
    .restart local v4    # "shouldChange":Z
    :cond_3
    const/4 v6, 0x2

    if-ne v0, v6, :cond_1

    .line 199
    const-string v5, "landscape"

    goto :goto_1

    .line 208
    .restart local v2    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRotation(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 218
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    return v1
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 606
    const-string v0, "5.18"

    return-object v0
.end method

.method public static isApplicationVisible(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "packageName":Ljava/lang/String;
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 248
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 250
    .local v2, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 252
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_0

    .line 254
    const/4 v5, 0x1

    .line 256
    .end local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static isConnectingToInternet(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 261
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 262
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 265
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 266
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 267
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    .line 269
    const/4 v3, 0x1

    .line 273
    .end local v1    # "i":I
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :goto_1
    return v3

    .line 266
    .restart local v1    # "i":I
    .restart local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    .end local v1    # "i":I
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isLimitAdTrackingEnabled()Z
    .locals 1

    .prologue
    .line 474
    sget-boolean v0, Lcom/supersonicads/sdk/utils/SDKUtils;->mIsLimitedTrackingEnabled:Z

    return v0
.end method

.method public static isOnline(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 277
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 279
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 280
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 402
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 403
    .local v0, "res":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadGoogleAdvertiserInfo(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 432
    const/4 v1, 0x0

    .line 435
    .local v1, "exception":Ljava/lang/Exception;
    :try_start_0
    const-string v7, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 437
    .local v5, "mAdvertisingIdClientClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "getAdvertisingIdInfo"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 438
    .local v2, "getAdvertisingIdInfoMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    invoke-virtual {v2, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 440
    .local v6, "mInfoClass":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getId"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 441
    .local v3, "getIdMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "isLimitAdTrackingEnabled"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 443
    .local v4, "isLimitAdTrackingEnabledMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/supersonicads/sdk/utils/SDKUtils;->mAdvertisingId:Ljava/lang/String;

    .line 444
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sput-boolean v7, Lcom/supersonicads/sdk/utils/SDKUtils;->mIsLimitedTrackingEnabled:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    if-eqz v1, :cond_1

    .line 459
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 460
    sget-object v7, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 463
    sget-object v7, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .end local v2    # "getAdvertisingIdInfoMethod":Ljava/lang/reflect/Method;
    .end local v3    # "getIdMethod":Ljava/lang/reflect/Method;
    .end local v4    # "isLimitAdTrackingEnabledMethod":Ljava/lang/reflect/Method;
    .end local v5    # "mAdvertisingIdClientClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "mInfoClass":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    move-object v1, v0

    .line 458
    if-eqz v1, :cond_1

    .line 459
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 460
    sget-object v7, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 463
    sget-object v7, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 448
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    move-object v1, v0

    .line 458
    if-eqz v1, :cond_1

    .line 459
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 460
    sget-object v7, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 463
    sget-object v7, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 450
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/IllegalAccessException;
    move-object v1, v0

    .line 458
    if-eqz v1, :cond_1

    .line 459
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 460
    sget-object v7, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 463
    sget-object v7, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 452
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    move-object v1, v0

    .line 458
    if-eqz v1, :cond_1

    .line 459
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 460
    sget-object v7, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 463
    sget-object v7, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 454
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v1, v0

    .line 458
    if-eqz v1, :cond_1

    .line 459
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 460
    sget-object v7, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 463
    sget-object v7, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 458
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catchall_0
    move-exception v7

    if-eqz v1, :cond_8

    .line 459
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 460
    sget-object v8, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 463
    sget-object v8, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    throw v7
.end method

.method public static pxToDp(J)I
    .locals 4
    .param p0, "px"    # J

    .prologue
    .line 95
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 96
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    long-to-float v2, p0

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 97
    .local v1, "dp":I
    return v1
.end method

.method public static queryingPurchasedItems(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 25
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "pckName"    # Ljava/lang/String;

    .prologue
    .line 519
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    .line 521
    .local v15, "purchases":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .line 529
    .local v4, "exception":Ljava/lang/Exception;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    const-string v21, "getPurchases"

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const-class v24, Ljava/lang/String;

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const-class v24, Ljava/lang/String;

    aput-object v24, v22, v23

    const/16 v23, 0x3

    const-class v24, Ljava/lang/String;

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 530
    .local v5, "getPurchasesMethod":Ljava/lang/reflect/Method;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x3

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object p1, v20, v21

    const/16 v21, 0x2

    const-string v22, "inapp"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    const/16 v22, 0x0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 532
    .local v8, "mBundleClass":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    const-string v21, "getInt"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-class v24, Ljava/lang/String;

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 533
    .local v9, "mGetIntmethod":Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    const-string v21, "getStringArrayList"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-class v24, Ljava/lang/String;

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 534
    .local v10, "mGetStringArrayListMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    const-string v21, "getString"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-class v24, Ljava/lang/String;

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 536
    .local v11, "mGetStringMethod":Ljava/lang/reflect/Method;
    const/16 v16, -0x1

    .line 537
    .local v16, "response":I
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "RESPONSE_CODE"

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v9, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 539
    if-nez v16, :cond_0

    .line 541
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "INAPP_PURCHASE_ITEM_LIST"

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 544
    .local v12, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "INAPP_PURCHASE_DATA_LIST"

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 547
    .local v14, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "INAPP_DATA_SIGNATURE_LIST"

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 550
    .local v18, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "INAPP_CONTINUATION_TOKEN"

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v11, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 553
    .local v2, "continuationToken":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_0

    .line 554
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 555
    .local v13, "purchaseData":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 556
    .local v17, "signature":Ljava/lang/String;
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 558
    .local v19, "sku":Ljava/lang/String;
    sget-object v20, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-static {v0, v13}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    sget-object v20, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    sget-object v20, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    .local v7, "item":Lorg/json/JSONObject;
    :try_start_1
    const-string v20, "purchaseData"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 566
    const-string v20, "signature"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 567
    const-string v20, "sku"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 569
    invoke-virtual {v15, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 592
    .end local v2    # "continuationToken":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "item":Lorg/json/JSONObject;
    .end local v12    # "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "purchaseData":Ljava/lang/String;
    .end local v14    # "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "signature":Ljava/lang/String;
    .end local v18    # "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "sku":Ljava/lang/String;
    :cond_0
    if-eqz v4, :cond_2

    .line 593
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 594
    sget-object v20, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v20

    if-eqz v20, :cond_2

    .line 597
    sget-object v20, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    .end local v5    # "getPurchasesMethod":Ljava/lang/reflect/Method;
    .end local v8    # "mBundleClass":Ljava/lang/Object;
    .end local v9    # "mGetIntmethod":Ljava/lang/reflect/Method;
    .end local v10    # "mGetStringArrayListMethod":Ljava/lang/reflect/Method;
    .end local v11    # "mGetStringMethod":Ljava/lang/reflect/Method;
    .end local v16    # "response":I
    :cond_2
    :goto_2
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v20

    return-object v20

    .line 582
    :catch_0
    move-exception v3

    .line 583
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    move-object v4, v3

    .line 592
    if-eqz v4, :cond_2

    .line 593
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 594
    sget-object v20, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v20

    if-eqz v20, :cond_2

    .line 597
    sget-object v20, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 584
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .line 585
    .local v3, "e":Ljava/lang/IllegalAccessException;
    move-object v4, v3

    .line 592
    if-eqz v4, :cond_2

    .line 593
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_4

    .line 594
    sget-object v20, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v20

    if-eqz v20, :cond_2

    .line 597
    sget-object v20, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 586
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    .line 587
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    move-object v4, v3

    .line 592
    if-eqz v4, :cond_2

    .line 593
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_5

    .line 594
    sget-object v20, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v20

    if-eqz v20, :cond_2

    .line 597
    sget-object v20, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 588
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    .line 589
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v4, v3

    .line 592
    if-eqz v4, :cond_2

    .line 593
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_6

    .line 594
    sget-object v20, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v20

    if-eqz v20, :cond_2

    .line 597
    sget-object v20, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 592
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catchall_0
    move-exception v20

    if-eqz v4, :cond_8

    .line 593
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_7

    .line 594
    sget-object v21, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v21

    if-eqz v21, :cond_8

    .line 597
    sget-object v21, Lcom/supersonicads/sdk/utils/SDKUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    throw v20

    .line 571
    .restart local v2    # "continuationToken":Ljava/lang/String;
    .restart local v5    # "getPurchasesMethod":Ljava/lang/reflect/Method;
    .restart local v6    # "i":I
    .restart local v7    # "item":Lorg/json/JSONObject;
    .restart local v8    # "mBundleClass":Ljava/lang/Object;
    .restart local v9    # "mGetIntmethod":Ljava/lang/reflect/Method;
    .restart local v10    # "mGetStringArrayListMethod":Ljava/lang/reflect/Method;
    .restart local v11    # "mGetStringMethod":Ljava/lang/reflect/Method;
    .restart local v12    # "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13    # "purchaseData":Ljava/lang/String;
    .restart local v14    # "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "response":I
    .restart local v17    # "signature":Ljava/lang/String;
    .restart local v18    # "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "sku":Ljava/lang/String;
    :catch_4
    move-exception v20

    goto/16 :goto_1
.end method

.method public static showNoInternetDialog(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 285
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "No Internet Connection"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Ok"

    new-instance v2, Lcom/supersonicads/sdk/utils/SDKUtils$1;

    invoke-direct {v2}, Lcom/supersonicads/sdk/utils/SDKUtils$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 293
    return-void
.end method
