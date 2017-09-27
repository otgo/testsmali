.class final Lcom/fyber/mediation/e;
.super Ljava/util/HashMap;
.source "MediationCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/fyber/mediation/MediationAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x30be10da6905b68aL


# instance fields
.field final synthetic a:Lcom/fyber/mediation/d;


# direct methods
.method constructor <init>(Lcom/fyber/mediation/d;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/fyber/mediation/e;->a:Lcom/fyber/mediation/d;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 46
    .line 2051
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/mediation/MediationAdapter;

    .line 46
    return-object v0
.end method

.method public final synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/fyber/mediation/MediationAdapter;

    .line 1056
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/mediation/MediationAdapter;

    .line 46
    return-object v0
.end method
