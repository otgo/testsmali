.class public final Lcom/sponsorpay/utils/j;
.super Ljava/lang/Object;
.source "SignedServerResponse.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/sponsorpay/utils/j;->a:I

    .line 20
    iput-object p2, p0, Lcom/sponsorpay/utils/j;->b:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/sponsorpay/utils/j;->c:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/sponsorpay/utils/j;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sponsorpay/utils/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sponsorpay/utils/j;->c:Ljava/lang/String;

    return-object v0
.end method
