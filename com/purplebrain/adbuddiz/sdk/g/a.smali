.class public Lcom/purplebrain/adbuddiz/sdk/g/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/purplebrain/adbuddiz/sdk/g/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/g/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/a;->b:Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/g/a;->b:Landroid/webkit/WebView;

    return-void
.end method

.method public static a(Landroid/webkit/WebView;)V
    .locals 1

    :try_start_0
    const-string v0, "InVzZSBzdHJpY3QiO3dpbmRvdy5fbXJhaWQ9KGZ1bmN0aW9uKCl7dmFyIGg9WyJsb2FkaW5nIiwiZGVmYXVsdCIsImV4cGFuZGVkIiwicmVzaXplZCIsImhpZGRlbiJdO3ZhciBnPVsicmVhZHkiLCJlcnJvciIsInN0YXRlQ2hhbmdlIiwidmlld2FibGVDaGFuZ2UiLCJzaXplQ2hhbmdlIl07dmFyIGE9ImxvYWRpbmciO3ZhciBkPWZhbHNlO3ZhciBiPXt9O3ZhciBmPXt9O3ZhciBsPXtzbXM6ZmFsc2UsdGVsOmZhbHNlLGNhbGVuZGFyOmZhbHNlLHN0b3JlUGljdHVyZTpmYWxzZSxpbmxpbmVWaWRlbzpmYWxzZX07dmFyIGM9e2FsbG93T3JpZW50YXRpb25DaGFuZ2U6dHJ1ZSxmb3JjZU9yaWVudGF0aW9uOiJub25lIn07dmFyIGs9e307Zm9yKHZhciBlPTA7ZTxnLmxlbmd0aDtlKyspe2tbZ1tlXV09W119dmFyIGo9e19maXJlRXZlbnQ6ZnVuY3Rpb24ocCl7aWYoZy5pbmRleE9mKHApPT0tMSl7cmV0dXJufXZhciBuPVtdO2Zvcih2YXIgbT0xO208YXJndW1lbnRzLmxlbmd0aDttKyspe24ucHVzaChhcmd1bWVudHNbbV0pfXZhciBxPWtbcF07Zm9yKHZhciBvPTA7bzxxLmxlbmd0aDtvKyspe3Fbb10uYXBwbHkodW5kZWZpbmVkLG4pfX0sX2NhbGxBY3Rpb246ZnVuY3Rpb24obyxxKXt2YXIgbT0ibXJhaWQ6Ly9hZGJ1ZGRpei8iK287aWYocSE9dW5kZWZpbmVkKXt2YXIgaT0iIjtmb3IodmFyIHAgaW4gcSl7aWYoaS5sZW5ndGg9PTApe2krPSI/In1lbHNle2krPSImIn1pKz1wKyI9IitlbmNvZGVVUklDb21wb25lbnQocVtwXSl9bSs9aX12YXIgbj1kb2N1bWVudC5jcmVhdGVFbGVtZW50KCJpZnJhbWUiKTtuLnNldEF0dHJpYnV0ZSgic3JjIixtKTtuLnNldEF0dHJpYnV0ZSgic3R5bGUiLCJkaXNwbGF5OiBub25lOyIpO2lmKGRvY3VtZW50LmJvZHkhPW51bGwpe2RvY3VtZW50LmJvZHkuYXBwZW5kQ2hpbGQobil9ZWxzZXtkb2N1bWVudC5hZGRFdmVudExpc3RlbmVyKCJET01Db250ZW50TG9hZGVkIixmdW5jdGlvbigpe2RvY3VtZW50LmJvZHkuYXBwZW5kQ2hpbGQobil9LGZhbHNlKX19LF9zZXRTdXBwb3J0Rm9yOmZ1bmN0aW9uKGksbSl7aWYobFtpXT09dW5kZWZpbmVkKXtyZXR1cm59bFtpXT0obT09InRydWUiKX0sX3N1cHBvcnRzOmZ1bmN0aW9uKGkpe2lmKGxbaV09PXVuZGVmaW5lZCl7cmV0dXJuIGZhbHNlfXJldHVybiBsW2ldfSxfc2V0U3RhdGU6ZnVuY3Rpb24oaSl7YT1pfSxfZ2V0U3RhdGU6ZnVuY3Rpb24oKXtyZXR1cm4gYX0sX3NldFZpc2libGU6ZnVuY3Rpb24oaSl7ZD0oaT09InRydWUiKX0sX2lzVmlld2FibGU6ZnVuY3Rpb24oKXtyZXR1cm4oZD09dHJ1ZSl9LF9zZXRNYXhTaXplOmZ1bmN0aW9uKG0saSl7Zj17d2lkdGg6cGFyc2VJbnQobSksaGVpZ2h0OnBhcnNlSW50KGkpfX0sX2dldE1heFNpemU6ZnVuY3Rpb24oKXtyZXR1cm4gZn0sX3NldFNjcmVlblNpemU6ZnVuY3Rpb24obSxpKXtiPXt3aWR0aDpwYXJzZUludChtKSxoZWlnaHQ6cGFyc2VJbnQoaSl9fSxfZ2V0U2NyZWVuU2l6ZTpmdW5jdGlvbigpe3JldHVybiBifSxfc2V0T3JpZW50YXRpb25Qcm9wZXJ0aWVzOmZ1bmN0aW9uKG0saSl7ai5fY2FsbEFjdGlvbigic2V0T3JpZW50YXRpb25Qcm9wZXJ0aWVzIix7YWxsb3dPcmllbnRhdGlvbkNoYW5nZTptfHx0cnVlLGZvcmNlT3JpZW50YXRpb246aXx8Im5vbmUifSl9LF9nZXRPcmllbnRhdGlvblByb3BlcnRpZXM6ZnVuY3Rpb24oKXt9LF9vcGVuOmZ1bmN0aW9uKGkpe2lmKGk9PXVuZGVmaW5lZCl7ai5fZmlyZUV2ZW50KCJlcnJvciIsInVybCBwYXJhbWF0ZXIgaXMgbWFuZGF0b3J5Iiwib3BlbiIpO3JldHVybn1qLl9jYWxsQWN0aW9uKCJvcGVuIix7dXJsOml9KX0sX3BsYXlWaWRlbzpmdW5jdGlvbihpKXtpZihpPT11bmRlZmluZWQpe2ouX2ZpcmVFdmVudCgiZXJyb3IiLCJ1cmkgcGFyYW1hdGVyIGlzIG1hbmRhdG9yeSIsIm9wZW4iKTtyZXR1cm59ai5fY2FsbEFjdGlvbigicGxheVZpZGVvIix7dXJpOml9KX0sX2Nsb3NlOmZ1bmN0aW9uKCl7ai5fY2FsbEFjdGlvbigiY2xvc2UiKX0sX2FkZEV2ZW50TGlzdGVuZXI6ZnVuY3Rpb24oaSxtKXtpZihnLmluZGV4T2YoaSk9PS0xKXtqLl9maXJlRXZlbnQoImVycm9yIixpKyIgaXMgbm90IGEgdmFsaWQgTVJBSUQgMi4wIGV2ZW50LiIsImFkZEV2ZW50TGlzdGVuZXIiKTtyZXR1cm59a1tpXS5wdXNoKG0pfSxfcmVtb3ZlRXZlbnRMaXN0ZW5lcjpmdW5jdGlvbihtLG4pe2lmKGcuaW5kZXhPZihtKT09LTEpe3JldHVybn12YXIgaT1rW21dLmluZGV4T2Yobik7aWYoaSE9LTEpe2tbbV0uc3BsaWNlKDEsMSl9fX07cmV0dXJuIGp9KSgpO3ZhciBtcmFpZD0oZnVuY3Rpb24oKXtyZXR1cm57YWRkRXZlbnRMaXN0ZW5lcjp3aW5kb3cuX21yYWlkLl9hZGRFdmVudExpc3RlbmVyLGNyZWF0ZUNhbGVuZGFyRXZlbnQ6ZnVuY3Rpb24oKXt9LGNsb3NlOndpbmRvdy5fbXJhaWQuX2Nsb3NlLGV4cGFuZDpmdW5jdGlvbigpe30sZ2V0Q3VycmVudFBvc2l0aW9uOmZ1bmN0aW9uKCl7cmV0dXJue3g6MCx5OjAsd2lkdGg6d2luZG93Ll9tcmFpZC5fZ2V0TWF4U2l6ZSgpLndpZHRoLGhlaWdodDp3aW5kb3cuX21yYWlkLl9nZXRNYXhTaXplKCkuaGVpZ2h0fX0sZ2V0RGVmYXVsdFBvc2l0aW9uOmZ1bmN0aW9uKCl7cmV0dXJue3g6MCx5OjAsd2lkdGg6d2luZG93Ll9tcmFpZC5fZ2V0TWF4U2l6ZSgpLndpZHRoLGhlaWdodDp3aW5kb3cuX21yYWlkLl9nZXRNYXhTaXplKCkuaGVpZ2h0fX0sZ2V0RXhwYW5kUHJvcGVydGllczpmdW5jdGlvbigpe3JldHVybnt3aWR0aDp3aW5kb3cuX21yYWlkLl9nZXRNYXhTaXplKCkud2lkdGgsaGVpZ2h0OndpbmRvdy5fbXJhaWQuX2dldE1heFNpemUoKS5oZWlnaHQsdXNlQ3VzdG9tQ2xvc2U6ZmFsc2UsaXNNb2RhbDp0cnVlfX0sZ2V0TWF4U2l6ZTp3aW5kb3cuX21yYWlkLl9nZXRNYXhTaXplLGdldE9yaWVudGF0aW9uUHJvcGVydGllczp3aW5kb3cuX21yYWlkLl9nZXRPcmllbnRhdGlvblByb3BlcnRpZXMsZ2V0UGxhY2VtZW50VHlwZTpmdW5jdGlvbigpe3JldHVybiJpbnRlcnN0aXRpYWwifSxnZXRSZXNpemVQcm9wZXJ0aWVzOmZ1bmN0aW9uKCl7cmV0dXJue3dpZHRoOndpbmRvdy5fbXJhaWQuX2dldE1heFNpemUoKS53aWR0aCxoZWlnaHQ6d2luZG93Ll9tcmFpZC5fZ2V0TWF4U2l6ZSgpLmhlaWdodCxvZmZzZXRYOjAsb2Zmc2V0WTowfX0sZ2V0U2NyZWVuU2l6ZTp3aW5kb3cuX21yYWlkLl9nZXRTY3JlZW5TaXplLGdldFN0YXRlOndpbmRvdy5fbXJhaWQuX2dldFN0YXRlLGdldFZlcnNpb246ZnVuY3Rpb24oKXtyZXR1cm4iMi4wIn0saXNWaWV3YWJsZTp3aW5kb3cuX21yYWlkLl9pc1ZpZXdhYmxlLG9wZW46d2luZG93Ll9tcmFpZC5fb3BlbixwbGF5VmlkZW86d2luZG93Ll9tcmFpZC5fcGxheVZpZGVvLHJlbW92ZUV2ZW50TGlzdGVuZXI6d2luZG93Ll9tcmFpZC5fcmVtb3ZlRXZlbnRMaXN0ZW5lcixyZXNpemU6ZnVuY3Rpb24oKXt9LHNldEV4cGFuZFByb3BlcnRpZXM6ZnVuY3Rpb24oKXt9LHNldE9yaWVudGF0aW9uUHJvcGVydGllczpmdW5jdGlvbihhKXt3aW5kb3cuX21yYWlkLl9zZXRPcmllbnRhdGlvblByb3BlcnRpZXMoYS5hbGxvd09yaWVudGF0aW9uQ2hhbmdlLGEuZm9yY2VPcmllbnRhdGlvbnx8Im5vbmUiKX0sc2V0UmVzaXplUHJvcGVydGllczpmdW5jdGlvbigpe30sc3RvcmVQaWN0dXJlOmZ1bmN0aW9uKCl7fSxzdXBwb3J0czp3aW5kb3cuX21yYWlkLl9zdXBwb3J0cyx1c2VDdXN0b21DbG9zZTpmdW5jdGlvbigpe319fSkoKTs="

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/g/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/h; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/g/a;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, p2, v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final varargs a(Lcom/purplebrain/adbuddiz/sdk/g/d;[Ljava/lang/Object;)V
    .locals 3

    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    const/4 v0, 0x1

    :goto_0
    array-length v2, p2

    if-gt v0, v2, :cond_0

    add-int/lit8 v2, v0, -0x1

    aget-object v2, p2, v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "_fireEvent"

    invoke-virtual {p0, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/g/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window._mraid."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/purplebrain/adbuddiz/sdk/g/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
