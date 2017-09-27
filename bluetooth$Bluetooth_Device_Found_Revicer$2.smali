.class Lbluetooth$Bluetooth_Device_Found_Revicer$2;
.super Ljava/lang/Object;
.source "bluetooth.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$builder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lbluetooth$Bluetooth_Device_Found_Revicer;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lbluetooth$Bluetooth_Device_Found_Revicer$2;->this$1:Lbluetooth$Bluetooth_Device_Found_Revicer;

    iput-object p2, p0, Lbluetooth$Bluetooth_Device_Found_Revicer$2;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lbluetooth$Bluetooth_Device_Found_Revicer$2;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 284
    return-void
.end method
