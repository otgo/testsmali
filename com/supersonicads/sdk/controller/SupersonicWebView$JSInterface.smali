.class public Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;
.super Ljava/lang/Object;
.source "SupersonicWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JSInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

.field volatile udiaResults:I


# direct methods
.method public constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 682
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    const/4 v0, 0x0

    iput v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->udiaResults:I

    .line 684
    return-void
.end method

.method private injectGetUDIA(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 5
    .param p1, "funToCall"    # Ljava/lang/String;
    .param p2, "jsonArr"    # Lorg/json/JSONArray;

    .prologue
    .line 2066
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2067
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onGetUDIASuccess"

    const-string v4, "onGetUDIAFail"

    invoke-static {v1, p1, v2, v3, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4000(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2068
    .local v0, "script":Ljava/lang/String;
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V

    .line 2070
    .end local v0    # "script":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private sendResults(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 3
    .param p1, "funToCall"    # Ljava/lang/String;
    .param p2, "jsArr"    # Lorg/json/JSONArray;

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendResults: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->udiaResults:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    iget v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->udiaResults:I

    if-gtz v0, :cond_0

    .line 1984
    invoke-direct {p0, p1, p2}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->injectGetUDIA(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 1986
    :cond_0
    return-void
.end method


# virtual methods
.method public adClicked(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1579
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adClicked("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1582
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v1

    .line 1583
    .local v1, "ctx":Landroid/content/Context;
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1585
    check-cast v0, Landroid/app/Activity;

    .line 1586
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$9;

    invoke-direct {v2, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$9;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1592
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v3, "onInterstitialAdClicked"

    invoke-static {v2, v3, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    .end local v1    # "ctx":Landroid/content/Context;
    :cond_1
    return-void
.end method

.method public adCredited(Ljava/lang/String;)V
    .locals 26
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "adCredited("

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, ")"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    new-instance v22, Lcom/supersonicads/sdk/data/SSAObj;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1150
    .local v22, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v2, "credits"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1151
    .local v15, "creditsStr":Ljava/lang/String;
    if-eqz v15, :cond_2

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1153
    .local v5, "credits":I
    :goto_0
    const-string v2, "total"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1154
    .local v24, "totalCreditsStr":Ljava/lang/String;
    if-eqz v24, :cond_3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1156
    .local v7, "totalCredits":I
    :goto_1
    const-string v2, "productType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1157
    .local v4, "product":Ljava/lang/String;
    const-string v2, "externalPoll"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/data/SSAObj;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 1160
    .local v17, "isExternalPoll":Z
    const/16 v23, 0x0

    .line 1161
    .local v23, "totalCreditsFlag":Z
    const/16 v18, 0x0

    .line 1162
    .local v18, "latestCompeltionsTime":Ljava/lang/String;
    const/16 v20, 0x0

    .line 1168
    .local v20, "md5Signature":Z
    if-eqz v17, :cond_4

    .line 1170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v10

    .line 1171
    .local v10, "appKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v11

    .line 1179
    .local v11, "userId":Ljava/lang/String;
    :goto_2
    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1182
    const-string v2, "signature"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/data/SSAObj;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "timestamp"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/data/SSAObj;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "totalCreditsFlag"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/data/SSAObj;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1184
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v3, 0x0

    const-string v12, "One of the keys are missing: signature/timestamp/totalCreditsFlag"

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v2, v0, v3, v12, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1252
    :cond_1
    :goto_3
    return-void

    .line 1151
    .end local v4    # "product":Ljava/lang/String;
    .end local v5    # "credits":I
    .end local v7    # "totalCredits":I
    .end local v10    # "appKey":Ljava/lang/String;
    .end local v11    # "userId":Ljava/lang/String;
    .end local v17    # "isExternalPoll":Z
    .end local v18    # "latestCompeltionsTime":Ljava/lang/String;
    .end local v20    # "md5Signature":Z
    .end local v23    # "totalCreditsFlag":Z
    .end local v24    # "totalCreditsStr":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 1154
    .restart local v5    # "credits":I
    .restart local v24    # "totalCreditsStr":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 1175
    .restart local v4    # "product":Ljava/lang/String;
    .restart local v7    # "totalCredits":I
    .restart local v17    # "isExternalPoll":Z
    .restart local v18    # "latestCompeltionsTime":Ljava/lang/String;
    .restart local v20    # "md5Signature":Z
    .restart local v23    # "totalCreditsFlag":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2900(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v10

    .line 1176
    .restart local v10    # "appKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "userId":Ljava/lang/String;
    goto :goto_2

    .line 1189
    :cond_5
    const-string v2, "signature"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1192
    .local v14, "controllerMD5":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 1194
    .local v21, "sig":Ljava/lang/StringBuilder;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/supersonicads/sdk/utils/SDKUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1196
    .local v19, "localMD5":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1198
    const/16 v20, 0x1

    .line 1204
    :goto_4
    const-string v2, "totalCreditsFlag"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/data/SSAObj;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    .line 1207
    const-string v2, "timestamp"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1210
    .end local v14    # "controllerMD5":Ljava/lang/String;
    .end local v19    # "localMD5":Ljava/lang/String;
    .end local v21    # "sig":Ljava/lang/StringBuilder;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v16

    .line 1213
    .local v16, "ctx":Landroid/content/Context;
    move-object/from16 v0, v16

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 1215
    move/from16 v8, v23

    .line 1216
    .local v8, "mTotalCreditsFlag":Z
    move-object/from16 v9, v18

    .line 1217
    .local v9, "mlatestCompeltionsTime":Ljava/lang/String;
    move/from16 v6, v20

    .local v6, "mMd5Signature":Z
    move-object/from16 v13, v16

    .line 1219
    check-cast v13, Landroid/app/Activity;

    .line 1220
    .local v13, "activity":Landroid/app/Activity;
    new-instance v2, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;

    move-object/from16 v3, p0

    move-object/from16 v12, p1

    invoke-direct/range {v2 .. v12}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$2;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;Ljava/lang/String;IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 1200
    .end local v6    # "mMd5Signature":Z
    .end local v8    # "mTotalCreditsFlag":Z
    .end local v9    # "mlatestCompeltionsTime":Ljava/lang/String;
    .end local v13    # "activity":Landroid/app/Activity;
    .end local v16    # "ctx":Landroid/content/Context;
    .restart local v14    # "controllerMD5":Ljava/lang/String;
    .restart local v19    # "localMD5":Ljava/lang/String;
    .restart local v21    # "sig":Ljava/lang/StringBuilder;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v3, 0x0

    const-string v12, "Controller signature is not equal to SDK signature"

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v2, v0, v3, v12, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public adUnitsReady(Ljava/lang/String;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 925
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adUnitsReady("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    new-instance v1, Lcom/supersonicads/sdk/data/AdUnitsReady;

    invoke-direct {v1, p1}, Lcom/supersonicads/sdk/data/AdUnitsReady;-><init>(Ljava/lang/String;)V

    .line 929
    .local v1, "adUnitsReady":Lcom/supersonicads/sdk/data/AdUnitsReady;
    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/AdUnitsReady;->isNumOfAdUnitsExist()Z

    move-result v4

    if-nez v4, :cond_1

    .line 930
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v5, 0x0

    const-string v6, "Num Of Ad Units Do Not Exist"

    invoke-static {v4, p1, v5, v6, v7}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 934
    :cond_1
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v5, 0x1

    invoke-static {v4, p1, v5, v7, v7}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 936
    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/AdUnitsReady;->getProductType()Ljava/lang/String;

    move-result-object v3

    .line 938
    .local v3, "product":Ljava/lang/String;
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 940
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v2

    .line 941
    .local v2, "ctx":Landroid/content/Context;
    instance-of v4, v2, Landroid/app/Activity;

    if-eqz v4, :cond_0

    move-object v0, v2

    .line 943
    check-cast v0, Landroid/app/Activity;

    .line 944
    .local v0, "activity":Landroid/app/Activity;
    new-instance v4, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$1;

    invoke-direct {v4, p0, v1, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$1;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;Lcom/supersonicads/sdk/data/AdUnitsReady;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public alert(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 759
    return-void
.end method

.method protected declared-synchronized changeInterstitialState(ZLjava/lang/String;)V
    .locals 4
    .param p1, "available"    # Z
    .param p2, "product"    # Ljava/lang/String;

    .prologue
    .line 1553
    monitor-enter p0

    const/4 v0, 0x0

    .line 1556
    .local v0, "notify":Z
    :try_start_0
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1557
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5202(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1558
    const/4 v0, 0x1

    .line 1569
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v1, p2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1570
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/supersonicads/sdk/listeners/OnInterstitialListener;->onInterstitialAvailability(Z)V

    .line 1571
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v2, "onInterstitialAvailability"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1574
    :cond_1
    monitor-exit p0

    return-void

    .line 1561
    :cond_2
    if-eqz p1, :cond_3

    :try_start_1
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1562
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5202(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1563
    const/4 v0, 0x1

    goto :goto_0

    .line 1564
    :cond_3
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1565
    const/4 v0, 0x1

    .line 1566
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5202(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1553
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public checkInstalledApps(Ljava/lang/String;)V
    .locals 13
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 830
    iget-object v10, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkInstalledApps("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-object v10, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v10, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3700(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 833
    .local v9, "successFunToCall":Ljava/lang/String;
    iget-object v10, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v10, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3800(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 835
    .local v1, "failFunToCall":Ljava/lang/String;
    const/4 v3, 0x0

    .line 838
    .local v3, "funToCall":Ljava/lang/String;
    new-instance v8, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v8, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 839
    .local v8, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    sget-object v10, Lcom/supersonicads/sdk/controller/SupersonicWebView;->APP_IDS:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 840
    .local v0, "appIdsString":Ljava/lang/String;
    sget-object v10, Lcom/supersonicads/sdk/controller/SupersonicWebView;->REQUEST_ID:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 844
    .local v5, "requestIdString":Ljava/lang/String;
    iget-object v10, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v10, v0, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4300(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v6

    .line 846
    .local v6, "resultArr":[Ljava/lang/Object;
    const/4 v10, 0x0

    aget-object v4, v6, v10

    check-cast v4, Ljava/lang/String;

    .line 847
    .local v4, "params":Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, v6, v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 849
    .local v2, "failed":Z
    if-eqz v2, :cond_2

    .line 850
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 851
    move-object v3, v1

    .line 859
    :cond_0
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 860
    iget-object v10, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v11, "onCheckInstalledAppsSuccess"

    const-string v12, "onCheckInstalledAppsFail"

    invoke-static {v10, v3, v4, v11, v12}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4000(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 861
    .local v7, "script":Ljava/lang/String;
    iget-object v10, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v10, v7}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V

    .line 863
    .end local v7    # "script":Ljava/lang/String;
    :cond_1
    return-void

    .line 854
    :cond_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 855
    move-object v3, v9

    goto :goto_0
.end method

.method public createCalendarEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1709
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createCalendarEvent("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1714
    .local v1, "jsObj":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1716
    .local v2, "jsRecurrence":Lorg/json/JSONObject;
    const-string v3, "frequency"

    const-string v4, "weekly"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1717
    const-string v3, "id"

    const-string v4, "testevent723GDf84"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1718
    const-string v3, "description"

    const-string v4, "Watch this crazy show on cannel 5!"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1719
    const-string v3, "start"

    const-string v4, "2014-02-01T20:00:00-8:00"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1720
    const-string v3, "end"

    const-string v4, "2014-06-30T20:00:00-8:00"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1721
    const-string v3, "status"

    const-string v4, "pending"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1722
    const-string v3, "recurrence"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1723
    const-string v3, "reminder"

    const-string v4, "2014-02-01T19:50:00-8:00"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1728
    .end local v1    # "jsObj":Lorg/json/JSONObject;
    .end local v2    # "jsRecurrence":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1725
    :catch_0
    move-exception v0

    .line 1726
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteFile(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1000
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteFile("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    new-instance v0, Lcom/supersonicads/sdk/data/SSAFile;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAFile;-><init>(Ljava/lang/String;)V

    .line 1004
    .local v0, "file":Lcom/supersonicads/sdk/data/SSAFile;
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->isPathExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1005
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v3, 0x0

    const-string v4, "File not exist"

    const-string v5, "1"

    invoke-static {v2, p1, v3, v4, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1011
    :goto_0
    return-void

    .line 1008
    :cond_0
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1009
    .local v1, "result":Z
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2, p1, v1, v5, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteFolder(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 986
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteFolder("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    new-instance v0, Lcom/supersonicads/sdk/data/SSAFile;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAFile;-><init>(Ljava/lang/String;)V

    .line 990
    .local v0, "file":Lcom/supersonicads/sdk/data/SSAFile;
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->isPathExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 991
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v3, 0x0

    const-string v4, "Folder not exist"

    const-string v5, "1"

    invoke-static {v2, p1, v3, v4, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 996
    :goto_0
    return-void

    .line 993
    :cond_0
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->deleteFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 994
    .local v1, "result":Z
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2, p1, v1, v5, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public displayWebView(Ljava/lang/String;)V
    .locals 12
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 1015
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v8}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "displayWebView("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v9, 0x1

    invoke-static {v8, p1, v9, v11, v11}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1019
    new-instance v7, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v7, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1020
    .local v7, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v8, "display"

    invoke-virtual {v7, v8}, Lcom/supersonicads/sdk/data/SSAObj;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1021
    .local v0, "display":Z
    const-string v8, "productType"

    invoke-virtual {v7, v8}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1023
    .local v5, "productType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1025
    .local v2, "isRewardedVideo":Z
    if-eqz v0, :cond_4

    .line 1028
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v8}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getState()Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    move-result-object v8

    sget-object v9, Lcom/supersonicads/sdk/controller/SupersonicWebView$State;->Display:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    if-eq v8, v9, :cond_3

    .line 1030
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v9, Lcom/supersonicads/sdk/controller/SupersonicWebView$State;->Display:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    invoke-virtual {v8, v9}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setState(Lcom/supersonicads/sdk/controller/SupersonicWebView$State;)V

    .line 1032
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v8}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "State: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v8}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v3

    .line 1036
    .local v3, "mContext":Landroid/content/Context;
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v8}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getOrientationState()Ljava/lang/String;

    move-result-object v4

    .line 1037
    .local v4, "orientation":Ljava/lang/String;
    invoke-static {v3}, Lcom/supersonicads/sdk/utils/SDKUtils;->getApplicationRotation(Landroid/content/Context;)I

    move-result v6

    .line 1041
    .local v6, "rotation":I
    sget-object v8, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v8}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1043
    new-instance v1, Landroid/content/Intent;

    const-class v8, Lcom/supersonicads/sdk/controller/InterstitialActivity;

    invoke-direct {v1, v3, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1068
    .local v1, "intent":Landroid/content/Intent;
    :goto_0
    if-eqz v2, :cond_0

    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v9, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v9}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1069
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v8}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    move-result-object v8

    invoke-interface {v8}, Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;->onRVAdOpened()V

    .line 1073
    :cond_0
    const-string v8, "orientation_set_flag"

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1074
    const-string v8, "rotation_set_flag"

    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1075
    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1085
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "mContext":Landroid/content/Context;
    .end local v4    # "orientation":Ljava/lang/String;
    .end local v6    # "rotation":I
    :goto_1
    return-void

    .line 1047
    .restart local v3    # "mContext":Landroid/content/Context;
    .restart local v4    # "orientation":Ljava/lang/String;
    .restart local v6    # "rotation":I
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v8, Lcom/supersonicads/sdk/controller/ControllerActivity;

    invoke-direct {v1, v3, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1050
    .restart local v1    # "intent":Landroid/content/Intent;
    sget-object v8, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v8}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1051
    const/4 v2, 0x1

    .line 1053
    const-string v8, "productType"

    sget-object v9, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v9}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1057
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v8}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v8

    sget-object v9, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v9}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/supersonicads/sdk/data/AdUnitsState;->adOpened(I)V

    goto :goto_0

    .line 1060
    :cond_2
    const-string v8, "productType"

    sget-object v9, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v9}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1063
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v8}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v8

    sget-object v9, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v9}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/supersonicads/sdk/data/AdUnitsState;->adOpened(I)V

    goto :goto_0

    .line 1078
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "mContext":Landroid/content/Context;
    .end local v4    # "orientation":Ljava/lang/String;
    .end local v6    # "rotation":I
    :cond_3
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v8}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "State: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1082
    :cond_4
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v9, Lcom/supersonicads/sdk/controller/SupersonicWebView$State;->Gone:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    invoke-virtual {v8, v9}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setState(Lcom/supersonicads/sdk/controller/SupersonicWebView$State;)V

    .line 1083
    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v8}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)V

    goto :goto_1
.end method

.method public getApplicationInfo(Ljava/lang/String;)V
    .locals 12
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 794
    iget-object v9, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v9}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getApplicationInfo("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    iget-object v9, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v9, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3700(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 797
    .local v8, "successFunToCall":Ljava/lang/String;
    iget-object v9, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v9, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3800(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 800
    .local v0, "failFunToCall":Ljava/lang/String;
    new-instance v7, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v7, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 801
    .local v7, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v9, "productType"

    invoke-virtual {v7, v9}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 803
    .local v4, "product":Ljava/lang/String;
    const/4 v2, 0x0

    .line 805
    .local v2, "funToCall":Ljava/lang/String;
    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    .line 807
    .local v5, "resultArr":[Ljava/lang/Object;
    iget-object v9, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v9, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4200(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v5

    .line 809
    const/4 v9, 0x0

    aget-object v3, v5, v9

    check-cast v3, Ljava/lang/String;

    .line 810
    .local v3, "params":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v5, v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 812
    .local v1, "failed":Z
    if-eqz v1, :cond_2

    .line 813
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 814
    move-object v2, v0

    .line 822
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 823
    iget-object v9, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v10, "onGetApplicationInfoSuccess"

    const-string v11, "onGetApplicationInfoFail"

    invoke-static {v9, v2, v3, v10, v11}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4000(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 824
    .local v6, "script":Ljava/lang/String;
    iget-object v9, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v9, v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V

    .line 826
    .end local v6    # "script":Ljava/lang/String;
    :cond_1
    return-void

    .line 817
    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 818
    move-object v2, v8

    goto :goto_0
.end method

.method public getCachedFilesMap(Ljava/lang/String;)V
    .locals 10
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1115
    iget-object v5, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCachedFilesMap("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    iget-object v5, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v5, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3700(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1119
    .local v1, "funToCall":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1121
    new-instance v4, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v4, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1124
    .local v4, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v5, "path"

    invoke-virtual {v4, v5}, Lcom/supersonicads/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1125
    iget-object v5, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v6, "path key does not exist"

    invoke-static {v5, p1, v8, v6, v9}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1142
    .end local v4    # "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    :cond_0
    :goto_0
    return-void

    .line 1129
    .restart local v4    # "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    :cond_1
    const-string v5, "path"

    invoke-virtual {v4, v5}, Lcom/supersonicads/sdk/data/SSAObj;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1132
    .local v2, "mapPath":Ljava/lang/String;
    iget-object v5, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->isPathExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1133
    iget-object v5, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v6, "path file does not exist on disk"

    invoke-static {v5, p1, v8, v6, v9}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1137
    :cond_2
    iget-object v5, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->getCachedFilesMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1138
    .local v0, "fileSystmeMap":Ljava/lang/String;
    iget-object v5, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v6, "onGetCachedFilesMapSuccess"

    const-string v7, "onGetCachedFilesMapFail"

    invoke-static {v5, v1, v0, v6, v7}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4000(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1140
    .local v3, "script":Ljava/lang/String;
    iget-object v5, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v5, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDeviceStatus(Ljava/lang/String;)V
    .locals 10
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 763
    iget-object v7, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v7}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDeviceStatus("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object v7, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v7, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3700(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 766
    .local v6, "successFunToCall":Ljava/lang/String;
    iget-object v7, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v7, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3800(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 768
    .local v0, "failFunToCall":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/Object;

    .line 769
    .local v4, "resultArr":[Ljava/lang/Object;
    iget-object v7, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iget-object v8, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v8}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3900(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/content/Context;)[Ljava/lang/Object;

    move-result-object v4

    .line 771
    const/4 v7, 0x0

    aget-object v3, v4, v7

    check-cast v3, Ljava/lang/String;

    .line 772
    .local v3, "params":Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v4, v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 774
    .local v1, "failed":Z
    const/4 v2, 0x0

    .line 776
    .local v2, "funToCall":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 777
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 778
    move-object v2, v0

    .line 786
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 787
    iget-object v7, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v8, "onGetDeviceStatusSuccess"

    const-string v9, "onGetDeviceStatusFail"

    invoke-static {v7, v2, v3, v8, v9}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4000(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 788
    .local v5, "script":Ljava/lang/String;
    iget-object v7, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v7, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V

    .line 790
    .end local v5    # "script":Ljava/lang/String;
    :cond_1
    return-void

    .line 781
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 782
    move-object v2, v6

    goto :goto_0
.end method

.method public getOrientation(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1089
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3700(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1090
    .local v0, "funToCall":Ljava/lang/String;
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/supersonicads/sdk/utils/SDKUtils;->getOrientation(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1092
    .local v1, "params":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1093
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v4, "onGetOrientationSuccess"

    const-string v5, "onGetOrientationFail"

    invoke-static {v3, v0, v1, v4, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4000(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1094
    .local v2, "script":Ljava/lang/String;
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V

    .line 1096
    .end local v2    # "script":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getUDIA(Ljava/lang/String;)V
    .locals 14
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1845
    const/4 v10, 0x0

    iput v10, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->udiaResults:I

    .line 1847
    iget-object v10, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getUDIA("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    iget-object v10, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v10, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3700(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1851
    .local v2, "funToCall":Ljava/lang/String;
    new-instance v8, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v8, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1854
    .local v8, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v10, "getByFlag"

    invoke-virtual {v8, v10}, Lcom/supersonicads/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1855
    iget-object v10, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v11, 0x0

    const-string v12, "getByFlag key does not exist"

    const/4 v13, 0x0

    invoke-static {v10, p1, v11, v12, v13}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1978
    :cond_0
    :goto_0
    return-void

    .line 1860
    :cond_1
    const-string v10, "getByFlag"

    invoke-virtual {v8, v10}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1861
    .local v4, "getByFlagStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1864
    .local v3, "getByFlag":I
    if-eqz v3, :cond_0

    .line 1869
    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 1871
    .local v0, "binaryToggle":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1872
    iget-object v10, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v11, 0x0

    const-string v12, "fialed to convert getByFlag"

    const/4 v13, 0x0

    invoke-static {v10, p1, v11, v12, v13}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1877
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1878
    .local v9, "strBld":Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1881
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1884
    .local v1, "binaryToggleArr":[C
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1887
    .local v5, "jsArr":Lorg/json/JSONArray;
    const/4 v10, 0x3

    aget-char v10, v1, v10

    const/16 v11, 0x30

    if-ne v10, v11, :cond_3

    .line 1888
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1890
    .local v6, "jsObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v10, "sessions"

    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSessions()Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1891
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->deleteSessions()V

    .line 1892
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1922
    .end local v6    # "jsObj":Lorg/json/JSONObject;
    :cond_3
    :goto_1
    const/4 v10, 0x2

    aget-char v10, v1, v10

    const/16 v11, 0x31

    if-ne v10, v11, :cond_0

    .line 1924
    iget v10, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->udiaResults:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->udiaResults:I

    .line 1927
    iget-object v10, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/supersonicads/sdk/utils/LocationHelper;->getLastLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v7

    .line 1929
    .local v7, "location":Landroid/location/Location;
    if-eqz v7, :cond_4

    .line 1930
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1932
    .restart local v6    # "jsObj":Lorg/json/JSONObject;
    :try_start_1
    const-string v10, "latitude"

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-virtual {v6, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1933
    const-string v10, "longitude"

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    invoke-virtual {v6, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1934
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1935
    iget v10, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->udiaResults:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->udiaResults:I

    .line 1936
    invoke-direct {p0, v2, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->sendResults(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 1937
    iget-object v10, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "done location"

    invoke-static {v10, v11}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1938
    :catch_0
    move-exception v10

    goto/16 :goto_0

    .line 1942
    .end local v6    # "jsObj":Lorg/json/JSONObject;
    :cond_4
    iget v10, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->udiaResults:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->udiaResults:I

    goto/16 :goto_0

    .line 1893
    .end local v7    # "location":Landroid/location/Location;
    .restart local v6    # "jsObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v10

    goto :goto_1
.end method

.method public getUserData(Ljava/lang/String;)V
    .locals 16
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserData("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    new-instance v15, Lcom/supersonicads/sdk/data/SSAObj;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2125
    .local v15, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v1, "key"

    invoke-virtual {v15, v1}, Lcom/supersonicads/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v4, 0x0

    const-string v5, "key does not exist"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v1, v0, v4, v5, v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2139
    :goto_0
    return-void

    .line 2130
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3700(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2131
    .local v12, "failFunToCall":Ljava/lang/String;
    const-string v1, "key"

    invoke-virtual {v15, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2133
    .local v2, "mKey":Ljava/lang/String;
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2135
    .local v3, "mValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5500(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 2137
    .local v13, "params":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v1, v12, v13}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2138
    .local v14, "script":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v1, v14}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getUserUniqueId(Ljava/lang/String;)V
    .locals 16
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2033
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserUniqueId("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    new-instance v15, Lcom/supersonicads/sdk/data/SSAObj;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2037
    .local v15, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v1, "productType"

    invoke-virtual {v15, v1}, Lcom/supersonicads/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2038
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v2, 0x0

    const-string v4, "productType does not exist"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v1, v0, v2, v4, v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2053
    :cond_0
    :goto_0
    return-void

    .line 2042
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3700(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2044
    .local v12, "funToCall":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2046
    const-string v1, "productType"

    invoke-virtual {v15, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2047
    .local v5, "productType":Ljava/lang/String;
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getUniqueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2048
    .local v3, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v2, "userUniqueId"

    const-string v4, "productType"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5500(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 2050
    .local v13, "params":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v2, "onGetUserUniqueIdSuccess"

    const-string v4, "onGetUserUniqueIdFail"

    invoke-static {v1, v12, v13, v2, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4000(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2051
    .local v14, "script":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v1, v14}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initController(Ljava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 688
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initController("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 692
    .local v0, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v2, "stage"

    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 694
    const-string v2, "stage"

    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 696
    .local v1, "stage":Ljava/lang/String;
    const-string v2, "ready"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 698
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1602(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;)Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    .line 701
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/os/CountDownTimer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 704
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/os/CountDownTimer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 707
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1900(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 708
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2100(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initBrandConnect(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;)V

    .line 711
    :cond_0
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 712
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2600(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnInterstitialListener;)V

    .line 715
    :cond_1
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 716
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2900(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3100(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->showOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V

    .line 719
    :cond_2
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 720
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3100(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V

    .line 723
    :cond_3
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->restoreState(Lcom/supersonicads/sdk/data/AdUnitsState;)V

    .line 754
    .end local v1    # "stage":Ljava/lang/String;
    :cond_4
    :goto_0
    return-void

    .line 725
    .restart local v1    # "stage":Ljava/lang/String;
    :cond_5
    const-string v2, "loaded"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 727
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Loaded:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1602(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;)Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    goto :goto_0

    .line 729
    :cond_6
    const-string v2, "failed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 731
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Failed:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1602(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;)Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    .line 733
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1900(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 734
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 737
    :cond_7
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 738
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 741
    :cond_8
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 742
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    .line 745
    :cond_9
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 746
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V

    goto :goto_0

    .line 751
    :cond_a
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "No STAGE mentioned! Should not get here!"

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public interstitialAvailability(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1545
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interstitialAvailability("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    new-instance v1, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1548
    .local v1, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v2, "available"

    invoke-virtual {v1, v2}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1549
    .local v0, "available":Z
    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->changeInterstitialState(ZLjava/lang/String;)V

    .line 1550
    return-void
.end method

.method public onAdWindowsClosed(Ljava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2171
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAdWindowsClosed("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/supersonicads/sdk/data/AdUnitsState;->adClosed()V

    .line 2177
    new-instance v3, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v3, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2178
    .local v3, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v4, "productType"

    invoke-virtual {v3, v4}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2180
    .local v2, "product":Ljava/lang/String;
    sget-object v4, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v4}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2181
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "onRVAdClosed()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2190
    if-eqz v2, :cond_1

    .line 2191
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v1

    .line 2192
    .local v1, "ctx":Landroid/content/Context;
    instance-of v4, v1, Landroid/app/Activity;

    if-eqz v4, :cond_1

    move-object v0, v1

    .line 2194
    check-cast v0, Landroid/app/Activity;

    .line 2195
    .local v0, "activity":Landroid/app/Activity;
    new-instance v4, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$15;

    invoke-direct {v4, p0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$15;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2210
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "ctx":Landroid/content/Context;
    :cond_1
    return-void

    .line 2182
    :cond_2
    sget-object v4, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v4}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2183
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "onISAdClosed()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2184
    :cond_3
    sget-object v4, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v4}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2185
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "onOWAdClosed()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onGenericFunctionFail(Ljava/lang/String;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1678
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGenericFunctionFail("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1681
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "genericFunctionListener was not found"

    invoke-static {v4, v5}, Lcom/supersonicads/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    :goto_0
    return-void

    .line 1685
    :cond_0
    new-instance v3, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v3, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1686
    .local v3, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v4, "errMsg"

    invoke-virtual {v3, v4}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1688
    .local v2, "message":Ljava/lang/String;
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v1

    .line 1689
    .local v1, "ctx":Landroid/content/Context;
    instance-of v4, v1, Landroid/app/Activity;

    if-eqz v4, :cond_1

    move-object v0, v1

    .line 1691
    check-cast v0, Landroid/app/Activity;

    .line 1692
    .local v0, "activity":Landroid/app/Activity;
    new-instance v4, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$13;

    invoke-direct {v4, p0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$13;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1699
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v5, 0x1

    invoke-static {v4, p1, v5, v7, v7}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1700
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v5, "onGenericFunctionFail"

    invoke-static {v4, v5, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGenericFunctionSuccess(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1656
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGenericFunctionSuccess("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1659
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "genericFunctionListener was not found"

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    :goto_0
    return-void

    .line 1663
    :cond_0
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v1

    .line 1664
    .local v1, "ctx":Landroid/content/Context;
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 1665
    check-cast v0, Landroid/app/Activity;

    .line 1666
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$12;

    invoke-direct {v2, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$12;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1673
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3, v5, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGetApplicationInfoFail(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1346
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetApplicationInfoFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1349
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onGetApplicationInfoFail"

    invoke-static {v0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    return-void
.end method

.method public onGetApplicationInfoSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1338
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetApplicationInfoSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1341
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onGetApplicationInfoSuccess"

    invoke-static {v0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    return-void
.end method

.method public onGetCachedFilesMapFail(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1403
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetCachedFilesMapFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1407
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onGetCachedFilesMapFail"

    invoke-static {v0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    return-void
.end method

.method public onGetCachedFilesMapSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1394
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetCachedFilesMapSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1398
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onGetCachedFilesMapSuccess"

    invoke-static {v0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    return-void
.end method

.method public onGetDeviceStatusFail(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1276
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetDeviceStatusFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1280
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onGetDeviceStatusFail"

    invoke-static {v0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    return-void
.end method

.method public onGetDeviceStatusSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1267
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetDeviceStatusSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1271
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onGetDeviceStatusSuccess"

    invoke-static {v0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    return-void
.end method

.method public onGetUDIAFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetUDIAFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    return-void
.end method

.method public onGetUDIASuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2000
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetUDIASuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2001
    return-void
.end method

.method public onGetUserCreditsFail(Ljava/lang/String;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2143
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGetUserCreditsFail("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    new-instance v3, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v3, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2146
    .local v3, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v4, "errMsg"

    invoke-virtual {v3, v4}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2148
    .local v2, "message":Ljava/lang/String;
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v5, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v5}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2149
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v1

    .line 2150
    .local v1, "ctx":Landroid/content/Context;
    instance-of v4, v1, Landroid/app/Activity;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 2152
    check-cast v0, Landroid/app/Activity;

    .line 2153
    .local v0, "activity":Landroid/app/Activity;
    new-instance v4, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$14;

    invoke-direct {v4, p0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$14;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2165
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "ctx":Landroid/content/Context;
    :cond_0
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v5, 0x1

    invoke-static {v4, p1, v5, v7, v7}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2166
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v5, "onGetUserCreditsFail"

    invoke-static {v4, v5, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    return-void
.end method

.method public onGetUserUniqueIdFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2062
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetUserUniqueIdFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2063
    return-void
.end method

.method public onGetUserUniqueIdSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2057
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetUserUniqueIdSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    return-void
.end method

.method public onInitBrandConnectFail(Ljava/lang/String;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1296
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onInitBrandConnectFail("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    new-instance v3, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v3, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1299
    .local v3, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v4, "errMsg"

    invoke-virtual {v3, v4}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1302
    .local v2, "message":Ljava/lang/String;
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/supersonicads/sdk/data/AdUnitsState;->setRewardedVideoInitSuccess(Z)V

    .line 1310
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v5, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v5}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1312
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v1

    .line 1313
    .local v1, "ctx":Landroid/content/Context;
    instance-of v4, v1, Landroid/app/Activity;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 1315
    check-cast v0, Landroid/app/Activity;

    .line 1316
    .local v0, "activity":Landroid/app/Activity;
    new-instance v4, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$3;

    invoke-direct {v4, p0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$3;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1332
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "ctx":Landroid/content/Context;
    :cond_0
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v5, 0x1

    invoke-static {v4, p1, v5, v7, v7}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1333
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v5, "onInitBrandConnectFail"

    invoke-static {v4, v5, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    return-void
.end method

.method public onInitBrandConnectSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1285
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInitBrandConnectSuccess("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    new-instance v0, Lcom/supersonicads/sdk/data/SSABCParameters;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSABCParameters;-><init>(Ljava/lang/String;)V

    .line 1288
    .local v0, "ssaBCParameters":Lcom/supersonicads/sdk/data/SSABCParameters;
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setSSABCParameters(Lcom/supersonicads/sdk/data/SSABCParameters;)V

    .line 1290
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2, v4, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1291
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v2, "onInitBrandConnectSuccess"

    invoke-static {v1, v2, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    return-void
.end method

.method public onInitInterstitialFail(Ljava/lang/String;)V
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1504
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onInitInterstitialFail("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/supersonicads/sdk/data/AdUnitsState;->setInterstitialInitSuccess(Z)V

    .line 1509
    new-instance v3, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v3, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1510
    .local v3, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v4, "errMsg"

    invoke-virtual {v3, v4}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1513
    .local v2, "message":Ljava/lang/String;
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/supersonicads/sdk/data/AdUnitsState;->reportInitInterstitial()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1516
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/supersonicads/sdk/data/AdUnitsState;->setReportInitInterstitial(Z)V

    .line 1518
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v5, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v5}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1520
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v1

    .line 1521
    .local v1, "ctx":Landroid/content/Context;
    instance-of v4, v1, Landroid/app/Activity;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 1523
    check-cast v0, Landroid/app/Activity;

    .line 1524
    .local v0, "activity":Landroid/app/Activity;
    new-instance v4, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$8;

    invoke-direct {v4, p0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$8;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1539
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "ctx":Landroid/content/Context;
    :cond_0
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v5, 0x1

    invoke-static {v4, p1, v5, v8, v8}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1540
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v5, "onInitInterstitialFail"

    invoke-static {v4, v5, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    return-void
.end method

.method public onInitInterstitialSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1468
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onInitInterstitialSuccess()"

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v3, "onInitInterstitialSuccess"

    const-string v4, "true"

    invoke-static {v2, v3, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/supersonicads/sdk/data/AdUnitsState;->setInterstitialInitSuccess(Z)V

    .line 1476
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supersonicads/sdk/data/AdUnitsState;->reportInitInterstitial()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1479
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/supersonicads/sdk/data/AdUnitsState;->setReportInitInterstitial(Z)V

    .line 1481
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1483
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v1

    .line 1484
    .local v1, "ctx":Landroid/content/Context;
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1486
    check-cast v0, Landroid/app/Activity;

    .line 1487
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$7;

    invoke-direct {v2, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$7;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1500
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "ctx":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method public onOfferWallGeneric(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOfferWallGeneric("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2083
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3100(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/supersonicads/sdk/listeners/OnOfferWallListener;->onOWGeneric(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    :cond_0
    return-void
.end method

.method public onRewardedVideoGeneric(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2074
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRewardedVideoGeneric("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2076
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;->onRVGeneric(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    :cond_0
    return-void
.end method

.method public onShowBrandConnectFail(Ljava/lang/String;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1362
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onShowBrandConnectFail("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    new-instance v3, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v3, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1365
    .local v3, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v4, "errMsg"

    invoke-virtual {v3, v4}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1367
    .local v2, "message":Ljava/lang/String;
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v5, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v5}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1369
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v1

    .line 1370
    .local v1, "ctx":Landroid/content/Context;
    instance-of v4, v1, Landroid/app/Activity;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 1372
    check-cast v0, Landroid/app/Activity;

    .line 1373
    .local v0, "activity":Landroid/app/Activity;
    new-instance v4, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$4;

    invoke-direct {v4, p0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$4;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1387
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "ctx":Landroid/content/Context;
    :cond_0
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v5, 0x1

    invoke-static {v4, p1, v5, v7, v7}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1388
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v5, "onShowBrandConnectFail"

    invoke-static {v4, v5, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    return-void
.end method

.method public onShowBrandConnectSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1354
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowBrandConnectSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v3, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1357
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "onShowBrandConnectSuccess"

    invoke-static {v0, v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    return-void
.end method

.method public onShowInterstitialFail(Ljava/lang/String;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1623
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onShowInterstitialFail("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    new-instance v3, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v3, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1626
    .local v3, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v4, "errMsg"

    invoke-virtual {v3, v4}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1628
    .local v2, "message":Ljava/lang/String;
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v5, 0x1

    invoke-static {v4, p1, v5, v7, v7}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1630
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v5, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v5}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1632
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v1

    .line 1633
    .local v1, "ctx":Landroid/content/Context;
    instance-of v4, v1, Landroid/app/Activity;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 1635
    check-cast v0, Landroid/app/Activity;

    .line 1636
    .local v0, "activity":Landroid/app/Activity;
    new-instance v4, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$11;

    invoke-direct {v4, p0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$11;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1649
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "ctx":Landroid/content/Context;
    :cond_0
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v5, "onShowInterstitialFail"

    invoke-static {v4, v5, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    return-void
.end method

.method public onShowInterstitialSuccess(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1598
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShowInterstitialSuccess("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v2

    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/supersonicads/sdk/data/AdUnitsState;->adOpened(I)V

    .line 1603
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3, v5, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1604
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1606
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v1

    .line 1607
    .local v1, "ctx":Landroid/content/Context;
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1609
    check-cast v0, Landroid/app/Activity;

    .line 1610
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$10;

    invoke-direct {v2, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$10;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1616
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v3, "onShowInterstitialSuccess"

    invoke-static {v2, v3, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    .end local v1    # "ctx":Landroid/content/Context;
    :cond_1
    return-void
.end method

.method public onShowOfferWallFail(Ljava/lang/String;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1438
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onShowOfferWallFail("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    new-instance v3, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v3, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1441
    .local v3, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v4, "errMsg"

    invoke-virtual {v3, v4}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1443
    .local v2, "message":Ljava/lang/String;
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v5, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v5}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1444
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v1

    .line 1445
    .local v1, "ctx":Landroid/content/Context;
    instance-of v4, v1, Landroid/app/Activity;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 1447
    check-cast v0, Landroid/app/Activity;

    .line 1448
    .local v0, "activity":Landroid/app/Activity;
    new-instance v4, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$6;

    invoke-direct {v4, p0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$6;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1460
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "ctx":Landroid/content/Context;
    :cond_0
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v5, 0x1

    invoke-static {v4, p1, v5, v7, v7}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1461
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v5, "onShowOfferWallFail"

    invoke-static {v4, v5, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    return-void
.end method

.method public onShowOfferWallSuccess(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1415
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShowOfferWallSuccess("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v2

    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/supersonicads/sdk/data/AdUnitsState;->adOpened(I)V

    .line 1419
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1420
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v1

    .line 1421
    .local v1, "ctx":Landroid/content/Context;
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1423
    check-cast v0, Landroid/app/Activity;

    .line 1424
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$5;

    invoke-direct {v2, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$5;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1432
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "ctx":Landroid/content/Context;
    :cond_0
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3, v5, v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1433
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v3, "onShowOfferWallSuccess"

    invoke-static {v2, v3, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    return-void
.end method

.method public onUDIAFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUDIAFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    return-void
.end method

.method public onUDIASuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUDIASuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    return-void
.end method

.method public onVideoStatusChanged(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2214
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onVideoStatusChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    new-instance v1, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2216
    .local v1, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v3, "productType"

    invoke-virtual {v1, v3}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2218
    .local v0, "product":Ljava/lang/String;
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/VideoEventsListener;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2219
    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2220
    const-string v3, "status"

    invoke-virtual {v1, v3}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2221
    .local v2, "status":Ljava/lang/String;
    const-string v3, "started"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2222
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/VideoEventsListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/supersonicads/sdk/controller/VideoEventsListener;->onVideoStarted()V

    .line 2236
    .end local v2    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2223
    .restart local v2    # "status":Ljava/lang/String;
    :cond_1
    const-string v3, "paused"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2224
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/VideoEventsListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/supersonicads/sdk/controller/VideoEventsListener;->onVideoPaused()V

    goto :goto_0

    .line 2225
    :cond_2
    const-string v3, "playing"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2226
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/VideoEventsListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/supersonicads/sdk/controller/VideoEventsListener;->onVideoResumed()V

    goto :goto_0

    .line 2227
    :cond_3
    const-string v3, "ended"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2228
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/VideoEventsListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/supersonicads/sdk/controller/VideoEventsListener;->onVideoEnded()V

    goto :goto_0

    .line 2229
    :cond_4
    const-string v3, "stopped"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2230
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/VideoEventsListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/supersonicads/sdk/controller/VideoEventsListener;->onVideoStopped()V

    goto :goto_0

    .line 2232
    :cond_5
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onVideoStatusChanged: unknown status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 1732
    iget-object v5, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "openUrl("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    new-instance v3, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v3, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1735
    .local v3, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v5, "url"

    invoke-virtual {v3, v5}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1736
    .local v4, "url":Ljava/lang/String;
    const-string v5, "method"

    invoke-virtual {v3, v5}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1739
    .local v2, "method":Ljava/lang/String;
    iget-object v5, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v1

    .line 1741
    .local v1, "mContext":Landroid/content/Context;
    const-string v5, "external_browser"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1743
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1744
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1761
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1746
    :cond_1
    const-string v5, "webview"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1748
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1749
    .restart local v0    # "intent":Landroid/content/Intent;
    sget-object v5, Lcom/supersonicads/sdk/controller/SupersonicWebView;->EXTERNAL_URL:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1750
    sget-object v5, Lcom/supersonicads/sdk/controller/SupersonicWebView;->SECONDARY_WEB_VIEW:Ljava/lang/String;

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1751
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1753
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v5, "store"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1755
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1756
    .restart local v0    # "intent":Landroid/content/Intent;
    sget-object v5, Lcom/supersonicads/sdk/controller/SupersonicWebView;->EXTERNAL_URL:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1757
    sget-object v5, Lcom/supersonicads/sdk/controller/SupersonicWebView;->IS_STORE:Ljava/lang/String;

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1758
    sget-object v5, Lcom/supersonicads/sdk/controller/SupersonicWebView;->SECONDARY_WEB_VIEW:Ljava/lang/String;

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1759
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public removeCloseEventHandler(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCloseEventHandler("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1262
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$702(Lcom/supersonicads/sdk/controller/SupersonicWebView;Z)Z

    .line 1263
    return-void
.end method

.method public saveFile(Ljava/lang/String;)V
    .locals 12
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 868
    iget-object v6, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveFile("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    new-instance v5, Lcom/supersonicads/sdk/data/SSAFile;

    invoke-direct {v5, p1}, Lcom/supersonicads/sdk/data/SSAFile;-><init>(Ljava/lang/String;)V

    .line 872
    .local v5, "ssaFile":Lcom/supersonicads/sdk/data/SSAFile;
    iget-object v6, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v7}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/supersonicads/sdk/utils/SDKUtils;->getAvailableSpaceInMB(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    .line 874
    iget-object v6, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v7, "no_disk_space"

    invoke-static {v6, p1, v11, v7, v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 921
    :goto_0
    return-void

    .line 878
    :cond_0
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->isExternalStorageAvailable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 880
    iget-object v6, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v7, "sotrage_unavailable"

    invoke-static {v6, p1, v11, v7, v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 884
    :cond_1
    iget-object v6, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1000(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->isFileCached(Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAFile;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 885
    iget-object v6, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v7, "file_already_exist"

    invoke-static {v6, p1, v11, v7, v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 889
    :cond_2
    iget-object v6, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/supersonicads/sdk/utils/SDKUtils;->isOnline(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 891
    iget-object v6, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v7, "no_network_connection"

    invoke-static {v6, p1, v11, v7, v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 895
    :cond_3
    iget-object v6, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v7, 0x1

    invoke-static {v6, p1, v7, v10, v10}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-virtual {v5}, Lcom/supersonicads/sdk/data/SSAFile;->getLastUpdateTime()Ljava/lang/String;

    move-result-object v1

    .line 899
    .local v1, "lastUpdateTimeObj":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 901
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 904
    .local v2, "lastUpdateTimeStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 907
    invoke-virtual {v5}, Lcom/supersonicads/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 909
    .local v3, "path":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 910
    invoke-virtual {v5}, Lcom/supersonicads/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 911
    .local v4, "splitArr":[Ljava/lang/String;
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    aget-object v0, v4, v6

    .line 916
    .end local v4    # "splitArr":[Ljava/lang/String;
    .local v0, "folder":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v6

    invoke-virtual {v6, v0, v2}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setCampaignLastUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    .end local v0    # "folder":Ljava/lang/String;
    .end local v2    # "lastUpdateTimeStr":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/precache/DownloadManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/supersonicads/sdk/precache/DownloadManager;->downloadFile(Lcom/supersonicads/sdk/data/SSAFile;)V

    goto :goto_0

    .line 913
    .restart local v2    # "lastUpdateTimeStr":Ljava/lang/String;
    .restart local v3    # "path":Ljava/lang/String;
    :cond_5
    move-object v0, v3

    .restart local v0    # "folder":Ljava/lang/String;
    goto :goto_1
.end method

.method public setBackButtonState(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1780
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBackButtonState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    new-instance v0, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1783
    .local v0, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v2, "state"

    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1785
    .local v1, "state":Ljava/lang/String;
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setBackButtonState(Ljava/lang/String;)V

    .line 1786
    return-void
.end method

.method public setForceClose(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1765
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setForceClose("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    new-instance v1, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1769
    .local v1, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v3, "width"

    invoke-virtual {v1, v3}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1770
    .local v2, "width":Ljava/lang/String;
    const-string v3, "height"

    invoke-virtual {v1, v3}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1772
    .local v0, "hight":Ljava/lang/String;
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$402(Lcom/supersonicads/sdk/controller/SupersonicWebView;I)I

    .line 1773
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$502(Lcom/supersonicads/sdk/controller/SupersonicWebView;I)I

    .line 1774
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v4, "position"

    invoke-virtual {v1, v4}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$602(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 1776
    return-void
.end method

.method public setOrientation(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1100
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setOrientation("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    new-instance v2, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v2, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1103
    .local v2, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v3, "orientation"

    invoke-virtual {v2, v3}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1105
    .local v0, "orientation":Ljava/lang/String;
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v3, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setOrientationState(Ljava/lang/String;)V

    .line 1106
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/supersonicads/sdk/utils/SDKUtils;->getApplicationRotation(Landroid/content/Context;)I

    move-result v1

    .line 1108
    .local v1, "rotation":I
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4900(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1109
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4900(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;->onSetOrientationCalled(Ljava/lang/String;I)V

    .line 1111
    :cond_0
    return-void
.end method

.method public setStoreSearchKeys(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStoreSearchKeys("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setSearchKeys(Ljava/lang/String;)V

    .line 1793
    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 17
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2088
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUserData("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    new-instance v15, Lcom/supersonicads/sdk/data/SSAObj;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2092
    .local v15, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v1, "key"

    invoke-virtual {v15, v1}, Lcom/supersonicads/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2093
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v4, 0x0

    const-string v5, "key does not exist"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v1, v0, v4, v5, v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2117
    :goto_0
    return-void

    .line 2097
    :cond_0
    const-string v1, "value"

    invoke-virtual {v15, v1}, Lcom/supersonicads/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2098
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v4, 0x0

    const-string v5, "value does not exist"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v1, v0, v4, v5, v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2102
    :cond_1
    const-string v1, "key"

    invoke-virtual {v15, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2103
    .local v2, "mKey":Ljava/lang/String;
    const-string v1, "value"

    invoke-virtual {v15, v1}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2105
    .local v3, "mValue":Ljava/lang/String;
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setUserData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 2107
    .local v13, "result":Z
    if-eqz v13, :cond_2

    .line 2109
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3700(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2110
    .local v16, "successFunToCall":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5500(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    .line 2111
    .local v12, "params":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    move-object/from16 v0, v16

    invoke-static {v1, v0, v12}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5600(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2112
    .local v14, "script":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v1, v14}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4100(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V

    goto :goto_0

    .line 2115
    .end local v12    # "params":Ljava/lang/String;
    .end local v14    # "script":Ljava/lang/String;
    .end local v16    # "successFunToCall":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v4, 0x0

    const-string v5, "SetUserData failed writing to shared preferences"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v1, v0, v4, v5, v6}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUserUniqueId(Ljava/lang/String;)V
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 2010
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setUserUniqueId("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    new-instance v2, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v2, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2014
    .local v2, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v4, "userUniqueId"

    invoke-virtual {v2, v4}, Lcom/supersonicads/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "productType"

    invoke-virtual {v2, v4}, Lcom/supersonicads/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2015
    :cond_0
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v5, "uniqueId or productType does not exist"

    invoke-static {v4, p1, v8, v5, v7}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2029
    :goto_0
    return-void

    .line 2019
    :cond_1
    const-string v4, "userUniqueId"

    invoke-virtual {v2, v4}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2020
    .local v3, "uniqueId":Ljava/lang/String;
    const-string v4, "productType"

    invoke-virtual {v2, v4}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2022
    .local v0, "productType":Ljava/lang/String;
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setUniqueId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 2024
    .local v1, "result":Z
    if-eqz v1, :cond_2

    .line 2025
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v5, 0x1

    invoke-static {v4, p1, v5, v7, v7}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2027
    :cond_2
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v5, "setUserUniqueId failed"

    invoke-static {v4, p1, v8, v5, v7}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setWebviewBackgroundColor(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWebviewBackgroundColor("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V

    .line 1800
    return-void
.end method

.method public toggleUDIA(Ljava/lang/String;)V
    .locals 10
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1804
    iget-object v5, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v5}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleUDIA("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    new-instance v2, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v2, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1809
    .local v2, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v5, "toggle"

    invoke-virtual {v2, v5}, Lcom/supersonicads/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1810
    iget-object v5, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v6, "toggle key does not exist"

    invoke-static {v5, p1, v8, v6, v9}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1840
    :cond_0
    :goto_0
    return-void

    .line 1815
    :cond_1
    const-string v5, "toggle"

    invoke-virtual {v2, v5}, Lcom/supersonicads/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1816
    .local v4, "toggleStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1819
    .local v3, "toggle":I
    if-eqz v3, :cond_0

    .line 1824
    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 1826
    .local v0, "binaryToggle":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1827
    iget-object v5, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v6, "fialed to convert toggle"

    invoke-static {v5, p1, v8, v6, v9}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$4400(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1832
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1835
    .local v1, "binaryToggleArr":[C
    const/4 v5, 0x3

    aget-char v5, v1, v5

    const/16 v6, 0x30

    if-ne v5, v6, :cond_3

    .line 1836
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setShouldRegisterSessions(Z)V

    goto :goto_0

    .line 1838
    :cond_3
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->setShouldRegisterSessions(Z)V

    goto :goto_0
.end method
