.class public Lcom/ideaworks3d/marmalade/s3eTest;
.super Ljava/lang/Object;
.source "s3eTest.java"


# instance fields
.field private m_Handler:Landroid/os/Handler;

.field private suspendResumeCompletionFlag:Z

.field private final suspendResumeLock:Ljava/lang/Object;

.field thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eTest;->suspendResumeCompletionFlag:Z

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eTest;->suspendResumeLock:Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->LoaderThread()Lcom/ideaworks3d/marmalade/LoaderThread;

    move-result-object v0

    new-instance v1, Lcom/ideaworks3d/marmalade/s3eTest$1;

    invoke-direct {v1, p0}, Lcom/ideaworks3d/marmalade/s3eTest$1;-><init>(Lcom/ideaworks3d/marmalade/s3eTest;)V

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderThread;->runOnOSThread(Ljava/lang/Runnable;)V

    .line 23
    return-void
.end method

.method static synthetic access$002(Lcom/ideaworks3d/marmalade/s3eTest;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/s3eTest;->m_Handler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ideaworks3d/marmalade/s3eTest;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eTest;->suspendResumeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ideaworks3d/marmalade/s3eTest;)Z
    .locals 1

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eTest;->suspendResumeCompletionFlag:Z

    return v0
.end method

.method static synthetic access$202(Lcom/ideaworks3d/marmalade/s3eTest;Z)Z
    .locals 0

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/ideaworks3d/marmalade/s3eTest;->suspendResumeCompletionFlag:Z

    return p1
.end method


# virtual methods
.method public PostResume()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "PostResume"

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eTest;->m_Handler:Landroid/os/Handler;

    new-instance v1, Lcom/ideaworks3d/marmalade/s3eTest$3;

    invoke-direct {v1, p0}, Lcom/ideaworks3d/marmalade/s3eTest$3;-><init>(Lcom/ideaworks3d/marmalade/s3eTest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    return-void
.end method

.method public PostRotate(II)V
    .locals 2

    .prologue
    .line 107
    const-string v0, "PostRotate"

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eTest;->m_Handler:Landroid/os/Handler;

    new-instance v1, Lcom/ideaworks3d/marmalade/s3eTest$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/ideaworks3d/marmalade/s3eTest$6;-><init>(Lcom/ideaworks3d/marmalade/s3eTest;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    return-void
.end method

.method public PostSetFocus(Z)V
    .locals 2

    .prologue
    .line 52
    const-string v0, "PostSetFocus"

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eTest;->m_Handler:Landroid/os/Handler;

    new-instance v1, Lcom/ideaworks3d/marmalade/s3eTest$4;

    invoke-direct {v1, p0, p1}, Lcom/ideaworks3d/marmalade/s3eTest$4;-><init>(Lcom/ideaworks3d/marmalade/s3eTest;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method

.method public PostSuspend()V
    .locals 2

    .prologue
    .line 26
    const-string v0, "PostSuspend"

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eTest;->m_Handler:Landroid/os/Handler;

    new-instance v1, Lcom/ideaworks3d/marmalade/s3eTest$2;

    invoke-direct {v1, p0}, Lcom/ideaworks3d/marmalade/s3eTest$2;-><init>(Lcom/ideaworks3d/marmalade/s3eTest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    return-void
.end method

.method public PostSuspendResume(II)V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ideaworks3d/marmalade/s3eTest$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/ideaworks3d/marmalade/s3eTest$5;-><init>(Lcom/ideaworks3d/marmalade/s3eTest;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eTest;->thread:Ljava/lang/Thread;

    .line 97
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eTest;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 98
    return-void
.end method

.method public QueryThreadFinished()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eTest;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public TakeScreenShot([I)[I
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 118
    const-string v0, "TakeScreenShot"

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 120
    invoke-virtual {v8, v9}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 121
    invoke-virtual {v8}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 123
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 124
    mul-int v1, v3, v7

    .line 125
    new-array v1, v1, [I

    move v4, v2

    move v5, v2

    move v6, v3

    .line 126
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 127
    aput v3, p1, v2

    .line 128
    aput v7, p1, v9

    .line 129
    invoke-virtual {v8, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 130
    return-object v1
.end method
