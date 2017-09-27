.class LTapjoy$2;
.super Ljava/lang/Object;
.source "Tapjoy.java"

# interfaces
.implements Lcom/tapjoy/TapjoyEarnedPointsNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTapjoy;->tapjoy_init(Ljava/lang/String;Ljava/lang/String;)I
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
    .line 46
    iput-object p1, p0, LTapjoy$2;->this$0:LTapjoy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public earnedTapPoints(I)V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, LTapjoy$2;->this$0:LTapjoy;

    invoke-static {v0, p1}, LTapjoy;->access$012(LTapjoy;I)I

    .line 49
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Warlings] Tapjoy points update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    return-void
.end method
