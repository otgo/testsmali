.class public Lcom/supersonicads/sdk/precache/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;,
        Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;,
        Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;
    }
.end annotation


# static fields
.field public static final CAMPAIGNS:Ljava/lang/String; = "campaigns"

.field public static final FILE_ALREADY_EXIST:Ljava/lang/String; = "file_already_exist"

.field public static final GLOBAL_ASSETS:Ljava/lang/String; = "globalAssets"

.field public static final MESSAGE_EMPTY_URL:I = 0x3ef

.field public static final MESSAGE_FILE_DOWNLOAD_FAIL:I = 0x3f9

.field public static final MESSAGE_FILE_DOWNLOAD_SUCCESS:I = 0x3f8

.field public static final MESSAGE_FILE_NOT_FOUND_EXCEPTION:I = 0x3fa

.field public static final MESSAGE_GENERAL_HTTP_ERROR_CODE:I = 0x3f3

.field public static final MESSAGE_HTTP_EMPTY_RESPONSE:I = 0x3ee

.field public static final MESSAGE_HTTP_NOT_FOUND:I = 0x3ed

.field public static final MESSAGE_INIT_BC_FAIL:I = 0x3f6

.field public static final MESSAGE_IO_EXCEPTION:I = 0x3f1

.field public static final MESSAGE_MALFORMED_URL_EXCEPTION:I = 0x3ec

.field public static final MESSAGE_NUM_OF_BANNERS_TO_CACHE:I = 0x3f5

.field public static final MESSAGE_NUM_OF_BANNERS_TO_INIT_SUCCESS:I = 0x3f4

.field public static final MESSAGE_SOCKET_TIMEOUT_EXCEPTION:I = 0x3f0

.field public static final MESSAGE_URI_SYNTAX_EXCEPTION:I = 0x3f2

.field public static final MESSAGE_ZERO_CAMPAIGNS_TO_INIT_SUCCESS:I = 0x3f7

.field public static final NO_DISK_SPACE:Ljava/lang/String; = "no_disk_space"

.field public static final NO_NETWORK_CONNECTION:Ljava/lang/String; = "no_network_connection"

.field public static final OPERATION_TIMEOUT:I = 0x1388

.field public static final SETTINGS:Ljava/lang/String; = "settings"

.field public static final SOTRAGE_UNAVAILABLE:Ljava/lang/String; = "sotrage_unavailable"

.field public static final UNABLE_TO_CREATE_FOLDER:Ljava/lang/String; = "unable_to_create_folder"

.field public static final UTF8_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static mDownloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;


# instance fields
.field private final FILE_NOT_FOUND_EXCEPTION:Ljava/lang/String;

.field private final HTTP_EMPTY_RESPONSE:Ljava/lang/String;

.field private final HTTP_ERROR_CODE:Ljava/lang/String;

.field private final HTTP_NOT_FOUND:Ljava/lang/String;

.field private final HTTP_OK:Ljava/lang/String;

.field private final IO_EXCEPTION:Ljava/lang/String;

.field private final MALFORMED_URL_EXCEPTION:Ljava/lang/String;

.field private final SOCKET_TIMEOUT_EXCEPTION:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final URI_SYNTAX_EXCEPTION:Ljava/lang/String;

.field private downloadHandler:Landroid/os/Handler;

.field private mCacheRootDirectory:Ljava/lang/String;

.field private mListener:Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;

