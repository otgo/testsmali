.class public Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonicads/sdk/precache/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileWorkerThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mConnectionRetries:J

.field private mDirectory:Ljava/lang/String;

.field private mFile:Ljava/lang/String;

.field private mFolderName:Ljava/lang/String;

.field private mLink:Ljava/lang/String;

.field final synthetic this$0:Lcom/supersonicads/sdk/precache/DownloadManager;


# direct methods
.method public constructor <init>(Lcom/supersonicads/sdk/precache/DownloadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p2, "link"    # Ljava/lang/String;
    .param p3, "directory"    # Ljava/lang/String;
    .param p4, "file"    # Ljava/lang/String;
    .param p5, "connectionRetries"    # J
    .param p7, "folderName"    # Ljava/lang/String;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->this$0:Lcom/supersonicads/sdk/precache/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p2, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->mLink:Ljava/lang/String;

    .line 282
    iput-object p3, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->mDirectory:Ljava/lang/String;

    .line 283
    iput-object p4, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->mFile:Ljava/lang/String;

    .line 284
    iput-wide p5, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    .line 285
    iput-object p7, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->mFolderName:Ljava/lang/String;

    .line 286
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    const/4 v7, 0x0

    .line 293
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-wide v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 295
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    .line 299
    :cond_0
    const/4 v5, 0x0

    .local v5, "tryIndex":I
    :goto_0
    int-to-long v0, v5

    iget-wide v2, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 301
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .restart local v7    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->this$0:Lcom/supersonicads/sdk/precache/DownloadManager;

    iget-object v1, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->mLink:Ljava/lang/String;

    iget-object v2, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->mDirectory:Ljava/lang/String;

    iget-object v3, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->mFile:Ljava/lang/String;

    iget-object v4, p0, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;->mFolderName:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/supersonicads/sdk/precache/DownloadManager;->downloadContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    .line 305
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 307
    .local v6, "responseCode":I
    const/16 v0, 0x3f0

    if-eq v6, v0, :cond_1

    const/16 v0, 0x3f1

    if-eq v6, v0, :cond_1

    move-object v8, v7

    .line 313
    .end local v6    # "responseCode":I
    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_1
    return-object v8

    .line 299
    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v6    # "responseCode":I
    .restart local v7    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v6    # "responseCode":I
    :cond_2
    move-object v8, v7

    .line 313
    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v8    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_1
.end method
