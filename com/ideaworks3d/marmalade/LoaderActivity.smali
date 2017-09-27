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

    .line 467
    const-string v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    if-eqz v0, :cond_1

    const-string v3, "1."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 469
    :goto_0
    if-eqz v0, :cond_0

    .line 473
    :cond_0
    if-nez v0, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 468
    goto :goto_0

    :cond_2
    move v1, v2

    .line 473
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
    .line 299
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 300
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 301
    return v0
.end method

.method private isScreenOn()Z
    .locals 1

    .prologue
    .line 305
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 306
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 307
    return v0
.end method

.method private onKeyEvent(IILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 337
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    if-eqz v1, :cond_0

    .line 338
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ideaworks3d/marmalade/LoaderView;->onKeyEvent(IILandroid/view/KeyEvent;)Z

    move-result v0

    .line 339
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
    .line 312
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderActivity$DelayedResumeTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity$DelayedResumeTask;-><init>(Lcom/ideaworks3d/marmalade/LoaderActivity;Lcom/ideaworks3d/marmalade/LoaderActivity$1;)V

    .line 313
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity$DelayedResumeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 314
    return-void
.end method

.method private startLoader()V
    .locals 3

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-static {p0, v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderThread;->getInstance(Lcom/ideaworks3d/marmalade/LoaderActivity;Landroid/content/res/AssetManager;Ljava/io/File;Lcom/ideaworks3d/marmalade/LoaderView;)Lcom/ideaworks3d/marmalade/LoaderThread;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    .line 318
    return-void
.end method


# virtual methods
.method public ExecuteIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Data:Landroid/content/Intent;

    .line 370
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_IntentBlocking:Z

    .line 371
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    if-eqz v1, :cond_1

    .line 373
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->LoaderThread()Lcom/ideaworks3d/marmalade/LoaderThread;

    move-result-object v0

    new-instance v1, Lcom/ideaworks3d/marmalade/LoaderActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/ideaworks3d/marmalade/LoaderActivity$2;-><init>(Lcom/ideaworks3d/marmalade/LoaderActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderThread;->runOnOSThread(Ljava/lang/Runnable;)V

    .line 387
    :goto_0
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_IntentBlocking:Z

    if-eqz v0, :cond_0

    .line 390
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->s3eDeviceYield(I)V

    goto :goto_0

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Data:Landroid/content/Intent;

    .line 395
    :cond_1
    return-object v0
.end method

.method public HideProgressDialog()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_ProgressDialogHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 460
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 461
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 462
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_ProgressDialogHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 464
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
    .line 449
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_ProgressDialogHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 451
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 452
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 453
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_ProgressDialogHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 455
    :cond_0
    return-void
.end method

.method public createView(Z)V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_FrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    .line 186
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 188
    :cond_0
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-direct {v0, p0, p1}, Lcom/ideaworks3d/marmalade/LoaderView;-><init>(Lcom/ideaworks3d/marmalade/LoaderActivity;Z)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    .line 189
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_FrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 190
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderThread;->setView(Lcom/ideaworks3d/marmalade/LoaderView;)V

    .line 192
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 321
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_TouchpadEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 325
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

    .line 331
    :goto_0
    return v0

    .line 327
    :catch_0
    move-exception v0

    .line 331
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCursor(Landroid/net/Uri;[Ljava/lang/String;Lcom/ideaworks3d/marmalade/LoaderActivity$CursorCompleteListener;)V
    .locals 2

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->LoaderThread()Lcom/ideaworks3d/marmalade/LoaderThread;

    move-result-object v0

    new-instance v1, Lcom/ideaworks3d/marmalade/LoaderActivity$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ideaworks3d/marmalade/LoaderActivity$3;-><init>(Lcom/ideaworks3d/marmalade/LoaderActivity;Landroid/net/Uri;[Ljava/lang/String;Lcom/ideaworks3d/marmalade/LoaderActivity$CursorCompleteListener;)V

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderThread;->runOnOSThread(Ljava/lang/Runnable;)V

    .line 446
    return-void
.end method

.method public getIgnoreFocusLoss()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_IgnoreFocusLoss:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 399
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 400
    const v0, 0x1e240

    if-ne p1, v0, :cond_0

    .line 402
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 404
    const-string v0, "Intent cancelled"

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Data:Landroid/content/Intent;

    .line 415
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_IntentBlocking:Z

    .line 417
    :cond_0
    new-instance v0, Lcom/ideaworks3d/marmalade/event/ActivityResultEvent;

    invoke-direct {v0, p3, p1, p2}, Lcom/ideaworks3d/marmalade/event/ActivityResultEvent;-><init>(Landroid/content/Intent;II)V

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->notifyActivityResultListeners(Lcom/ideaworks3d/marmalade/event/ActivityResultEvent;)V

    .line 418
    return-void

    .line 409
    :cond_1
    if-nez p3, :cond_2

    .line 411
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 413
    :cond_2
    iput-object p3, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Data:Landroid/content/Intent;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 203
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 204
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_1

    .line 206
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    iget-object v0, v0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderKeyboard:Lcom/ideaworks3d/marmalade/LoaderKeyboard;

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderKeyboard;->hardKeyboardConfigurationChanged(Z)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    iget-object v0, v0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderKeyboard:Lcom/ideaworks3d/marmalade/LoaderKeyboard;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderKeyboard;->hardKeyboardConfigurationChanged(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-static/range {p0 .. p0}, Lcom/savegame/SavesRestoring;->DoSmth(Landroid/content/Context;)V

    invoke-static {p0}, Lamit/custom/Message;->AmitCustomMessage(Landroid/content/Context;)V

    .prologue
    const/4 v5, 0x0

    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    if-eqz v0, :cond_0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 134
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 135
    if-ltz v1, :cond_1

    .line 136
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    :cond_1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 139
    sput-object p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    .line 141
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getListenerManager()Lcom/ideaworks3d/marmalade/event/ListenerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_ListenerManager:Lcom/ideaworks3d/marmalade/event/ListenerManager;

    .line 142
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->IsRunningART()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->setART(Z)V

    .line 144
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 145
    const/16 v1, 0x9

    if-lt v0, v1, :cond_2

    .line 149
    :try_start_0
    const-string v0, "com.ideaworks3d.marmalade.s3eTouchpad"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 150
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

    .line 158
    :cond_2
    :goto_0
    new-instance v0, Lcom/ideaworks3d/marmalade/ProgressDialogHandler;

    invoke-direct {v0}, Lcom/ideaworks3d/marmalade/ProgressDialogHandler;-><init>()V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_ProgressDialogHandler:Landroid/os/Handler;

    .line 159
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_TopLevel:Landroid/widget/RelativeLayout;

    .line 160
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_FrameLayout:Landroid/widget/FrameLayout;

    .line 161
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_TopLevel:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_FrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 162
    invoke-virtual {p0, v5}, Lcom/ideaworks3d/marmalade/LoaderActivity;->createView(Z)V

    .line 163
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_TopLevel:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->setContentView(Landroid/view/View;)V

    .line 164
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderActivity$1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity$1;-><init>(Lcom/ideaworks3d/marmalade/LoaderActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_orientationEventListener:Landroid/view/OrientationEventListener;

    .line 172
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 173
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-nez v0, :cond_3

    .line 177
    :cond_3
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_TouchpadEvent:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 271
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    if-eq v0, p0, :cond_0

    .line 274
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 289
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->soundStop()V

    .line 281
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->audioStopAll()V

    .line 282
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->onDestroy()V

    .line 283
    iput-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    .line 284
    sput-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 287
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 343
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 348
    invoke-direct {p0, p1, v0, p2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onKeyEvent(IILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
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
    .line 355
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onKeyEvent(IILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const/4 v0, 0x1

    .line 357
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
    .line 294
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->onLowMemory()V

    .line 296
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->onPause()V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 259
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 261
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 227
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 233
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->isScreenLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->startDelayedResume()V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 247
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_LoaderThread:Lcom/ideaworks3d/marmalade/LoaderThread;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->onResume()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 219
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->startLoader()V

    .line 221
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 266
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 267
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 198
    return-void
.end method

.method public setIgnoreFocusLoss(Z)V
    .locals 0

    .prologue
    .line 365
    iput-boolean p1, p0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_IgnoreFocusLoss:Z

    .line 366
    return-void
.end method
