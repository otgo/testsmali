.class final Lcom/sponsorpay/utils/AbstractHttpConnection$a;
.super Ljava/lang/Object;
.source "AbstractHttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sponsorpay/utils/AbstractHttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/sponsorpay/utils/AbstractHttpConnection;


# direct methods
.method public constructor <init>(Lcom/sponsorpay/utils/AbstractHttpConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/sponsorpay/utils/AbstractHttpConnection$a;->c:Lcom/sponsorpay/utils/AbstractHttpConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p2, p0, Lcom/sponsorpay/utils/AbstractHttpConnection$a;->a:Ljava/lang/String;

    .line 220
    iput-object p3, p0, Lcom/sponsorpay/utils/AbstractHttpConnection$a;->b:Ljava/lang/String;

    .line 221
    return-void
.end method
