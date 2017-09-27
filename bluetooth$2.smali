.class Lbluetooth$2;
.super Ljava/lang/Object;
.source "bluetooth.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbluetooth;->bluetooth_show_wrong_version_dialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbluetooth;

.field final synthetic val$builder1:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lbluetooth;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lbluetooth$2;->this$0:Lbluetooth;

    iput-object p2, p0, Lbluetooth$2;->val$builder1:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lbluetooth$2;->val$builder1:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 511
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 512
    return-void
.end method
