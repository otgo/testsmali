.class final Ljavassist/ClassPoolTail;
.super Ljava/lang/Object;
.source "ClassPoolTail.java"


# instance fields
.field protected pathList:Ljavassist/ClassPathList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;

    .line 184
    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 7
    .param p0, "fin"    # Ljava/io/InputStream;
    .param p1, "fout"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    const/16 v1, 0x1000

    .line 408
    .local v1, "bufsize":I
    const/4 v0, 0x0

    .line 409
    .local v0, "buf":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v5, 0x40

    if-ge v2, v5, :cond_3

    .line 410
    const/16 v5, 0x8

    if-ge v2, v5, :cond_0

    .line 411
    mul-int/lit8 v1, v1, 0x2

    .line 412
    new-array v0, v1, [B

    .line 414
    :cond_0
    const/4 v4, 0x0

    .line 415
    .local v4, "size":I
    const/4 v3, 0x0

    .line 417
    .local v3, "len":I
    :cond_1
    sub-int v5, v1, v4

    invoke-virtual {p0, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 418
    if-ltz v3, :cond_2

    .line 419
    add-int/2addr v4, v3

    .line 424
    if-lt v4, v1, :cond_1

    .line 425
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 409
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 421
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 422
    return-void

    .line 428
    .end local v3    # "len":I
    .end local v4    # "size":I
    :cond_3
    new-instance v5, Ljava/io/IOException;

    const-string v6, "too much data"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static makePathObject(Ljava/lang/String;)Ljavassist/ClassPath;
    .locals 5
    .param p0, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "lower":Ljava/lang/String;
    const-string v3, ".jar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    :cond_0
    new-instance v3, Ljavassist/JarClassPath;

    invoke-direct {v3, p0}, Ljavassist/JarClassPath;-><init>(Ljava/lang/String;)V

    .line 267
    :goto_0
    return-object v3

    .line 259
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 260
    .local v1, "len":I
    const/4 v3, 0x2

    if-le v1, v3, :cond_3

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2a

    if-ne v3, v4, :cond_3

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_2

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_3

    .line 263
    :cond_2
    const/4 v3, 0x0

    add-int/lit8 v4, v1, -0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "dir":Ljava/lang/String;
    new-instance v3, Ljavassist/JarDirClassPath;

    invoke-direct {v3, v0}, Ljavassist/JarDirClassPath;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    .end local v0    # "dir":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljavassist/DirClassPath;

    invoke-direct {v3, p0}, Ljavassist/DirClassPath;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static readStream(Ljava/io/InputStream;)[B
    .locals 12
    .param p0, "fin"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 370
    new-array v0, v11, [[B

    .line 371
    .local v0, "bufs":[[B
    const/16 v1, 0x1000

    .line 373
    .local v1, "bufsize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v11, :cond_3

    .line 374
    new-array v8, v1, [B

    aput-object v8, v0, v2

    .line 375
    const/4 v7, 0x0

    .line 376
    .local v7, "size":I
    const/4 v4, 0x0

    .line 378
    .local v4, "len":I
    :cond_0
    aget-object v8, v0, v2

    sub-int v9, v1, v7

    invoke-virtual {p0, v8, v7, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 379
    if-ltz v4, :cond_1

    .line 380
    add-int/2addr v7, v4

    .line 392
    if-lt v7, v1, :cond_0

    .line 393
    mul-int/lit8 v1, v1, 0x2

    .line 373
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 382
    :cond_1
    add-int/lit16 v8, v1, -0x1000

    add-int/2addr v8, v7

    new-array v5, v8, [B

    .line 383
    .local v5, "result":[B
    const/4 v6, 0x0

    .line 384
    .local v6, "s":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 385
    aget-object v8, v0, v3

    add-int/lit16 v9, v6, 0x1000

    invoke-static {v8, v10, v5, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    add-int v8, v6, v6

    add-int/lit16 v6, v8, 0x1000

    .line 384
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 389
    :cond_2
    aget-object v8, v0, v2

    invoke-static {v8, v10, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    return-object v5

    .line 396
    .end local v3    # "j":I
    .end local v4    # "len":I
    .end local v5    # "result":[B
    .end local v6    # "s":I
    .end local v7    # "size":I
    :cond_3
    new-instance v8, Ljava/io/IOException;

    const-string v9, "too much data"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
.end method


# virtual methods
.method public appendClassPath(Ljava/lang/String;)Ljavassist/ClassPath;
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {p1}, Ljavassist/ClassPoolTail;->makePathObject(Ljava/lang/String;)Ljavassist/ClassPath;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/ClassPoolTail;->appendClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized appendClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;
    .locals 3
    .param p1, "cp"    # Ljavassist/ClassPath;

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljavassist/ClassPathList;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ljavassist/ClassPathList;-><init>(Ljavassist/ClassPath;Ljavassist/ClassPathList;)V

    .line 207
    .local v1, "tail":Ljavassist/ClassPathList;
    iget-object v0, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;

    .line 208
    .local v0, "list":Ljavassist/ClassPathList;
    if-nez v0, :cond_0

    .line 209
    iput-object v1, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :goto_0
    monitor-exit p0

    return-object p1

    .line 211
    :cond_0
    :goto_1
    :try_start_1
    iget-object v2, v0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    if-eqz v2, :cond_1

    .line 212
    iget-object v0, v0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    goto :goto_1

    .line 214
    :cond_1
    iput-object v1, v0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 206
    .end local v0    # "list":Ljavassist/ClassPathList;
    .end local v1    # "tail":Ljavassist/ClassPathList;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public appendSystemPath()Ljavassist/ClassPath;
    .locals 1

    .prologue
    .line 237
    new-instance v0, Ljavassist/ClassClassPath;

    invoke-direct {v0}, Ljavassist/ClassClassPath;-><init>()V

    invoke-virtual {p0, v0}, Ljavassist/ClassPoolTail;->appendClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;

    move-result-object v0

    return-object v0
.end method

.method public find(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .param p1, "classname"    # Ljava/lang/String;

    .prologue
    .line 351
    iget-object v0, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;

    .line 352
    .local v0, "list":Ljavassist/ClassPathList;
    const/4 v1, 0x0

    .line 353
    .local v1, "url":Ljava/net/URL;
    :goto_0
    if-eqz v0, :cond_1

    .line 354
    iget-object v2, v0, Ljavassist/ClassPathList;->path:Ljavassist/ClassPath;

    invoke-interface {v2, p1}, Ljavassist/ClassPath;->find(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 355
    if-nez v1, :cond_0

    .line 356
    iget-object v0, v0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 361
    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public insertClassPath(Ljava/lang/String;)Ljavassist/ClassPath;
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-static {p1}, Ljavassist/ClassPoolTail;->makePathObject(Ljava/lang/String;)Ljavassist/ClassPath;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/ClassPoolTail;->insertClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized insertClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;
    .locals 2
    .param p1, "cp"    # Ljavassist/ClassPath;

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljavassist/ClassPathList;

    iget-object v1, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;

    invoke-direct {v0, p1, v1}, Ljavassist/ClassPathList;-><init>(Ljavassist/ClassPath;Ljavassist/ClassPathList;)V

    iput-object v0, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-object p1

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method openClassfile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p1, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v3, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;

    .line 319
    .local v3, "list":Ljavassist/ClassPathList;
    const/4 v2, 0x0

    .line 320
    .local v2, "ins":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 321
    .local v1, "error":Ljavassist/NotFoundException;
    :goto_0
    if-eqz v3, :cond_2

    .line 323
    :try_start_0
    iget-object v4, v3, Ljavassist/ClassPathList;->path:Ljavassist/ClassPath;

    invoke-interface {v4, p1}, Ljavassist/ClassPath;->openClassfile(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 330
    :cond_0
    :goto_1
    if-nez v2, :cond_1

    .line 331
    iget-object v3, v3, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljavassist/NotFoundException;
    if-nez v1, :cond_0

    .line 327
    move-object v1, v0

    goto :goto_1

    .end local v0    # "e":Ljavassist/NotFoundException;
    :cond_1
    move-object v4, v2

    .line 339
    :goto_2
    return-object v4

    .line 336
    :cond_2
    if-eqz v1, :cond_3

    .line 337
    throw v1

    .line 339
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public declared-synchronized removeClassPath(Ljavassist/ClassPath;)V
    .locals 2
    .param p1, "cp"    # Ljavassist/ClassPath;

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;

    .line 222
    .local v0, "list":Ljavassist/ClassPathList;
    if-eqz v0, :cond_0

    .line 223
    iget-object v1, v0, Ljavassist/ClassPathList;->path:Ljavassist/ClassPath;

    if-ne v1, p1, :cond_1

    .line 224
    iget-object v1, v0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    iput-object v1, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;

    .line 233
    :cond_0
    invoke-interface {p1}, Ljavassist/ClassPath;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 226
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, v0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, v0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    iget-object v1, v1, Ljavassist/ClassPathList;->path:Ljavassist/ClassPath;

    if-ne v1, p1, :cond_2

    .line 228
    iget-object v1, v0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    iget-object v1, v1, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    iput-object v1, v0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 221
    .end local v0    # "list":Ljavassist/ClassPathList;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 230
    .restart local v0    # "list":Ljavassist/ClassPathList;
    :cond_2
    :try_start_2
    iget-object v0, v0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 188
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v2, "[class path: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    iget-object v1, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;

    .line 190
    .local v1, "list":Ljavassist/ClassPathList;
    :goto_0
    if-eqz v1, :cond_0

    .line 191
    iget-object v2, v1, Ljavassist/ClassPathList;->path:Ljavassist/ClassPath;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    sget-char v2, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 193
    iget-object v1, v1, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    goto :goto_0

    .line 196
    :cond_0
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method writeClassfile(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;,
            Ljava/io/IOException;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Ljavassist/ClassPoolTail;->openClassfile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 277
    .local v0, "fin":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 278
    new-instance v1, Ljavassist/NotFoundException;

    invoke-direct {v1, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :cond_0
    :try_start_0
    invoke-static {v0, p2}, Ljavassist/ClassPoolTail;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 286
    return-void

    .line 284
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method
