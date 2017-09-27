.class Lbluetooth;
.super Ljava/lang/Object;
.source "bluetooth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbluetooth$Bluetooth_Device_Found_Revicer;,
        Lbluetooth$Data_Thread;,
        Lbluetooth$Server_Connect_Thread;,
        Lbluetooth$Client_Connect_Thread;
    }
.end annotation


# static fields
.field private static final REQUEST_ENABLE_BT:I = 0x1

.field private static uuid:Ljava/util/UUID;


# instance fields
.field private bluetooth_adapter:Landroid/bluetooth/BluetoothAdapter;

.field bos:Ljava/io/ByteArrayOutputStream;

.field private client_connect_thread:Lbluetooth$Client_Connect_Thread;

.field private client_receiver:Landroid/content/BroadcastReceiver;

.field private data_thread:Lbluetooth$Data_Thread;

.field private messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private server_connect_thread:Lbluetooth$Server_Connect_Thread;

.field private socket:Landroid/bluetooth/BluetoothSocket;

.field private was_bluetooth_enabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "c63059d5-ae46-4d8d-9698-2d9caaa08aaf"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lbluetooth;->uuid:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object v0, p0, Lbluetooth;->client_receiver:Landroid/content/BroadcastReceiver;

    .line 314
    iput-object v0, p0, Lbluetooth;->bluetooth_adapter:Landroid/bluetooth/BluetoothAdapter;

    .line 315
    iput-object v0, p0, Lbluetooth;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 316
    iput-object v0, p0, Lbluetooth;->data_thread:Lbluetooth$Data_Thread;

    .line 317
    iput-object v0, p0, Lbluetooth;->server_connect_thread:Lbluetooth$Server_Connect_Thread;

    .line 318
    iput-object v0, p0, Lbluetooth;->client_connect_thread:Lbluetooth$Client_Connect_Thread;

    .line 418
    iput-object v0, p0, Lbluetooth;->bos:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method static synthetic access$000(Lbluetooth;)Landroid/bluetooth/BluetoothSocket;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lbluetooth;->socket:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method static synthetic access$002(Lbluetooth;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lbluetooth;->socket:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method

.method static synthetic access$100()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lbluetooth;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$200(Lbluetooth;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lbluetooth;->bluetooth_adapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lbluetooth;)Lbluetooth$Data_Thread;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lbluetooth;->data_thread:Lbluetooth$Data_Thread;

    return-object v0
.end method

.method static synthetic access$302(Lbluetooth;Lbluetooth$Data_Thread;)Lbluetooth$Data_Thread;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lbluetooth;->data_thread:Lbluetooth$Data_Thread;

    return-object p1
.end method

.method static synthetic access$400(Lbluetooth;)Lbluetooth$Client_Connect_Thread;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lbluetooth;->client_connect_thread:Lbluetooth$Client_Connect_Thread;

    return-object v0
.end method

.method static synthetic access$402(Lbluetooth;Lbluetooth$Client_Connect_Thread;)Lbluetooth$Client_Connect_Thread;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lbluetooth;->client_connect_thread:Lbluetooth$Client_Connect_Thread;

    return-object p1
.end method

.method static synthetic access$502(Lbluetooth;Lbluetooth$Server_Connect_Thread;)Lbluetooth$Server_Connect_Thread;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lbluetooth;->server_connect_thread:Lbluetooth$Server_Connect_Thread;

    return-object p1
.end method

.method static synthetic access$600(Lbluetooth;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lbluetooth;->messages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lbluetooth;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lbluetooth;->client_receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$902(Lbluetooth;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lbluetooth;->client_receiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method


# virtual methods
.method public bluetooth_close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 360
    iget-object v0, p0, Lbluetooth;->server_connect_thread:Lbluetooth$Server_Connect_Thread;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lbluetooth;->server_connect_thread:Lbluetooth$Server_Connect_Thread;

    invoke-virtual {v0}, Lbluetooth$Server_Connect_Thread;->exit()V

    .line 362
    iput-object v1, p0, Lbluetooth;->server_connect_thread:Lbluetooth$Server_Connect_Thread;

    .line 365
    :cond_0
    iget-object v0, p0, Lbluetooth;->data_thread:Lbluetooth$Data_Thread;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lbluetooth;->data_thread:Lbluetooth$Data_Thread;

    invoke-virtual {v0}, Lbluetooth$Data_Thread;->exit()V

    .line 367
    iput-object v1, p0, Lbluetooth;->data_thread:Lbluetooth$Data_Thread;

    .line 370
    :cond_1
    iget-object v0, p0, Lbluetooth;->client_connect_thread:Lbluetooth$Client_Connect_Thread;

    if-eqz v0, :cond_2

    .line 371
    iput-object v1, p0, Lbluetooth;->client_connect_thread:Lbluetooth$Client_Connect_Thread;

    .line 373
    :cond_2
    return-void
.end method

.method public bluetooth_enable_discoverability()V
    .locals 3

    .prologue
    .line 379
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    const-string v1, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v1, v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->startActivity(Landroid/content/Intent;)V

    .line 382
    new-instance v0, Lbluetooth$Server_Connect_Thread;

    invoke-direct {v0, p0}, Lbluetooth$Server_Connect_Thread;-><init>(Lbluetooth;)V

    iput-object v0, p0, Lbluetooth;->server_connect_thread:Lbluetooth$Server_Connect_Thread;

    .line 383
    iget-object v0, p0, Lbluetooth;->server_connect_thread:Lbluetooth$Server_Connect_Thread;

    invoke-virtual {v0}, Lbluetooth$Server_Connect_Thread;->start()V

    .line 384
    iget-object v0, p0, Lbluetooth;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 385
    return-void
.end method

.method public bluetooth_is_discovering()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 389
    iget-object v1, p0, Lbluetooth;->bluetooth_adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lbluetooth;->bluetooth_adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v1

    iget-object v2, p0, Lbluetooth;->bluetooth_adapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v2, 0x17

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 392
    :cond_0
    return v0
.end method

.method public bluetooth_message_discard_current()V
    .locals 0

    .prologue
    .line 492
    return-void
.end method

.method public bluetooth_message_read_float()F
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 480
    iget-object v0, p0, Lbluetooth;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    .line 481
    iget-object v0, p0, Lbluetooth;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lbluetooth;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 486
    :cond_0
    return v1
.end method

.method public bluetooth_message_read_int()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 470
    iget-object v0, p0, Lbluetooth;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 471
    iget-object v0, p0, Lbluetooth;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    iget-object v0, p0, Lbluetooth;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 475
    :cond_0
    return v1
.end method

.method public bluetooth_message_send_current()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lbluetooth;->data_thread:Lbluetooth$Data_Thread;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lbluetooth;->data_thread:Lbluetooth$Data_Thread;

    iget-object v1, p0, Lbluetooth;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Lbluetooth$Data_Thread;->write(Ljava/io/ByteArrayOutputStream;)V

    .line 459
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbluetooth;->bos:Ljava/io/ByteArrayOutputStream;

    .line 460
    return-void

    .line 457
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "bluetooth_message_send_current - data thread is null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bluetooth_message_start()V
    .locals 1

    .prologue
    .line 421
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lbluetooth;->bos:Ljava/io/ByteArrayOutputStream;

    .line 422
    return-void
.end method

.method public bluetooth_message_write_float(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 427
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 428
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 429
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 431
    :try_start_0
    iget-object v0, p0, Lbluetooth;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_0
    return-void

    .line 432
    :catch_0
    move-exception v0

    .line 433
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public bluetooth_message_write_int(I)V
    .locals 2

    .prologue
    .line 441
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 442
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 444
    :try_start_0
    iget-object v1, p0, Lbluetooth;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v0

    .line 446
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public bluetooth_setup_client()V
    .locals 3

    .prologue
    .line 400
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 401
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    iget-object v1, p0, Lbluetooth;->client_receiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 404
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v2, p0, Lbluetooth;->client_receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 406
    :cond_0
    new-instance v1, Lbluetooth$Bluetooth_Device_Found_Revicer;

    invoke-direct {v1, p0}, Lbluetooth$Bluetooth_Device_Found_Revicer;-><init>(Lbluetooth;)V

    iput-object v1, p0, Lbluetooth;->client_receiver:Landroid/content/BroadcastReceiver;

    .line 407
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v2, p0, Lbluetooth;->client_receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 408
    iget-object v0, p0, Lbluetooth;->bluetooth_adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 409
    iget-object v0, p0, Lbluetooth;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 410
    return-void
.end method

.method public bluetooth_show_message(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 519
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 520
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 521
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 522
    const-string v1, "OK"

    new-instance v2, Lbluetooth$3;

    invoke-direct {v2, p0}, Lbluetooth$3;-><init>(Lbluetooth;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 529
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    new-instance v2, Lbluetooth$4;

    invoke-direct {v2, p0, v0}, Lbluetooth$4;-><init>(Lbluetooth;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v1, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 535
    return-void
.end method

.method public bluetooth_show_wrong_version_dialog()V
    .locals 3

    .prologue
    .line 497
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 498
    const-string v1, "Warining! Different Warling VERSIONS. Please update to current one!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 499
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 500
    const-string v1, "Yes"

    new-instance v2, Lbluetooth$1;

    invoke-direct {v2, p0}, Lbluetooth$1;-><init>(Lbluetooth;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 508
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    new-instance v2, Lbluetooth$2;

    invoke-direct {v2, p0, v0}, Lbluetooth$2;-><init>(Lbluetooth;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v1, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 514
    return-void
.end method

.method public disable_bluetooth()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lbluetooth;->bluetooth_adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbluetooth;->bluetooth_adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lbluetooth;->was_bluetooth_enabled:Z

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lbluetooth;->bluetooth_adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 347
    :cond_0
    return-void
.end method

.method public enable_bluetooth()V
    .locals 3

    .prologue
    .line 335
    iget-object v0, p0, Lbluetooth;->bluetooth_adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbluetooth;->bluetooth_adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 340
    :cond_0
    return-void
.end method

.method public init_bluetooth()Z
    .locals 1

    .prologue
    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbluetooth;->messages:Ljava/util/ArrayList;

    .line 325
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lbluetooth;->bluetooth_adapter:Landroid/bluetooth/BluetoothAdapter;

    .line 326
    iget-object v0, p0, Lbluetooth;->bluetooth_adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lbluetooth;->bluetooth_adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lbluetooth;->was_bluetooth_enabled:Z

    .line 329
    :cond_0
    iget-object v0, p0, Lbluetooth;->bluetooth_adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is_bluetooth_connected()Z
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lbluetooth;->data_thread:Lbluetooth$Data_Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is_bluetooth_enabled()Z
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lbluetooth;->bluetooth_adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lbluetooth;->bluetooth_adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    .line 354
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is_bluetooth_message()Z
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lbluetooth;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
