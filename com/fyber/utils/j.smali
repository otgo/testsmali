.class public final Lcom/fyber/utils/j;
.super Lcom/fyber/utils/a;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/utils/a",
        "<",
        "Lcom/fyber/utils/j;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/fyber/utils/a;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/fyber/utils/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lcom/fyber/utils/j;

    invoke-direct {v0, p0}, Lcom/fyber/utils/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Ljava/net/HttpURLConnection;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    .line 1036
    invoke-virtual {p0, p1}, Lcom/fyber/utils/j;->c(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    .line 1038
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1039
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 1040
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 1041
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1043
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1045
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 18
    return-object v0
.end method
