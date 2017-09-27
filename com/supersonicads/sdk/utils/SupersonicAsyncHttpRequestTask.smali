.class public Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;
.super Landroid/os/AsyncTask;
.source "SupersonicAsyncHttpRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 15
    const/4 v2, 0x0

    .line 16
    .local v2, "url":Ljava/net/URL;
    const/4 v4, 0x0

    .line 19
    .local v4, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .end local v2    # "url":Ljava/net/URL;
    .local v3, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 21
    const/16 v5, 0xbb8

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 22
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    if-eqz v4, :cond_2

    .line 29
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v2, v3

    .line 33
    .end local v3    # "url":Ljava/net/URL;
    .restart local v2    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    .line 24
    :catch_0
    move-exception v1

    .line 25
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    if-eqz v4, :cond_0

    .line 29
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 28
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v4, :cond_1

    .line 29
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v5

    .line 28
    .end local v2    # "url":Ljava/net/URL;
    .restart local v3    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "url":Ljava/net/URL;
    .restart local v2    # "url":Ljava/net/URL;
    goto :goto_2

    .line 24
    .end local v2    # "url":Ljava/net/URL;
    .restart local v3    # "url":Ljava/net/URL;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "url":Ljava/net/URL;
    .restart local v2    # "url":Ljava/net/URL;
    goto :goto_1

    .end local v2    # "url":Ljava/net/URL;
    .restart local v3    # "url":Ljava/net/URL;
    :cond_2
    move-object v2, v3

    .end local v3    # "url":Ljava/net/URL;
    .restart local v2    # "url":Ljava/net/URL;
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 10
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
