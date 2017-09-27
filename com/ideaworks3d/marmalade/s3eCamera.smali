.class Lcom/ideaworks3d/marmalade/s3eCamera;
.super Ljava/lang/Object;
.source "s3eCamera.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lcom/ideaworks3d/marmalade/SuspendResumeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ideaworks3d/marmalade/s3eCamera$Preview;
    }
.end annotation


# static fields
.field static final S3E_CAMERA_AUTO_FOCUS:I = 0x3

.field static final S3E_CAMERA_AVAILABLE:I = 0x0

.field static final S3E_CAMERA_BRIGHTNESS:I = 0x4

.field static final S3E_CAMERA_CONTRAST:I = 0x5

.field static final S3E_CAMERA_IDLE:I = 0x0

.field static final S3E_CAMERA_PIXEL_TYPE_NV21:I = 0x1001

.field static final S3E_CAMERA_PIXEL_TYPE_RGB565:I = 0x422

.field static final S3E_CAMERA_QUALITY:I = 0x6

.field static final S3E_CAMERA_STATUS:I = 0x1

.field static final S3E_CAMERA_STREAMING:I = 0x1

.field static final S3E_CAMERA_STREAMING_SIZE_HINT_LARGEST:I = 0x2

.field static final S3E_CAMERA_STREAMING_SIZE_HINT_MEDIUM:I = 0x1

.field static final S3E_CAMERA_STREAMING_SIZE_HINT_SMALLEST:I = 0x0

.field static final S3E_CAMERA_TYPE:I = 0x7

.field private static final WAIT_FOR_COMMAND_TO_COMPLETE:I = 0x3e8

.field private static final m_CameraLock:Ljava/lang/Object;

.field private static final m_PreviewLock:Ljava/lang/Object;


# instance fields
.field m_AutoFocus:I

.field private m_Buffer:[B

.field private m_Camera:Landroid/hardware/Camera;

.field private m_NeedsRemovePreview:Z

.field m_PixelFormat:I

.field private m_Preview:Lcom/ideaworks3d/marmalade/s3eCamera$Preview;

.field m_Quality:I

.field private m_Size:Landroid/hardware/Camera$Size;

.field m_SizeHint:I

.field m_Type:I

.field private m_View:Lcom/ideaworks3d/marmalade/LoaderView;

.field m_addCallbackBuffer:Ljava/lang/reflect/Method;

.field m_setPreviewCallbackWithBuffer:Ljava/lang/reflect/Method;

.field private running:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_CameraLock:Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_PreviewLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_SizeHint:I

    .line 35
    const/16 v0, 0x1001

    iput v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_PixelFormat:I

    .line 36
    iput v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Type:I

    .line 37
    iput v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Quality:I

    .line 38
    iput v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_AutoFocus:I

    .line 44
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->running:Z

    .line 45
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_NeedsRemovePreview:Z

    .line 54
    invoke-static {p0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->addSuspendResumeListener(Lcom/ideaworks3d/marmalade/SuspendResumeListener;)V

    .line 55
    return-void
.end method

.method private CloseCamera()V
    .locals 3

    .prologue
    .line 93
    sget-object v1, Lcom/ideaworks3d/marmalade/s3eCamera;->m_CameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 97
    monitor-exit v1

    .line 104
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 100
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 101
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    .line 103
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private OpenCamera()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 77
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->isCameraOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_2

    .line 82
    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Type:I

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    .line 89
    :goto_1
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 85
    :cond_2
    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Type:I

    if-eqz v1, :cond_3

    .line 86
    const-string v1, "SDK9 method [android.hardware.Camera.open(int)] was not found on the device."

    invoke-static {v1}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 87
    :cond_3
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/ideaworks3d/marmalade/s3eCamera;)Z
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->OpenCamera()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/ideaworks3d/marmalade/s3eCamera;)Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ideaworks3d/marmalade/s3eCamera;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->CloseCamera()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_CameraLock:Ljava/lang/Object;

    return-object v0
.end method

.method private getOptimalPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;II)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 276
    const/4 v1, 0x0

    .line 277
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 278
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 281
    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-double v2, v2

    .line 282
    cmpg-double v7, v2, v4

    if-gez v7, :cond_1

    move-wide v8, v2

    move-object v2, v0

    move-wide v0, v8

    :goto_1
    move-wide v4, v0

    move-object v1, v2

    .line 287
    goto :goto_0

    .line 288
    :cond_0
    return-object v1

    :cond_1
    move-object v2, v1

    move-wide v0, v4

    goto :goto_1
.end method

