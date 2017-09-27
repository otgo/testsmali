.class LTapjoy$1;
.super Ljava/lang/Object;
.source "Tapjoy.java"

# interfaces
.implements Lcom/tapjoy/TapjoyNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LTapjoy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LTapjoy;


# direct methods
.method constructor <init>(LTapjoy;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, LTapjoy$1;->this$0:LTapjoy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUpdatePoints(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, LTapjoy$1;->this$0:LTapjoy;

    invoke-static {v0, p2}, LTapjoy;->access$002(LTapjoy;I)I

    .line 30
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Warlings] Tapjoy points: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LTapjoy$1;->this$0:LTapjoy;

    invoke-static {v2}, LTapjoy;->access$000(LTapjoy;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, LTapjoy$1;->this$0:LTapjoy;

    invoke-static {v0}, LTapjoy;->access$100(LTapjoy;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 33
    const-string v1, "tap_points"

    iget-object v2, p0, LTapjoy$1;->this$0:LTapjoy;

    invoke-static {v2}, LTapjoy;->access$000(LTapjoy;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 35
    return-void
.end method

.method public getUpdatePointsFailed(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
