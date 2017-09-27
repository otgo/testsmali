.class final Lcom/sponsorpay/utils/l;
.super Ljava/lang/Object;
.source "SponsorPayLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/Exception;

.field final synthetic e:Lcom/sponsorpay/utils/SponsorPayLogger;


# direct methods
.method constructor <init>(Lcom/sponsorpay/utils/SponsorPayLogger;Lcom/sponsorpay/utils/SponsorPayLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/sponsorpay/utils/l;->e:Lcom/sponsorpay/utils/SponsorPayLogger;

    iput-object p2, p0, Lcom/sponsorpay/utils/l;->a:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    iput-object p3, p0, Lcom/sponsorpay/utils/l;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/sponsorpay/utils/l;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/sponsorpay/utils/l;->d:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sponsorpay/utils/l;->e:Lcom/sponsorpay/utils/SponsorPayLogger;

    invoke-static {v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->a(Lcom/sponsorpay/utils/SponsorPayLogger;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/utils/SPLoggerListener;

    .line 113
    iget-object v2, p0, Lcom/sponsorpay/utils/l;->a:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    iget-object v3, p0, Lcom/sponsorpay/utils/l;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/sponsorpay/utils/l;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/sponsorpay/utils/l;->d:Ljava/lang/Exception;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/sponsorpay/utils/SPLoggerListener;->log(Lcom/sponsorpay/utils/SponsorPayLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method
