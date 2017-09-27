.class Lbluetooth$Data_Thread;
.super Ljava/lang/Thread;
.source "bluetooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data_Thread"
.end annotation


# instance fields
.field private final input:Ljava/io/InputStream;

.field private messages_to_send:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/io/ByteArrayOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final output:Ljava/io/OutputStream;

.field private read_message_number:I

.field private running:Z

.field private final socket:Landroid/bluetooth/BluetoothSocket;

.field final synthetic this$0:Lbluetooth;


# direct methods
.method public constructor <init>(Lbluetooth;Landroid/bluetooth/BluetoothSocket;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 163
    iput-object p1, p0, Lbluetooth$Data_Thread;->this$0:Lbluetooth;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 159
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbluetooth$Data_Thread;->running:Z

    .line 161
    iput v3, p0, Lbluetooth$Data_Thread;->read_message_number:I

    .line 164
    iput-object p2, p0, Lbluetooth$Data_Thread;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 165
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lbluetooth$Data_Thread;->messages_to_send:Ljava/util/LinkedList;

    .line 172
    :try_start_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 173
    :try_start_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 179
    :goto_0
    iput-object v1, p0, Lbluetooth$Data_Thread;->input:Ljava/io/InputStream;

    .line 180
    iput-object v0, p0, Lbluetooth$Data_Thread;->output:Ljava/io/OutputStream;

    .line 181
    return-void

    .line 174
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    .line 175
    :goto_1
    iput-boolean v3, p0, Lbluetooth$Data_Thread;->running:Z

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error! Could not establish streams. Reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lbluetooth;->bluetooth_show_message(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private read()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x0

    .line 189
    iget-object v0, p0, Lbluetooth$Data_Thread;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-gtz v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 194
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 195
    new-array v1, v4, [B

    .line 196
    :goto_1
    iget-object v2, p0, Lbluetooth$Data_Thread;->input:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-lez v2, :cond_1

    .line 197
    iget-object v2, p0, Lbluetooth$Data_Thread;->input:Ljava/io/InputStream;

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 198
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 201
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-static {v1, v3, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lbluetooth$Data_Thread;->this$0:Lbluetooth;

    invoke-static {v1}, Lbluetooth;->access$600(Lbluetooth;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private send()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lbluetooth$Data_Thread;->messages_to_send:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    :goto_0
    return-void

    .line 211
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbluetooth$Data_Thread;->messages_to_send:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 212
    iget-object v2, p0, Lbluetooth$Data_Thread;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 213
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_1
    iget-object v1, p0, Lbluetooth$Data_Thread;->messages_to_send:Ljava/util/LinkedList;

    monitor-enter v1

    .line 210
    :try_start_1
    iget-object v0, p0, Lbluetooth$Data_Thread;->messages_to_send:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    iget-object v0, p0, Lbluetooth$Data_Thread;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 249
    :try_start_0
    iget-object v0, p0, Lbluetooth$Data_Thread;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbluetooth$Data_Thread;->running:Z

    .line 185
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 221
    :goto_0
    iget-boolean v0, p0, Lbluetooth$Data_Thread;->running:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbluetooth$Data_Thread;->messages_to_send:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lbluetooth$Data_Thread;->send()V

    .line 224
    invoke-direct {p0}, Lbluetooth$Data_Thread;->read()V

    .line 225
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    iget-object v1, p0, Lbluetooth$Data_Thread;->this$0:Lbluetooth;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error! Sending or Reading failed. Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbluetooth;->bluetooth_show_message(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lbluetooth$Data_Thread;->cancel()V

    .line 234
    :cond_1
    :try_start_1
    iget-object v0, p0, Lbluetooth$Data_Thread;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 238
    :goto_1
    return-void

    .line 235
    :catch_1
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public write(Ljava/io/ByteArrayOutputStream;)V
    .locals 2

    .prologue
    .line 241
    iget-object v1, p0, Lbluetooth$Data_Thread;->messages_to_send:Ljava/util/LinkedList;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v0, p0, Lbluetooth$Data_Thread;->messages_to_send:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 243
    monitor-exit v1

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
