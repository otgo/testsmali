.class Lbluetooth$Client_Connect_Thread;
.super Ljava/lang/Thread;
.source "bluetooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Client_Connect_Thread"
.end annotation


# instance fields
.field private final device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Lbluetooth;


# direct methods
.method public constructor <init>(Lbluetooth;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .prologue
    .line 46
    iput-object p1, p0, Lbluetooth$Client_Connect_Thread;->this$0:Lbluetooth;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 47
    iput-object p2, p0, Lbluetooth$Client_Connect_Thread;->device:Landroid/bluetooth/BluetoothDevice;

    .line 49
    :try_start_0
    invoke-static {}, Lbluetooth;->access$100()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    invoke-static {p1, v0}, Lbluetooth;->access$002(Lbluetooth;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bluetooth Error! createRfcommSocketToServiceRecord failed. Reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbluetooth;->bluetooth_show_message(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lbluetooth$Client_Connect_Thread;->this$0:Lbluetooth;

    invoke-static {v0}, Lbluetooth;->access$000(Lbluetooth;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lbluetooth$Client_Connect_Thread;->this$0:Lbluetooth;

    invoke-static {v0}, Lbluetooth;->access$200(Lbluetooth;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 58
    iget-object v0, p0, Lbluetooth$Client_Connect_Thread;->this$0:Lbluetooth;

    invoke-static {v0}, Lbluetooth;->access$000(Lbluetooth;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 63
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbluetooth$Client_Connect_Thread;->this$0:Lbluetooth;

    invoke-static {v0}, Lbluetooth;->access$000(Lbluetooth;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 64
    iget-object v0, p0, Lbluetooth$Client_Connect_Thread;->this$0:Lbluetooth;

    new-instance v1, Lbluetooth$Data_Thread;

    iget-object v2, p0, Lbluetooth$Client_Connect_Thread;->this$0:Lbluetooth;

    iget-object v3, p0, Lbluetooth$Client_Connect_Thread;->this$0:Lbluetooth;

    invoke-static {v3}, Lbluetooth;->access$000(Lbluetooth;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lbluetooth$Data_Thread;-><init>(Lbluetooth;Landroid/bluetooth/BluetoothSocket;)V

    invoke-static {v0, v1}, Lbluetooth;->access$302(Lbluetooth;Lbluetooth$Data_Thread;)Lbluetooth$Data_Thread;

    .line 65
    iget-object v0, p0, Lbluetooth$Client_Connect_Thread;->this$0:Lbluetooth;

    invoke-static {v0}, Lbluetooth;->access$300(Lbluetooth;)Lbluetooth$Data_Thread;

    move-result-object v0

    invoke-virtual {v0}, Lbluetooth$Data_Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_1
    iget-object v0, p0, Lbluetooth$Client_Connect_Thread;->this$0:Lbluetooth;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbluetooth;->access$402(Lbluetooth;Lbluetooth$Client_Connect_Thread;)Lbluetooth$Client_Connect_Thread;

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 69
    :try_start_1
    iget-object v1, p0, Lbluetooth$Client_Connect_Thread;->this$0:Lbluetooth;

    invoke-static {v1}, Lbluetooth;->access$000(Lbluetooth;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lbluetooth$Client_Connect_Thread;->device:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_1

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbluetooth$Client_Connect_Thread;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    :cond_1
    iget-object v1, p0, Lbluetooth$Client_Connect_Thread;->this$0:Lbluetooth;

    invoke-virtual {v1, v0}, Lbluetooth;->bluetooth_show_message(Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :catch_1
    move-exception v1

    .line 71
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
