.class final Lcom/sponsorpay/mediation/a;
.super Ljava/lang/Thread;
.source "SPMediationAdapter.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Ljava/lang/Class;

.field final synthetic c:[Ljava/lang/Object;

.field final synthetic d:Lcom/sponsorpay/mediation/SPMediationAdapter;


# direct methods
.method constructor <init>(Lcom/sponsorpay/mediation/SPMediationAdapter;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sponsorpay/mediation/a;->d:Lcom/sponsorpay/mediation/SPMediationAdapter;

    iput-object p3, p0, Lcom/sponsorpay/mediation/a;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/sponsorpay/mediation/a;->b:[Ljava/lang/Class;

    iput-object p5, p0, Lcom/sponsorpay/mediation/a;->c:[Ljava/lang/Object;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sponsorpay/mediation/a;->d:Lcom/sponsorpay/mediation/SPMediationAdapter;

    invoke-virtual {v0}, Lcom/sponsorpay/mediation/SPMediationAdapter;->getListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 147
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/sponsorpay/mediation/a;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/sponsorpay/mediation/a;->b:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 148
    iget-object v3, p0, Lcom/sponsorpay/mediation/a;->c:[Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    goto :goto_0

    .line 153
    :cond_0
    return-void

    .line 152
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_0
.end method
