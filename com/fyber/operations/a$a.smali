.class final Lcom/fyber/operations/a$a;
.super Ljava/lang/Thread;
.source "ExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/operations/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 34
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 39
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 40
    return-void
.end method
