.class public Lcom/ideaworks3d/marmalade/LoaderThread;
.super Ljava/lang/Thread;
.source "LoaderThread.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ideaworks3d/marmalade/LoaderThread$5;,
        Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;,
        Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;,
        Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;
    }
.end annotation


# static fields
.field static g_Singleton:Lcom/ideaworks3d/marmalade/LoaderThread;


# instance fields
.field private m_Accelerometer:Landroid/hardware/Sensor;

.field private m_AppDoingInitTerm:I

.field private m_Assets:Landroid/content/res/AssetManager;

.field private m_BatteryLevel:I

.field private m_BatteryLevelReceiver:Landroid/content/BroadcastReceiver;

.field private m_BatteryLevelReceiverRegistered:Ljava/lang/Boolean;

.field private m_ChargerConnected:Z

.field private m_Compass:Landroid/hardware/Sensor;

.field private final m_CreateView:Ljava/lang/Runnable;

.field private m_DidSuspendForSurfaceChange:Z

.field private m_FileRoot:Ljava/io/File;

.field private m_FixScreenOrientation:I

.field private m_Handler:Landroid/os/Handler;

.field private m_IgnoreResizeWhilePaused:Z

.field private m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

.field private m_LoaderSMSReceiver:Lcom/ideaworks3d/marmalade/LoaderSMSReceiver;

.field private m_Location:Lcom/ideaworks3d/marmalade/LoaderLocation;

.field private m_MediaPlayerManager:Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;

.field private m_MulticastLock:Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;

.field private m_NetworkCheckEnabled:Z

.field private m_NetworkCheckReceiver:Landroid/content/BroadcastReceiver;

.field private m_OnTouchWait:Ljava/lang/Integer;

.field private m_Orientation:Landroid/hardware/Sensor;

.field private m_Paused:Ljava/lang/Boolean;

.field private m_ResumeInProgress:Ljava/lang/Boolean;

.field private final m_RunOnOSThread:Ljava/lang/Runnable;

.field private m_SensorManager:Landroid/hardware/SensorManager;

.field private m_SkipNextChange:Z

.field private m_SoundPlayer:Lcom/ideaworks3d/marmalade/SoundPlayer;

.field private m_SoundRecord:Lcom/ideaworks3d/marmalade/SoundRecord;

.field private m_StartScreenOrientation:I

.field private m_Started:Ljava/lang/Boolean;

.field private m_TelephonyManagerExists:Z

.field private m_TelephonyManagerExistsKnown:Z

.field private m_Terminating:Ljava/lang/Boolean;

.field private m_TouchEvent:Ljava/lang/reflect/Method;

.field private m_TouchMulti:Z

.field private m_UseGL:Z

.field private m_VideoIsPaused:Ljava/lang/Boolean;

.field private m_View:Lcom/ideaworks3d/marmalade/LoaderView;

.field private m_getRotation:Ljava/lang/reflect/Method;

.field private m_splashFinished:Z


