.class Lbluetooth$Bluetooth_Device_Found_Revicer;
.super Landroid/content/BroadcastReceiver;
.source "bluetooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Bluetooth_Device_Found_Revicer"
.end annotation


# instance fields
.field private final devices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lbluetooth;


# direct methods
.method constructor <init>(Lbluetooth;)V
    .locals 1

    .prologue
    .line 260
    iput-object p1, p0, Lbluetooth$Bluetooth_Device_Found_Revicer;->this$0:Lbluetooth;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbluetooth$Bluetooth_Device_Found_Revicer;->devices:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$700(Lbluetooth$Bluetooth_Device_Found_Revicer;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lbluetooth$Bluetooth_Device_Found_Revicer;->devices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lbluetooth$Bluetooth_Device_Found_Revicer;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lbluetooth$Bluetooth_Device_Found_Revicer;->connect(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private connect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .prologue
    .line 289
    iget-object v0, p0, Lbluetooth$Bluetooth_Device_Found_Revicer;->this$0:Lbluetooth;

    new-instance v1, Lbluetooth$Client_Connect_Thread;

    iget-object v2, p0, Lbluetooth$Bluetooth_Device_Found_Revicer;->this$0:Lbluetooth;

    invoke-direct {v1, v2, p1}, Lbluetooth$Client_Connect_Thread;-><init>(Lbluetooth;Landroid/bluetooth/BluetoothDevice;)V

    invoke-static {v0, v1}, Lbluetooth;->access$402(Lbluetooth;Lbluetooth$Client_Connect_Thread;)Lbluetooth$Client_Connect_Thread;

    .line 290
    iget-object v0, p0, Lbluetooth$Bluetooth_Device_Found_Revicer;->this$0:Lbluetooth;

    invoke-static {v0}, Lbluetooth;->access$400(Lbluetooth;)Lbluetooth$Client_Connect_Thread;

    move-result-object v0

    invoke-virtual {v0}, Lbluetooth$Client_Connect_Thread;->start()V

    .line 292
    :try_start_0
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v1, p0, Lbluetooth$Bluetooth_Device_Found_Revicer;->this$0:Lbluetooth;

    invoke-static {v1}, Lbluetooth;->access$900(Lbluetooth;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    iget-object v0, p0, Lbluetooth$Bluetooth_Device_Found_Revicer;->this$0:Lbluetooth;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbluetooth;->access$902(Lbluetooth;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 298
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private show_dialog()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lbluetooth$Bluetooth_Device_Found_Revicer;->devices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 265
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lbluetooth$Bluetooth_Device_Found_Revicer;->devices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 266
    iget-object v0, p0, Lbluetooth$Bluetooth_Device_Found_Revicer;->devices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 267
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 265
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 270
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 271
    const-string v1, "Detected bluetooth devices"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 272
    new-instance v1, Lbluetooth$Bluetooth_Device_Found_Revicer$1;

    invoke-direct {v1, p0}, Lbluetooth$Bluetooth_Device_Found_Revicer$1;-><init>(Lbluetooth$Bluetooth_Device_Found_Revicer;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 280
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    new-instance v2, Lbluetooth$Bluetooth_Device_Found_Revicer$2;

    invoke-direct {v2, p0, v0}, Lbluetooth$Bluetooth_Device_Found_Revicer$2;-><init>(Lbluetooth$Bluetooth_Device_Found_Revicer;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v1, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 286
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 301
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 302
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 304
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lbluetooth$Bluetooth_Device_Found_Revicer;->devices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-direct {p0}, Lbluetooth$Bluetooth_Device_Found_Revicer;->show_dialog()V

    goto :goto_0
.end method
