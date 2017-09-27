.class Ljavassist/JarDirClassPath$1;
.super Ljava/lang/Object;
.source "ClassPoolTail.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavassist/JarDirClassPath;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavassist/JarDirClassPath;


# direct methods
.method constructor <init>(Ljavassist/JarDirClassPath;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Ljavassist/JarDirClassPath$1;->this$0:Ljavassist/JarDirClassPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 83
    const-string v0, ".jar"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".zip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
