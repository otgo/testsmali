.class public Lcom/ideaworks3d/marmalade/LoaderActivity;
.super Landroid/app/Activity;
.source "LoaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ideaworks3d/marmalade/LoaderActivity$CursorCompleteListener;,
        Lcom/ideaworks3d/marmalade/LoaderActivity$DelayedResumeTask;
    }
.end annotation


# static fields
.field private static final INTENT_CODE:I = 0x1e240

.field public static m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;


# instance fields
.field private m_Data:Landroid/content/Intent;

.field public m_FrameLayout:Landroid/widget/FrameLayout;

.field public m_IgnoreFocusLoss:Z

.field private volatile m_IntentBlocking:Z

.field public m_ListenerManager:Lcom/ideaworks3d/marmalade/event/ListenerManager;

.field private m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

.field private m_ProgressDialogHandler:Landroid/os/Handler;

.field public m_TopLevel:Landroid/widget/RelativeLayout;

.field private m_TouchpadEvent:Ljava/lang/reflect/Method;

.field public m_View:Lcom/ideaworks3d/marmalade/LoaderView;

.field private m_orientationEventListener:Landroid/view/OrientationEventListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 98
    iput-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_ListenerManager:Lcom/ideaworks3d/marmalade/event/ListenerManager;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_IgnoreFocusLoss:Z

    .line 104
    iput-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_TouchpadEvent:Ljava/lang/reflect/Method;

    .line 109
    iput-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_orientationEventListener:Landroid/view/OrientationEventListener;

    .line 123
    return-void
.end method

.method private IsRunningART()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 464
    const-string v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    if-eqz v0, :cond_1

    const-string v3, "1."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 466
    :goto_0
    if-eqz v0, :cond_0

    .line 470
    :cond_0
    if-nez v0, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 465
    goto :goto_0

    :cond_2
    move v1, v2

    .line 470
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/ideaworks3d/marmalade/LoaderActivity;)Z
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/ideaworks3d/marmalade/LoaderActivity;)Z
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->isScreenLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/ideaworks3d/marmalade/LoaderActivity;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->startDelayedResume()V

    return-void
.end method

