.class public Ljavassist/tools/web/BadHttpRequest;
.super Ljava/lang/Exception;
.source "BadHttpRequest.java"


# instance fields
.field private e:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/tools/web/BadHttpRequest;->e:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "_e"    # Ljava/lang/Exception;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Ljavassist/tools/web/BadHttpRequest;->e:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ljavassist/tools/web/BadHttpRequest;->e:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 31
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavassist/tools/web/BadHttpRequest;->e:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
