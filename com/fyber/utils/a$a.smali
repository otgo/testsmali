.class final Lcom/fyber/utils/a$a;
.super Ljava/lang/Object;
.source "AbstractHttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/fyber/utils/a;


# direct methods
.method public constructor <init>(Lcom/fyber/utils/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/fyber/utils/a$a;->c:Lcom/fyber/utils/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p2, p0, Lcom/fyber/utils/a$a;->a:Ljava/lang/String;

    .line 228
    iput-object p3, p0, Lcom/fyber/utils/a$a;->b:Ljava/lang/String;

    .line 229
    return-void
.end method
