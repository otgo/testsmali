.class Lorg/reflections/vfs/SystemDir$1;
.super Ljava/lang/Object;
.source "SystemDir.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reflections/vfs/SystemDir;->getFiles()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/reflections/vfs/Vfs$File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/reflections/vfs/SystemDir;


# direct methods
.method constructor <init>(Lorg/reflections/vfs/SystemDir;)V
    .locals 0
    .param p1, "this$0"    # Lorg/reflections/vfs/SystemDir;

    .prologue
    .line 37
    iput-object p1, p0, Lorg/reflections/vfs/SystemDir$1;->this$0:Lorg/reflections/vfs/SystemDir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/reflections/vfs/Vfs$File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lorg/reflections/vfs/SystemDir$1$1;

    invoke-direct {v0, p0}, Lorg/reflections/vfs/SystemDir$1$1;-><init>(Lorg/reflections/vfs/SystemDir$1;)V

    return-object v0
.end method