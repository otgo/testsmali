.class Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonicads/sdk/precache/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleFileWorkerThread"
.end annotation


# instance fields
.field private mConnectionRetries:J

.field private mFile:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFolderName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/supersonicads/sdk/precache/DownloadManager;


# direct methods
.method public constructor <init>(Lcom/supersonicads/sdk/precache/DownloadManager;Lcom/supersonicads/sdk/data/SSAFile;)V
    .locals 2
    .param p2, "file"    # Lcom/supersonicads/sdk/data/SSAFile;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->this$0:Lcom/supersonicads/sdk/precache/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-virtual {p2}, Lcom/supersonicads/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFile:Ljava/lang/String;

    .line 158
    invoke-virtual {p2}, Lcom/supersonicads/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mPath:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFileName:Ljava/lang/String;

    .line 161
    invoke-static {p1}, Lcom/supersonicads/sdk/precache/DownloadManager;->access$000(Lcom/supersonicads/sdk/precache/DownloadManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->makeDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFolderName:Ljava/lang/String;

    .line 163
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getConnectionRetries()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mConnectionRetries:J

    .line 164
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 169
    new-instance v17, Lcom/supersonicads/sdk/data/SSAFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFileName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mPath:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4}, Lcom/supersonicads/sdk/data/SSAFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .local v17, "ssaFile":Lcom/supersonicads/sdk/data/SSAFile;
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 172
    .local v14, "msg":Landroid/os/Message;
    move-object/from16 v0, v17

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFolderName:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 176
    const/16 v3, 0x3f9

    iput v3, v14, Landroid/os/Message;->what:I

    .line 177
    const-string v3, "unable_to_create_folder"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/supersonicads/sdk/data/SSAFile;->setErrMsg(Ljava/lang/String;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->this$0:Lcom/supersonicads/sdk/precache/DownloadManager;

    invoke-static {v3}, Lcom/supersonicads/sdk/precache/DownloadManager;->access$100(Lcom/supersonicads/sdk/precache/DownloadManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 268
    :goto_0
    return-void

    .line 182
    :cond_0
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v13

    .line 183
    .local v13, "fileThreadPool":Ljava/util/concurrent/ExecutorService;
    new-instance v15, Ljava/util/concurrent/ExecutorCompletionService;

    invoke-direct {v15, v13}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 185
    .local v15, "pool":Ljava/util/concurrent/CompletionService;, "Ljava/util/concurrent/CompletionService<Ljava/util/List<Ljava/lang/Object;>;>;"
    new-instance v3, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->this$0:Lcom/supersonicads/sdk/precache/DownloadManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFile:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFolderName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFileName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mConnectionRetries:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mPath:Ljava/lang/String;

    invoke-direct/range {v3 .. v10}, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;-><init>(Lcom/supersonicads/sdk/precache/DownloadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v15, v3}, Ljava/util/concurrent/CompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 193
    const/4 v2, 0x0

    .line 197
    .local v2, "code":I
    :try_start_0
    invoke-interface {v15}, Ljava/util/concurrent/CompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    .line 199
    .local v16, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 200
    .local v18, "url":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 210
    .end local v16    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v18    # "url":Ljava/lang/String;
    :goto_1
    invoke-interface {v13}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 213
    const-wide v4, 0x7fffffffffffffffL

    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v13, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 218
    :goto_2
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 256
    :sswitch_0
    const-string v12, "http ok"

    .line 258
    .local v12, "errMsg":Ljava/lang/String;
    const/16 v3, 0x3f8

    iput v3, v14, Landroid/os/Message;->what:I

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->this$0:Lcom/supersonicads/sdk/precache/DownloadManager;

    invoke-static {v3}, Lcom/supersonicads/sdk/precache/DownloadManager;->access$100(Lcom/supersonicads/sdk/precache/DownloadManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 202
    .end local v12    # "errMsg":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 203
    .local v11, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 206
    .end local v11    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    throw v3

    .line 204
    :catch_1
    move-exception v11

    .line 205
    .local v11, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 221
    .end local v11    # "e":Ljava/util/concurrent/ExecutionException;
    :sswitch_1
    const-string v12, "malformed url exception"

    .line 224
    :sswitch_2
    const-string v12, "http not found"

    .line 226
    :sswitch_3
    const-string v12, "http empty response"

    .line 228
    :sswitch_4
    const-string v12, "uri syntax exception"

    .line 230
    :sswitch_5
    const-string v12, "http error code"

    .line 232
    :sswitch_6
    const-string v12, "file not found exception"

    .line 234
    .restart local v12    # "errMsg":Ljava/lang/String;
    const/16 v3, 0x3f9

    iput v3, v14, Landroid/os/Message;->what:I

    .line 235
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/supersonicads/sdk/data/SSAFile;->setErrMsg(Ljava/lang/String;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->this$0:Lcom/supersonicads/sdk/precache/DownloadManager;

    invoke-static {v3}, Lcom/supersonicads/sdk/precache/DownloadManager;->access$100(Lcom/supersonicads/sdk/precache/DownloadManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 238
    invoke-interface {v13}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto/16 :goto_0

    .line 243
    .end local v12    # "errMsg":Ljava/lang/String;
    :sswitch_7
    const-string v12, "socket timeout exception"

    .line 245
    :sswitch_8
    const-string v12, "io exception"

    .line 247
    .restart local v12    # "errMsg":Ljava/lang/String;
    const/16 v3, 0x3f9

    iput v3, v14, Landroid/os/Message;->what:I

    .line 248
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/supersonicads/sdk/data/SSAFile;->setErrMsg(Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->this$0:Lcom/supersonicads/sdk/precache/DownloadManager;

    invoke-static {v3}, Lcom/supersonicads/sdk/precache/DownloadManager;->access$100(Lcom/supersonicads/sdk/precache/DownloadManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 251
    invoke-interface {v13}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto/16 :goto_0

    .line 214
    .end local v12    # "errMsg":Ljava/lang/String;
    :catch_2
    move-exception v3

    goto :goto_2

    .line 218
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x194 -> :sswitch_2
        0x3ec -> :sswitch_1
        0x3ed -> :sswitch_2
        0x3ee -> :sswitch_3
        0x3f0 -> :sswitch_7
        0x3f1 -> :sswitch_8
        0x3f2 -> :sswitch_4
        0x3f3 -> :sswitch_5
        0x3fa -> :sswitch_6
    .end sparse-switch
.end method
