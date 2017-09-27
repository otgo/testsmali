.class public Lcom/chartboost/sdk/impl/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/bd$c;,
        Lcom/chartboost/sdk/impl/bd$b;,
        Lcom/chartboost/sdk/impl/bd$a;
    }
.end annotation


# static fields
.field public static a:Lcom/chartboost/sdk/impl/bd;

.field private static final b:Ljava/lang/String;

.field private static c:Lcom/chartboost/sdk/Libraries/h;

.field private static d:Lcom/chartboost/sdk/impl/m;

.field private static e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/chartboost/sdk/impl/bd$b;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lcom/chartboost/sdk/impl/bd$a;

.field private static g:Lcom/chartboost/sdk/impl/bd$a;

.field private static h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static j:Z

.field private static k:Z

.field private static l:Ljava/util/Observer;

.field private static m:Lcom/chartboost/sdk/impl/az$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/chartboost/sdk/impl/bd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/bd;->b:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/bd;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/bd;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 102
    const/4 v0, 0x1

    sput-boolean v0, Lcom/chartboost/sdk/impl/bd;->j:Z

    .line 104
    const/4 v0, 0x0

    sput-boolean v0, Lcom/chartboost/sdk/impl/bd;->k:Z

    .line 108
    new-instance v0, Lcom/chartboost/sdk/impl/bd$1;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/bd$1;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/bd;->l:Ljava/util/Observer;

    .line 209
    new-instance v0, Lcom/chartboost/sdk/impl/bd$2;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/bd$2;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/bd;->m:Lcom/chartboost/sdk/impl/az$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/bd$a;)Lcom/chartboost/sdk/impl/bd$a;
    .locals 0

    .prologue
    .line 50
    sput-object p0, Lcom/chartboost/sdk/impl/bd;->f:Lcom/chartboost/sdk/impl/bd$a;

    return-object p0
.end method