# direct methods
.method private constructor <init>(Lcom/ideaworks3d/marmalade/LoaderActivity;Landroid/content/res/AssetManager;Ljava/io/File;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 549
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 463
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderThread$1;

    invoke-direct {v0, p0}, Lcom/ideaworks3d/marmalade/LoaderThread$1;-><init>(Lcom/ideaworks3d/marmalade/LoaderThread;)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    .line 478
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderThread$2;

    invoke-direct {v0, p0}, Lcom/ideaworks3d/marmalade/LoaderThread$2;-><init>(Lcom/ideaworks3d/marmalade/LoaderThread;)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckReceiver:Landroid/content/BroadcastReceiver;

    .line 497
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckEnabled:Z

    .line 498
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Handler:Landroid/os/Handler;

    .line 505
    iput-object v5, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundRecord:Lcom/ideaworks3d/marmalade/SoundRecord;

    .line 506
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_UseGL:Z

    .line 513
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Paused:Ljava/lang/Boolean;

    .line 514
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_ResumeInProgress:Ljava/lang/Boolean;

    .line 515
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_VideoIsPaused:Ljava/lang/Boolean;

    .line 516
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Started:Ljava/lang/Boolean;

    .line 517
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Terminating:Ljava/lang/Boolean;

    .line 519
    iput-object v5, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_TouchEvent:Ljava/lang/reflect/Method;

    .line 520
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_OnTouchWait:Ljava/lang/Integer;

    .line 521
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_TouchMulti:Z

    .line 524
    iput-object v5, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_MulticastLock:Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;

    .line 525
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderThread$3;

    invoke-direct {v0, p0}, Lcom/ideaworks3d/marmalade/LoaderThread$3;-><init>(Lcom/ideaworks3d/marmalade/LoaderThread;)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_RunOnOSThread:Ljava/lang/Runnable;

    .line 532
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderThread$4;

    invoke-direct {v0, p0}, Lcom/ideaworks3d/marmalade/LoaderThread$4;-><init>(Lcom/ideaworks3d/marmalade/LoaderThread;)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_CreateView:Ljava/lang/Runnable;

    .line 547
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiverRegistered:Ljava/lang/Boolean;

    .line 694
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_splashFinished:Z

    .line 550
    iput-object p2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Assets:Landroid/content/res/AssetManager;

    .line 553
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    .line 554
    iput v4, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_StartScreenOrientation:I

    .line 555
    invoke-virtual {p1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_FixScreenOrientation:I

    .line 557
    iput-object p3, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_FileRoot:Ljava/io/File;

    .line 558
    new-instance v0, Lcom/ideaworks3d/marmalade/SoundPlayer;

    invoke-direct {v0}, Lcom/ideaworks3d/marmalade/SoundPlayer;-><init>()V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundPlayer:Lcom/ideaworks3d/marmalade/SoundPlayer;

    .line 559
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;

    invoke-direct {v0, p0}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;-><init>(Lcom/ideaworks3d/marmalade/LoaderThread;)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_MediaPlayerManager:Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;

    .line 561
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 563
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiverRegistered:Ljava/lang/Boolean;

    .line 564
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    .line 567
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_FileRoot:Ljava/io/File;

    const-string v2, "makeramdirectory.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 568
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 576
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 578
    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 582
    :try_start_1
    const-string v0, "com.ideaworks3d.marmalade.MultiTouch"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 583
    const-string v1, "onTouchEvent"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/ideaworks3d/marmalade/LoaderThread;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/view/MotionEvent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_TouchEvent:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 591
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->initNative()V

    .line 592
    return-void

    .line 585
    :catch_0
    move-exception v0

    .line 587
    iput-object v5, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_TouchEvent:Ljava/lang/reflect/Method;

    goto :goto_1

    .line 572
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/ideaworks3d/marmalade/LoaderThread;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->runOnOSTickNative()V

    return-void
.end method

.method static synthetic access$1100(Lcom/ideaworks3d/marmalade/LoaderThread;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_UseGL:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/ideaworks3d/marmalade/LoaderThread;)Lcom/ideaworks3d/marmalade/LoaderActivity;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/ideaworks3d/marmalade/LoaderThread;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_CreateView:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ideaworks3d/marmalade/LoaderThread;I)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/ideaworks3d/marmalade/LoaderThread;->audioStoppedNotify(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/ideaworks3d/marmalade/LoaderThread;)Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Assets:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/ideaworks3d/marmalade/LoaderThread;I)I
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevel:I

    return p1
.end method

