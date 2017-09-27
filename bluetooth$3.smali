.class Lbluetooth$3;
.super Ljava/lang/Object;
.source "bluetooth.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbluetooth;->bluetooth_show_message(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbluetooth;


# direct methods
.method constructor <init>(Lbluetooth;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lbluetooth$3;->this$0:Lbluetooth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 525
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 526
    return-void
.end method
