.class Lcom/jirbo/adcolony/w;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field a:Ljava/io/InputStream;

.field b:[B

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 8
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jirbo/adcolony/w;->b:[B

    .line 19
    sget v0, Lcom/jirbo/adcolony/a;->n:I

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    iput v0, p0, Lcom/jirbo/adcolony/w;->h:I

    iput v0, p0, Lcom/jirbo/adcolony/w;->g:I

    .line 21
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/jirbo/adcolony/w;->c:I

    .line 22
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/w;->a:Ljava/io/InputStream;

    .line 23
    return-void
.end method


# virtual methods
.method a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 93
    iput v1, p0, Lcom/jirbo/adcolony/w;->e:I

    .line 94
    :goto_0
    iget v0, p0, Lcom/jirbo/adcolony/w;->e:I

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/jirbo/adcolony/w;->a:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/jirbo/adcolony/w;->b:[B

    const/16 v3, 0x400

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/w;->e:I

    goto :goto_0

    :cond_0
    move v0, v1

    .line 99
    :goto_1
    iget v2, p0, Lcom/jirbo/adcolony/w;->e:I

    if-ge v0, v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/jirbo/adcolony/w;->b:[B

    iget-object v3, p0, Lcom/jirbo/adcolony/w;->b:[B

    aget-byte v3, v3, v0

    iget v4, p0, Lcom/jirbo/adcolony/w;->g:I

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 102
    iget v2, p0, Lcom/jirbo/adcolony/w;->g:I

    iget v3, p0, Lcom/jirbo/adcolony/w;->h:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jirbo/adcolony/w;->g:I

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :cond_1
    iput v1, p0, Lcom/jirbo/adcolony/w;->f:I

    .line 106
    return-void
.end method

.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    iget v0, p0, Lcom/jirbo/adcolony/w;->e:I

    iget v1, p0, Lcom/jirbo/adcolony/w;->f:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/jirbo/adcolony/w;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jirbo/adcolony/w;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 33
    return-void
.end method

.method public mark(I)V
    .locals 0
    .param p1, "read_limit"    # I

    .prologue
    .line 37
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget v0, p0, Lcom/jirbo/adcolony/w;->d:I

    iget v1, p0, Lcom/jirbo/adcolony/w;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    .line 51
    :goto_0
    return v0

    .line 48
    :cond_0
    iget v0, p0, Lcom/jirbo/adcolony/w;->f:I

    iget v1, p0, Lcom/jirbo/adcolony/w;->e:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/jirbo/adcolony/w;->a()V

    .line 50
    :cond_1
    iget v0, p0, Lcom/jirbo/adcolony/w;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jirbo/adcolony/w;->d:I

    .line 51
    iget-object v0, p0, Lcom/jirbo/adcolony/w;->b:[B

    iget v1, p0, Lcom/jirbo/adcolony/w;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jirbo/adcolony/w;->f:I

    aget-byte v0, v0, v1

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jirbo/adcolony/w;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 9
    .param p1, "array"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 61
    iget v2, p0, Lcom/jirbo/adcolony/w;->d:I

    iget v3, p0, Lcom/jirbo/adcolony/w;->c:I

    if-ne v2, v3, :cond_0

    const/4 v2, -0x1

    .line 78
    :goto_0
    return v2

    .line 63
    :cond_0
    iget v2, p0, Lcom/jirbo/adcolony/w;->c:I

    iget v3, p0, Lcom/jirbo/adcolony/w;->d:I

    sub-int v0, v2, v3

    .line 64
    if-le p3, v0, :cond_1

    .end local p3    # "count":I
    .local v0, "count":I
    move p3, v0

    .end local v0    # "count":I
    .restart local p3    # "count":I
    :cond_1
    move v3, v5

    .line 67
    :goto_1
    if-lez p3, :cond_5

    .line 69
    iget v2, p0, Lcom/jirbo/adcolony/w;->f:I

    iget v4, p0, Lcom/jirbo/adcolony/w;->e:I

    if-ne v2, v4, :cond_2

    invoke-virtual {p0}, Lcom/jirbo/adcolony/w;->a()V

    .line 71
    :cond_2
    iget v2, p0, Lcom/jirbo/adcolony/w;->e:I

    if-ge p3, v2, :cond_3

    move v2, p3

    :goto_2
    move v4, v5

    move v1, p2

    .line 72
    .end local p2    # "offset":I
    .local v1, "offset":I
    :goto_3
    if-ge v4, v2, :cond_4

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    iget-object v6, p0, Lcom/jirbo/adcolony/w;->b:[B

    iget v7, p0, Lcom/jirbo/adcolony/w;->f:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/jirbo/adcolony/w;->f:I

    aget-byte v6, v6, v7

    aput-byte v6, p1, v1

    add-int/lit8 v4, v4, 0x1

    move v1, p2

    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_3

    .line 71
    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    :cond_3
    iget v2, p0, Lcom/jirbo/adcolony/w;->e:I

    goto :goto_2

    .line 73
    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    :cond_4
    sub-int/2addr p3, v2

    .line 74
    add-int/2addr v3, v2

    .line 75
    iget v4, p0, Lcom/jirbo/adcolony/w;->d:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/jirbo/adcolony/w;->d:I

    move p2, v1

    .line 76
    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_1

    :cond_5
    move v2, v3

    .line 78
    goto :goto_0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ADCStreamReader does not support reset()."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 2
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ADCStreamReader does not support skip()."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