.method static synthetic access$700(Lcom/ideaworks3d/marmalade/LoaderThread;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_ChargerConnected:Z

    return v0
.end method

.method static synthetic access$702(Lcom/ideaworks3d/marmalade/LoaderThread;Z)Z
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_ChargerConnected:Z

    return p1
.end method

.method static synthetic access$800(Lcom/ideaworks3d/marmalade/LoaderThread;Z)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/ideaworks3d/marmalade/LoaderThread;->chargerStateChanged(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/ideaworks3d/marmalade/LoaderThread;Z)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/ideaworks3d/marmalade/LoaderThread;->networkCheckChanged(Z)V

    return-void
.end method

.method private native audioStoppedNotify(I)V
.end method

.method private native chargerStateChanged(Z)V
.end method

.method private doResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 996
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    .line 997
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->waitForView()V

    .line 998
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderView;->glResume()V

    .line 999
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    .line 1000
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Accelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Accelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Compass:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Orientation:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1005
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Compass:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1007
    :cond_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Location:Lcom/ideaworks3d/marmalade/LoaderLocation;

    if-eqz v0, :cond_2

    .line 1008
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Location:Lcom/ideaworks3d/marmalade/LoaderLocation;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderLocation;->locationStart(Lcom/ideaworks3d/marmalade/LoaderActivity;)Z

    .line 1009
    :cond_2
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiverRegistered:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1012
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1014
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiverRegistered:Ljava/lang/Boolean;

    .line 1016
    :cond_3
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckEnabled:Z

    if-eqz v0, :cond_4

    .line 1018
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1021
    :cond_4
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundPlayer:Lcom/ideaworks3d/marmalade/SoundPlayer;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/SoundPlayer;->resume()V

    .line 1022
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_MediaPlayerManager:Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->doResume()V

    .line 1023
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_VideoIsPaused:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1024
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderView;->videoResume()I

    .line 1025
    :cond_5
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundRecord:Lcom/ideaworks3d/marmalade/SoundRecord;

    if-eqz v0, :cond_6

    .line 1026
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundRecord:Lcom/ideaworks3d/marmalade/SoundRecord;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/SoundRecord;->start(I)I

    .line 1027
    :cond_6
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_ResumeInProgress:Ljava/lang/Boolean;

    .line 1028
    new-instance v0, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;

    sget-object v1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;->RESUME:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    invoke-direct {v0, v1}, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;-><init>(Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;)V

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->notifySuspendResumeListeners(Lcom/ideaworks3d/marmalade/SuspendResumeEvent;)V

    .line 1030
    return-void
.end method

.method private doSuspend()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 955
    new-instance v0, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;

    sget-object v2, Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;->SUSPEND:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    invoke-direct {v0, v2}, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;-><init>(Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;)V

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->notifySuspendResumeListeners(Lcom/ideaworks3d/marmalade/SuspendResumeEvent;)V

    .line 956
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_MediaPlayerManager:Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->doPause()V

    .line 957
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderView;->videoGetStatus()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_VideoIsPaused:Ljava/lang/Boolean;

    .line 958
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_VideoIsPaused:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderView;->videoPause()I

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundPlayer:Lcom/ideaworks3d/marmalade/SoundPlayer;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/SoundPlayer;->pause()V

    .line 961
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundRecord:Lcom/ideaworks3d/marmalade/SoundRecord;

    if-eqz v0, :cond_1

    .line 962
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundRecord:Lcom/ideaworks3d/marmalade/SoundRecord;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/SoundRecord;->stop()I

    .line 963
    :cond_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiverRegistered:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 966
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 968
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 970
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiverRegistered:Ljava/lang/Boolean;

    .line 972
    :cond_3
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckEnabled:Z

    if-eqz v0, :cond_4

    .line 975
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 977
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 980
    :cond_4
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Location:Lcom/ideaworks3d/marmalade/LoaderLocation;

    if-eqz v0, :cond_5

    .line 981
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Location:Lcom/ideaworks3d/marmalade/LoaderLocation;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderLocation;->locationStop()Z

    .line 982
    :cond_5
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Accelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_6

    .line 983
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Accelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 984
    :cond_6
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Compass:Landroid/hardware/Sensor;

    if-eqz v0, :cond_7

    .line 986
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Compass:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 987
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Orientation:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 989
    :cond_7
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    .line 990
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderView;->glPause()V

    .line 991
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    .line 992
    return-void

    :cond_8
    move v0, v1

    .line 957
    goto/16 :goto_0
.end method

.method private extendSplashOrientation(I)I
    .locals 2

    .prologue
    .line 702
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 713
    :goto_0
    return p1

    .line 704
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 708
    :sswitch_0
    const/4 p1, 0x6

    goto :goto_0

    .line 711
    :sswitch_1
    const/4 p1, 0x7

    goto :goto_0

    .line 704
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method private fixOrientation(I)V
    .locals 2

    .prologue
    .line 655
    invoke-direct {p0, p1}, Lcom/ideaworks3d/marmalade/LoaderThread;->translateS3eOrientation(I)I

    move-result v0

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_FixScreenOrientation:I

    .line 657
    const-string v0, "AndroidIgnoreResizeWhilePaused"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderAPI;->s3eConfigGet(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_IgnoreResizeWhilePaused:Z

    .line 661
    :cond_0
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->doFixOrientation()V

    .line 662
    return-void
.end method

.method private getCacheDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 1171
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lcom/ideaworks3d/marmalade/LoaderActivity;Landroid/content/res/AssetManager;Ljava/io/File;Lcom/ideaworks3d/marmalade/LoaderView;)Lcom/ideaworks3d/marmalade/LoaderThread;
    .locals 2

    .prologue
    .line 612
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderThread;->g_Singleton:Lcom/ideaworks3d/marmalade/LoaderThread;

    if-nez v0, :cond_0

    .line 615
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/ideaworks3d/marmalade/LoaderThread;-><init>(Lcom/ideaworks3d/marmalade/LoaderActivity;Landroid/content/res/AssetManager;Ljava/io/File;)V

    sput-object v0, Lcom/ideaworks3d/marmalade/LoaderThread;->g_Singleton:Lcom/ideaworks3d/marmalade/LoaderThread;

    .line 616
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderThread;->g_Singleton:Lcom/ideaworks3d/marmalade/LoaderThread;

    invoke-virtual {v0, p3}, Lcom/ideaworks3d/marmalade/LoaderThread;->setView(Lcom/ideaworks3d/marmalade/LoaderView;)V

    .line 617
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderThread;->g_Singleton:Lcom/ideaworks3d/marmalade/LoaderThread;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->start()V

    .line 629
    :goto_0
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderThread;->g_Singleton:Lcom/ideaworks3d/marmalade/LoaderThread;

    return-object v0

    .line 622
    :cond_0
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderThread;->g_Singleton:Lcom/ideaworks3d/marmalade/LoaderThread;

    iget-object v1, v0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    monitor-enter v1

    .line 625
    :try_start_0
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderThread;->g_Singleton:Lcom/ideaworks3d/marmalade/LoaderThread;

    iput-object p0, v0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    .line 626
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderThread;->g_Singleton:Lcom/ideaworks3d/marmalade/LoaderThread;

    invoke-virtual {v0, p3}, Lcom/ideaworks3d/marmalade/LoaderThread;->setView(Lcom/ideaworks3d/marmalade/LoaderView;)V

    .line 627
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getPrivateExternalDir()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1144
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1159
    :goto_0
    return-object v1

    .line 1147
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_2

    .line 1151
    :try_start_0
    const-class v0, Landroid/content/Context;

    const-string v2, "getExternalFilesDir"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1152
    iget-object v3, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1159
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v1, v0

    goto :goto_0

    .line 1154
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 1159
    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private getRstDir()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1163
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1166
    :cond_0
    :goto_0
    return-object v0

    .line 1165
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 1166
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTelephonyId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1300
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->telephonyManagerExists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1318
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1308
    :cond_1
    :try_start_0
    new-instance v0, Lcom/ideaworks3d/marmalade/TelephonyManagerProxy;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-direct {v0, v1}, Lcom/ideaworks3d/marmalade/TelephonyManagerProxy;-><init>(Landroid/app/Activity;)V

    .line 1309
    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/TelephonyManagerProxy;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 1310
    if-eqz v0, :cond_0

    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 1313
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getTmpDir()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    .line 1179
    :try_start_0
    const-class v0, Landroid/content/Context;

    const-string v2, "getExternalCacheDir"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1180
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1181
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1188
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 1181
    goto :goto_0

    .line 1183
    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v1

    .line 1188
    goto :goto_0
.end method

.method private glInit(I)V
    .locals 3

    .prologue
    .line 1053
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_UseGL:Z

    if-eqz v0, :cond_0

    .line 1078
    :goto_0
    return-void

    .line 1058
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_UseGL:Z

    .line 1059
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    .line 1060
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Paused:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Terminating:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1062
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_CreateView:Ljava/lang/Runnable;

    monitor-enter v1

    .line 1064
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_CreateView:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1067
    :try_start_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_CreateView:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1072
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1073
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->waitForView()V

    .line 1075
    :cond_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0, p1}, Lcom/ideaworks3d/marmalade/LoaderView;->glInit(I)Z

    .line 1076
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    goto :goto_0

    .line 1072
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1069
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private glReInit()V
    .locals 1

    .prologue
    .line 1118
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_UseGL:Z

    if-nez v0, :cond_0

    .line 1127
    :goto_0
    return-void

    .line 1123
    :cond_0
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    .line 1124
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderView;->glReInit()V

    .line 1125
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    goto :goto_0
.end method

