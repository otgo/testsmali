.class Lcom/chartboost/sdk/impl/ba$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ba;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lcom/chartboost/sdk/impl/ba$a;

.field private f:Z

.field private g:Lorg/json/JSONArray;

.field private h:Lcom/chartboost/sdk/impl/az;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/ba;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 642
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ba$b;->a:Lcom/chartboost/sdk/impl/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ba$b;->b:Ljava/lang/String;

    .line 635
    const/16 v0, 0x32

    iput v0, p0, Lcom/chartboost/sdk/impl/ba$b;->c:I

    .line 638
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ba$b;->f:Z

    .line 639
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ba$b;->g:Lorg/json/JSONArray;

    .line 643
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ba$b;->d:Ljava/lang/String;

    .line 644
    sget-object v0, Lcom/chartboost/sdk/impl/ba$a;->a:Lcom/chartboost/sdk/impl/ba$a;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ba$b;->e:Lcom/chartboost/sdk/impl/ba$a;

    .line 645
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ba$b;->g:Lorg/json/JSONArray;

    .line 646
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ba$b;)Lcom/chartboost/sdk/impl/az;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$b;->h:Lcom/chartboost/sdk/impl/az;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/chartboost/sdk/impl/az;)Lcom/chartboost/sdk/impl/az;
    .locals 4

    .prologue
    .line 673
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/az;->i()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 674
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 675
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 676
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 698
    :cond_0
    :goto_0
    monitor-exit p0

    return-object p1

    .line 680
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba$b;->e:Lcom/chartboost/sdk/impl/ba$a;

    sget-object v2, Lcom/chartboost/sdk/impl/ba$a;->a:Lcom/chartboost/sdk/impl/ba$a;

    if-ne v1, v2, :cond_0

    .line 681
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba$b;->a:Lcom/chartboost/sdk/impl/ba;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ba;->d(Lcom/chartboost/sdk/impl/ba;)Lcom/chartboost/sdk/impl/ay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ay;->c()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba$b;->h:Lcom/chartboost/sdk/impl/az;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba$b;->h:Lcom/chartboost/sdk/impl/az;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/az;->q()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 682
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ba$b;->d:Ljava/lang/String;

    .line 683
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba$b;->b:Ljava/lang/String;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 673
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 686
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba$b;->g:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    iget v2, p0, Lcom/chartboost/sdk/impl/ba$b;->c:I

    if-ne v1, v2, :cond_4

    .line 687
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ba$b;->d:Ljava/lang/String;

    .line 688
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ba$b;->g:Lorg/json/JSONArray;

    .line 690
    :cond_4
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba$b;->g:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 691
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$b;->h:Lcom/chartboost/sdk/impl/az;

    if-eqz v0, :cond_5

    .line 692
    invoke-static {}, Lcom/chartboost/sdk/impl/ba;->k()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba$b;->h:Lcom/chartboost/sdk/impl/az;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$b;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba$b;->g:Lorg/json/JSONArray;

    invoke-virtual {p1, v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 694
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ba$b;->h:Lcom/chartboost/sdk/impl/az;

    .line 695
    iget-object p1, p0, Lcom/chartboost/sdk/impl/ba$b;->h:Lcom/chartboost/sdk/impl/az;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 653
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ba$b;->b:Ljava/lang/String;

    .line 654
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 665
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/ba$b;->f:Z

    .line 666
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/chartboost/sdk/impl/az;)V
    .locals 0

    .prologue
    .line 702
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ba$b;->h:Lcom/chartboost/sdk/impl/az;

    .line 703
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 661
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ba$b;->f:Z

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 669
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ba$b;->g:Lorg/json/JSONArray;

    .line 670
    return-void
.end method
