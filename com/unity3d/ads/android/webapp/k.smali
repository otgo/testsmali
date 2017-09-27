.class final Lcom/unity3d/ads/android/webapp/k;
.super Landroid/os/AsyncTask;
.source "UnityAdsWebData.java"


# instance fields
.field private a:Ljava/net/URL;

.field private b:Ljava/net/HttpURLConnection;

.field private c:I

.field private d:Ljava/io/InputStream;

.field private e:Ljava/io/BufferedInputStream;

.field private f:Ljava/lang/String;

.field private g:Lcom/unity3d/ads/android/webapp/j;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/Boolean;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/j;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 900
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 884
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->a:Ljava/net/URL;

    .line 885
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->b:Ljava/net/HttpURLConnection;

    .line 886
    iput v2, p0, Lcom/unity3d/ads/android/webapp/k;->c:I

    .line 887
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->d:Ljava/io/InputStream;

    .line 888
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->e:Ljava/io/BufferedInputStream;

    .line 889
    const-string v0, ""

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->f:Ljava/lang/String;

    .line 890
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->g:Lcom/unity3d/ads/android/webapp/j;

    .line 891
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->h:Ljava/lang/String;

    .line 892
    iput v2, p0, Lcom/unity3d/ads/android/webapp/k;->i:I

    .line 893
    const-string v0, "GET"

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->j:Ljava/lang/String;

    .line 894
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->k:Ljava/lang/String;

    .line 895
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->l:Ljava/lang/String;

    .line 896
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->m:Ljava/lang/Boolean;

    .line 897
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->n:Ljava/lang/String;

    .line 902
    :try_start_0
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/k;->h:Ljava/lang/String;

    .line 903
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/k;->l:Ljava/lang/String;

    .line 905
    const-string v0, "GET"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->h:Ljava/lang/String;

    .line 909
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->a:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    :goto_0
    iput-object p2, p0, Lcom/unity3d/ads/android/webapp/k;->k:Ljava/lang/String;

    .line 916
    iput-object p3, p0, Lcom/unity3d/ads/android/webapp/k;->j:Ljava/lang/String;

    .line 917
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->d()I

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Total urlLoaders created: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 919
    iput-object p4, p0, Lcom/unity3d/ads/android/webapp/k;->g:Lcom/unity3d/ads/android/webapp/j;

    .line 920
    iput p5, p0, Lcom/unity3d/ads/android/webapp/k;->i:I

    .line 921
    return-void

    .line 911
    :catch_0
    move-exception v0

    .line 912
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problems with url! Error-message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 978
    new-instance v0, Lcom/unity3d/ads/android/webapp/i;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/webapp/i;-><init>(Lcom/unity3d/ads/android/webapp/k;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 979
    return-void
.end method

.method private varargs b()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 984
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 985
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->b:Ljava/net/HttpURLConnection;

    .line 991
    :goto_0
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->b:Ljava/net/HttpURLConnection;

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 992
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->b:Ljava/net/HttpURLConnection;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 993
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->b:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 994
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->n:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 995
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->b:Ljava/net/HttpURLConnection;

    const-string v1, "Content-type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    :goto_1
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->b:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1001
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->j:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->b:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_3

    .line 1011
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->j:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1013
    :try_start_1
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/unity3d/ads/android/webapp/k;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 1014
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->n:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 1015
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1019
    :goto_2
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1029
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 1030
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->d:Ljava/io/InputStream;

    .line 1031
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->d:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->e:Ljava/io/BufferedInputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1039
    const-wide/16 v0, 0x0

    .line 1040
    iget-object v2, p0, Lcom/unity3d/ads/android/webapp/k;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    iput v2, p0, Lcom/unity3d/ads/android/webapp/k;->c:I

    .line 1043
    :try_start_3
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->f()I

    .line 1044
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Total urlLoaders that have started running: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 1045
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reading data from: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/unity3d/ads/android/webapp/k;->a:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Content-length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/unity3d/ads/android/webapp/k;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 1047
    new-instance v2, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v3, 0x5000

    invoke-direct {v2, v3}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 1050
    :cond_2
    iget-object v3, p0, Lcom/unity3d/ads/android/webapp/k;->e:Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    .line 1051
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 1052
    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V

    .line 1054
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/k;->isCancelled()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v3

    if-eqz v3, :cond_2

    .line 1068
    :cond_3
    :goto_3
    return-object v6

    .line 988
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->b:Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 1004
    :catch_0
    move-exception v0

    .line 1005
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problems opening connection: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 1006
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/k;->a()V

    goto :goto_3

    .line 997
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->b:Ljava/net/HttpURLConnection;

    const-string v1, "Content-type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 1017
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 1021
    :catch_1
    move-exception v0

    .line 1022
    const-string v1, "Problems writing post-data: %s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 1023
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/k;->a()V

    goto :goto_3

    .line 1033
    :catch_2
    move-exception v0

    .line 1034
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problems opening stream: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 1035
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/k;->a()V

    goto :goto_3

    .line 1058
    :cond_7
    :try_start_7
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lcom/unity3d/ads/android/webapp/k;->f:Ljava/lang/String;

    .line 1059
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Read total of: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_3

    .line 1061
    :catch_3
    move-exception v0

    .line 1062
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problems loading url! Error-message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 1063
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/k;->a()V

    goto/16 :goto_3
.end method

.method private c()V
    .locals 3

    .prologue
    .line 1096
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1098
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->d:Ljava/io/InputStream;

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->e:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_1

    .line 1102
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->e:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 1103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->e:Ljava/io/BufferedInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    :cond_1
    :goto_0
    return-void

    .line 1106
    :catch_0
    move-exception v0

    .line 1107
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problems closing streams: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 965
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->a:Ljava/net/URL;

    .line 966
    iput v2, p0, Lcom/unity3d/ads/android/webapp/k;->c:I

    .line 967
    const-string v0, ""

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->f:Ljava/lang/String;

    .line 968
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->g:Lcom/unity3d/ads/android/webapp/j;

    .line 969
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->h:Ljava/lang/String;

    .line 970
    iput v2, p0, Lcom/unity3d/ads/android/webapp/k;->i:I

    .line 971
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->j:Ljava/lang/String;

    .line 972
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->k:Ljava/lang/String;

    .line 973
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->l:Ljava/lang/String;

    .line 974
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->n:Ljava/lang/String;

    .line 975
    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 883
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/k;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getHTTPMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final getQueryParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestType()Lcom/unity3d/ads/android/webapp/j;
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->g:Lcom/unity3d/ads/android/webapp/j;

    return-object v0
.end method

.method public final getRetries()I
    .locals 1

    .prologue
    .line 924
    iget v0, p0, Lcom/unity3d/ads/android/webapp/k;->i:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final onCancelled()V
    .locals 1

    .prologue
    .line 1073
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->m:Ljava/lang/Boolean;

    .line 1074
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/k;->c()V

    .line 1075
    invoke-static {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->b(Lcom/unity3d/ads/android/webapp/k;)V

    .line 1076
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 883
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/k;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->m:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/k;->c()V

    invoke-static {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->c(Lcom/unity3d/ads/android/webapp/k;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected final bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 883
    check-cast p1, [Ljava/lang/Integer;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method public final setPostBody(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 952
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->h:Ljava/lang/String;

    .line 955
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->a:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/k;->n:Ljava/lang/String;

    .line 962
    return-void

    .line 956
    :catch_0
    move-exception v0

    .line 957
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error when creating adding query parameters to URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
