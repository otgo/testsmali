.class Lcom/jirbo/adcolony/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jirbo/adcolony/ADCDownload$Listener;


# instance fields
.field a:Lcom/jirbo/adcolony/d;

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:D

.field i:Lcom/jirbo/adcolony/n$e;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/d;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v1, p0, Lcom/jirbo/adcolony/b;->e:Z

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/b;->f:Z

    .line 17
    iput-boolean v1, p0, Lcom/jirbo/adcolony/b;->g:Z

    .line 23
    new-instance v0, Lcom/jirbo/adcolony/n$e;

    invoke-direct {v0}, Lcom/jirbo/adcolony/n$e;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    .line 29
    iput-object p1, p0, Lcom/jirbo/adcolony/b;->a:Lcom/jirbo/adcolony/d;

    .line 30
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method a(Landroid/app/Activity;)V
    .locals 14

    .prologue
    .line 219
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->z:Z

    .line 221
    iget-boolean v0, p0, Lcom/jirbo/adcolony/b;->d:Z

    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/b;->d:Z

    .line 224
    iget-boolean v0, p0, Lcom/jirbo/adcolony/b;->b:Z

    if-nez v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/jirbo/adcolony/b;->b()V

    .line 230
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/a;->U:Lcom/jirbo/adcolony/ADCVideo;

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/b;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v2, v0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    .line 234
    const-string v0, "app_id"

    iget-object v1, p0, Lcom/jirbo/adcolony/b;->a:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v1, v1, Lcom/jirbo/adcolony/c;->k:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance v1, Lcom/jirbo/adcolony/ADCData$c;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCData$c;-><init>()V

    .line 237
    iget-object v0, p0, Lcom/jirbo/adcolony/b;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v0, v0, Lcom/jirbo/adcolony/c;->l:[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 239
    iget-object v0, p0, Lcom/jirbo/adcolony/b;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v3, v0, Lcom/jirbo/adcolony/c;->l:[Ljava/lang/String;

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    .line 241
    sget-object v6, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v6, v5}, Lcom/jirbo/adcolony/d;->g(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;

    move-result-object v6

    .line 242
    if-eqz v6, :cond_2

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/jirbo/adcolony/n$ad;->a()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v6, Lcom/jirbo/adcolony/n$ad;->q:J

    sub-long/2addr v8, v10

    iget-wide v6, v6, Lcom/jirbo/adcolony/n$ad;->o:J

    cmp-long v6, v8, v6

    if-lez v6, :cond_3

    .line 244
    :cond_2
    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/ADCData$c;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$c;

    .line 239
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :cond_4
    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCData$c;->i()I

    move-result v0

    if-nez v0, :cond_6

    .line 323
    :cond_5
    :goto_1
    return-void

    .line 254
    :cond_6
    const-string v0, "zones"

    invoke-virtual {v2, v0, v1}, Lcom/jirbo/adcolony/ADCData$g;->a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$i;)V

    .line 256
    new-instance v3, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {v3}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    .line 257
    new-instance v4, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {v4}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    .line 258
    new-instance v5, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {v5}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    .line 260
    iget-object v0, p0, Lcom/jirbo/adcolony/b;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v0, v0, Lcom/jirbo/adcolony/c;->l:[Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 262
    iget-object v0, p0, Lcom/jirbo/adcolony/b;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v6, v0, Lcom/jirbo/adcolony/c;->l:[Ljava/lang/String;

    array-length v7, v6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v7, :cond_d

    aget-object v8, v6, v1

    .line 264
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0, v8}, Lcom/jirbo/adcolony/d;->g(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;

    move-result-object v9

    .line 265
    new-instance v10, Lcom/jirbo/adcolony/ADCData$c;

    invoke-direct {v10}, Lcom/jirbo/adcolony/ADCData$c;-><init>()V

    .line 266
    new-instance v11, Lcom/jirbo/adcolony/ADCData$c;

    invoke-direct {v11}, Lcom/jirbo/adcolony/ADCData$c;-><init>()V

    .line 267
    if-eqz v9, :cond_9

    iget-object v0, v9, Lcom/jirbo/adcolony/n$ad;->m:Lcom/jirbo/adcolony/n$d;

    if-eqz v0, :cond_9

    iget-object v0, v9, Lcom/jirbo/adcolony/n$ad;->m:Lcom/jirbo/adcolony/n$d;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$d;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 269
    iget-object v0, v9, Lcom/jirbo/adcolony/n$ad;->m:Lcom/jirbo/adcolony/n$d;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/n$a;

    .line 271
    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$a;->b()Z

    move-result v13

    if-nez v13, :cond_8

    .line 273
    iget-object v13, v0, Lcom/jirbo/adcolony/n$a;->a:Ljava/lang/String;

    invoke-virtual {v10, v13}, Lcom/jirbo/adcolony/ADCData$c;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$c;

    .line 276
    :cond_8
    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$a;->c()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 278
    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->a:Ljava/lang/String;

    invoke-virtual {v11, v0}, Lcom/jirbo/adcolony/ADCData$c;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$c;

    goto :goto_3

    .line 282
    :cond_9
    invoke-virtual {v10}, Lcom/jirbo/adcolony/ADCData$c;->i()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {v3, v8, v10}, Lcom/jirbo/adcolony/ADCData$g;->a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$i;)V

    .line 283
    :cond_a
    invoke-virtual {v11}, Lcom/jirbo/adcolony/ADCData$c;->i()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {v4, v8, v11}, Lcom/jirbo/adcolony/ADCData$g;->a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$i;)V

    .line 285
    :cond_b
    if-eqz v9, :cond_c

    iget-object v0, v9, Lcom/jirbo/adcolony/n$ad;->j:Lcom/jirbo/adcolony/ADCData$c;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$c;->i()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, v9, Lcom/jirbo/adcolony/n$ad;->j:Lcom/jirbo/adcolony/ADCData$c;

    invoke-virtual {v5, v8, v0}, Lcom/jirbo/adcolony/ADCData$g;->a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$i;)V

    .line 262
    :cond_c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 290
    :cond_d
    const-string v0, "ad_queue"

    invoke-virtual {v2, v0, v3}, Lcom/jirbo/adcolony/ADCData$g;->a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$i;)V

    .line 291
    const-string v0, "ad_playing"

    invoke-virtual {v2, v0, v4}, Lcom/jirbo/adcolony/ADCData$g;->a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$i;)V

    .line 292
    const-string v0, "ad_history"

    invoke-virtual {v2, v0, v5}, Lcom/jirbo/adcolony/ADCData$g;->a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$i;)V

    .line 294
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget-object v0, v0, Lcom/jirbo/adcolony/u;->k:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, ""

    .line 295
    :goto_4
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget v1, v1, Lcom/jirbo/adcolony/u;->j:I

    .line 297
    const-string v3, "carrier"

    iget-object v4, p0, Lcom/jirbo/adcolony/b;->a:Lcom/jirbo/adcolony/d;

    iget-object v4, v4, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v4, v4, Lcom/jirbo/adcolony/c;->x:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-static {}, Lcom/jirbo/adcolony/q;->a()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "network_type"

    const-string v4, "wifi"

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :goto_5
    const-string v3, "custom_id"

    iget-object v4, p0, Lcom/jirbo/adcolony/b;->a:Lcom/jirbo/adcolony/d;

    iget-object v4, v4, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v4, v4, Lcom/jirbo/adcolony/c;->y:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v3, "sid"

    invoke-virtual {v2, v3, v0}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v0, "s_imp_count"

    invoke-virtual {v2, v0, v1}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 315
    sget-boolean v0, Lcom/jirbo/adcolony/a;->p:Z

    if-nez v0, :cond_5

    .line 317
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v1, "Downloading ad manifest from "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/b;->a:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    sget-object v1, Lcom/jirbo/adcolony/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    const-string v1, " with the following post content: "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 318
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCData$g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 320
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->p:Z

    .line 321
    new-instance v0, Lcom/jirbo/adcolony/ADCDownload;

    iget-object v1, p0, Lcom/jirbo/adcolony/b;->a:Lcom/jirbo/adcolony/d;

    iget-object v3, p0, Lcom/jirbo/adcolony/b;->a:Lcom/jirbo/adcolony/d;

    iget-object v3, v3, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    sget-object v3, Lcom/jirbo/adcolony/c;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v3, p0}, Lcom/jirbo/adcolony/ADCDownload;-><init>(Lcom/jirbo/adcolony/d;Ljava/lang/String;Lcom/jirbo/adcolony/ADCDownload$Listener;)V

    const-string v1, "application/json"

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCData$g;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCDownload;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jirbo/adcolony/ADCDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCDownload;->b()V

    goto/16 :goto_1

    .line 294
    :cond_e
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget-object v0, v0, Lcom/jirbo/adcolony/u;->k:Ljava/lang/String;

    goto :goto_4

    .line 303
    :cond_f
    invoke-static {}, Lcom/jirbo/adcolony/q;->b()Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "network_type"

    const-string v4, "cell"

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 304
    :cond_10
    const-string v3, "network_type"

    const-string v4, "none"

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method a(Lcom/jirbo/adcolony/ADCData$g;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 425
    if-nez p1, :cond_1

    .line 441
    :cond_0
    :goto_0
    return v0

    .line 426
    :cond_1
    const-string v2, "status"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    iget-object v2, p0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    const-string v3, "app"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/n$e;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v2, "Finished parsing manifest"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 429
    invoke-static {}, Lcom/jirbo/adcolony/a;->h()V

    .line 431
    iget-object v0, p0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->h:Ljava/lang/String;

    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 433
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v2, "Enabling debug logging."

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 434
    invoke-static {v1}, Lcom/jirbo/adcolony/a;->a(I)V

    :goto_1
    move v0, v1

    .line 441
    goto :goto_0

    .line 438
    :cond_2
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(I)V

    goto :goto_1
.end method

.method a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method a(Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 130
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/n$ag;->b()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v2, v0}, Lcom/jirbo/adcolony/n$ag;->a(I)Lcom/jirbo/adcolony/n$ad;

    move-result-object v2

    .line 133
    invoke-virtual {v2, p2}, Lcom/jirbo/adcolony/n$ad;->c(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/jirbo/adcolony/n$ad;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 135
    :cond_0
    return v1

    .line 130
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 39
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "Attempting to load backup manifest from file."

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 41
    new-instance v5, Lcom/jirbo/adcolony/f;

    const-string v0, "manifest.txt"

    invoke-direct {v5, v0}, Lcom/jirbo/adcolony/f;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-static {v5}, Lcom/jirbo/adcolony/k;->b(Lcom/jirbo/adcolony/f;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v6

    .line 44
    if-eqz v6, :cond_2

    .line 49
    const-string v0, "app"

    invoke-virtual {v6, v0}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v0

    const-string v2, "zones"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/ADCData$g;->c(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$c;

    move-result-object v7

    .line 50
    if-eqz v7, :cond_5

    move v0, v1

    .line 52
    :goto_0
    invoke-virtual {v7}, Lcom/jirbo/adcolony/ADCData$c;->i()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 54
    invoke-virtual {v7, v0}, Lcom/jirbo/adcolony/ADCData$c;->b(I)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v8

    move v2, v1

    move v3, v1

    .line 56
    :goto_1
    sget-object v9, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v9, v9, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v9, v9, Lcom/jirbo/adcolony/c;->l:[Ljava/lang/String;

    array-length v9, v9

    if-ge v2, v9, :cond_1

    .line 58
    const-string v9, "uuid"

    invoke-virtual {v8, v9}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v10, v10, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v10, v10, Lcom/jirbo/adcolony/c;->l:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v3, v4

    .line 56
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 63
    :cond_1
    if-nez v3, :cond_3

    move v0, v1

    .line 70
    :goto_2
    sput-boolean v4, Lcom/jirbo/adcolony/a;->C:Z

    .line 71
    if-eqz v0, :cond_4

    invoke-virtual {p0, v6}, Lcom/jirbo/adcolony/b;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    iput-boolean v4, p0, Lcom/jirbo/adcolony/b;->b:Z

    .line 74
    iget-object v0, p0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$e;->a()V

    .line 75
    sput-boolean v1, Lcom/jirbo/adcolony/a;->C:Z

    .line 85
    :cond_2
    :goto_3
    return-void

    .line 52
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_4
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "Invalid manifest loaded."

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 80
    invoke-virtual {v5}, Lcom/jirbo/adcolony/f;->c()V

    .line 81
    sput-boolean v1, Lcom/jirbo/adcolony/a;->C:Z

    .line 82
    iput-boolean v1, p0, Lcom/jirbo/adcolony/b;->b:Z

    goto :goto_3

    :cond_5
    move v0, v4

    goto :goto_2
.end method

.method b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method b(Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 144
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/jirbo/adcolony/b;->c(Ljava/lang/String;Z)Z

    move-result v0

    .line 147
    :goto_0
    return v0

    .line 145
    :cond_0
    iget-boolean v0, p0, Lcom/jirbo/adcolony/b;->b:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "Ads are not ready to be played, as they are still downloading."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 146
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    invoke-virtual {v0, p1, v2, v1}, Lcom/jirbo/adcolony/n$e;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    invoke-virtual {v0, p1, v1, v2}, Lcom/jirbo/adcolony/n$e;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method c()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-boolean v0, p0, Lcom/jirbo/adcolony/b;->b:Z

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-object v1

    .line 92
    :cond_0
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_1
    iget-object v2, p0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/n$ag;->b()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 94
    iget-object v2, p0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v2, v1}, Lcom/jirbo/adcolony/n$ag;->a(I)Lcom/jirbo/adcolony/n$ad;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Lcom/jirbo/adcolony/n$ad;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    iget-object v0, v2, Lcom/jirbo/adcolony/n$ad;->a:Ljava/lang/String;

    .line 98
    invoke-virtual {v2}, Lcom/jirbo/adcolony/n$ad;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, v2, Lcom/jirbo/adcolony/n$ad;->a:Ljava/lang/String;

    goto :goto_0

    .line 92
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 102
    goto :goto_0
.end method

.method c(Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 151
    iget-boolean v1, p0, Lcom/jirbo/adcolony/b;->b:Z

    if-nez v1, :cond_0

    .line 153
    :goto_0
    return v0

    .line 152
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    invoke-virtual {v1, p1, v2, v0}, Lcom/jirbo/adcolony/n$e;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    invoke-virtual {v1, p1, v0, v2}, Lcom/jirbo/adcolony/n$e;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method d()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-boolean v0, p0, Lcom/jirbo/adcolony/b;->b:Z

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-object v1

    .line 110
    :cond_0
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_1
    iget-object v2, p0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/n$ag;->b()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 112
    iget-object v2, p0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v2, v1}, Lcom/jirbo/adcolony/n$ag;->a(I)Lcom/jirbo/adcolony/n$ad;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lcom/jirbo/adcolony/n$ad;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    iget-object v0, v2, Lcom/jirbo/adcolony/n$ad;->a:Ljava/lang/String;

    .line 116
    invoke-virtual {v2}, Lcom/jirbo/adcolony/n$ad;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, v2, Lcom/jirbo/adcolony/n$ad;->a:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 120
    goto :goto_0
.end method

.method e()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method f()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 163
    iput-boolean v5, p0, Lcom/jirbo/adcolony/b;->c:Z

    .line 165
    iget-boolean v0, p0, Lcom/jirbo/adcolony/b;->c:Z

    if-eqz v0, :cond_0

    .line 167
    iput-boolean v4, p0, Lcom/jirbo/adcolony/b;->c:Z

    .line 168
    invoke-static {}, Lcom/jirbo/adcolony/g;->c()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 170
    invoke-static {}, Lcom/jirbo/adcolony/aa;->c()D

    move-result-wide v0

    const-wide v2, 0x4082c00000000000L    # 600.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/jirbo/adcolony/b;->h:D

    .line 171
    invoke-virtual {p0}, Lcom/jirbo/adcolony/b;->h()V

    .line 174
    :cond_0
    invoke-static {}, Lcom/jirbo/adcolony/q;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    sget-boolean v0, Lcom/jirbo/adcolony/a;->L:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/jirbo/adcolony/a;->h()V

    .line 177
    :cond_1
    sput-boolean v4, Lcom/jirbo/adcolony/a;->L:Z

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_2
    sget-boolean v0, Lcom/jirbo/adcolony/a;->L:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/jirbo/adcolony/a;->h()V

    .line 182
    :cond_3
    sput-boolean v5, Lcom/jirbo/adcolony/a;->L:Z

    goto :goto_0
.end method

.method g()V
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jirbo/adcolony/b$1;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/b$1;-><init>(Lcom/jirbo/adcolony/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 210
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 211
    invoke-virtual {p0}, Lcom/jirbo/adcolony/b;->h()V

    .line 212
    return-void
.end method

.method h()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/b;->a(Landroid/app/Activity;)V

    .line 216
    return-void
.end method

.method public on_download_finished(Lcom/jirbo/adcolony/ADCDownload;)V
    .locals 10
    .param p1, "download"    # Lcom/jirbo/adcolony/ADCDownload;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 327
    sput-boolean v4, Lcom/jirbo/adcolony/a;->z:Z

    .line 328
    iget-boolean v0, p1, Lcom/jirbo/adcolony/ADCDownload;->i:Z

    if-eqz v0, :cond_0

    .line 330
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "Received ad server response from:"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 331
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    iget-object v1, p1, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 340
    iget-object v0, p1, Lcom/jirbo/adcolony/ADCDownload;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/jirbo/adcolony/k;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v5

    .line 342
    if-nez v5, :cond_1

    .line 344
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "Invalid JSON in manifest.  Raw data:"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 345
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    iget-object v1, p1, Lcom/jirbo/adcolony/ADCDownload;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 421
    :goto_0
    return-void

    .line 335
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "Error retrieving ad server response from:"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 336
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    iget-object v1, p1, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {p0, v5}, Lcom/jirbo/adcolony/b;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 352
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v1, "Ad manifest updated."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 359
    const-string v0, "app"

    invoke-virtual {v5, v0}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v0

    const-string v1, "zones"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCData$g;->c(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$c;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-static {v0}, Lcom/jirbo/adcolony/k;->c(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$c;

    move-result-object v6

    move v1, v2

    .line 364
    :goto_1
    iget-object v0, p0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$ag;->b()I

    move-result v0

    if-ge v1, v0, :cond_4

    move v3, v2

    .line 367
    :goto_2
    invoke-virtual {v6}, Lcom/jirbo/adcolony/ADCData$c;->i()I

    move-result v0

    if-ge v3, v0, :cond_e

    .line 369
    iget-object v0, p0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ag;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/n$ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ad;->a:Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/jirbo/adcolony/ADCData$c;->b(I)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v7

    const-string v8, "uuid"

    invoke-virtual {v7, v8}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    .line 377
    :goto_3
    if-nez v0, :cond_2

    .line 379
    iget-object v0, p0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/n$ag;->a(I)Lcom/jirbo/adcolony/n$ad;

    move-result-object v0

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ad;->b:Lcom/jirbo/adcolony/ADCData$g;

    invoke-virtual {v6, v0}, Lcom/jirbo/adcolony/ADCData$c;->a(Lcom/jirbo/adcolony/ADCData$i;)Lcom/jirbo/adcolony/ADCData$c;

    .line 364
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 367
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 384
    :cond_4
    const-string v0, "app"

    invoke-virtual {v5, v0}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v0

    const-string v1, "zones"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCData$g;->c(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$c;->j()V

    move v0, v2

    .line 386
    :goto_4
    invoke-virtual {v6}, Lcom/jirbo/adcolony/ADCData$c;->i()I

    move-result v1

    if-ge v0, v1, :cond_8

    move v1, v2

    move v3, v2

    .line 389
    :goto_5
    sget-object v7, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v7, v7, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v7, v7, Lcom/jirbo/adcolony/c;->l:[Ljava/lang/String;

    array-length v7, v7

    if-ge v1, v7, :cond_6

    .line 391
    sget-object v7, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v7, v7, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v7, v7, Lcom/jirbo/adcolony/c;->l:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v0}, Lcom/jirbo/adcolony/ADCData$c;->b(I)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v8

    const-string v9, "uuid"

    invoke-virtual {v8, v9}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v3, v4

    .line 389
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 393
    :cond_6
    if-eqz v3, :cond_7

    .line 395
    invoke-virtual {v6, v0}, Lcom/jirbo/adcolony/ADCData$c;->b(I)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v1

    const-string v3, "last_config_ms"

    new-instance v7, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v1, "app"

    invoke-virtual {v5, v1}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v1

    const-string v3, "zones"

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/ADCData$g;->c(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$c;

    move-result-object v1

    invoke-virtual {v6, v0}, Lcom/jirbo/adcolony/ADCData$c;->b(I)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/ADCData$c;->a(Lcom/jirbo/adcolony/ADCData$i;)Lcom/jirbo/adcolony/ADCData$c;

    .line 386
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 400
    :cond_8
    new-instance v0, Lcom/jirbo/adcolony/f;

    const-string v1, "manifest.txt"

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/jirbo/adcolony/ADCData$g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/f;->a(Ljava/lang/String;)V

    .line 401
    iput-boolean v4, p0, Lcom/jirbo/adcolony/b;->b:Z

    .line 409
    iget-object v0, p0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$e;->a()V

    .line 411
    iget-object v0, p0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->i:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->i:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 413
    :cond_9
    iget-object v0, p0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    const-string v1, "all"

    iput-object v1, v0, Lcom/jirbo/adcolony/n$e;->i:Ljava/lang/String;

    .line 415
    :cond_a
    iget-object v0, p0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->j:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->j:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 417
    :cond_b
    iget-object v0, p0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    const-string v1, "all"

    iput-object v1, v0, Lcom/jirbo/adcolony/n$e;->j:Ljava/lang/String;

    .line 420
    :cond_c
    invoke-static {}, Lcom/jirbo/adcolony/a;->h()V

    goto/16 :goto_0

    .line 405
    :cond_d
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v1, "Invalid manifest."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    goto/16 :goto_0

    :cond_e
    move v0, v2

    goto/16 :goto_3
.end method
