.class final Lcom/fyber/utils/cookies/b$a;
.super Ljava/io/ObjectInputStream;
.source "PersistentHttpCookieStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/utils/cookies/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/utils/cookies/b;


# direct methods
.method public constructor <init>(Lcom/fyber/utils/cookies/b;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    iput-object p1, p0, Lcom/fyber/utils/cookies/b$a;->a:Lcom/fyber/utils/cookies/b;

    .line 308
    invoke-direct {p0, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 309
    return-void
.end method


# virtual methods
.method protected final readClassDescriptor()Ljava/io/ObjectStreamClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-super {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;

    .line 314
    const-class v0, Lcom/fyber/utils/cookies/c;

    invoke-static {v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    return-object v0
.end method