.method private isCameraOpen()Z
    .locals 2

    .prologue
    .line 58
    sget-object v1, Lcom/ideaworks3d/marmalade/s3eCamera;->m_CameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private native previewCallback([BIIII)V
.end method

.method private s3ePixelFormatToPlatform(I)I
    .locals 1

    .prologue
    .line 152
    const/16 v0, 0x1001

    if-ne p1, v0, :cond_0

    .line 153
    const/16 v0, 0x11

    .line 156
    :goto_0
    return v0

    .line 154
    :cond_0
    const/16 v0, 0x422

    if-ne p1, v0, :cond_1

    .line 155
    const/4 v0, 0x4

    goto :goto_0

    .line 156
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private waitForPreviewLock()V
    .locals 4

    .prologue
    .line 65
    sget-object v1, Lcom/ideaworks3d/marmalade/s3eCamera;->m_PreviewLock:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_PreviewLock:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 70
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public createPreview()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 374
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 375
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 376
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 377
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 378
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 379
    const/16 v1, 0x55

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 380
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 381
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 382
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 383
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 384
    new-instance v1, Lcom/ideaworks3d/marmalade/s3eCamera$Preview;

    sget-object v2, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-direct {v1, p0, v2}, Lcom/ideaworks3d/marmalade/s3eCamera$Preview;-><init>(Lcom/ideaworks3d/marmalade/s3eCamera;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Preview:Lcom/ideaworks3d/marmalade/s3eCamera$Preview;

    .line 385
    iput-boolean v4, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_NeedsRemovePreview:Z

    .line 386
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Preview:Lcom/ideaworks3d/marmalade/s3eCamera$Preview;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    sget-object v1, Lcom/ideaworks3d/marmalade/s3eCamera;->m_PreviewLock:Ljava/lang/Object;

    monitor-enter v1

    .line 389
    :try_start_0
    sget-object v0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_PreviewLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 390
    monitor-exit v1

    .line 391
    return v3

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 6

    .prologue
    .line 196
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v2

    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Size:Landroid/hardware/Camera$Size;

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Size:Landroid/hardware/Camera$Size;

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->LoaderThread()Lcom/ideaworks3d/marmalade/LoaderThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->getOrientation()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ideaworks3d/marmalade/s3eCamera;->previewCallback([BIIII)V

    .line 197
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_addCallbackBuffer:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->isCameraOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Buffer:[B

    if-eqz v0, :cond_0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_addCallbackBuffer:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Buffer:[B

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSuspendResumeEvent(Lcom/ideaworks3d/marmalade/SuspendResumeEvent;)V
    .locals 3

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->running:Z

    if-nez v0, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v0, p1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;->eventType:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    sget-object v1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;->RESUME:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    if-ne v0, v1, :cond_2

    .line 360
    iget v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_SizeHint:I

    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_PixelFormat:I

    iget v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Quality:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/ideaworks3d/marmalade/s3eCamera;->s3eCameraStart(III)I

    .line 362
    :cond_2
    iget-object v0, p1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;->eventType:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    sget-object v1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;->SUSPEND:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    if-ne v0, v1, :cond_3

    .line 364
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->s3eCameraStop()I

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->running:Z

    .line 367
    :cond_3
    iget-object v0, p1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;->eventType:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    sget-object v1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;->SHUTDOWN:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    if-ne v0, v1, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->s3eCameraStop()I

    goto :goto_0
.end method

.method public removePreview()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 395
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Preview:Lcom/ideaworks3d/marmalade/s3eCamera$Preview;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_NeedsRemovePreview:Z

    if-eqz v1, :cond_0

    .line 397
    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_NeedsRemovePreview:Z

    .line 398
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Preview:Lcom/ideaworks3d/marmalade/s3eCamera$Preview;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 399
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Preview:Lcom/ideaworks3d/marmalade/s3eCamera$Preview;

    .line 402
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public s3eCameraGetInt(I)I
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 107
    if-ne p1, v1, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->isCameraOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 112
    goto :goto_0

    .line 114
    :cond_1
    if-nez p1, :cond_3

    .line 116
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 119
    :try_start_0
    const-class v3, Landroid/content/pm/PackageManager;

    const-string v4, "hasSystemFeature"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 120
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "android.hardware.camera"

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 121
    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    .line 128
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public s3eCameraIsFormatSupported(I)Z
    .locals 4

    .prologue
    const/16 v2, 0x422

    const/4 v0, 0x0

    .line 161
    const/16 v1, 0x1001

    if-ne p1, v1, :cond_1

    .line 162
    const/4 v0, 0x1

    .line 192
    :cond_0
    :goto_0
    return v0

    .line 163
    :cond_1
    if-ne p1, v2, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->isCameraOpen()Z

    move-result v1

    .line 169
    if-nez v1, :cond_2

    .line 170
    :try_start_0
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->OpenCamera()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 187
    if-nez v1, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->CloseCamera()V

    goto :goto_0

    .line 175
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 176
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v2

    .line 178
    const/16 v3, 0x422

    invoke-direct {p0, v3}, Lcom/ideaworks3d/marmalade/s3eCamera;->s3ePixelFormatToPlatform(I)I

    move-result v3

    .line 179
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 187
    if-nez v1, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->CloseCamera()V

    goto :goto_0

    .line 181
    :catch_0
    move-exception v2

    .line 187
    if-nez v1, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->CloseCamera()V

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    if-nez v1, :cond_3

    .line 189
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->CloseCamera()V

    :cond_3
    throw v0
.end method

.method public s3eCameraSetInt(II)I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 135
    iget v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Type:I

    if-eq v0, p2, :cond_0

    .line 137
    iput p2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Type:I

    .line 138
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->isCameraOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->CloseCamera()V

    .line 141
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->OpenCamera()Z

    .line 145
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->isCameraOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public s3eCameraStart(III)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 208
    iput p1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_SizeHint:I

    .line 209
    iput p2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_PixelFormat:I

    .line 210
    iput p3, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Quality:I

    .line 211
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v0, v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    .line 214
    :try_start_0
    const-class v0, Landroid/hardware/Camera;

    const-string v1, "setPreviewCallbackWithBuffer"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/hardware/Camera$PreviewCallback;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_setPreviewCallbackWithBuffer:Ljava/lang/reflect/Method;

    .line 215
    const-class v0, Landroid/hardware/Camera;

    const-string v1, "addCallbackBuffer"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [B

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_addCallbackBuffer:Ljava/lang/reflect/Method;

    .line 216
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->OpenCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t open the camera."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :catch_0
    move-exception v0

    .line 242
    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_setPreviewCallbackWithBuffer:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 246
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    new-instance v1, Lcom/ideaworks3d/marmalade/s3eCamera$2;

    invoke-direct {v1, p0}, Lcom/ideaworks3d/marmalade/s3eCamera$2;-><init>(Lcom/ideaworks3d/marmalade/s3eCamera;)V

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 252
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->waitForPreviewLock()V

    .line 254
    :cond_0
    iput-boolean v6, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->running:Z

    .line 255
    :goto_0
    return v5

    .line 218
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->setCameraParameters()V

    .line 219
    const-string v0, "Creating image buffer"

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Size:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Size:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    .line 221
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Buffer:[B

    .line 222
    const-string v0, "Invoking preview methods"

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_addCallbackBuffer:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Buffer:[B

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_setPreviewCallbackWithBuffer:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 227
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    new-instance v1, Lcom/ideaworks3d/marmalade/s3eCamera$1;

    invoke-direct {v1, p0}, Lcom/ideaworks3d/marmalade/s3eCamera$1;-><init>(Lcom/ideaworks3d/marmalade/s3eCamera;)V

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 233
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->waitForPreviewLock()V

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->running:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public s3eCameraStop()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 259
    iput-boolean v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->running:Z

    .line 260
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->CloseCamera()V

    .line 261
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_setPreviewCallbackWithBuffer:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Buffer:[B

    .line 263
    :cond_0
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_NeedsRemovePreview:Z

    if-eqz v0, :cond_1

    .line 265
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    new-instance v1, Lcom/ideaworks3d/marmalade/s3eCamera$3;

    invoke-direct {v1, p0}, Lcom/ideaworks3d/marmalade/s3eCamera$3;-><init>(Lcom/ideaworks3d/marmalade/s3eCamera;)V

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 272
    :cond_1
    return v2
.end method

.method public setCameraParameters()V
    .locals 5

    .prologue
    .line 292
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 294
    :cond_0
    const-string v0, "Setting camera parameters"

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x0

    .line 296
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 299
    :try_start_0
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 300
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v1

    .line 302
    iget v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_PixelFormat:I

    invoke-direct {p0, v2}, Lcom/ideaworks3d/marmalade/s3eCamera;->s3ePixelFormatToPlatform(I)I

    move-result v2

    .line 303
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    invoke-virtual {v3, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 310
    :cond_1
    :goto_1
    const-string v1, "Setting preview size"

    invoke-static {v1}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 313
    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_SizeHint:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 315
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    iget v2, v1, Lcom/ideaworks3d/marmalade/LoaderView;->m_Width:I

    .line 316
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    iget v1, v1, Lcom/ideaworks3d/marmalade/LoaderView;->m_Height:I

    .line 328
    :goto_2
    if-eqz v0, :cond_5

    .line 331
    invoke-direct {p0, v0, v2, v1}, Lcom/ideaworks3d/marmalade/s3eCamera;->getOptimalPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Size:Landroid/hardware/Camera$Size;

    .line 333
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Size:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Size:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 339
    :goto_3
    iget v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Type:I

    if-eqz v0, :cond_2

    .line 341
    const-string v0, "Setting camera ID"

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 342
    const-string v0, "camera-id"

    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Type:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 344
    :cond_2
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Size:Landroid/hardware/Camera$Size;

    .line 347
    :try_start_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    goto :goto_0

    .line 318
    :cond_3
    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_SizeHint:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 320
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    iget v1, v1, Lcom/ideaworks3d/marmalade/LoaderView;->m_Width:I

    div-int/lit8 v2, v1, 0x2

    .line 321
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    iget v1, v1, Lcom/ideaworks3d/marmalade/LoaderView;->m_Height:I

    div-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 325
    :cond_4
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    iget v1, v1, Lcom/ideaworks3d/marmalade/LoaderView;->m_Width:I

    div-int/lit8 v2, v1, 0x4

    .line 326
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    iget v1, v1, Lcom/ideaworks3d/marmalade/LoaderView;->m_Height:I

    div-int/lit8 v1, v1, 0x4

    goto :goto_2

    .line 337
    :cond_5
    invoke-virtual {v3, v2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    goto :goto_3

    .line 306
    :catch_1
    move-exception v1

    goto :goto_1
.end method
