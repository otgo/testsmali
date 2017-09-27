.class Lcom/tapjoy/TJEvent$1;
.super Ljava/lang/Thread;
.source "TJEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJEvent;->sendRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJEvent;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJEvent;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 164
    new-instance v1, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    .line 165
    .local v1, "tapjoyConnection":Lcom/tapjoy/TapjoyURLConnection;
    iget-object v2, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    invoke-static {v2}, Lcom/tapjoy/TJEvent;->access$000(Lcom/tapjoy/TJEvent;)Lcom/tapjoy/TJEventData;

    move-result-object v2

    iget-object v2, v2, Lcom/tapjoy/TJEventData;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    invoke-static {v3}, Lcom/tapjoy/TJEvent;->access$100(Lcom/tapjoy/TJEvent;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    .line 167
    .local v0, "result":Lcom/tapjoy/TapjoyHttpURLResponse;
    iget-object v2, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    invoke-static {v2}, Lcom/tapjoy/TJEvent;->access$000(Lcom/tapjoy/TJEvent;)Lcom/tapjoy/TJEventData;

    move-result-object v2

    iget v3, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    iput v3, v2, Lcom/tapjoy/TJEventData;->httpStatusCode:I

    .line 168
    iget-object v2, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    invoke-static {v2}, Lcom/tapjoy/TJEvent;->access$000(Lcom/tapjoy/TJEvent;)Lcom/tapjoy/TJEventData;

    move-result-object v2

    iget-object v3, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    iput-object v3, v2, Lcom/tapjoy/TJEventData;->httpResponse:Ljava/lang/String;

    .line 170
    if-eqz v0, :cond_0

    .line 172
    iget-object v2, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    invoke-static {v2}, Lcom/tapjoy/TJEvent;->access$200(Lcom/tapjoy/TJEvent;)Lcom/tapjoy/TJEventCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 174
    iget v2, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    sparse-switch v2, :sswitch_data_0

    .line 192
    iget-object v2, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    invoke-static {v2}, Lcom/tapjoy/TJEvent;->access$200(Lcom/tapjoy/TJEvent;)Lcom/tapjoy/TJEventCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    iget-object v4, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    invoke-static {v4}, Lcom/tapjoy/TJEvent;->access$300(Lcom/tapjoy/TJEvent;)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/tapjoy/TJEventCallback;->sendEventCompleted(Lcom/tapjoy/TJEvent;Z)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 178
    :sswitch_0
    iget-object v2, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/tapjoy/TJEvent;->access$302(Lcom/tapjoy/TJEvent;Z)Z

    .line 179
    iget-object v2, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    invoke-static {v2}, Lcom/tapjoy/TJEvent;->access$200(Lcom/tapjoy/TJEvent;)Lcom/tapjoy/TJEventCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    iget-object v4, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    invoke-static {v4}, Lcom/tapjoy/TJEvent;->access$300(Lcom/tapjoy/TJEvent;)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/tapjoy/TJEventCallback;->sendEventCompleted(Lcom/tapjoy/TJEvent;Z)V

    .line 181
    iget-object v2, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    invoke-static {v2}, Lcom/tapjoy/TJEvent;->access$400(Lcom/tapjoy/TJEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isViewOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    invoke-virtual {v2}, Lcom/tapjoy/TJEvent;->showContent()V

    goto :goto_0

    .line 186
    :sswitch_1
    iget-object v2, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    invoke-static {v2}, Lcom/tapjoy/TJEvent;->access$200(Lcom/tapjoy/TJEvent;)Lcom/tapjoy/TJEventCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    new-instance v4, Lcom/tapjoy/TJError;

    iget v5, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    iget-object v6, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/tapjoy/TJEventCallback;->sendEventFail(Lcom/tapjoy/TJEvent;Lcom/tapjoy/TJError;)V

    .line 187
    iget-object v2, p0, Lcom/tapjoy/TJEvent$1;->this$0:Lcom/tapjoy/TJEvent;

    invoke-virtual {v2}, Lcom/tapjoy/TJEvent;->trackEventForOfflineDelivery()V

    goto :goto_0

    .line 174
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method