.method public static declared-synchronized a()Lcom/chartboost/sdk/impl/bd;
    .locals 2

    .prologue
    .line 127
    const-class v1, Lcom/chartboost/sdk/impl/bd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->a:Lcom/chartboost/sdk/impl/bd;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/chartboost/sdk/impl/bd;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/bd;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/bd;->a:Lcom/chartboost/sdk/impl/bd;

    .line 129
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->k()V

    .line 131
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->a:Lcom/chartboost/sdk/impl/bd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/h;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 390
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized a(Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 234
    const-class v1, Lcom/chartboost/sdk/impl/bd;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->e()V

    .line 236
    invoke-static {}, Lcom/chartboost/sdk/b;->x()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 266
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 239
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 241
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 242
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->c()[Ljava/lang/String;

    move-result-object v4

    .line 243
    :goto_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->o()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 244
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->c(I)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v5

    .line 245
    const-string v6, "id"

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "video"

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 243
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 247
    :cond_3
    const-string v6, "id"

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 248
    const-string v7, "video"

    invoke-virtual {v5, v7}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 249
    sget-object v7, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v7, v6}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    .line 250
    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v7, Lcom/chartboost/sdk/impl/bd;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 253
    :cond_4
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 255
    :cond_5
    :try_start_2
    sget-boolean v0, Lcom/chartboost/sdk/impl/bd;->j:Z

    if-eqz v0, :cond_6

    .line 256
    const/4 v0, 0x0

    sput-boolean v0, Lcom/chartboost/sdk/impl/bd;->j:Z

    .line 257
    :cond_6
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->b:Ljava/lang/String;

    const-string v5, "Synchronizing videos with the list got from the server"

    invoke-static {v0, v5}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-static {v2, v4}, Lcom/chartboost/sdk/impl/bd;->a(Ljava/util/HashMap;[Ljava/lang/String;)V

    .line 261
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    invoke-static {v3}, Lcom/chartboost/sdk/impl/bd;->a(Ljava/util/HashMap;)V

    .line 263
    sget-object v0, Lcom/chartboost/sdk/impl/bd$a;->b:Lcom/chartboost/sdk/impl/bd$a;

    sput-object v0, Lcom/chartboost/sdk/impl/bd;->g:Lcom/chartboost/sdk/impl/bd$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private static declared-synchronized a(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    const-class v2, Lcom/chartboost/sdk/impl/bd;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 293
    new-instance v4, Lcom/chartboost/sdk/impl/bd$c;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/chartboost/sdk/impl/bd$c;-><init>(Lcom/chartboost/sdk/impl/bd$1;)V

    .line 294
    new-instance v5, Lcom/chartboost/sdk/impl/bd$b;

    const/4 v6, 0x0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v6, v1, v4, v0}, Lcom/chartboost/sdk/impl/bd$b;-><init>(ILjava/lang/String;Lcom/chartboost/sdk/impl/bd$c;Ljava/lang/String;)V

    .line 295
    new-instance v1, Lcom/chartboost/sdk/impl/d;

    const/16 v6, 0x7530

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v1, v6, v7, v8}, Lcom/chartboost/sdk/impl/d;-><init>(IIF)V

    invoke-virtual {v5, v1}, Lcom/chartboost/sdk/impl/bd$b;->a(Lcom/chartboost/sdk/impl/p;)Lcom/chartboost/sdk/impl/l;

    .line 298
    invoke-static {v4, v5}, Lcom/chartboost/sdk/impl/bd$c;->a(Lcom/chartboost/sdk/impl/bd$c;Lcom/chartboost/sdk/impl/bd$b;)Lcom/chartboost/sdk/impl/bd$b;

    .line 299
    sget-object v1, Lcom/chartboost/sdk/impl/bd;->l:Ljava/util/Observer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/chartboost/sdk/impl/bd$b;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/impl/l;

    .line 300
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sget-object v1, Lcom/chartboost/sdk/impl/bd;->d:Lcom/chartboost/sdk/impl/m;

    invoke-virtual {v1, v5}, Lcom/chartboost/sdk/impl/m;->a(Lcom/chartboost/sdk/impl/l;)Lcom/chartboost/sdk/impl/l;

    .line 302
    sget-object v1, Lcom/chartboost/sdk/impl/bd;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Downloading video:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 304
    :cond_0
    monitor-exit v2

    return-void
.end method

.method private static declared-synchronized a(Ljava/util/HashMap;[Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 274
    const-class v1, Lcom/chartboost/sdk/impl/bd;

    monitor-enter v1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 275
    :try_start_0
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 276
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 277
    sget-object v4, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v4, v3}, Lcom/chartboost/sdk/Libraries/h;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 278
    if-eqz v4, :cond_0

    const-string v5, ".nomedia"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 279
    sget-object v3, Lcom/chartboost/sdk/impl/bd;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting video: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    sget-object v3, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v3, v4}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_1
    monitor-exit v1

    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/bd$a;)Lcom/chartboost/sdk/impl/bd$a;
    .locals 0

    .prologue
    .line 50
    sput-object p0, Lcom/chartboost/sdk/impl/bd;->g:Lcom/chartboost/sdk/impl/bd$a;

    return-object p0
.end method

