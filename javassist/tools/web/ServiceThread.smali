.class Ljavassist/tools/web/ServiceThread;
.super Ljava/lang/Thread;
.source "Webserver.java"


# instance fields
.field sock:Ljava/net/Socket;

.field web:Ljavassist/tools/web/Webserver;


# direct methods
.method public constructor <init>(Ljavassist/tools/web/Webserver;Ljava/net/Socket;)V
    .locals 0
    .param p1, "w"    # Ljavassist/tools/web/Webserver;
    .param p2, "s"    # Ljava/net/Socket;

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 397
    iput-object p1, p0, Ljavassist/tools/web/ServiceThread;->web:Ljavassist/tools/web/Webserver;

    .line 398
    iput-object p2, p0, Ljavassist/tools/web/ServiceThread;->sock:Ljava/net/Socket;

    .line 399
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 403
    :try_start_0
    iget-object v0, p0, Ljavassist/tools/web/ServiceThread;->web:Ljavassist/tools/web/Webserver;

    iget-object v1, p0, Ljavassist/tools/web/ServiceThread;->sock:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljavassist/tools/web/Webserver;->process(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v0

    goto :goto_0
.end method