.field private mMobileControllerThread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "cacheRootDirectory"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "DownloadManager"

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->TAG:Ljava/lang/String;

    .line 65
    const-string v0, "malformed url exception"

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->MALFORMED_URL_EXCEPTION:Ljava/lang/String;

    .line 66
    const-string v0, "http not found"

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->HTTP_NOT_FOUND:Ljava/lang/String;

    .line 67
    const-string v0, "http empty response"

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->HTTP_EMPTY_RESPONSE:Ljava/lang/String;

    .line 68
    const-string v0, "uri syntax exception"

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->URI_SYNTAX_EXCEPTION:Ljava/lang/String;

    .line 69
    const-string v0, "http error code"

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->HTTP_ERROR_CODE:Ljava/lang/String;

    .line 70
    const-string v0, "socket timeout exception"

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->SOCKET_TIMEOUT_EXCEPTION:Ljava/lang/String;

    .line 71
    const-string v0, "io exception"

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->IO_EXCEPTION:Ljava/lang/String;

    .line 72
    const-string v0, "file not found exception"

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->FILE_NOT_FOUND_EXCEPTION:Ljava/lang/String;

    .line 73
    const-string v0, "http ok"

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->HTTP_OK:Ljava/lang/String;

    .line 443
    new-instance v0, Lcom/supersonicads/sdk/precache/DownloadManager$1;

    invoke-direct {v0, p0}, Lcom/supersonicads/sdk/precache/DownloadManager$1;-><init>(Lcom/supersonicads/sdk/precache/DownloadManager;)V

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->downloadHandler:Landroid/os/Handler;

    .line 94
    iput-object p1, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/supersonicads/sdk/precache/DownloadManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/precache/DownloadManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/supersonicads/sdk/precache/DownloadManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/precache/DownloadManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->downloadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/supersonicads/sdk/precache/DownloadManager;)Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/precache/DownloadManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mListener:Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lcom/supersonicads/sdk/precache/DownloadManager;
    .locals 2
    .param p0, "cacheRootDirectory"    # Ljava/lang/String;

    .prologue
    .line 99
    const-class v1, Lcom/supersonicads/sdk/precache/DownloadManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/supersonicads/sdk/precache/DownloadManager;->mDownloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/supersonicads/sdk/precache/DownloadManager;

    invoke-direct {v0, p0}, Lcom/supersonicads/sdk/precache/DownloadManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/supersonicads/sdk/precache/DownloadManager;->mDownloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    .line 103
    :cond_0
    sget-object v0, Lcom/supersonicads/sdk/precache/DownloadManager;->mDownloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public downloadContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 19
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "dir"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "folderName"    # Ljava/lang/String;
    .param p5, "tryNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v13, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v10, 0x0

    .line 323
    .local v10, "outputFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 324
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 326
    .local v8, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 328
    .local v4, "connection":Ljava/net/HttpURLConnection;
    const/4 v12, 0x0

    .line 330
    .local v12, "responseCode":I
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 332
    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    const/16 v15, 0x3ef

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    :goto_0
    return-object v13

    .line 340
    :cond_0
    :try_start_0
    new-instance v9, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 344
    .local v9, "mUrl":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 346
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 347
    const-string v15, "GET"

    invoke-virtual {v4, v15}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 349
    const/16 v15, 0x1388

    invoke-virtual {v4, v15}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 350
    const/16 v15, 0x1388

    invoke-virtual {v4, v15}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 352
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 353
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    .line 356
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 357
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/supersonicads/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-static {v15, v0}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->makeDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 360
    :cond_1
    new-instance v11, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    .end local v10    # "outputFile":Ljava/io/File;
    .local v11, "outputFile":Ljava/io/File;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 363
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 365
    const v15, 0x19000

    new-array v2, v15, [B
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 367
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 368
    .local v3, "bytesRead":I
    const/4 v14, 0x0

    .line 371
    .local v14, "totalBytesRead":I
    :goto_1
    :try_start_3
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v15, -0x1

    if-eq v3, v15, :cond_2

    .line 372
    const/4 v15, 0x0

    invoke-virtual {v7, v2, v15, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 373
    add-int/2addr v14, v3

    goto :goto_1

    .line 376
    :catch_0
    move-exception v5

    .line 377
    .local v5, "e":Ljava/io/IOException;
    const/16 v12, 0x3f1

    .line 380
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    if-nez v14, :cond_3

    .line 382
    const/16 v12, 0x3ee

    .line 409
    :cond_3
    if-eqz v7, :cond_4

    .line 410
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 412
    :cond_4
    if-eqz v8, :cond_5

    .line 413
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_16

    .line 418
    :cond_5
    :goto_2
    if-nez v12, :cond_6

    .line 419
    const/16 v15, 0xc8

    if-ge v12, v15, :cond_6

    const/16 v15, 0x18f

    if-le v12, v15, :cond_6

    .line 420
    const/16 v12, 0x3f3

    .line 424
    :cond_6
    const/16 v15, 0xc8

    if-eq v12, v15, :cond_7

    .line 425
    const-string v15, "DownloadManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " RESPONSE CODE: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " URL: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ATTEMPT: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_7
    if-eqz v4, :cond_8

    .line 432
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 435
    :cond_8
    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object v10, v11

    .line 437
    .end local v11    # "outputFile":Ljava/io/File;
    .restart local v10    # "outputFile":Ljava/io/File;
    goto/16 :goto_0

    .line 386
    .end local v2    # "buffer":[B
    .end local v3    # "bytesRead":I
    .end local v9    # "mUrl":Ljava/net/URL;
    .end local v14    # "totalBytesRead":I
    :catch_1
    move-exception v5

    .line 387
    .local v5, "e":Ljava/net/MalformedURLException;
    :goto_3
    const/16 v12, 0x3ec

    .line 409
    if-eqz v6, :cond_9

    .line 410
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 412
    :cond_9
    if-eqz v8, :cond_a

    .line 413
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_13

    .line 418
    :cond_a
    :goto_4
    if-nez v12, :cond_b

    .line 419
    const/16 v15, 0xc8

    if-ge v12, v15, :cond_b

    const/16 v15, 0x18f

    if-le v12, v15, :cond_b

    .line 420
    const/16 v12, 0x3f3

    .line 424
    :cond_b
    const/16 v15, 0xc8

    if-eq v12, v15, :cond_c

    .line 425
    const-string v15, "DownloadManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " RESPONSE CODE: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " URL: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ATTEMPT: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_c
    if-eqz v4, :cond_d

    .line 432
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 435
    :cond_d
    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 389
    .end local v5    # "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v5

    .line 390
    .local v5, "e":Ljava/net/URISyntaxException;
    :goto_5
    const/16 v12, 0x3f2

    .line 409
    if-eqz v6, :cond_e

    .line 410
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 412
    :cond_e
    if-eqz v8, :cond_f

    .line 413
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_10

    .line 418
    :cond_f
    :goto_6
    if-nez v12, :cond_10

    .line 419
    const/16 v15, 0xc8

    if-ge v12, v15, :cond_10

    const/16 v15, 0x18f

    if-le v12, v15, :cond_10

    .line 420
    const/16 v12, 0x3f3

    .line 424
    :cond_10
    const/16 v15, 0xc8

    if-eq v12, v15, :cond_11

    .line 425
    const-string v15, "DownloadManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " RESPONSE CODE: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " URL: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ATTEMPT: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_11
    if-eqz v4, :cond_12

    .line 432
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 435
    :cond_12
    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 392
    .end local v5    # "e":Ljava/net/URISyntaxException;
    :catch_3
    move-exception v5

    .line 393
    .local v5, "e":Ljava/net/SocketTimeoutException;
    :goto_7
    const/16 v12, 0x3f0

    .line 409
    if-eqz v6, :cond_13

    .line 410
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 412
    :cond_13
    if-eqz v8, :cond_14

    .line 413
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d

    .line 418
    :cond_14
    :goto_8
    if-nez v12, :cond_15

    .line 419
    const/16 v15, 0xc8

    if-ge v12, v15, :cond_15

    const/16 v15, 0x18f

    if-le v12, v15, :cond_15

    .line 420
    const/16 v12, 0x3f3

    .line 424
    :cond_15
    const/16 v15, 0xc8

    if-eq v12, v15, :cond_16

    .line 425
    const-string v15, "DownloadManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " RESPONSE CODE: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " URL: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ATTEMPT: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_16
    if-eqz v4, :cond_17

    .line 432
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 435
    :cond_17
    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 395
    .end local v5    # "e":Ljava/net/SocketTimeoutException;
    :catch_4
    move-exception v5

    .line 396
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_9
    const/16 v12, 0x3fa

    .line 409
    if-eqz v6, :cond_18

    .line 410
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 412
    :cond_18
    if-eqz v8, :cond_19

    .line 413
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    .line 418
    :cond_19
    :goto_a
    if-nez v12, :cond_1a

    .line 419
    const/16 v15, 0xc8

    if-ge v12, v15, :cond_1a

    const/16 v15, 0x18f

    if-le v12, v15, :cond_1a

    .line 420
    const/16 v12, 0x3f3

    .line 424
    :cond_1a
    const/16 v15, 0xc8

    if-eq v12, v15, :cond_1b

    .line 425
    const-string v15, "DownloadManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " RESPONSE CODE: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " URL: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ATTEMPT: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_1b
    if-eqz v4, :cond_1c

    .line 432
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 435
    :cond_1c
    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 398
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v5

    .line 399
    .local v5, "e":Ljava/io/IOException;
    :goto_b
    if-eqz v5, :cond_1d

    .line 400
    :try_start_9
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1d

    .line 401
    const-string v15, "DownloadManager"

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 404
    :cond_1d
    const/16 v12, 0x3f1

    .line 409
    if-eqz v6, :cond_1e

    .line 410
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 412
    :cond_1e
    if-eqz v8, :cond_1f

    .line 413
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 418
    :cond_1f
    :goto_c
    if-nez v12, :cond_20

    .line 419
    const/16 v15, 0xc8

    if-ge v12, v15, :cond_20

    const/16 v15, 0x18f

    if-le v12, v15, :cond_20

    .line 420
    const/16 v12, 0x3f3

    .line 424
    :cond_20
    const/16 v15, 0xc8

    if-eq v12, v15, :cond_21

    .line 425
    const-string v15, "DownloadManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " RESPONSE CODE: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " URL: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ATTEMPT: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_21
    if-eqz v4, :cond_22

    .line 432
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 435
    :cond_22
    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 408
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    .line 409
    :goto_d
    if-eqz v6, :cond_23

    .line 410
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 412
    :cond_23
    if-eqz v8, :cond_24

    .line 413
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 418
    :cond_24
    :goto_e
    if-nez v12, :cond_25

    .line 419
    const/16 v16, 0xc8

    move/from16 v0, v16

    if-ge v12, v0, :cond_25

    const/16 v16, 0x18f

    move/from16 v0, v16

    if-le v12, v0, :cond_25

    .line 420
    const/16 v12, 0x3f3

    .line 424
    :cond_25
    const/16 v16, 0xc8

    move/from16 v0, v16

    if-eq v12, v0, :cond_26

    .line 425
    const-string v16, "DownloadManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " RESPONSE CODE: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " URL: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ATTEMPT: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_26
    if-eqz v4, :cond_27

    .line 432
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 435
    :cond_27
    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    throw v15

    .line 415
    :catch_6
    move-exception v16

    goto :goto_e

    .line 408
    .end local v10    # "outputFile":Ljava/io/File;
    .restart local v9    # "mUrl":Ljava/net/URL;
    .restart local v11    # "outputFile":Ljava/io/File;
    :catchall_1
    move-exception v15

    move-object v10, v11

    .end local v11    # "outputFile":Ljava/io/File;
    .restart local v10    # "outputFile":Ljava/io/File;
    goto :goto_d

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "outputFile":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "outputFile":Ljava/io/File;
    :catchall_2
    move-exception v15

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "outputFile":Ljava/io/File;
    .restart local v10    # "outputFile":Ljava/io/File;
    goto :goto_d

    .line 415
    .end local v9    # "mUrl":Ljava/net/URL;
    .restart local v5    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v15

    goto/16 :goto_c

    .line 398
    .end local v5    # "e":Ljava/io/IOException;
    .end local v10    # "outputFile":Ljava/io/File;
    .restart local v9    # "mUrl":Ljava/net/URL;
    .restart local v11    # "outputFile":Ljava/io/File;
    :catch_8
    move-exception v5

    move-object v10, v11

    .end local v11    # "outputFile":Ljava/io/File;
    .restart local v10    # "outputFile":Ljava/io/File;
    goto/16 :goto_b

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "outputFile":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "outputFile":Ljava/io/File;
    :catch_9
    move-exception v5

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "outputFile":Ljava/io/File;
    .restart local v10    # "outputFile":Ljava/io/File;
    goto/16 :goto_b

    .line 415
    .end local v9    # "mUrl":Ljava/net/URL;
    .local v5, "e":Ljava/io/FileNotFoundException;
    :catch_a
    move-exception v15

    goto/16 :goto_a

    .line 395
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v10    # "outputFile":Ljava/io/File;
    .restart local v9    # "mUrl":Ljava/net/URL;
    .restart local v11    # "outputFile":Ljava/io/File;
    :catch_b
    move-exception v5

    move-object v10, v11

    .end local v11    # "outputFile":Ljava/io/File;
    .restart local v10    # "outputFile":Ljava/io/File;
    goto/16 :goto_9

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "outputFile":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "outputFile":Ljava/io/File;
    :catch_c
    move-exception v5

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "outputFile":Ljava/io/File;
    .restart local v10    # "outputFile":Ljava/io/File;
    goto/16 :goto_9

    .line 415
    .end local v9    # "mUrl":Ljava/net/URL;
    .local v5, "e":Ljava/net/SocketTimeoutException;
    :catch_d
    move-exception v15

    goto/16 :goto_8

    .line 392
    .end local v5    # "e":Ljava/net/SocketTimeoutException;
    .end local v10    # "outputFile":Ljava/io/File;
    .restart local v9    # "mUrl":Ljava/net/URL;
    .restart local v11    # "outputFile":Ljava/io/File;
    :catch_e
    move-exception v5

    move-object v10, v11

    .end local v11    # "outputFile":Ljava/io/File;
    .restart local v10    # "outputFile":Ljava/io/File;
    goto/16 :goto_7

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "outputFile":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "outputFile":Ljava/io/File;
    :catch_f
    move-exception v5

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "outputFile":Ljava/io/File;
    .restart local v10    # "outputFile":Ljava/io/File;
    goto/16 :goto_7

    .line 415
    .end local v9    # "mUrl":Ljava/net/URL;
    .local v5, "e":Ljava/net/URISyntaxException;
    :catch_10
    move-exception v15

    goto/16 :goto_6

    .line 389
    .end local v5    # "e":Ljava/net/URISyntaxException;
    .end local v10    # "outputFile":Ljava/io/File;
    .restart local v9    # "mUrl":Ljava/net/URL;
    .restart local v11    # "outputFile":Ljava/io/File;
    :catch_11
    move-exception v5

    move-object v10, v11

    .end local v11    # "outputFile":Ljava/io/File;
    .restart local v10    # "outputFile":Ljava/io/File;
    goto/16 :goto_5

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "outputFile":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "outputFile":Ljava/io/File;
    :catch_12
    move-exception v5

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "outputFile":Ljava/io/File;
    .restart local v10    # "outputFile":Ljava/io/File;
    goto/16 :goto_5

    .line 415
    .end local v9    # "mUrl":Ljava/net/URL;
    .local v5, "e":Ljava/net/MalformedURLException;
    :catch_13
    move-exception v15

    goto/16 :goto_4

    .line 386
    .end local v5    # "e":Ljava/net/MalformedURLException;
    .end local v10    # "outputFile":Ljava/io/File;
    .restart local v9    # "mUrl":Ljava/net/URL;
    .restart local v11    # "outputFile":Ljava/io/File;
    :catch_14
    move-exception v5

    move-object v10, v11

    .end local v11    # "outputFile":Ljava/io/File;
    .restart local v10    # "outputFile":Ljava/io/File;
    goto/16 :goto_3

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "outputFile":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "outputFile":Ljava/io/File;
    :catch_15
    move-exception v5

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "outputFile":Ljava/io/File;
    .restart local v10    # "outputFile":Ljava/io/File;
    goto/16 :goto_3

    .line 415
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "outputFile":Ljava/io/File;
    .restart local v2    # "buffer":[B
    .restart local v3    # "bytesRead":I
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "outputFile":Ljava/io/File;
    .restart local v14    # "totalBytesRead":I
    :catch_16
    move-exception v15

    goto/16 :goto_2
.end method

.method public downloadFile(Lcom/supersonicads/sdk/data/SSAFile;)V
    .locals 2
    .param p1, "file"    # Lcom/supersonicads/sdk/data/SSAFile;

    .prologue
    .line 128
    new-instance v0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;

    invoke-direct {v0, p0, p1}, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;-><init>(Lcom/supersonicads/sdk/precache/DownloadManager;Lcom/supersonicads/sdk/data/SSAFile;)V

    .line 129
    .local v0, "worker":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 130
    return-void
.end method

.method public downloadMobileControllerFile(Lcom/supersonicads/sdk/data/SSAFile;)V
    .locals 2
    .param p1, "file"    # Lcom/supersonicads/sdk/data/SSAFile;

    .prologue
    .line 134
    new-instance v0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;

    invoke-direct {v0, p0, p1}, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;-><init>(Lcom/supersonicads/sdk/precache/DownloadManager;Lcom/supersonicads/sdk/data/SSAFile;)V

    .line 135
    .local v0, "mobileControllerWorker":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mMobileControllerThread:Ljava/lang/Thread;

    .line 136
    iget-object v1, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mMobileControllerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 137
    return-void
.end method

.method public isMobileControllerThreadLive()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mMobileControllerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mMobileControllerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 122
    sput-object v0, Lcom/supersonicads/sdk/precache/DownloadManager;->mDownloadManager:Lcom/supersonicads/sdk/precache/DownloadManager;

    .line 123
    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mListener:Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;

    .line 124
    return-void
.end method

.method public setOnPreCacheCompletion(Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;)V
    .locals 0
    .param p1, "listener"    # Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/supersonicads/sdk/precache/DownloadManager;->mListener:Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;

    .line 119
    return-void
.end method
