.class public final Lcom/fyber/operations/a;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/operations/a$a;,
        Lcom/fyber/operations/a$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v2, 0x3

    .line 20
    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/fyber/operations/a$b;

    invoke-direct {v8}, Lcom/fyber/operations/a$b;-><init>()V

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 22
    return-void
.end method