.method public static b(Lcom/chartboost/sdk/Libraries/e$a;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 394
    if-nez p0, :cond_0

    move-object v0, v1

    .line 413
    :goto_0
    return-object v0

    .line 397
    :cond_0
    const-string v0, "assets"

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    .line 399
    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 400
    goto :goto_0

    .line 402
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v0

    .line 404
    if-eqz v0, :cond_2

    const-string v0, "video-portrait"

    :goto_1
    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 406
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 407
    goto :goto_0

    .line 404
    :cond_2
    const-string v0, "video-landscape"

    goto :goto_1

    .line 409
    :cond_3
    const-string v2, "id"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    .line 411
    goto :goto_0

    .line 412
    :cond_4
    invoke-static {v0}, Lcom/chartboost/sdk/impl/bd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized b()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 155
    const-class v1, Lcom/chartboost/sdk/impl/bd;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/chartboost/sdk/impl/bd;->k:Z

    if-nez v2, :cond_0

    .line 156
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->k()V

    .line 159
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/b;->x()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 204
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    .line 162
    :cond_2
    :try_start_1
    sget-object v2, Lcom/chartboost/sdk/impl/bd;->b:Ljava/lang/String;

    const-string v3, "Prefetching the Video list"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    sget-object v2, Lcom/chartboost/sdk/impl/bd$a;->b:Lcom/chartboost/sdk/impl/bd$a;

    sget-object v3, Lcom/chartboost/sdk/impl/bd;->f:Lcom/chartboost/sdk/impl/bd$a;

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/chartboost/sdk/impl/bd$a;->b:Lcom/chartboost/sdk/impl/bd$a;

    sget-object v3, Lcom/chartboost/sdk/impl/bd;->g:Lcom/chartboost/sdk/impl/bd$a;

    if-eq v2, v3, :cond_1

    .line 169
    sget-object v2, Lcom/chartboost/sdk/impl/bd;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/chartboost/sdk/impl/bd;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 170
    sget-object v2, Lcom/chartboost/sdk/impl/bd;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 171
    sget-object v2, Lcom/chartboost/sdk/impl/bd;->d:Lcom/chartboost/sdk/impl/m;

    sget-object v3, Lcom/chartboost/sdk/impl/bd;->l:Ljava/util/Observer;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/Object;)V

    .line 172
    sget-object v2, Lcom/chartboost/sdk/impl/bd$a;->a:Lcom/chartboost/sdk/impl/bd$a;

    sput-object v2, Lcom/chartboost/sdk/impl/bd;->g:Lcom/chartboost/sdk/impl/bd$a;

    .line 173
    sget-object v2, Lcom/chartboost/sdk/impl/bd;->b:Ljava/lang/String;

    const-string v3, "prefetchVideo: Clearing all volley request for new start"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    :cond_3
    sget-object v2, Lcom/chartboost/sdk/impl/bd$a;->b:Lcom/chartboost/sdk/impl/bd$a;

    sput-object v2, Lcom/chartboost/sdk/impl/bd;->f:Lcom/chartboost/sdk/impl/bd$a;

    .line 180
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 181
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->c()[Ljava/lang/String;

    move-result-object v3

    .line 182
    if-eqz v3, :cond_4

    .line 183
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->c()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    .line 184
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    :cond_4
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->d()V

    .line 191
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 192
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 195
    new-instance v0, Lcom/chartboost/sdk/impl/az;

    const-string v3, "/api/video-prefetch"

    invoke-direct {v0, v3}, Lcom/chartboost/sdk/impl/az;-><init>(Ljava/lang/String;)V

    .line 196
    const-string v3, "local-videos"

    invoke-virtual {v0, v3, v2}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/chartboost/sdk/Libraries/g$k;

    const/4 v3, 0x0

    const-string v4, "status"

    sget-object v5, Lcom/chartboost/sdk/Libraries/a;->a:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "videos"

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/chartboost/sdk/Libraries/g$k;

    const/4 v6, 0x0

    const-string v7, "video"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v8

    invoke-static {v8}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "id"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v5}, Lcom/chartboost/sdk/Libraries/g;->b(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/Libraries/g$a;)V

    .line 202
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/az;->b(Z)V

    .line 203
    sget-object v2, Lcom/chartboost/sdk/impl/bd;->m:Lcom/chartboost/sdk/impl/az$c;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/impl/az$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 417
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/h;->b(Ljava/lang/String;)V

    .line 419
    :cond_0
    return-void
.end method

