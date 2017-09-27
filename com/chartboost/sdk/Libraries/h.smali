.class public Lcom/chartboost/sdk/Libraries/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Lcom/chartboost/sdk/Libraries/h;


# instance fields
.field public a:Landroid/content/Context;

.field private b:Ljava/io/File;

.field private c:Ljava/io/File;

.field private d:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/chartboost/sdk/b;->y()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 39
    const-string v0, "CBFileCache"

    const-string v1, "RunTime error: Cannot find context object"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    goto :goto_0

    .line 46
    :cond_1
    const-string v0, "CBCommonCacheFolder"

    invoke-direct {p0, v0, p2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)Ljava/io/File;
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    .line 77
    :cond_0
    :goto_0
    return-object v0

    .line 62
    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/io/File;

    const-string v2, "__chartboost"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->c:Ljava/io/File;

    .line 74
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 68
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/io/File;

    const-string v2, "__chartboost"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    goto :goto_1
.end method

.method public static declared-synchronized c()Lcom/chartboost/sdk/Libraries/h;
    .locals 4

    .prologue
    .line 356
    const-class v1, Lcom/chartboost/sdk/Libraries/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/Libraries/h;->e:Lcom/chartboost/sdk/Libraries/h;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    const-string v2, "CBVideoCompletion"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/h;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/h;->e:Lcom/chartboost/sdk/Libraries/h;

    .line 359
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Libraries/h;->e:Lcom/chartboost/sdk/Libraries/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 314
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const/4 v0, 0x1

    .line 318
    :goto_0
    return v0

    .line 317
    :cond_0
    const-string v0, "CBFileCache"

    const-string v1, "External Storage unavailable"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/io/File;)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 4

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const-string v0, "CBFileCache"

    const-string v1, "External Storage unavailable cannot read from the disk"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :goto_0
    monitor-exit p0

    return-object v0

    .line 199
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-nez v0, :cond_1

    .line 200
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 202
    :cond_1
    const/4 v1, 0x0

    .line 204
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/chartboost/sdk/impl/cc;->b(Ljava/io/File;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    :goto_1
    :try_start_3
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e$a;->j(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    const-string v2, "CBFileCache"

    const-string v3, "Error loading cache from disk"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_1

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 2

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    const-string v0, "CBFileCache"

    const-string v1, "External Storage unavailable cannot read from the disk"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :goto_0
    monitor-exit p0

    return-object v0

    .line 179
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 180
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    goto :goto_0

    .line 182
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 184
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    goto :goto_0

    .line 186
    :cond_3
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/io/File;)Lcom/chartboost/sdk/Libraries/e$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/io/File;Lcom/chartboost/sdk/Libraries/e$a;)Ljava/io/File;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    const-string v1, "CBFileCache"

    const-string v2, "External Storage unavailable cannot write to the disk"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 110
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 113
    if-nez p1, :cond_2

    .line 114
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :goto_1
    :try_start_2
    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/e$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/cc;->a(Ljava/io/File;[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    :try_start_3
    const-string v2, "CBFileCache"

    const-string v3, "IOException attempting to write cache to disk"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v0, p1

    goto :goto_1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)Ljava/io/File;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    const-string v1, "CBFileCache"

    const-string v2, "External Storage unavailable cannot write to the disk"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 91
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 93
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/io/File;Lcom/chartboost/sdk/Libraries/e$a;)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/io/File;[B)V
    .locals 4

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    const-string v0, "CBFileCache"

    const-string v1, "External Storage unavailable cannot write to the disk"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 155
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 158
    if-nez p1, :cond_2

    .line 159
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :cond_2
    :try_start_2
    invoke-static {p1, p2}, Lcom/chartboost/sdk/impl/cc;->a(Ljava/io/File;[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    :try_start_3
    const-string v1, "CBFileCache"

    const-string v2, "IOException attempting to write cache to disk"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;[B)V
    .locals 2

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    const-string v0, "CBFileCache"

    const-string v1, "External Storage unavailable cannot write to the disk"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 135
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 138
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/io/File;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 251
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 252
    const-string v1, "CBFileCache"

    const-string v2, "External Storage unavailable cannot read from the disk"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 255
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 283
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 284
    const-string v0, "CBFileCache"

    const-string v1, "External Storage unavailable cannot delete from the disk"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 287
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 291
    :try_start_2
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 292
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 293
    if-eqz v2, :cond_2

    .line 294
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 295
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 298
    :cond_2
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->c:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 300
    if-eqz v1, :cond_0

    .line 301
    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 302
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 305
    :catch_0
    move-exception v0

    .line 306
    :try_start_3
    const-string v0, "CBFileCache"

    const-string v1, "Error while clearing the file cache"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Libraries/h;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :cond_0
    monitor-exit p0

    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/io/File;)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 216
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 217
    const-string v1, "CBFileCache"

    const-string v2, "External Storage unavailable cannot read from the disk"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 220
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 225
    :try_start_2
    invoke-static {p1}, Lcom/chartboost/sdk/impl/cc;->b(Ljava/io/File;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v1

    .line 227
    :try_start_3
    const-string v2, "CBFileCache"

    const-string v3, "Error loading cache from disk"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 266
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :cond_0
    monitor-exit p0

    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 324
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v0

    .line 326
    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 328
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 334
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 335
    const-string v1, "CBFileCache"

    const-string v2, "External Storage unavailable cannot read from the disk"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    :cond_0
    :goto_0
    return-object v0

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 340
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
