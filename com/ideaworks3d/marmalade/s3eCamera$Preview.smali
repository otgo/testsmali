.class Lcom/ideaworks3d/marmalade/s3eCamera$Preview;
.super Landroid/view/SurfaceView;
.source "s3eCamera.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ideaworks3d/marmalade/s3eCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Preview"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ideaworks3d/marmalade/s3eCamera;


# direct methods
.method constructor <init>(Lcom/ideaworks3d/marmalade/s3eCamera;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 407
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/s3eCamera$Preview;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera;

    .line 408
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 409
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eCamera$Preview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 410
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 411
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 412
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .prologue
    .line 433
    invoke-static {}, Lcom/ideaworks3d/marmalade/s3eCamera;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera$Preview;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera;

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/s3eCamera;->access$100(Lcom/ideaworks3d/marmalade/s3eCamera;)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 436
    monitor-exit v1

    .line 440
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera$Preview;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/s3eCamera;->setCameraParameters()V

    .line 438
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera$Preview;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera;

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/s3eCamera;->access$100(Lcom/ideaworks3d/marmalade/s3eCamera;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 439
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera$Preview;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera;

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/s3eCamera;->access$000(Lcom/ideaworks3d/marmalade/s3eCamera;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    :goto_0
    return-void

    .line 419
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera$Preview;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera;

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/s3eCamera;->access$100(Lcom/ideaworks3d/marmalade/s3eCamera;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 420
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera$Preview;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera;

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/s3eCamera;->access$100(Lcom/ideaworks3d/marmalade/s3eCamera;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera$Preview;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 424
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera$Preview;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera;

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/s3eCamera;->access$200(Lcom/ideaworks3d/marmalade/s3eCamera;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera$Preview;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera;

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/s3eCamera;->access$200(Lcom/ideaworks3d/marmalade/s3eCamera;)V

    .line 430
    return-void
.end method