.method public static c(Lcom/chartboost/sdk/Libraries/e$a;)Z
    .locals 1

    .prologue
    .line 424
    invoke-static {p0}, Lcom/chartboost/sdk/impl/bd;->b(Lcom/chartboost/sdk/Libraries/e$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/Libraries/h;

    if-nez v0, :cond_0

    .line 311
    const/4 v0, 0x0

    .line 312
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->a()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized d()V
    .locals 3

    .prologue
    .line 383
    const-class v1, Lcom/chartboost/sdk/impl/bd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->d:Lcom/chartboost/sdk/impl/m;

    sget-object v2, Lcom/chartboost/sdk/impl/bd;->l:Ljava/util/Observer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    monitor-exit v1

    return-void

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic e()V
    .locals 0

    .prologue
    .line 50
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->l()V

    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Lcom/chartboost/sdk/Libraries/h;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/Libraries/h;

    return-object v0
.end method

.method static synthetic h()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic i()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic j()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static declared-synchronized k()V
    .locals 4

    .prologue
    .line 138
    const-class v1, Lcom/chartboost/sdk/impl/bd;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/chartboost/sdk/impl/bd;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 149
    :goto_0
    monitor-exit v1

    return-void

    .line 140
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/chartboost/sdk/impl/bd;->k:Z

    .line 141
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    const-string v2, "CBVideoDirectory"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/h;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/Libraries/h;

    .line 142
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/bd;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 143
    sget-object v0, Lcom/chartboost/sdk/impl/bd$a;->a:Lcom/chartboost/sdk/impl/bd$a;

    sput-object v0, Lcom/chartboost/sdk/impl/bd;->f:Lcom/chartboost/sdk/impl/bd$a;

    .line 144
    sget-object v0, Lcom/chartboost/sdk/impl/bd$a;->a:Lcom/chartboost/sdk/impl/bd$a;

    sput-object v0, Lcom/chartboost/sdk/impl/bd;->g:Lcom/chartboost/sdk/impl/bd$a;

    .line 145
    invoke-static {}, Lcom/chartboost/sdk/b;->y()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ba;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/bd;->d:Lcom/chartboost/sdk/impl/m;

    .line 148
    invoke-static {}, Lcom/chartboost/sdk/impl/ay;->a()Lcom/chartboost/sdk/impl/ay;

    move-result-object v0

    sget-object v2, Lcom/chartboost/sdk/impl/bd;->l:Ljava/util/Observer;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ay;->addObserver(Ljava/util/Observer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized l()V
    .locals 5

    .prologue
    .line 435
    const-class v2, Lcom/chartboost/sdk/impl/bd;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->b:Ljava/lang/String;

    const-string v1, "Process Request called"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->f:Lcom/chartboost/sdk/impl/bd$a;

    sget-object v1, Lcom/chartboost/sdk/impl/bd$a;->b:Lcom/chartboost/sdk/impl/bd$a;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/chartboost/sdk/impl/bd;->g:Lcom/chartboost/sdk/impl/bd$a;

    sget-object v1, Lcom/chartboost/sdk/impl/bd$a;->b:Lcom/chartboost/sdk/impl/bd$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    .line 447
    :cond_0
    monitor-exit v2

    return-void

    .line 438
    :cond_1
    :try_start_1
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->g:Lcom/chartboost/sdk/impl/bd$a;

    sget-object v1, Lcom/chartboost/sdk/impl/bd$a;->a:Lcom/chartboost/sdk/impl/bd$a;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/chartboost/sdk/impl/bd;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 440
    :cond_3
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 441
    sget-object v1, Lcom/chartboost/sdk/impl/bd$a;->b:Lcom/chartboost/sdk/impl/bd$a;

    sput-object v1, Lcom/chartboost/sdk/impl/bd;->g:Lcom/chartboost/sdk/impl/bd$a;

    .line 442
    sget-object v4, Lcom/chartboost/sdk/impl/bd;->d:Lcom/chartboost/sdk/impl/m;

    sget-object v1, Lcom/chartboost/sdk/impl/bd;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v4, v1}, Lcom/chartboost/sdk/impl/m;->a(Lcom/chartboost/sdk/impl/l;)Lcom/chartboost/sdk/impl/l;

    .line 443
    sget-object v1, Lcom/chartboost/sdk/impl/bd;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
