.class public Lcom/nickchops/s3eAndroidFullscreen/s3eAndroidFullscreen;
.super Ljava/lang/Object;
.source "s3eAndroidFullscreen.java"


# static fields
.field private static m_sticky:Z

.field private static m_stickyFlags:I

.field private static m_wantFullscreen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-boolean v0, Lcom/nickchops/s3eAndroidFullscreen/s3eAndroidFullscreen;->m_sticky:Z

    .line 23
    sput-boolean v0, Lcom/nickchops/s3eAndroidFullscreen/s3eAndroidFullscreen;->m_wantFullscreen:Z

    .line 24
    sput v0, Lcom/nickchops/s3eAndroidFullscreen/s3eAndroidFullscreen;->m_stickyFlags:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    .line 142
    sget-boolean v0, Lcom/nickchops/s3eAndroidFullscreen/s3eAndroidFullscreen;->m_wantFullscreen:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/nickchops/s3eAndroidFullscreen/s3eAndroidFullscreen;->m_sticky:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 144
    const-string v0, "re-hiding Android nav bar (sticky mode is on)"

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 146
    sget v1, Lcom/nickchops/s3eAndroidFullscreen/s3eAndroidFullscreen;->m_stickyFlags:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method public s3eAndroidFullscreenIsImmersiveSupported()Z
    .locals 2

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s3eAndroidFullscreenOff(ZZZ)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 81
    sput-boolean v0, Lcom/nickchops/s3eAndroidFullscreen/s3eAndroidFullscreen;->m_wantFullscreen:Z

    .line 82
    sput-boolean v0, Lcom/nickchops/s3eAndroidFullscreen/s3eAndroidFullscreen;->m_sticky:Z

    .line 85
    if-nez p2, :cond_0

    .line 86
    sget-boolean v0, Lcom/nickchops/s3eAndroidFullscreen/s3eAndroidFullscreen;->m_sticky:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x1000

    :goto_0
    or-int/lit8 v0, v0, 0x2

    .line 88
    :cond_0
    if-nez p1, :cond_1

    .line 89
    or-int/lit16 v0, v0, 0x400

    .line 91
    :cond_1
    if-eqz p3, :cond_2

    .line 92
    or-int/lit16 v0, v0, 0x100

    or-int/lit16 v0, v0, 0x200

    .line 94
    :cond_2
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 95
    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 96
    return-void

    .line 86
    :cond_3
    const/16 v0, 0x800

    goto :goto_0
.end method

.method public s3eAndroidFullscreenOn(ZZZ)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    sput-boolean v0, Lcom/nickchops/s3eAndroidFullscreen/s3eAndroidFullscreen;->m_wantFullscreen:Z

    .line 45
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    :goto_0
    sput-boolean v0, Lcom/nickchops/s3eAndroidFullscreen/s3eAndroidFullscreen;->m_sticky:Z

    .line 47
    const/4 v2, 0x6

    .line 52
    if-eqz p3, :cond_2

    const/16 v0, 0x700

    :goto_1
    or-int/2addr v0, v2

    .line 61
    if-eqz p1, :cond_0

    sget-boolean v1, Lcom/nickchops/s3eAndroidFullscreen/s3eAndroidFullscreen;->m_sticky:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x1000

    :cond_0
    :goto_2
    or-int/2addr v0, v1

    .line 63
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 65
    const/16 v2, 0x1706

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 76
    sput v0, Lcom/nickchops/s3eAndroidFullscreen/s3eAndroidFullscreen;->m_stickyFlags:I

    .line 77
    return-void

    :cond_1
    move v0, v1

    .line 45
    goto :goto_0

    :cond_2
    move v0, v1

    .line 52
    goto :goto_1

    .line 61
    :cond_3
    const/16 v1, 0x800

    goto :goto_2
.end method

.method public supported()Z
    .locals 2

    .prologue
    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
