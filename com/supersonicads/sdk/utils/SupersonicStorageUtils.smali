.class public Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;
.super Ljava/lang/Object;
.source "SupersonicStorageUtils.java"


# static fields
.field private static final SSA_DIRECTORY_NAME:Ljava/lang/String; = "supersonicads"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildFilesMap(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 14
    .param p0, "cacheRootPath"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 361
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .local v1, "dir":Ljava/io/File;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 363
    .local v6, "jsnObj":Lorg/json/JSONObject;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 365
    .local v4, "fileList":[Ljava/io/File;
    if-eqz v4, :cond_2

    .line 366
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v3, v0, v5

    .line 369
    .local v3, "entry":Ljava/io/File;
    :try_start_0
    invoke-static {v3}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->looping(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v8

    .line 371
    .local v8, "obj":Ljava/lang/Object;
    instance-of v9, v8, Lorg/json/JSONArray;

    if-eqz v9, :cond_1

    .line 372
    const-string v9, "files"

    invoke-static {v3}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->looping(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    .end local v8    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 373
    .restart local v8    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v9, v8, Lorg/json/JSONObject;

    if-eqz v9, :cond_0

    .line 374
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->looping(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 378
    .end local v8    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 379
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 380
    new-instance v9, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v9}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v12

    aget-object v12, v12, v13

    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {v9, v10}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 385
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "entry":Ljava/io/File;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    :cond_2
    return-object v6
.end method

.method private static createRootDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    const-string v1, "supersonicads"

    invoke-static {p0, v1}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 163
    .local v0, "rootDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 167
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static deleteAllFiles(Ljava/lang/String;)V
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 107
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v5, "root":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 110
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_1

    .line 121
    :cond_0
    return-void

    .line 113
    :cond_1
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 114
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 115
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->deleteAllFiles(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 113
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public static declared-synchronized deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "rootCacheDir"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 223
    const-class v9, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;

    monitor-enter v9

    const/4 v5, 0x0

    .line 225
    .local v5, "isSucceed":Z
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_0

    move v6, v5

    .line 243
    .end local v5    # "isSucceed":Z
    .local v6, "isSucceed":I
    :goto_0
    monitor-exit v9

    return v6

    .line 230
    .end local v6    # "isSucceed":I
    .restart local v5    # "isSucceed":Z
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 232
    .local v3, "files":[Ljava/io/File;
    if-nez v3, :cond_1

    move v6, v5

    .line 233
    .restart local v6    # "isSucceed":I
    goto :goto_0

    .line 235
    .end local v6    # "isSucceed":I
    :cond_1
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v7, :cond_3

    aget-object v2, v0, v4

    .line 236
    .local v2, "entry":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 237
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 238
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    move v6, v5

    .line 239
    .restart local v6    # "isSucceed":I
    goto :goto_0

    .line 235
    .end local v6    # "isSucceed":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2    # "entry":Ljava/io/File;
    :cond_3
    move v6, v5

    .line 243
    .restart local v6    # "isSucceed":I
    goto :goto_0

    .line 223
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v6    # "isSucceed":I
    .end local v7    # "len$":I
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method public static declared-synchronized deleteFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "cacheRootDir"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 299
    const-class v2, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .local v0, "folder":Ljava/io/File;
    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->deleteFolderRecursive(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 299
    .end local v0    # "folder":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static deleteFolderRecursive(Ljava/io/File;)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 311
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 312
    const/4 v4, 0x0

    .line 328
    :goto_0
    return v4

    .line 315
    :cond_0
    const/4 v4, 0x0

    .line 317
    .local v4, "result":Z
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 319
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 320
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->deleteFolderRecursive(Ljava/io/File;)Z

    move-result v4

    .line 319
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 322
    .end local v1    # "f":Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v4

    .line 324
    goto :goto_0

    .line 327
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v4

    .line 328
    goto :goto_0
.end method

.method public static getCachedFilesMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "cacheRootPath"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 342
    invoke-static {p0, p1}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->buildFilesMap(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 344
    .local v1, "jsnObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "path"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cacheDirName"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->isExternalStorageAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    invoke-static {p0}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 137
    .local v1, "externalCacheDir":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 138
    invoke-static {p0}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "cachePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .end local v1    # "externalCacheDir":Ljava/io/File;
    :goto_0
    return-object v2

    .line 142
    .end local v0    # "cachePath":Ljava/lang/String;
    .restart local v1    # "externalCacheDir":Ljava/io/File;
    :cond_0
    invoke-static {p0}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->getInternalCacheDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .restart local v0    # "cachePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    .end local v0    # "cachePath":Ljava/lang/String;
    .end local v1    # "externalCacheDir":Ljava/io/File;
    :cond_1
    invoke-static {p0}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->getInternalCacheDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .restart local v0    # "cachePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getInternalCacheDirPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 90
    .local v0, "internalFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 94
    :cond_0
    return-object v1
.end method

.method public static initializeCacheDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->createRootDirectory(Landroid/content/Context;)Ljava/lang/String;

    .line 28
    invoke-static {p0}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->refreshRootDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public static isExternalStorageAvailable()Z
    .locals 3

    .prologue
    .line 195
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "state":Ljava/lang/String;
    const/4 v0, 0x0

    .line 198
    .local v0, "mExternalStorageAvailable":Z
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    .line 201
    :cond_0
    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    const/4 v0, 0x1

    goto :goto_0

    .line 207
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized isFileCached(Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAFile;)Z
    .locals 8
    .param p0, "rootDirPath"    # Ljava/lang/String;
    .param p1, "ssaFile"    # Lcom/supersonicads/sdk/data/SSAFile;

    .prologue
    .line 255
    const-class v6, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;

    monitor-enter v6

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .local v1, "dir":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 258
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 259
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 261
    .local v2, "entry":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 262
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/supersonicads/sdk/utils/SDKUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 263
    const/4 v5, 0x1

    .line 270
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "entry":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_1
    monitor-exit v6

    return v5

    .line 259
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v2    # "entry":Ljava/io/File;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 270
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "entry":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 255
    .end local v1    # "dir":Ljava/io/File;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static isPathExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "cachRootPath"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 281
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    const/4 v1, 0x1

    .line 286
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static looping(Ljava/io/File;)Ljava/lang/Object;
    .locals 15
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v14, 0x0

    .line 398
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 399
    .local v0, "arr":Lorg/json/JSONObject;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 402
    .local v8, "tempArr":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 403
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 455
    .end local v8    # "tempArr":Lorg/json/JSONArray;
    :goto_0
    return-object v8

    .line 407
    .restart local v8    # "tempArr":Lorg/json/JSONArray;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .local v1, "arr$":[Ljava/io/File;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v3, v1, v4

    .line 409
    .local v3, "fileEntry":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 410
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->looping(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 412
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 413
    const-string v10, "files"

    invoke-virtual {v0, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 451
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v3    # "fileEntry":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :catch_0
    move-exception v2

    .line 452
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 453
    new-instance v10, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v10}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v14

    invoke-virtual {v10, v11}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .end local v2    # "e":Lorg/json/JSONException;
    :cond_2
    :goto_3
    move-object v8, v0

    .line 455
    goto :goto_0

    .line 419
    .restart local v1    # "arr$":[Ljava/io/File;
    .restart local v4    # "i$":I
    .restart local v6    # "len$":I
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 420
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v10

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getCampaignLastUpdate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 421
    .local v5, "lastUpdate":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 422
    const-string v10, "lastUpdateTime"

    invoke-virtual {v0, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    .end local v5    # "lastUpdate":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 428
    .local v7, "product":Ljava/lang/String;
    const/4 v9, 0x0

    .line 429
    .local v9, "type":Lcom/supersonicads/sdk/data/SSAEnums$ProductType;
    sget-object v10, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v10}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 430
    sget-object v9, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    .line 437
    :cond_5
    :goto_4
    if-eqz v9, :cond_2

    .line 439
    const-string v10, "applicationUserId"

    invoke-static {v10}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getUniqueId(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    const-string v10, "applicationKey"

    invoke-static {v10}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getApplicationKey(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/supersonicads/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 431
    :cond_6
    sget-object v10, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v10}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 432
    sget-object v9, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    goto :goto_4

    .line 433
    :cond_7
    sget-object v10, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v10}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 434
    sget-object v9, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public static makeDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "cacheRootDirectory"    # Ljava/lang/String;
    .param p1, "directory"    # Ljava/lang/String;

    .prologue
    .line 178
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 182
    .local v1, "isCreated":Z
    if-nez v1, :cond_0

    .line 183
    const/4 v2, 0x0

    .line 186
    .end local v1    # "isCreated":Z
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static refreshRootDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getCurrentSDKVersion()Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, "storedVerison":Ljava/lang/String;
    invoke-static {p0}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/supersonicads/sdk/utils/DeviceProperties;

    move-result-object v2

    .line 46
    .local v2, "properties":Lcom/supersonicads/sdk/utils/DeviceProperties;
    invoke-virtual {v2}, Lcom/supersonicads/sdk/utils/DeviceProperties;->getSupersonicSdkVersion()Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "sdkVer":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 51
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setCurrentSDKVersion(Ljava/lang/String;)V

    .line 54
    invoke-static {p0}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 55
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "supersonicads"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->deleteAllFiles(Ljava/lang/String;)V

    .line 59
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->getInternalCacheDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "supersonicads"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->deleteAllFiles(Ljava/lang/String;)V

    .line 62
    invoke-static {p0}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->createRootDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .end local v0    # "cacheDir":Ljava/io/File;
    .local v1, "cacheDirectoryPath":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 64
    .end local v1    # "cacheDirectoryPath":Ljava/lang/String;
    :cond_1
    const-string v5, "supersonicads"

    invoke-static {p0, v5}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "cacheDirectoryPath":Ljava/lang/String;
    goto :goto_0
.end method
