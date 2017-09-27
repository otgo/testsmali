.class Lbluetooth$Bluetooth_Device_Found_Revicer$1;
.super Ljava/lang/Object;
.source "bluetooth.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbluetooth$Bluetooth_Device_Found_Revicer;->show_dialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbluetooth$Bluetooth_Device_Found_Revicer;


# direct methods
.method constructor <init>(Lbluetooth$Bluetooth_Device_Found_Revicer;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lbluetooth$Bluetooth_Device_Found_Revicer$1;->this$1:Lbluetooth$Bluetooth_Device_Found_Revicer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lbluetooth$Bluetooth_Device_Found_Revicer$1;->this$1:Lbluetooth$Bluetooth_Device_Found_Revicer;

    invoke-static {v0}, Lbluetooth$Bluetooth_Device_Found_Revicer;->access$700(Lbluetooth$Bluetooth_Device_Found_Revicer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 275
    iget-object v1, p0, Lbluetooth$Bluetooth_Device_Found_Revicer$1;->this$1:Lbluetooth$Bluetooth_Device_Found_Revicer;

    invoke-static {v1, v0}, Lbluetooth$Bluetooth_Device_Found_Revicer;->access$800(Lbluetooth$Bluetooth_Device_Found_Revicer;Landroid/bluetooth/BluetoothDevice;)V

    .line 276
    return-void
.end method
