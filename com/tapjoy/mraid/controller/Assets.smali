.class public Lcom/tapjoy/mraid/controller/Assets;
.super Lcom/tapjoy/mraid/controller/Abstract;
.source "Assets.java"


# static fields
.field private static final HEX_CHARS:[C

.field private static final TAG:Ljava/lang/String; = "MRAID Assets"


# instance fields
.field private imageNameCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 487
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tapjoy/mraid/controller/Assets;->HEX_CHARS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V
    .locals 1
    .param p1, "adView"    # Lcom/tapjoy/mraid/view/MraidView;
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/mraid/controller/Abstract;-><init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/mraid/controller/Assets;->imageNameCounter:I

    .line 51
    return-void
.end method

.method private asHex(Ljava/security/MessageDigest;)Ljava/lang/String;
    .locals 7
    .param p1, "digest"    # Ljava/security/MessageDigest;

    .prologue
    .line 498
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 499
    .local v1, "hash":[B
    array-length v5, v1

    mul-int/lit8 v5, v5, 0x2

    new-array v0, v5, [C

    .line 500
    .local v0, "buf":[C
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 501
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "x":I
    .local v4, "x":I
    sget-object v5, Lcom/tapjoy/mraid/controller/Assets;->HEX_CHARS:[C

    aget-byte v6, v1, v2

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v0, v3

    .line 502
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "x":I
    .restart local v3    # "x":I
    sget-object v5, Lcom/tapjoy/mraid/controller/Assets;->HEX_CHARS:[C

    aget-byte v6, v1, v2

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v0, v4

    .line 500
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 504
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method

.method private contains(Ljava/lang/StringBuffer;Ljava/lang/String;)Z
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "lookForMe"    # Ljava/lang/String;

    .prologue
    .line 447
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    .line 451
    :goto_0
    return v1

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "contains"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "html file does not contain "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static deleteDirectory(Ljava/io/File;)Z
    .locals 3
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 629
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 630
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 631
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 632
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 633
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/tapjoy/mraid/controller/Assets;->deleteDirectory(Ljava/io/File;)Z

    .line 631
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 635
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 639
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    return v2
.end method

.method public static deleteDirectory(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 616
    if-eqz p0, :cond_0

    .line 617
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tapjoy/mraid/controller/Assets;->deleteDirectory(Ljava/io/File;)Z

    move-result v0

    .line 618
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAssetDir(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 557
    iget-object v2, p0, Lcom/tapjoy/mraid/controller/Assets;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 558
    .local v0, "filesDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 560
    .local v1, "newDir":Ljava/io/File;
    return-object v1
.end method

.method private getAssetName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "asset"    # Ljava/lang/String;

    .prologue
    .line 589
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 590
    .local v0, "lastSep":I
    move-object v1, p1

    .line 592
    .local v1, "name":Ljava/lang/String;
    if-ltz v0, :cond_0

    .line 593
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 596
    :cond_0
    return-object v1
.end method

.method private getAssetPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "asset"    # Ljava/lang/String;

    .prologue
    .line 571
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 572
    .local v0, "lastSep":I
    const-string v1, "/"

    .line 574
    .local v1, "path":Ljava/lang/String;
    if-ltz v0, :cond_0

    .line 575
    const/4 v2, 0x0

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 578
    :cond_0
    return-object v1
.end method

.method private getFilesDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Assets;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHttpEntity(Ljava/lang/String;)Lorg/apache/http/HttpEntity;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 218
    const/4 v1, 0x0

    .line 220
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 221
    .local v2, "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 222
    .local v3, "httpget":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 223
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v5, v1

    .line 228
    .end local v2    # "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v5

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 226
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private moveToAdDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "fn"    # Ljava/lang/String;
    .param p2, "filesDir"    # Ljava/lang/String;
    .param p3, "subDir"    # Ljava/lang/String;

    .prologue
    .line 474
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 475
    .local v2, "file":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ad"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 476
    .local v0, "adDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 477
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ad"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 480
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 481
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private replace(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "toReplace"    # Ljava/lang/String;
    .param p3, "bridgePath"    # Ljava/lang/String;

    .prologue
    .line 455
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 456
    .local v0, "start":I
    const-string v1, "replace "

    invoke-static {v1, p3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    return-void
.end method


# virtual methods
.method public addAsset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-direct {p0, p2}, Lcom/tapjoy/mraid/controller/Assets;->getHttpEntity(Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 181
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    const/4 v2, 0x0

    .line 183
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 184
    const/4 v4, 0x0

    invoke-virtual {p0, v2, p1, v4}, Lcom/tapjoy/mraid/controller/Assets;->writeToDisk(Ljava/io/InputStream;Ljava/lang/String;Z)Ljava/lang/String;

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MraidAdController.addedAsset(\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/tapjoy/mraid/controller/Assets;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v4, v3}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    if-eqz v2, :cond_0

    .line 192
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 195
    :goto_0
    const/4 v2, 0x0

    .line 200
    .end local v3    # "str":Ljava/lang/String;
    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 204
    :goto_2
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    if-eqz v2, :cond_0

    .line 192
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 195
    :goto_3
    const/4 v2, 0x0

    goto :goto_1

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_1

    .line 192
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 195
    :goto_4
    const/4 v2, 0x0

    :cond_1
    throw v4

    .line 201
    :catch_1
    move-exception v0

    .line 202
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "str":Ljava/lang/String;
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v3    # "str":Ljava/lang/String;
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v5

    goto :goto_4
.end method

.method public cacheRemaining()I
    .locals 5

    .prologue
    .line 237
    iget-object v3, p0, Lcom/tapjoy/mraid/controller/Assets;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 238
    .local v0, "filesDir":Ljava/io/File;
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 239
    .local v2, "stats":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    mul-int v1, v3, v4

    .line 240
    .local v1, "free":I
    return v1
.end method

.method public copyTextFromJarIntoAssetDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 125
    const/4 v4, 0x0

    .line 127
    .local v4, "in":Ljava/io/InputStream;
    :try_start_0
    const-class v9, Lcom/tapjoy/mraid/controller/Assets;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v8

    .line 130
    .local v8, "url":Ljava/net/URL;
    if-nez v8, :cond_1

    .line 132
    iget-object v9, p0, Lcom/tapjoy/mraid/controller/Assets;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 133
    .local v0, "am":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 153
    .end local v0    # "am":Landroid/content/res/AssetManager;
    :goto_0
    const/4 v9, 0x0

    invoke-virtual {p0, v4, p1, v9}, Lcom/tapjoy/mraid/controller/Assets;->writeToDisk(Ljava/io/InputStream;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 159
    .local v6, "name":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 161
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 165
    :goto_1
    const/4 v4, 0x0

    .line 168
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "url":Ljava/net/URL;
    :cond_0
    :goto_2
    return-object v6

    .line 137
    .restart local v8    # "url":Ljava/net/URL;
    :cond_1
    :try_start_2
    invoke-virtual {v8}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "file":Ljava/lang/String;
    const-string v9, "jar:"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 140
    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 142
    :cond_2
    const-string v9, "file:"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 143
    const/4 v9, 0x5

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 145
    :cond_3
    const-string v9, "!"

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 146
    .local v7, "pos":I
    if-lez v7, :cond_4

    .line 147
    const/4 v9, 0x0

    invoke-virtual {v3, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 148
    :cond_4
    new-instance v5, Ljava/util/jar/JarFile;

    invoke-direct {v5, v3}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 149
    .local v5, "jf":Ljava/util/jar/JarFile;
    invoke-virtual {v5, p2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v2

    .line 150
    .local v2, "entry":Ljava/util/jar/JarEntry;
    invoke-virtual {v5, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 156
    .end local v2    # "entry":Ljava/util/jar/JarEntry;
    .end local v3    # "file":Ljava/lang/String;
    .end local v5    # "jf":Ljava/util/jar/JarFile;
    .end local v7    # "pos":I
    .end local v8    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v9, "MRAID Assets"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "copyTextFromJarIntoAssetDir: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    if-eqz v4, :cond_5

    .line 161
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 165
    :goto_3
    const/4 v4, 0x0

    .line 168
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 159
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-eqz v4, :cond_6

    .line 161
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 165
    :goto_4
    const/4 v4, 0x0

    :cond_6
    throw v9

    .line 162
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "url":Ljava/net/URL;
    :catch_1
    move-exception v9

    goto :goto_1

    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "url":Ljava/net/URL;
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v9

    goto :goto_3

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v10

    goto :goto_4
.end method

.method public deleteOldAds()V
    .locals 4

    .prologue
    .line 646
    invoke-direct {p0}, Lcom/tapjoy/mraid/controller/Assets;->getFilesDir()Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "filesDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ad"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 648
    .local v0, "adDir":Ljava/io/File;
    invoke-static {v0}, Lcom/tapjoy/mraid/controller/Assets;->deleteDirectory(Ljava/io/File;)Z

    .line 649
    return-void
.end method

.method public getAssetOutputString(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 3
    .param p1, "asset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 527
    invoke-direct {p0, p1}, Lcom/tapjoy/mraid/controller/Assets;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tapjoy/mraid/controller/Assets;->getAssetDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 528
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 529
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/tapjoy/mraid/controller/Assets;->getAssetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 530
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v2
.end method

.method public getAssetPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Assets;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeAsset(Ljava/lang/String;)V
    .locals 5
    .param p1, "asset"    # Ljava/lang/String;

    .prologue
    .line 540
    invoke-direct {p0, p1}, Lcom/tapjoy/mraid/controller/Assets;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/tapjoy/mraid/controller/Assets;->getAssetDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 541
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 542
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/tapjoy/mraid/controller/Assets;->getAssetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 543
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 545
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MraidAdController.assetRemoved(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 546
    .local v2, "str":Ljava/lang/String;
    iget-object v3, p0, Lcom/tapjoy/mraid/controller/Assets;->mMraidView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v3, v2}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method public stopAllListeners()V
    .locals 0

    .prologue
    .line 656
    return-void
.end method

.method public storePicture(Ljava/lang/String;)V
    .locals 20
    .param p1, "URI"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string v14, "MRAID Assets"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Storing media from "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " to device photo album.  Output directory: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " state: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    move-object/from16 v0, p0

    iget v14, v0, Lcom/tapjoy/mraid/controller/Assets;->imageNameCounter:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/tapjoy/mraid/controller/Assets;->imageNameCounter:I

    .line 75
    :try_start_0
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 76
    .local v13, "url":Ljava/net/URL;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MraidMedia"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/tapjoy/mraid/controller/Assets;->imageNameCounter:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "fileName":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v6, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 80
    .local v10, "startTime":J
    const-string v14, "MRAID Assets"

    const-string v15, "download beginning"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v14, "MRAID Assets"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "download url:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v14, "MRAID Assets"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "downloaded file name:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    .line 89
    .local v12, "ucon":Ljava/net/URLConnection;
    invoke-virtual {v12}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 90
    .local v9, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 95
    .local v3, "bis":Ljava/io/BufferedInputStream;
    new-instance v2, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v14, 0x32

    invoke-direct {v2, v14}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 96
    .local v2, "baf":Lorg/apache/http/util/ByteArrayBuffer;
    const/4 v4, 0x0

    .line 97
    .local v4, "current":I
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    const/4 v14, -0x1

    if-eq v4, v14, :cond_0

    .line 98
    int-to-byte v14, v4

    invoke-virtual {v2, v14}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    .end local v2    # "baf":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "current":I
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "startTime":J
    .end local v12    # "ucon":Ljava/net/URLConnection;
    .end local v13    # "url":Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 110
    .local v5, "e":Ljava/io/IOException;
    const-string v14, "MRAID Assets"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 102
    .restart local v2    # "baf":Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "current":I
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "fileName":Ljava/lang/String;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "startTime":J
    .restart local v12    # "ucon":Ljava/net/URLConnection;
    .restart local v13    # "url":Ljava/net/URL;
    :cond_0
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 103
    .local v8, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/io/FileOutputStream;->write([B)V

    .line 104
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 105
    const-string v14, "MRAID Assets"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "download ready in"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v10

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " sec"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public storePictureInit(Ljava/lang/String;)V
    .locals 4
    .param p1, "URI"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 55
    move-object v1, p1

    .line 56
    .local v1, "uri":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/tapjoy/mraid/controller/Assets;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, "myDialog":Landroid/app/AlertDialog$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Are you sure you want to save file from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to your SD card?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 58
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 59
    const-string v2, "Yes"

    new-instance v3, Lcom/tapjoy/mraid/controller/Assets$1;

    invoke-direct {v3, p0, v1}, Lcom/tapjoy/mraid/controller/Assets$1;-><init>(Lcom/tapjoy/mraid/controller/Assets;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    const-string v2, "No"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 66
    return-void
.end method

.method public writeToDisk(Ljava/io/InputStream;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "file"    # Ljava/lang/String;
    .param p3, "storeInHashedDirectory"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    const/4 v4, 0x0

    .line 266
    .local v4, "i":I
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 268
    .local v0, "buff":[B
    const/4 v1, 0x0

    .line 269
    .local v1, "digest":Ljava/security/MessageDigest;
    if-eqz p3, :cond_0

    .line 271
    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 276
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 278
    .local v6, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/tapjoy/mraid/controller/Assets;->getAssetOutputString(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v6

    .line 280
    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 281
    .local v5, "numread":I
    if-gtz v5, :cond_3

    .line 290
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    if-eqz v6, :cond_1

    .line 294
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 297
    :goto_2
    const/4 v6, 0x0

    .line 301
    :cond_1
    invoke-direct {p0}, Lcom/tapjoy/mraid/controller/Assets;->getFilesDir()Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "filesDir":Ljava/lang/String;
    if-eqz p3, :cond_2

    if-eqz v1, :cond_2

    .line 304
    invoke-direct {p0, v1}, Lcom/tapjoy/mraid/controller/Assets;->asHex(Ljava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p2, v3, v7}, Lcom/tapjoy/mraid/controller/Assets;->moveToAdDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 306
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 272
    .end local v3    # "filesDir":Ljava/lang/String;
    .end local v5    # "numread":I
    .end local v6    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 273
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 284
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v5    # "numread":I
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :cond_3
    if-eqz p3, :cond_4

    if-eqz v1, :cond_4

    .line 285
    :try_start_3
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 287
    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 288
    add-int/lit8 v4, v4, 0x1

    .line 289
    goto :goto_1

    .line 292
    .end local v5    # "numread":I
    :catchall_0
    move-exception v7

    if-eqz v6, :cond_5

    .line 294
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 297
    :goto_3
    const/4 v6, 0x0

    :cond_5
    throw v7

    .line 295
    .restart local v5    # "numread":I
    :catch_1
    move-exception v7

    goto :goto_2

    .end local v5    # "numread":I
    :catch_2
    move-exception v8

    goto :goto_3
.end method

.method public writeToDiskWrap(Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "file"    # Ljava/lang/String;
    .param p3, "storeInHashedDirectory"    # Z
    .param p4, "injection"    # Ljava/lang/String;
    .param p5, "bridgePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    const/16 v11, 0x400

    new-array v1, v11, [B

    .line 335
    .local v1, "buff":[B
    const/4 v2, 0x0

    .line 336
    .local v2, "digest":Ljava/security/MessageDigest;
    if-eqz p3, :cond_0

    .line 338
    :try_start_0
    const-string v11, "MD5"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 345
    :cond_0
    :goto_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 346
    .local v5, "fromFile":Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    .line 349
    .local v8, "out":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 351
    .local v7, "numread":I
    if-gtz v7, :cond_8

    .line 363
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v9

    .line 364
    .local v9, "wholeHTML":Ljava/lang/String;
    const-string v11, "</html>"

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_c

    const/4 v6, 0x1

    .line 368
    .local v6, "hasHTMLWrap":Z
    :goto_2
    const/4 v10, 0x0

    .line 369
    .local v10, "wholeHTMLBuffer":Ljava/lang/StringBuffer;
    new-instance v10, Ljava/lang/StringBuffer;

    .end local v10    # "wholeHTMLBuffer":Ljava/lang/StringBuffer;
    invoke-direct {v10, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 371
    .restart local v10    # "wholeHTMLBuffer":Ljava/lang/StringBuffer;
    if-eqz v6, :cond_1

    .line 372
    const-string v11, "mraid.js"

    invoke-direct {p0, v10, v11}, Lcom/tapjoy/mraid/controller/Assets;->contains(Ljava/lang/StringBuffer;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 373
    const-string v11, "mraid.js"

    move-object/from16 v0, p5

    invoke-direct {p0, v10, v11, v0}, Lcom/tapjoy/mraid/controller/Assets;->replace(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_1
    :goto_3
    invoke-virtual {p0, p2}, Lcom/tapjoy/mraid/controller/Assets;->getAssetOutputString(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v8

    .line 381
    if-nez v6, :cond_3

    .line 382
    const-string v11, "<html>"

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 383
    const-string v11, "<head>"

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 384
    const-string v11, "<meta name=\'viewport\' content=\'user-scalable=no initial-scale=1.0\' />"

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 386
    const-string v11, "<title>Advertisement</title> "

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 388
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<script src=\"file://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" type=\"text/javascript\"></script>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 393
    if-eqz p4, :cond_2

    .line 394
    const-string v11, "<script type=\"text/javascript\">"

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 395
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 396
    const-string v11, "</script>"

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 398
    :cond_2
    const-string v11, "</head>"

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 399
    const-string v11, "<body style=\"margin:0; padding:0; overflow:hidden; background-color:transparent;\">"

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 401
    const-string v11, "<div align=\"center\"> "

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 404
    :cond_3
    if-nez v6, :cond_f

    .line 405
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 410
    :goto_4
    if-nez v6, :cond_4

    .line 411
    const-string v11, "</div> "

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 412
    const-string v11, "</body> "

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 413
    const-string v11, "</html> "

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 416
    :cond_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    if-eqz v5, :cond_5

    .line 421
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 425
    :goto_5
    const/4 v5, 0x0

    .line 427
    :cond_5
    if-eqz v8, :cond_6

    .line 429
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 434
    :goto_6
    const/4 v8, 0x0

    .line 437
    :cond_6
    invoke-direct {p0}, Lcom/tapjoy/mraid/controller/Assets;->getFilesDir()Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, "filesDir":Ljava/lang/String;
    if-eqz p3, :cond_7

    if-eqz v2, :cond_7

    .line 440
    invoke-direct {p0, v2}, Lcom/tapjoy/mraid/controller/Assets;->asHex(Ljava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, p2, v4, v11}, Lcom/tapjoy/mraid/controller/Assets;->moveToAdDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 442
    :cond_7
    return-object v4

    .line 339
    .end local v4    # "filesDir":Ljava/lang/String;
    .end local v5    # "fromFile":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "hasHTMLWrap":Z
    .end local v7    # "numread":I
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .end local v9    # "wholeHTML":Ljava/lang/String;
    .end local v10    # "wholeHTMLBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v3

    .line 340
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto/16 :goto_0

    .line 355
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v5    # "fromFile":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "numread":I
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    :cond_8
    if-eqz p3, :cond_9

    if-eqz v2, :cond_9

    .line 356
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 359
    :cond_9
    const/4 v11, 0x0

    invoke-virtual {v5, v1, v11, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 419
    .end local v7    # "numread":I
    :catchall_0
    move-exception v11

    if-eqz v5, :cond_a

    .line 421
    :try_start_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 425
    :goto_7
    const/4 v5, 0x0

    .line 427
    :cond_a
    if-eqz v8, :cond_b

    .line 429
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 434
    :goto_8
    const/4 v8, 0x0

    :cond_b
    throw v11

    .line 364
    .restart local v7    # "numread":I
    .restart local v9    # "wholeHTML":Ljava/lang/String;
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 374
    .restart local v6    # "hasHTMLWrap":Z
    .restart local v10    # "wholeHTMLBuffer":Ljava/lang/StringBuffer;
    :cond_d
    :try_start_7
    const-string v11, "ormma.js"

    invoke-direct {p0, v10, v11}, Lcom/tapjoy/mraid/controller/Assets;->contains(Ljava/lang/StringBuffer;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 375
    const-string v11, "ormma.js"

    move-object/from16 v0, p5

    invoke-direct {p0, v10, v11, v0}, Lcom/tapjoy/mraid/controller/Assets;->replace(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 376
    :cond_e
    const-string v11, "ormma_bridge.js"

    invoke-direct {p0, v10, v11}, Lcom/tapjoy/mraid/controller/Assets;->contains(Ljava/lang/StringBuffer;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 377
    const-string v11, "ormma_bridge.js"

    move-object/from16 v0, p5

    invoke-direct {p0, v10, v11, v0}, Lcom/tapjoy/mraid/controller/Assets;->replace(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 407
    :cond_f
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    .line 422
    :catch_1
    move-exception v11

    goto :goto_5

    .line 431
    :catch_2
    move-exception v11

    goto :goto_6

    .line 422
    .end local v6    # "hasHTMLWrap":Z
    .end local v7    # "numread":I
    .end local v9    # "wholeHTML":Ljava/lang/String;
    .end local v10    # "wholeHTMLBuffer":Ljava/lang/StringBuffer;
    :catch_3
    move-exception v12

    goto :goto_7

    .line 431
    :catch_4
    move-exception v12

    goto :goto_8
.end method
