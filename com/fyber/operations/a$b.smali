.class final Lcom/fyber/operations/a$b;
.super Ljava/lang/Object;
.source "ExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/operations/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/fyber/operations/a$a;

    invoke-direct {v0, p1}, Lcom/fyber/operations/a$a;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
