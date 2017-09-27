.class public final Lcom/fyber/utils/s;
.super Ljava/lang/Object;
.source "UrlBuilder.java"


# static fields
.field private static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/fyber/utils/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/fyber/credentials/a;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2007
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 2008
    const/4 v1, 0x6

    new-instance v2, Lcom/fyber/utils/g;

    invoke-direct {v2}, Lcom/fyber/utils/g;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2009
    const/4 v1, 0x3

    new-instance v2, Lcom/fyber/utils/h$e;

    invoke-direct {v2}, Lcom/fyber/utils/h$e;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2010
    const/4 v1, 0x4

    new-instance v2, Lcom/fyber/utils/h$d;

    invoke-direct {v2}, Lcom/fyber/utils/h$d;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2011
    const/4 v1, 0x5

    new-instance v2, Lcom/fyber/utils/h$c;

    invoke-direct {v2}, Lcom/fyber/utils/h$c;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2012
    const/4 v1, 0x2

    new-instance v2, Lcom/fyber/utils/h$b;

    invoke-direct {v2}, Lcom/fyber/utils/h$b;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2013
    const/4 v1, 0x1

    new-instance v2, Lcom/fyber/utils/h$a;

    invoke-direct {v2}, Lcom/fyber/utils/h$a;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2014
    const/4 v1, 0x0

    new-instance v2, Lcom/fyber/utils/o;

    invoke-direct {v2}, Lcom/fyber/utils/o;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    sput-object v0, Lcom/fyber/utils/s;->a:Landroid/util/SparseArray;

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/fyber/credentials/a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v1, p0, Lcom/fyber/utils/s;->g:Z

    .line 57
    iput-boolean v1, p0, Lcom/fyber/utils/s;->h:Z

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/utils/s;->i:Z

    .line 60
    iput-boolean v1, p0, Lcom/fyber/utils/s;->j:Z

    .line 61
    iput-boolean v1, p0, Lcom/fyber/utils/s;->k:Z

    .line 63
    iput-boolean v1, p0, Lcom/fyber/utils/s;->l:Z

    .line 66
    iput-object p1, p0, Lcom/fyber/utils/s;->b:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/fyber/utils/s;->c:Lcom/fyber/credentials/a;

    .line 68
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/fyber/credentials/a;)Lcom/fyber/utils/s;
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/fyber/utils/s;

    invoke-direct {v0, p0, p1}, Lcom/fyber/utils/s;-><init>(Ljava/lang/String;Lcom/fyber/credentials/a;)V

    return-object v0
.end method

.method private static a(Ljava/util/Map;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 198
    sget-object v0, Lcom/fyber/utils/s;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/utils/n;

    .line 199
    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v0}, Lcom/fyber/utils/n;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 202
    :cond_0
    return-void
.end method

.method private f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/fyber/utils/s;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/utils/s;->f:Ljava/util/Map;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/fyber/utils/s;->f:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/fyber/utils/s;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/utils/s;->g:Z

    .line 86
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/fyber/utils/s;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/fyber/utils/s;->e:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/s;
    .locals 1

    .prologue
    .line 78
    invoke-static {p1}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/fyber/utils/s;->f()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_0
    return-object p0
.end method

.method public final a(Ljava/util/Map;)Lcom/fyber/utils/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fyber/utils/s;"
        }
    .end annotation

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/fyber/utils/s;->f()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 74
    :cond_0
    return-object p0
.end method

.method public final a(Z)Lcom/fyber/utils/s;
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/fyber/utils/s;->i:Z

    .line 96
    return-object p0
.end method

.method public final b()Lcom/fyber/utils/s;
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/utils/s;->h:Z

    .line 91
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/fyber/utils/s;
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/fyber/utils/s;->d:Ljava/lang/String;

    .line 239
    return-object p0
.end method

.method public final c()Lcom/fyber/utils/s;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/fyber/utils/s;->k:Z

    .line 107
    iput-boolean v0, p0, Lcom/fyber/utils/s;->j:Z

    .line 108
    return-object p0
.end method

.method public final d()Lcom/fyber/utils/s;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/utils/s;->l:Z

    .line 113
    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 8

    .prologue
    .line 131
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 133
    const/4 v0, 0x6

    invoke-static {v2, v0}, Lcom/fyber/utils/s;->a(Ljava/util/Map;I)V

    .line 135
    iget-object v0, p0, Lcom/fyber/utils/s;->f:Ljava/util/Map;

    invoke-static {v0}, Lcom/fyber/utils/m;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/fyber/utils/s;->f:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 139
    :cond_0
    const-string v0, "appid"

    iget-object v1, p0, Lcom/fyber/utils/s;->c:Lcom/fyber/credentials/a;

    invoke-virtual {v1}, Lcom/fyber/credentials/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-boolean v0, p0, Lcom/fyber/utils/s;->i:Z

    if-eqz v0, :cond_1

    .line 142
    const-string v0, "uid"

    iget-object v1, p0, Lcom/fyber/utils/s;->c:Lcom/fyber/credentials/a;

    invoke-virtual {v1}, Lcom/fyber/credentials/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_1
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/fyber/utils/s;->a(Ljava/util/Map;I)V

    .line 147
    const/4 v0, 0x2

    invoke-static {v2, v0}, Lcom/fyber/utils/s;->a(Ljava/util/Map;I)V

    .line 149
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/fyber/utils/s;->a(Ljava/util/Map;I)V

    .line 151
    iget-object v0, p0, Lcom/fyber/utils/s;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 152
    const-string v0, "placement_id"

    iget-object v1, p0, Lcom/fyber/utils/s;->e:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_2
    iget-boolean v0, p0, Lcom/fyber/utils/s;->g:Z

    if-eqz v0, :cond_3

    .line 156
    const/4 v0, 0x3

    invoke-static {v2, v0}, Lcom/fyber/utils/s;->a(Ljava/util/Map;I)V

    .line 159
    :cond_3
    iget-boolean v0, p0, Lcom/fyber/utils/s;->h:Z

    if-eqz v0, :cond_4

    .line 160
    const/4 v0, 0x4

    invoke-static {v2, v0}, Lcom/fyber/utils/s;->a(Ljava/util/Map;I)V

    .line 163
    :cond_4
    iget-boolean v0, p0, Lcom/fyber/utils/s;->j:Z

    if-eqz v0, :cond_5

    .line 164
    const-string v0, "timestamp"

    .line 1217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_5
    const/4 v0, 0x5

    invoke-static {v2, v0}, Lcom/fyber/utils/s;->a(Ljava/util/Map;I)V

    .line 169
    iget-object v0, p0, Lcom/fyber/utils/s;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 170
    const-string v0, "request_id"

    iget-object v1, p0, Lcom/fyber/utils/s;->d:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/fyber/utils/s;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 178
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 179
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 171
    :cond_7
    iget-boolean v0, p0, Lcom/fyber/utils/s;->l:Z

    if-eqz v0, :cond_6

    .line 172
    const-string v0, "request_id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 182
    :cond_8
    iget-boolean v0, p0, Lcom/fyber/utils/s;->k:Z

    if-eqz v0, :cond_9

    .line 183
    iget-object v0, p0, Lcom/fyber/utils/s;->c:Lcom/fyber/credentials/a;

    invoke-virtual {v0}, Lcom/fyber/credentials/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 185
    const-string v1, "signature"

    .line 186
    invoke-static {v2, v0}, Lcom/fyber/utils/q;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {v3, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 192
    :cond_9
    :goto_2
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 188
    :cond_a
    const-string v0, "UrlBuilder"

    const-string v1, "It was impossible to add the signature, the SecretKey has not been provided"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
