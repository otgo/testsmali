.class Lcom/ideaworks3d/marmalade/s3eTest$5;
.super Ljava/lang/Object;
.source "s3eTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ideaworks3d/marmalade/s3eTest;->PostSuspendResume(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ideaworks3d/marmalade/s3eTest;

.field final synthetic val$iterations:I

.field final synthetic val$sleepTimeMS:I


# direct methods
.method constructor <init>(Lcom/ideaworks3d/marmalade/s3eTest;II)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/s3eTest$5;->this$0:Lcom/ideaworks3d/marmalade/s3eTest;

    iput p2, p0, Lcom/ideaworks3d/marmalade/s3eTest$5;->val$iterations:I

    iput p3, p0, Lcom/ideaworks3d/marmalade/s3eTest$5;->val$sleepTimeMS:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 66
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eTest$5;->val$iterations:I

    if-ge v0, v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eTest$5;->this$0:Lcom/ideaworks3d/marmalade/s3eTest;

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/s3eTest;->PostSuspend()V

    .line 69
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eTest$5;->this$0:Lcom/ideaworks3d/marmalade/s3eTest;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ideaworks3d/marmalade/s3eTest;->PostSetFocus(Z)V

    .line 70
    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eTest$5;->val$sleepTimeMS:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 71
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eTest$5;->this$0:Lcom/ideaworks3d/marmalade/s3eTest;

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/s3eTest;->PostResume()V

    .line 72
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eTest$5;->this$0:Lcom/ideaworks3d/marmalade/s3eTest;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ideaworks3d/marmalade/s3eTest;->PostSetFocus(Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eTest$5;->this$0:Lcom/ideaworks3d/marmalade/s3eTest;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/s3eTest;->PostResume()V

    .line 81
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eTest$5;->this$0:Lcom/ideaworks3d/marmalade/s3eTest;

    iput-object v4, v0, Lcom/ideaworks3d/marmalade/s3eTest;->thread:Ljava/lang/Thread;

    .line 83
    :goto_1
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 80
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eTest$5;->this$0:Lcom/ideaworks3d/marmalade/s3eTest;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/s3eTest;->PostResume()V

    .line 81
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eTest$5;->this$0:Lcom/ideaworks3d/marmalade/s3eTest;

    iput-object v4, v0, Lcom/ideaworks3d/marmalade/s3eTest;->thread:Ljava/lang/Thread;

    goto :goto_1

    .line 80
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eTest$5;->this$0:Lcom/ideaworks3d/marmalade/s3eTest;

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/s3eTest;->PostResume()V

    .line 81
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eTest$5;->this$0:Lcom/ideaworks3d/marmalade/s3eTest;

    iput-object v4, v1, Lcom/ideaworks3d/marmalade/s3eTest;->thread:Ljava/lang/Thread;

    throw v0
.end method
