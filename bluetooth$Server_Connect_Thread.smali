.class Lbluetooth$Server_Connect_Thread;
.super Ljava/lang/Thread;
.source "bluetooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Server_Connect_Thread"
.end annotation


# instance fields
.field private final mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private running:Z

.field final synthetic this$0:Lbluetooth;


# direct methods
.method public constructor <init>(Lbluetooth;)V
    .locals 4

    .prologue
    .line 100
    iput-object p1, p0, Lbluetooth$Server_Connect_Thread;->this$0:Lbluetooth;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbluetooth$Server_Connect_Thread;->running:Z

    .line 101
    const/4 v0, 0x0

    .line 103
    :try_start_0
    invoke-static {p1}, Lbluetooth;->access$200(Lbluetooth;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const-string v2, "NAME"

    invoke-static {}, Lbluetooth;->access$100()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 108
    :goto_0
    iput-object v0, p0, Lbluetooth$Server_Connect_Thread;->mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 109
    return-void

    .line 104
    :catch_0
    move-exception v1

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth Error! listenUsingRfcommWithServiceRecord failed. Reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbluetooth;->bluetooth_show_message(Ljava/lang/String;)V

    .line 106
    const/4 v1, 0x0

    iput-boolean v1, p0, Lbluetooth$Server_Connect_Thread;->running:Z

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 146
    :try_start_0
    iget-object v0, p0, Lbluetooth$Server_Connect_Thread;->mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbluetooth$Server_Connect_Thread;->running:Z

    .line 113
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 117
    :cond_0
    iget-boolean v0, p0, Lbluetooth$Server_Connect_Thread;->running:Z

    if-eqz v0, :cond_1

    .line 119
    :try_start_0
    iget-object v0, p0, Lbluetooth$Server_Connect_Thread;->this$0:Lbluetooth;

    iget-object v1, p0, Lbluetooth$Server_Connect_Thread;->mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-static {v0, v1}, Lbluetooth;->access$002(Lbluetooth;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    iget-object v0, p0, Lbluetooth$Server_Connect_Thread;->this$0:Lbluetooth;

    invoke-static {v0}, Lbluetooth;->access$000(Lbluetooth;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lbluetooth$Server_Connect_Thread;->this$0:Lbluetooth;

    new-instance v1, Lbluetooth$Data_Thread;

    iget-object v2, p0, Lbluetooth$Server_Connect_Thread;->this$0:Lbluetooth;

    iget-object v3, p0, Lbluetooth$Server_Connect_Thread;->this$0:Lbluetooth;

    invoke-static {v3}, Lbluetooth;->access$000(Lbluetooth;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lbluetooth$Data_Thread;-><init>(Lbluetooth;Landroid/bluetooth/BluetoothSocket;)V

    invoke-static {v0, v1}, Lbluetooth;->access$302(Lbluetooth;Lbluetooth$Data_Thread;)Lbluetooth$Data_Thread;

    .line 130
    iget-object v0, p0, Lbluetooth$Server_Connect_Thread;->this$0:Lbluetooth;

    invoke-static {v0}, Lbluetooth;->access$300(Lbluetooth;)Lbluetooth$Data_Thread;

    move-result-object v0

    invoke-virtual {v0}, Lbluetooth$Data_Thread;->start()V

    .line 132
    :try_start_1
    iget-object v0, p0, Lbluetooth$Server_Connect_Thread;->mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    :cond_1
    :goto_0
    iget-object v0, p0, Lbluetooth$Server_Connect_Thread;->this$0:Lbluetooth;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbluetooth;->access$502(Lbluetooth;Lbluetooth$Server_Connect_Thread;)Lbluetooth$Server_Connect_Thread;

    .line 141
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    iget-object v1, p0, Lbluetooth$Server_Connect_Thread;->this$0:Lbluetooth;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth Error! Accepting a connection failed. Reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbluetooth;->bluetooth_show_message(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :catch_1
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