.method private glTerm()V
    .locals 3

    .prologue
    .line 1082
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_UseGL:Z

    if-nez v0, :cond_0

    .line 1114
    :goto_0
    return-void

    .line 1087
    :cond_0
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    .line 1088
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderView;->glTerm()V

    .line 1089
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_UseGL:Z

    .line 1091
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Paused:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Terminating:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1093
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_CreateView:Ljava/lang/Runnable;

    monitor-enter v1

    .line 1095
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_CreateView:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1098
    :try_start_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_CreateView:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1103
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1106
    :cond_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Paused:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1108
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->waitForView()V

    .line 1112
    :cond_2
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    goto :goto_0

    .line 1103
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1100
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private native initNative()V
.end method

.method private native lowMemoryWarning()V
.end method

.method private native networkCheckChanged(Z)V
.end method

.method private native onAccelNative(FFF)V
.end method

.method private native onCompassNative(IFFF)V
.end method

.method private native resumeAppThreads()V
.end method

.method private native runNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native runOnOSThreadNative(Ljava/lang/Runnable;)V
.end method

.method private native runOnOSTickNative()V
.end method

.method private native setViewNative(Lcom/ideaworks3d/marmalade/LoaderView;)V
.end method

.method private native shutdownNative()V
.end method

.method private shuttingDown(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1208
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Terminating:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1213
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Started:Ljava/lang/Boolean;

    .line 1214
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Terminating:Ljava/lang/Boolean;

    .line 1215
    const/4 v0, 0x0

    sput-object v0, Lcom/ideaworks3d/marmalade/LoaderThread;->g_Singleton:Lcom/ideaworks3d/marmalade/LoaderThread;

    .line 1217
    if-eqz p1, :cond_2

    .line 1218
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->shutdownNative()V

    .line 1219
    :cond_2
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->smsStop()V

    .line 1220
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->accelStop()V

    .line 1221
    new-instance v0, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;

    sget-object v1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;->SHUTDOWN:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    invoke-direct {v0, v1}, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;-><init>(Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;)V

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->notifySuspendResumeListeners(Lcom/ideaworks3d/marmalade/SuspendResumeEvent;)V

    .line 1222
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiverRegistered:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1227
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 1229
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1231
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiverRegistered:Ljava/lang/Boolean;

    .line 1233
    :cond_4
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->networkCheckStop()Z

    .line 1235
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->finish()V

    goto :goto_0
.end method

.method private native signalResume(Z)Z
.end method

.method private native signalSuspend(Z)Z
.end method

.method private native suspendAppThreads()V
.end method

.method private touchSetWait(I)V
    .locals 1

    .prologue
    .line 734
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_OnTouchWait:Ljava/lang/Integer;

    .line 735
    return-void
.end method

.method private translateS3eOrientation(I)I
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 633
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-ge v3, v4, :cond_1

    move v3, v0

    .line 634
    :goto_0
    packed-switch p1, :pswitch_data_0

    move v0, v2

    .line 650
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    :cond_1
    move v3, v1

    .line 633
    goto :goto_0

    :pswitch_1
    move v0, v2

    .line 637
    goto :goto_1

    .line 639
    :pswitch_2
    if-nez v3, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    .line 642
    :pswitch_3
    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x6

    goto :goto_1

    :pswitch_4
    move v0, v1

    .line 647
    goto :goto_1

    .line 634
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private translateSplashOrientation(I)I
    .locals 1

    .prologue
    .line 717
    sparse-switch p1, :sswitch_data_0

    .line 723
    :cond_0
    :goto_0
    return p1

    .line 721
    :sswitch_0
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_splashFinished:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_StartScreenOrientation:I

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->extendSplashOrientation(I)I

    move-result p1

    goto :goto_0

    .line 717
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private waitForView()V
    .locals 2

    .prologue
    .line 1035
    :goto_0
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    monitor-enter v1

    .line 1037
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Terminating:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderView;->waitForSurface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1042
    monitor-exit v1

    goto :goto_0

    .line 1047
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1045
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->setViewNative(Lcom/ideaworks3d/marmalade/LoaderView;)V

    .line 1046
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1049
    return-void
.end method


# virtual methods
.method public accelStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 800
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Accelerometer:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Accelerometer:Landroid/hardware/Sensor;

    .line 803
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Accelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 805
    :cond_0
    return-void
.end method

.method public accelStop()V
    .locals 2

    .prologue
    .line 808
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Accelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Accelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 811
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Accelerometer:Landroid/hardware/Sensor;

    .line 813
    :cond_0
    return-void
.end method

.method public acquireMulticastLock()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1509
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1510
    const/4 v2, 0x3

    if-gt v0, v2, :cond_0

    move v0, v1

    .line 1532
    :goto_0
    return v0

    .line 1512
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_MulticastLock:Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;

    if-nez v0, :cond_1

    .line 1514
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1519
    :try_start_0
    new-instance v2, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;

    invoke-direct {v2, p0, v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;-><init>(Lcom/ideaworks3d/marmalade/LoaderThread;Landroid/net/wifi/WifiManager;)V

    iput-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_MulticastLock:Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1527
    :cond_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_MulticastLock:Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;

    if-eqz v0, :cond_2

    .line 1529
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_MulticastLock:Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->acquire()V

    .line 1530
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_MulticastLock:Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->isHeld()Z

    move-result v0

    goto :goto_0

    .line 1521
    :catch_0
    move-exception v0

    move v0, v1

    .line 1524
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1532
    goto :goto_0
.end method

.method public audioStopAll()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_MediaPlayerManager:Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->audioStopAll()V

    .line 455
    return-void
.end method

.method public chargerIsConnected()Z
    .locals 1

    .prologue
    .line 950
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_ChargerConnected:Z

    return v0
.end method

.method public clipboardGet()Ljava/lang/String;
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 898
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 900
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 903
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clipboardSet(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 907
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 908
    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 910
    :cond_0
    return-void
.end method

.method public compassStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 836
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Compass:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Compass:Landroid/hardware/Sensor;

    .line 839
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Orientation:Landroid/hardware/Sensor;

    .line 840
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Orientation:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 841
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Compass:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 843
    :cond_0
    return-void
.end method

.method public compassStop()V
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Compass:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Compass:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 849
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Orientation:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 850
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Compass:Landroid/hardware/Sensor;

    .line 852
    :cond_0
    return-void
.end method

.method public doFixOrientation()V
    .locals 2

    .prologue
    .line 727
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_FixScreenOrientation:I

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->translateSplashOrientation(I)I

    move-result v0

    .line 729
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v1, v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->setRequestedOrientation(I)V

    .line 730
    return-void
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 935
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevel:I

    return v0
.end method

.method public getDeviceDpi(Z)I
    .locals 4

    .prologue
    .line 939
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 940
    if-eqz p1, :cond_0

    .line 941
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 946
    :goto_0
    return v0

    .line 942
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v2

    .line 943
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v2, v3

    .line 944
    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    .line 945
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v2, v3

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v3

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    .line 946
    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getDeviceIMSI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1358
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->telephonyManagerExists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1374
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1366
    :cond_0
    :try_start_0
    new-instance v0, Lcom/ideaworks3d/marmalade/TelephonyManagerProxy;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-direct {v0, v1}, Lcom/ideaworks3d/marmalade/TelephonyManagerProxy;-><init>(Landroid/app/Activity;)V

    .line 1367
    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/TelephonyManagerProxy;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 1369
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1322
    const-string v2, "AndroidTryAndroidIdFirst"

    invoke-static {v2, v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->s3eConfigGet(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    .line 1324
    :goto_0
    if-nez v2, :cond_2

    .line 1326
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->getTelephonyId()Ljava/lang/String;

    move-result-object v0

    .line 1327
    if-eqz v0, :cond_2

    const-string v3, ""

    if-eq v0, v3, :cond_2

    .line 1354
    :cond_0
    :goto_1
    return-object v0

    .line 1322
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    .line 1330
    :cond_2
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "android_id"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1331
    if-eqz v0, :cond_3

    const-string v3, "9774d56d682e549c"

    if-ne v0, v3, :cond_0

    .line 1335
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v0, v3, :cond_4

    .line 1339
    :try_start_0
    const-class v0, Landroid/os/Build;

    const-string v3, "SERIAL"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1340
    if-nez v0, :cond_0

    .line 1348
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 1350
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->getTelephonyId()Ljava/lang/String;

    move-result-object v0

    .line 1351
    if-eqz v0, :cond_5

    const-string v2, ""

    if-ne v0, v2, :cond_0

    :cond_5
    move-object v0, v1

    .line 1354
    goto :goto_1

    .line 1343
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1279
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1378
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->telephonyManagerExists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1394
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1386
    :cond_0
    :try_start_0
    new-instance v0, Lcom/ideaworks3d/marmalade/TelephonyManagerProxy;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-direct {v0, v1}, Lcom/ideaworks3d/marmalade/TelephonyManagerProxy;-><init>(Landroid/app/Activity;)V

    .line 1387
    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/TelephonyManagerProxy;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 1389
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getNetworkSubType()I
    .locals 2

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1501
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1502
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1503
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 1505
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getNetworkType()I
    .locals 2

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1492
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1493
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1494
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 1496
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 665
    .line 666
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 667
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 668
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_getRotation:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 670
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 673
    :try_start_0
    const-string v3, "getRotation"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_getRotation:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_getRotation:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 692
    :goto_1
    return v0

    .line 675
    :catch_0
    move-exception v3

    .line 679
    :try_start_2
    const-string v3, "getOrientation"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_getRotation:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 681
    :catch_1
    move-exception v2

    goto :goto_0

    .line 688
    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_1
.end method

.method public getSilentMode()Z
    .locals 2

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1399
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1400
    const/4 v0, 0x0

    .line 1401
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getStarted()Z
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Started:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasMultitouch()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1192
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1195
    :try_start_0
    const-class v2, Landroid/content/pm/PackageManager;

    const-string v3, "hasSystemFeature"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1196
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "android.hardware.touchscreen.multitouch"

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1203
    :goto_0
    return v0

    .line 1200
    :catch_0
    move-exception v0

    move v0, v1

    .line 1203
    goto :goto_0
.end method

.method public launchBrowser(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 1407
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1408
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1409
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1410
    const-string v0, "vfstore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1412
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1414
    :cond_0
    const/high16 v0, 0x14200000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1415
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1416
    const/4 v0, 0x1

    .line 1419
    :goto_0
    return v0

    .line 1417
    :catch_0
    move-exception v0

    .line 1419
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public locationGpsData()Z
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Location:Lcom/ideaworks3d/marmalade/LoaderLocation;

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Location:Lcom/ideaworks3d/marmalade/LoaderLocation;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderLocation;->locationGpsData()Z

    move-result v0

    .line 1275
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public locationStart()Z
    .locals 2

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Location:Lcom/ideaworks3d/marmalade/LoaderLocation;

    if-eqz v0, :cond_0

    .line 1258
    const/4 v0, 0x0

    .line 1260
    :goto_0
    return v0

    .line 1259
    :cond_0
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderLocation;

    invoke-direct {v0}, Lcom/ideaworks3d/marmalade/LoaderLocation;-><init>()V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Location:Lcom/ideaworks3d/marmalade/LoaderLocation;

    .line 1260
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Location:Lcom/ideaworks3d/marmalade/LoaderLocation;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderLocation;->locationStart(Lcom/ideaworks3d/marmalade/LoaderActivity;)Z

    move-result v0

    goto :goto_0
.end method

.method public locationStop()Z
    .locals 2

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Location:Lcom/ideaworks3d/marmalade/LoaderLocation;

    if-nez v0, :cond_0

    .line 1265
    const/4 v0, 0x0

    .line 1268
    :goto_0
    return v0

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Location:Lcom/ideaworks3d/marmalade/LoaderLocation;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderLocation;->locationStop()Z

    move-result v0

    .line 1267
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Location:Lcom/ideaworks3d/marmalade/LoaderLocation;

    goto :goto_0
.end method

.method public networkCheckStart()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 913
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckEnabled:Z

    if-eqz v0, :cond_0

    .line 919
    :goto_0
    return v4

    .line 915
    :cond_0
    iput-boolean v4, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckEnabled:Z

    .line 917
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public networkCheckStop()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 923
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckEnabled:Z

    if-nez v0, :cond_1

    .line 931
    :cond_0
    :goto_0
    return v2

    .line 925
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckEnabled:Z

    .line 927
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 785
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1240
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->shuttingDown(Z)V

    .line 1241
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->interrupt()V

    .line 1244
    :try_start_0
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    :goto_0
    return-void

    .line 1246
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 1253
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->lowMemoryWarning()V

    .line 1254
    return-void
.end method

.method public native onMotionEvent(IIII)V
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 764
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Terminating:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 782
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Started:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Paused:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Paused:Ljava/lang/Boolean;

    .line 780
    invoke-direct {p0, v1}, Lcom/ideaworks3d/marmalade/LoaderThread;->signalSuspend(Z)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 739
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Paused:Ljava/lang/Boolean;

    .line 740
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_ResumeInProgress:Ljava/lang/Boolean;

    .line 741
    invoke-direct {p0, v1}, Lcom/ideaworks3d/marmalade/LoaderThread;->signalResume(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 743
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_ResumeInProgress:Ljava/lang/Boolean;

    .line 746
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 788
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 789
    if-ne v0, v3, :cond_1

    .line 790
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    invoke-direct {p0, v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderThread;->onAccelNative(FFF)V

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    if-ne v0, v5, :cond_2

    .line 792
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    invoke-direct {p0, v4, v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderThread;->onCompassNative(IFFF)V

    goto :goto_0

    .line 793
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 794
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderThread;->onCompassNative(IFFF)V

    goto :goto_0
.end method

.method public onSplashFinished()V
    .locals 1

    .prologue
    .line 697
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_splashFinished:Z

    .line 698
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->doFixOrientation()V

    .line 699
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1444
    iget-object v3, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_TouchEvent:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 1447
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_TouchEvent:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1476
    :goto_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_OnTouchWait:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 1478
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_OnTouchWait:Ljava/lang/Integer;

    monitor-enter v2

    .line 1481
    :try_start_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_OnTouchWait:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_OnTouchWait:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1485
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1487
    :cond_0
    return v1

    .line 1455
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 1456
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 1457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 1458
    packed-switch v5, :pswitch_data_0

    move v0, v2

    .line 1473
    :goto_2
    :pswitch_0
    add-int/lit8 v0, v0, 0x3

    .line 1474
    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/ideaworks3d/marmalade/LoaderThread;->onMotionEvent(IIII)V

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 1462
    goto :goto_2

    .line 1467
    :pswitch_2
    const/4 v0, 0x3

    .line 1468
    goto :goto_2

    .line 1485
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1482
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1448
    :catch_1
    move-exception v0

    goto :goto_0

    .line 1458
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public recordAvailable()I
    .locals 1

    .prologue
    .line 872
    invoke-static {}, Lcom/ideaworks3d/marmalade/SoundRecord;->available()I

    move-result v0

    return v0
.end method

.method public recordStart(I)I
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundRecord:Lcom/ideaworks3d/marmalade/SoundRecord;

    if-nez v0, :cond_0

    .line 879
    new-instance v0, Lcom/ideaworks3d/marmalade/SoundRecord;

    invoke-direct {v0}, Lcom/ideaworks3d/marmalade/SoundRecord;-><init>()V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundRecord:Lcom/ideaworks3d/marmalade/SoundRecord;

    .line 880
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundRecord:Lcom/ideaworks3d/marmalade/SoundRecord;

    invoke-virtual {v0, p1}, Lcom/ideaworks3d/marmalade/SoundRecord;->start(I)I

    move-result v0

    .line 882
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recordStop()I
    .locals 2

    .prologue
    .line 887
    const/4 v0, 0x1

    .line 888
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundRecord:Lcom/ideaworks3d/marmalade/SoundRecord;

    if-eqz v1, :cond_0

    .line 890
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundRecord:Lcom/ideaworks3d/marmalade/SoundRecord;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/SoundRecord;->stop()I

    move-result v0

    .line 891
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundRecord:Lcom/ideaworks3d/marmalade/SoundRecord;

    .line 893
    :cond_0
    return v0
.end method

.method public releaseMulticastLock()Z
    .locals 1

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_MulticastLock:Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;

    if-eqz v0, :cond_0

    .line 1538
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_MulticastLock:Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->release()V

    .line 1539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_MulticastLock:Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;

    .line 1540
    const/4 v0, 0x1

    .line 1542
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resumeAfterSurfaceChange()V
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_DidSuspendForSurfaceChange:Z

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_DidSuspendForSurfaceChange:Z

    .line 94
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->resumeAppThreads()V

    .line 100
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1130
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->waitForView()V

    .line 1131
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Started:Ljava/lang/Boolean;

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_FileRoot:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1133
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1136
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 1138
    :cond_0
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_FileRoot:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->runNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->shuttingDown(Z)V

    .line 1141
    return-void
.end method

.method public runOnOSSignal()V
    .locals 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_RunOnOSThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 760
    return-void
.end method

.method public runOnOSThread(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 755
    invoke-direct {p0, p1}, Lcom/ideaworks3d/marmalade/LoaderThread;->runOnOSThreadNative(Ljava/lang/Runnable;)V

    .line 756
    return-void
.end method

.method public runRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 750
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 752
    return-void
.end method

.method public sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 1427
    :try_start_0
    const-string v0, ",\\s*?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1428
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1429
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1430
    const-string v2, "text/xml"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1431
    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1432
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1433
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1434
    const/high16 v0, 0x14200000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1435
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1436
    const/4 v0, 0x1

    .line 1439
    :goto_0
    return v0

    .line 1437
    :catch_0
    move-exception v0

    .line 1439
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setView(Lcom/ideaworks3d/marmalade/LoaderView;)V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    if-eqz v0, :cond_1

    .line 597
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    monitor-enter v1

    .line 599
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 603
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    :cond_1
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    .line 606
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderView;->getCurrentOrientation()I

    move-result v0

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_StartScreenOrientation:I

    .line 607
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->doFixOrientation()V

    .line 608
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->setViewNative(Lcom/ideaworks3d/marmalade/LoaderView;)V

    .line 609
    return-void

    .line 603
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public skipSurfaceChange()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 105
    iget-boolean v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_IgnoreResizeWhilePaused:Z

    if-eqz v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Paused:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_FixScreenOrientation:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 109
    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SkipNextChange:Z

    .line 118
    :goto_0
    return v0

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Paused:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SkipNextChange:Z

    if-eqz v2, :cond_1

    .line 114
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SkipNextChange:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 118
    goto :goto_0
.end method

.method public smsStart()Z
    .locals 4

    .prologue
    .line 816
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_LoaderSMSReceiver:Lcom/ideaworks3d/marmalade/LoaderSMSReceiver;

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 819
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderSMSReceiver;

    invoke-direct {v0}, Lcom/ideaworks3d/marmalade/LoaderSMSReceiver;-><init>()V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_LoaderSMSReceiver:Lcom/ideaworks3d/marmalade/LoaderSMSReceiver;

    .line 820
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_LoaderSMSReceiver:Lcom/ideaworks3d/marmalade/LoaderSMSReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 822
    const/4 v0, 0x1

    .line 824
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public smsStop()V
    .locals 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_LoaderSMSReceiver:Lcom/ideaworks3d/marmalade/LoaderSMSReceiver;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_LoaderSMSReceiver:Lcom/ideaworks3d/marmalade/LoaderSMSReceiver;

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 831
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_LoaderSMSReceiver:Lcom/ideaworks3d/marmalade/LoaderSMSReceiver;

    .line 833
    :cond_0
    return-void
.end method

.method public soundInit(IZI)I
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundPlayer:Lcom/ideaworks3d/marmalade/SoundPlayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ideaworks3d/marmalade/SoundPlayer;->init(IZI)I

    move-result v0

    return v0
.end method

.method public soundSetVolume(I)V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundPlayer:Lcom/ideaworks3d/marmalade/SoundPlayer;

    invoke-virtual {v0, p1}, Lcom/ideaworks3d/marmalade/SoundPlayer;->setVolume(I)V

    .line 460
    return-void
.end method

.method public soundStart()V
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundPlayer:Lcom/ideaworks3d/marmalade/SoundPlayer;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/SoundPlayer;->start()V

    .line 863
    return-void
.end method

.method public soundStop()V
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundPlayer:Lcom/ideaworks3d/marmalade/SoundPlayer;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/SoundPlayer;->stop()V

    .line 869
    return-void
.end method

.method public suspendForSurfaceChange()V
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_ResumeInProgress:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->suspendAppThreads()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_DidSuspendForSurfaceChange:Z

    .line 87
    :cond_0
    return-void
.end method

.method public telephonyManagerExists()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1283
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_TelephonyManagerExistsKnown:Z

    if-eqz v0, :cond_0

    .line 1284
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_TelephonyManagerExists:Z

    .line 1296
    :goto_0
    return v0

    .line 1288
    :cond_0
    :try_start_0
    const-string v0, "com.ideaworks3d.marmalade.TelephonyManagerProxy"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1294
    :goto_1
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_TelephonyManagerExistsKnown:Z

    .line 1295
    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_TelephonyManagerExists:Z

    goto :goto_0

    .line 1290
    :catch_0
    move-exception v0

    .line 1292
    const/4 v0, 0x0

    goto :goto_1
.end method