.method static synthetic access$300(Lcom/ideaworks3d/marmalade/LoaderActivity;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onOrientationChangedNative()V

    return-void
.end method

.method private isScreenLocked()Z
    .locals 1

    .prologue
    .line 296
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 297
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 298
    return v0
.end method

.method private isScreenOn()Z
    .locals 1

    .prologue
    .line 302
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 303
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 304
    return v0
.end method

.method private onKeyEvent(IILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 334
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    if-eqz v1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ideaworks3d/marmalade/LoaderView;->onKeyEvent(IILandroid/view/KeyEvent;)Z

    move-result v0

    .line 336
    :cond_0
    return v0
.end method

.method private native onOrientationChangedNative()V
.end method

.method private native setART(Z)V
.end method

.method private startDelayedResume()V
    .locals 2

    .prologue
    .line 309
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderActivity$DelayedResumeTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity$DelayedResumeTask;-><init>(Lcom/ideaworks3d/marmalade/LoaderActivity;Lcom/ideaworks3d/marmalade/LoaderActivity$1;)V

    .line 310
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity$DelayedResumeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 311
    return-void
.end method

.method private startLoader()V
    .locals 3

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-static {p0, v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderThread;->getInstance(Lcom/ideaworks3d/marmalade/LoaderActivity;Landroid/content/res/AssetManager;Ljava/io/File;Lcom/ideaworks3d/marmalade/LoaderView;)Lcom/ideaworks3d/marmalade/LoaderThread;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    .line 315
    return-void
.end method


# virtual methods
.method public ExecuteIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 366
    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Data:Landroid/content/Intent;

    .line 367
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_IntentBlocking:Z

    .line 368
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    if-eqz v1, :cond_1

    .line 370
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->LoaderThread()Lcom/ideaworks3d/marmalade/LoaderThread;

    move-result-object v0

    new-instance v1, Lcom/ideaworks3d/marmalade/LoaderActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/ideaworks3d/marmalade/LoaderActivity$2;-><init>(Lcom/ideaworks3d/marmalade/LoaderActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderThread;->runOnOSThread(Ljava/lang/Runnable;)V

    .line 384
    :goto_0
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_IntentBlocking:Z

    if-eqz v0, :cond_0

    .line 387
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->s3eDeviceYield(I)V

    goto :goto_0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Data:Landroid/content/Intent;

    .line 392
    :cond_1
    return-object v0
.end method

.method public HideProgressDialog()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_ProgressDialogHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 457
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 458
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 459
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_ProgressDialogHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 461
    :cond_0
    return-void
.end method

.method public LoaderThread()Lcom/ideaworks3d/marmalade/LoaderThread;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    return-object v0
.end method

.method public ShowProgressDialog()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_ProgressDialogHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 448
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 449
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 450
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_ProgressDialogHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 452
    :cond_0
    return-void
.end method

.method public createView(Z)V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_FrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    .line 183
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 185
    :cond_0
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-direct {v0, p0, p1}, Lcom/ideaworks3d/marmalade/LoaderView;-><init>(Lcom/ideaworks3d/marmalade/LoaderActivity;Z)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    .line 186
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_FrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 187
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderThread;->setView(Lcom/ideaworks3d/marmalade/LoaderView;)V

    .line 189
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 318
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_TouchpadEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_TouchpadEvent:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 328
    :goto_0
    return v0

    .line 324
    :catch_0
    move-exception v0

    .line 328
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCursor(Landroid/net/Uri;[Ljava/lang/String;Lcom/ideaworks3d/marmalade/LoaderActivity$CursorCompleteListener;)V
    .locals 2

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->LoaderThread()Lcom/ideaworks3d/marmalade/LoaderThread;

    move-result-object v0

    new-instance v1, Lcom/ideaworks3d/marmalade/LoaderActivity$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ideaworks3d/marmalade/LoaderActivity$3;-><init>(Lcom/ideaworks3d/marmalade/LoaderActivity;Landroid/net/Uri;[Ljava/lang/String;Lcom/ideaworks3d/marmalade/LoaderActivity$CursorCompleteListener;)V

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderThread;->runOnOSThread(Ljava/lang/Runnable;)V

    .line 443
    return-void
.end method

.method public getIgnoreFocusLoss()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_IgnoreFocusLoss:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 396
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 397
    const v0, 0x1e240

    if-ne p1, v0, :cond_0

    .line 399
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 401
    const-string v0, "Intent cancelled"

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Data:Landroid/content/Intent;

    .line 412
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_IntentBlocking:Z

    .line 414
    :cond_0
    new-instance v0, Lcom/ideaworks3d/marmalade/event/ActivityResultEvent;

    invoke-direct {v0, p3, p1, p2}, Lcom/ideaworks3d/marmalade/event/ActivityResultEvent;-><init>(Landroid/content/Intent;II)V

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->notifyActivityResultListeners(Lcom/ideaworks3d/marmalade/event/ActivityResultEvent;)V

    .line 415
    return-void

    .line 406
    :cond_1
    if-nez p3, :cond_2

    .line 408
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 410
    :cond_2
    iput-object p3, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Data:Landroid/content/Intent;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 200
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 201
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_1

    .line 203
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    iget-object v0, v0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderKeyboard:Lcom/ideaworks3d/marmalade/LoaderKeyboard;

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderKeyboard;->hardKeyboardConfigurationChanged(Z)V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    iget-object v0, v0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderKeyboard:Lcom/ideaworks3d/marmalade/LoaderKeyboard;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderKeyboard;->hardKeyboardConfigurationChanged(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    if-eqz v0, :cond_0

    .line 133
    :cond_0
    const-string v0, "s3e_android"

    .line 135
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 136
    sput-object p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    .line 138
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getListenerManager()Lcom/ideaworks3d/marmalade/event/ListenerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_ListenerManager:Lcom/ideaworks3d/marmalade/event/ListenerManager;

    .line 139
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->IsRunningART()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->setART(Z)V

    .line 141
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 142
    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 146
    :try_start_0
    const-string v0, "com.ideaworks3d.marmalade.s3eTouchpad"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 147
    const-string v1, "onTouchEvent"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/MotionEvent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_TouchpadEvent:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_1
    :goto_0
    new-instance v0, Lcom/ideaworks3d/marmalade/ProgressDialogHandler;

    invoke-direct {v0}, Lcom/ideaworks3d/marmalade/ProgressDialogHandler;-><init>()V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_ProgressDialogHandler:Landroid/os/Handler;

    .line 156
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_TopLevel:Landroid/widget/RelativeLayout;

    .line 157
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_FrameLayout:Landroid/widget/FrameLayout;

    .line 158
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_TopLevel:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_FrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 159
    invoke-virtual {p0, v5}, Lcom/ideaworks3d/marmalade/LoaderActivity;->createView(Z)V

    .line 160
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_TopLevel:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->setContentView(Landroid/view/View;)V

    .line 161
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderActivity$1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity$1;-><init>(Lcom/ideaworks3d/marmalade/LoaderActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_orientationEventListener:Landroid/view/OrientationEventListener;

    .line 169
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 170
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-nez v0, :cond_2

    .line 174
    :cond_2
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_TouchpadEvent:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 268
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    if-eq v0, p0, :cond_0

    .line 271
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 286
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->soundStop()V

    .line 278
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->audioStopAll()V

    .line 279
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->onDestroy()V

    .line 280
    iput-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    .line 281
    sput-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 284
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 340
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 345
    invoke-direct {p0, p1, v0, p2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onKeyEvent(IILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onKeyEvent(IILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    const/4 v0, 0x1

    .line 354
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->onLowMemory()V

    .line 293
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->onPause()V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 256
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 258
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 224
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 229
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 230
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->isScreenLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->startDelayedResume()V

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 244
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->onResume()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 216
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->startLoader()V

    .line 218
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 263
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 264
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 195
    return-void
.end method

.method public setIgnoreFocusLoss(Z)V
    .locals 0

    .prologue
    .line 362
    iput-boolean p1, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_IgnoreFocusLoss:Z

    .line 363
    return-void
.end method
