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

.field private m_AutoFocusIsOn:Z

.field private m_AutoFocusModes:[Ljava/lang/String;

.field private m_Camera:Landroid/hardware/Camera;

.field private m_FocusMode:Ljava/lang/String;

.field private m_NeedsRemovePreview:Z

.field private m_NonAutoFocusModes:[Ljava/lang/String;

.field m_PixelFormat:I

.field private m_Preview:Lcom/ideaworks3d/marmalade/s3eCamera$Preview;

.field m_Quality:I

.field private m_Running:Z

.field m_SizeHint:I

.field m_Type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_CameraLock:Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_PreviewLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_SizeHint:I

    .line 36
    const/16 v0, 0x1001

    iput v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_PixelFormat:I

    .line 37
    iput v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Type:I

    .line 38
    iput v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Quality:I

    .line 39
    iput v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_AutoFocus:I

    .line 42
    iput-boolean v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Running:Z

    .line 43
    iput-boolean v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_NeedsRemovePreview:Z

    .line 48
    const-string v0, "auto"

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_FocusMode:Ljava/lang/String;

    .line 49
    iput-boolean v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_AutoFocusIsOn:Z

    .line 50
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "continuous-video"

    aput-object v1, v0, v2

    const-string v1, "continuous-picture"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_AutoFocusModes:[Ljava/lang/String;

    .line 54
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "auto"

    aput-object v1, v0, v2

    const-string v1, "fixed"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_NonAutoFocusModes:[Ljava/lang/String;

    .line 60
    invoke-static {p0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->addSuspendResumeListener(Lcom/ideaworks3d/marmalade/SuspendResumeListener;)V

    .line 61
    return-void
.end method

.method private CloseCamera()V
    .locals 3

    .prologue
    .line 99
    sget-object v1, Lcom/ideaworks3d/marmalade/s3eCamera;->m_CameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 103
    monitor-exit v1

    .line 110
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 106
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 107
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    .line 109
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

    .line 83
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->isCameraOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_2

    .line 88
    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Type:I

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    .line 95
    :goto_1
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 91
    :cond_2
    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Type:I

    if-eqz v1, :cond_3

    .line 92
    const-string v1, "SDK9 method [android.hardware.Camera.open(int)] was not found on the device."

    invoke-static {v1}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 93
    :cond_3
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/ideaworks3d/marmalade/s3eCamera;)Z
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->OpenCamera()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/ideaworks3d/marmalade/s3eCamera;)Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ideaworks3d/marmalade/s3eCamera;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->CloseCamera()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_CameraLock:Ljava/lang/Object;

    return-object v0
.end method

.method private chooseFocusMode([Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 148
    const/4 v0, 0x0

    move v1, v2

    .line 149
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    if-nez v0, :cond_1

    .line 151
    aget-object v3, p1, v1

    invoke-direct {p0, v3}, Lcom/ideaworks3d/marmalade/s3eCamera;->isFocusModeSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    aget-object v0, p1, v1

    .line 149
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->isCameraOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_FocusMode:Ljava/lang/String;

    .line 157
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->setFocusMode()V

    .line 159
    :cond_2
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->forceRefocus()V

    .line 160
    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method private forceRefocus()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_FocusMode:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    new-instance v1, Lcom/ideaworks3d/marmalade/s3eCamera$1;

    invoke-direct {v1, p0}, Lcom/ideaworks3d/marmalade/s3eCamera$1;-><init>(Lcom/ideaworks3d/marmalade/s3eCamera;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 175
    :cond_0
    return-void
.end method

.method private getOptimalPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .locals 8
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
    .line 324
    if-le p2, p3, :cond_0

    move v4, p2

    .line 325
    :goto_0
    if-ge p2, p3, :cond_1

    .line 326
    :goto_1
    const/4 v3, 0x0

    .line 327
    const v2, 0x7fffffff

    .line 328
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 331
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 332
    if-ge v1, v2, :cond_3

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_3
    move v2, v0

    move-object v3, v1

    .line 337
    goto :goto_2

    :cond_0
    move v4, p3

    .line 324
    goto :goto_0

    :cond_1
    move p2, p3

    .line 325
    goto :goto_1

    .line 338
    :cond_2
    return-object v3

    :cond_3
    move v0, v2

    move-object v1, v3

    goto :goto_3
.end method

.method private isCameraOpen()Z
    .locals 2

    .prologue
    .line 64
    sget-object v1, Lcom/ideaworks3d/marmalade/s3eCamera;->m_CameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 66
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

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isFocusModeSupported(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->isCameraOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 136
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 138
    :cond_0
    return v0
.end method

.method private native previewCallback([BIIII)V
.end method

.method private s3ePixelFormatToPlatform(I)I
    .locals 1

    .prologue
    .line 213
    const/16 v0, 0x1001

    if-ne p1, v0, :cond_0

    .line 214
    const/16 v0, 0x11

    .line 217
    :goto_0
    return v0

    .line 215
    :cond_0
    const/16 v0, 0x422

    if-ne p1, v0, :cond_1

    .line 216
    const/4 v0, 0x4

    goto :goto_0

    .line 217
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAutoFocusOffParams()Z
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_NonAutoFocusModes:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/s3eCamera;->chooseFocusMode([Ljava/lang/String;)Z

    move-result v1

    .line 185
    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_AutoFocusIsOn:Z

    .line 186
    return v1

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAutoFocusOnParams()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_AutoFocusModes:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/s3eCamera;->chooseFocusMode([Ljava/lang/String;)Z

    move-result v0

    .line 179
    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_AutoFocusIsOn:Z

    .line 180
    return v0
.end method

.method private setFocusMode()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_FocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 145
    return-void
.end method

.method private waitForPreviewLock()V
    .locals 4

    .prologue
    .line 71
    sget-object v1, Lcom/ideaworks3d/marmalade/s3eCamera;->m_PreviewLock:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    :try_start_0
    sget-object v0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_PreviewLock:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 76
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

    .line 418
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 419
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 420
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 421
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 422
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 423
    const/16 v1, 0x55

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 424
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 425
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 426
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 427
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 428
    new-instance v1, Lcom/ideaworks3d/marmalade/s3eCamera$Preview;

    sget-object v2, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-direct {v1, p0, v2}, Lcom/ideaworks3d/marmalade/s3eCamera$Preview;-><init>(Lcom/ideaworks3d/marmalade/s3eCamera;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Preview:Lcom/ideaworks3d/marmalade/s3eCamera$Preview;

    .line 429
    iput-boolean v4, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_NeedsRemovePreview:Z

    .line 430
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Preview:Lcom/ideaworks3d/marmalade/s3eCamera$Preview;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    sget-object v1, Lcom/ideaworks3d/marmalade/s3eCamera;->m_PreviewLock:Ljava/lang/Object;

    monitor-enter v1

    .line 433
    :try_start_0
    sget-object v0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_PreviewLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 434
    monitor-exit v1

    .line 435
    return v3

    .line 434
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
    const/16 v2, 0x1001

    .line 257
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 258
    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_PixelFormat:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v2}, Lcom/ideaworks3d/marmalade/s3eCamera;->s3ePixelFormatToPlatform(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v2

    if-ne v1, v2, :cond_0

    array-length v1, p1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    .line 270
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v2

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->LoaderThread()Lcom/ideaworks3d/marmalade/LoaderThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->getOrientation()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ideaworks3d/marmalade/s3eCamera;->previewCallback([BIIII)V

    goto :goto_0
.end method

.method public onSuspendResumeEvent(Lcom/ideaworks3d/marmalade/SuspendResumeEvent;)V
    .locals 3

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Running:Z

    if-nez v0, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v0, p1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;->eventType:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    sget-object v1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;->RESUME:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    if-ne v0, v1, :cond_2

    .line 404
    iget v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_SizeHint:I

    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_PixelFormat:I

    iget v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Quality:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/ideaworks3d/marmalade/s3eCamera;->s3eCameraStart(III)I

    .line 406
    :cond_2
    iget-object v0, p1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;->eventType:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    sget-object v1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;->SUSPEND:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    if-ne v0, v1, :cond_3

    .line 408
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->s3eCameraStop()I

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Running:Z

    .line 411
    :cond_3
    iget-object v0, p1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;->eventType:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    sget-object v1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;->SHUTDOWN:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    if-ne v0, v1, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->s3eCameraStop()I

    goto :goto_0
.end method

.method public removePreview()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 439
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Preview:Lcom/ideaworks3d/marmalade/s3eCamera$Preview;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_NeedsRemovePreview:Z

    if-eqz v1, :cond_0

    .line 441
    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_NeedsRemovePreview:Z

    .line 442
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Preview:Lcom/ideaworks3d/marmalade/s3eCamera$Preview;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 443
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Preview:Lcom/ideaworks3d/marmalade/s3eCamera$Preview;

    .line 446
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public s3eCameraGetInt(I)I
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 116
    :pswitch_1
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->isCameraOpen()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 118
    :pswitch_2
    sget-object v2, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 119
    const-string v3, "android.hardware.camera"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "android.permission.CAMERA"

    sget-object v4, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v4}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    .line 121
    :goto_1
    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 119
    goto :goto_1

    .line 123
    :pswitch_3
    iget-boolean v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_AutoFocusIsOn:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 125
    :pswitch_4
    iget v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Type:I

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public s3eCameraIsFormatSupported(I)Z
    .locals 4

    .prologue
    const/16 v2, 0x422

    const/4 v0, 0x0

    .line 222
    const/16 v1, 0x1001

    if-ne p1, v1, :cond_1

    .line 223
    const/4 v0, 0x1

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 224
    :cond_1
    if-ne p1, v2, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->isCameraOpen()Z

    move-result v1

    .line 230
    if-nez v1, :cond_2

    .line 231
    :try_start_0
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->OpenCamera()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 248
    if-nez v1, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->CloseCamera()V

    goto :goto_0

    .line 236
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 237
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v2

    .line 239
    const/16 v3, 0x422

    invoke-direct {p0, v3}, Lcom/ideaworks3d/marmalade/s3eCamera;->s3ePixelFormatToPlatform(I)I

    move-result v3

    .line 240
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 248
    if-nez v1, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->CloseCamera()V

    goto :goto_0

    .line 242
    :catch_0
    move-exception v2

    .line 248
    if-nez v1, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->CloseCamera()V

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    if-nez v1, :cond_3

    .line 250
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->CloseCamera()V

    :cond_3
    throw v0
.end method

.method public s3eCameraSetInt(II)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 191
    .line 192
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 194
    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Type:I

    if-eq v1, p2, :cond_0

    .line 196
    iput p2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Type:I

    .line 197
    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_AutoFocusIsOn:Z

    .line 198
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->isCameraOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->CloseCamera()V

    .line 201
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->OpenCamera()Z

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 205
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 207
    if-nez p2, :cond_3

    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->setAutoFocusOffParams()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->setAutoFocusOnParams()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method public s3eCameraStart(III)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 273
    iput p1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_SizeHint:I

    .line 274
    iput p2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_PixelFormat:I

    .line 275
    iput p3, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Quality:I

    .line 278
    :try_start_0
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->OpenCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t open the camera."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :catch_0
    move-exception v0

    .line 302
    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 304
    iput-boolean v3, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Running:Z

    .line 305
    :goto_0
    return v2

    .line 280
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->setCameraParameters()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 281
    const-string v1, "Creating image buffer"

    invoke-static {v1}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 282
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    .line 283
    const-string v0, "Invoking preview methods"

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 285
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 287
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    new-instance v1, Lcom/ideaworks3d/marmalade/s3eCamera$2;

    invoke-direct {v1, p0}, Lcom/ideaworks3d/marmalade/s3eCamera$2;-><init>(Lcom/ideaworks3d/marmalade/s3eCamera;)V

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 293
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->waitForPreviewLock()V

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Running:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public s3eCameraStop()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 309
    iput-boolean v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Running:Z

    .line 310
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->CloseCamera()V

    .line 311
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_NeedsRemovePreview:Z

    if-eqz v0, :cond_0

    .line 313
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    new-instance v1, Lcom/ideaworks3d/marmalade/s3eCamera$3;

    invoke-direct {v1, p0}, Lcom/ideaworks3d/marmalade/s3eCamera$3;-><init>(Lcom/ideaworks3d/marmalade/s3eCamera;)V

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 320
    :cond_0
    return v2
.end method

.method public setCameraParameters()Landroid/hardware/Camera$Size;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 342
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    .line 396
    :goto_0
    return-object v0

    .line 344
    :cond_0
    const-string v2, "Setting camera parameters"

    invoke-static {v2}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 346
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 349
    :try_start_0
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 350
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v3

    .line 352
    iget v4, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_PixelFormat:I

    invoke-direct {p0, v4}, Lcom/ideaworks3d/marmalade/s3eCamera;->s3ePixelFormatToPlatform(I)I

    move-result v4

    .line 353
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 354
    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 360
    :cond_1
    :goto_1
    const-string v3, "Setting preview size"

    invoke-static {v3}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 362
    iget v3, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_SizeHint:I

    if-ne v3, v1, :cond_4

    .line 364
    const/4 v1, 0x2

    .line 370
    :cond_2
    :goto_2
    sget-object v3, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v3, v3, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    .line 371
    iget v4, v3, Lcom/ideaworks3d/marmalade/LoaderView;->m_Width:I

    div-int/2addr v4, v1

    .line 372
    iget v3, v3, Lcom/ideaworks3d/marmalade/LoaderView;->m_Height:I

    div-int v1, v3, v1

    .line 374
    invoke-direct {p0, v0, v4, v1}, Lcom/ideaworks3d/marmalade/s3eCamera;->getOptimalPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 376
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v1, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 377
    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Type:I

    if-eqz v1, :cond_3

    .line 379
    const-string v1, "Setting camera ID"

    invoke-static {v1}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 380
    const-string v1, "camera-id"

    iget v3, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Type:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 384
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 385
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 386
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 387
    iget-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_AutoFocusIsOn:Z

    if-eqz v1, :cond_5

    .line 388
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->setAutoFocusOnParams()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 392
    :catch_0
    move-exception v1

    goto :goto_0

    .line 366
    :cond_4
    iget v3, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_SizeHint:I

    if-nez v3, :cond_2

    .line 368
    const/4 v1, 0x4

    goto :goto_2

    .line 390
    :cond_5
    :try_start_2
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->setAutoFocusOffParams()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 356
    :catch_1
    move-exception v3

    goto :goto_1
.end method
