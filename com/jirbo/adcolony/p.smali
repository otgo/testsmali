.class Lcom/jirbo/adcolony/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/p$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x5

.field public static final b:I = 0xa

.field static c:Ljava/lang/String;

.field static volatile d:Lcom/jirbo/adcolony/p;

.field static volatile e:J


# instance fields
.field f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "MONITOR_MUTEX"

    sput-object v0, Lcom/jirbo/adcolony/p;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    return-void
.end method

.method static a()V
    .locals 4

    .prologue
    .line 23
    sget-object v1, Lcom/jirbo/adcolony/p;->c:Ljava/lang/String;

    monitor-enter v1

    .line 25
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/jirbo/adcolony/p;->e:J

    .line 26
    sget-object v0, Lcom/jirbo/adcolony/p;->d:Lcom/jirbo/adcolony/p;

    if-nez v0, :cond_0

    .line 28
    const-string v0, "Creating ADC Monitor singleton."

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->b(Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/jirbo/adcolony/p;

    invoke-direct {v0}, Lcom/jirbo/adcolony/p;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/p;->d:Lcom/jirbo/adcolony/p;

    .line 30
    new-instance v0, Ljava/lang/Thread;

    sget-object v2, Lcom/jirbo/adcolony/p;->d:Lcom/jirbo/adcolony/p;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 32
    :cond_0
    monitor-exit v1

    .line 33
    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method a(J)V
    .locals 1

    .prologue
    .line 156
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 12

    .prologue
    .line 37
    sget v0, Lcom/jirbo/adcolony/a;->n:I

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(I)V

    .line 39
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "ADC Monitor Started."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 40
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/d;->b()V

    .line 42
    const/4 v0, 0x0

    .line 44
    :goto_0
    sget-object v1, Lcom/jirbo/adcolony/a;->P:Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 48
    const/4 v1, 0x0

    sput-boolean v1, Lcom/jirbo/adcolony/a;->z:Z

    .line 49
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/d;->g()V

    .line 50
    sget-boolean v1, Lcom/jirbo/adcolony/a;->z:Z

    if-eqz v1, :cond_4

    const-wide/16 v2, 0x32

    .line 52
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 53
    sget-wide v8, Lcom/jirbo/adcolony/p;->e:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v1, v8

    .line 55
    sget-object v8, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v8}, Lcom/jirbo/adcolony/d;->g()V

    .line 57
    if-eqz v0, :cond_d

    .line 59
    const/16 v8, 0xa

    if-lt v1, v8, :cond_6

    .line 124
    :cond_0
    sget-object v1, Lcom/jirbo/adcolony/p;->c:Ljava/lang/String;

    monitor-enter v1

    .line 126
    const/4 v2, 0x0

    :try_start_0
    sput-object v2, Lcom/jirbo/adcolony/p;->d:Lcom/jirbo/adcolony/p;

    .line 127
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    if-nez v0, :cond_1

    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/d;->c()V

    .line 131
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/a;->P:Landroid/app/Activity;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->A:Z

    .line 134
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/jirbo/adcolony/p;->a(J)V

    .line 135
    sget-boolean v0, Lcom/jirbo/adcolony/a;->A:Z

    if-eqz v0, :cond_2

    .line 137
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "ADC.finishing, controller on_stop"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 138
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/d;->d()V

    .line 139
    invoke-static {}, Lcom/jirbo/adcolony/z;->a()V

    .line 141
    :cond_2
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/jirbo/adcolony/p;->a(J)V

    .line 142
    sget-boolean v0, Lcom/jirbo/adcolony/a;->A:Z

    if-eqz v0, :cond_3

    .line 144
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "Releasing Activity reference"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 145
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/a;->P:Landroid/app/Activity;

    .line 146
    invoke-static {}, Lcom/jirbo/adcolony/a;->h()V

    .line 149
    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Exiting monitor"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    return-void

    .line 50
    :cond_4
    if-eqz v0, :cond_5

    const/16 v1, 0x7d0

    :goto_2
    int-to-long v2, v1

    goto :goto_1

    :cond_5
    const/16 v1, 0xfa

    goto :goto_2

    .line 60
    :cond_6
    const/4 v8, 0x5

    if-ge v1, v8, :cond_e

    .line 62
    const/4 v0, 0x0

    .line 63
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/d;->b()V

    .line 64
    const-string v1, "AdColony is active."

    invoke-static {v1}, Lcom/jirbo/adcolony/a;->b(Ljava/lang/String;)V

    move v1, v0

    .line 78
    :goto_3
    invoke-static {}, Lcom/jirbo/adcolony/q;->c()Z

    move-result v0

    if-nez v0, :cond_f

    .line 80
    sget-boolean v0, Lcom/jirbo/adcolony/a;->L:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/jirbo/adcolony/a;->h()V

    .line 81
    :cond_7
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jirbo/adcolony/a;->L:Z

    .line 90
    :goto_4
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$ag;->a()V

    .line 92
    :cond_8
    invoke-virtual {p0, v2, v3}, Lcom/jirbo/adcolony/p;->a(J)V

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 94
    sub-long v8, v2, v4

    const-wide/16 v10, 0xbb8

    cmp-long v0, v8, v10

    if-gtz v0, :cond_c

    sub-long v8, v2, v4

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-lez v0, :cond_c

    .line 97
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget-wide v8, v0, Lcom/jirbo/adcolony/u;->i:D

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    add-double/2addr v2, v8

    iput-wide v2, v0, Lcom/jirbo/adcolony/u;->i:D

    .line 100
    sget-object v0, Lcom/jirbo/adcolony/a;->P:Landroid/app/Activity;

    if-eqz v0, :cond_c

    iget-wide v2, p0, Lcom/jirbo/adcolony/p;->f:J

    sub-long v2, v6, v2

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-lez v0, :cond_c

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/jirbo/adcolony/p;->f:J

    .line 104
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ag;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/n$ad;

    .line 107
    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$ad;->a()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-wide v4, v0, Lcom/jirbo/adcolony/n$ad;->q:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/jirbo/adcolony/n$ad;->q:J

    sub-long/2addr v4, v6

    iget-wide v6, v0, Lcom/jirbo/adcolony/n$ad;->p:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_b

    :cond_a
    iget-wide v4, v0, Lcom/jirbo/adcolony/n$ad;->q:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/jirbo/adcolony/n$ad;->q:J

    sub-long/2addr v4, v6

    iget-wide v6, v0, Lcom/jirbo/adcolony/n$ad;->o:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_9

    .line 109
    :cond_b
    sget-object v0, Lcom/jirbo/adcolony/a;->P:Landroid/app/Activity;

    if-eqz v0, :cond_c

    .line 111
    sget-boolean v0, Lcom/jirbo/adcolony/a;->p:Z

    if-nez v0, :cond_c

    .line 113
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    sget-object v2, Lcom/jirbo/adcolony/a;->P:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/b;->a(Landroid/app/Activity;)V

    .line 114
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->p:Z

    :cond_c
    move v0, v1

    .line 122
    goto/16 :goto_0

    .line 69
    :cond_d
    const/4 v8, 0x5

    if-lt v1, v8, :cond_e

    .line 71
    const-string v0, "AdColony is idle."

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->b(Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x1

    .line 73
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/d;->c()V

    :cond_e
    move v1, v0

    goto/16 :goto_3

    .line 85
    :cond_f
    sget-boolean v0, Lcom/jirbo/adcolony/a;->L:Z

    if-nez v0, :cond_10

    invoke-static {}, Lcom/jirbo/adcolony/a;->h()V

    .line 86
    :cond_10
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->L:Z

    goto/16 :goto_4

    .line 127
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
