.class Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WpsRunningState"
.end annotation


# instance fields
.field private mSourceMessage:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 9566
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 9571
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap1(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 9570
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 9671
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get106(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 9672
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get106(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    .line 9673
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9674
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap9(Lcom/android/server/wifi/WifiStateMachine;)Z

    .line 9675
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set26(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9670
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const v4, 0x2500c

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9575
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap36(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 9577
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 9664
    return v2

    .line 9582
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    const v2, 0x2500d

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap39(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 9583
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 9584
    iput-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 9585
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap22(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 9586
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap58(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 9666
    :cond_0
    :goto_0
    :sswitch_1
    return v3

    .line 9589
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 9590
    const/4 v2, 0x3

    .line 9589
    invoke-static {v0, v1, v4, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 9591
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 9592
    iput-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 9593
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap58(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 9597
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_2

    .line 9598
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v4, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 9599
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 9600
    iput-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 9601
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap58(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 9603
    :cond_2
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "Ignore unspecified fail event during WPS connection"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 9607
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 9608
    const/4 v2, 0x7

    .line 9607
    invoke-static {v0, v1, v4, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 9609
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 9610
    iput-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 9611
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap58(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 9614
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1, v4, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto :goto_0

    .line 9617
    :sswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get112(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->cancelWps()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9618
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x25010

    invoke-static {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap39(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 9622
    :goto_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap58(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 9620
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x2500f

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto :goto_1

    .line 9635
    :sswitch_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap22(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 9639
    :sswitch_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set52(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9640
    return v3

    .line 9642
    :sswitch_9
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set52(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9643
    return v3

    .line 9645
    :sswitch_a
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "Network connection lost"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9646
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 9649
    :sswitch_b
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "Ignore Assoc reject event during WPS Connection"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9656
    :sswitch_c
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "Ignore auth failure during WPS connection"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9577
    :sswitch_data_0
    .sparse-switch
        0x2000e -> :sswitch_7
        0x20036 -> :sswitch_7
        0x20037 -> :sswitch_7
        0x20047 -> :sswitch_9
        0x20048 -> :sswitch_7
        0x2004a -> :sswitch_7
        0x2004b -> :sswitch_7
        0x2008f -> :sswitch_8
        0x20091 -> :sswitch_8
        0x24003 -> :sswitch_0
        0x24004 -> :sswitch_a
        0x24006 -> :sswitch_1
        0x24007 -> :sswitch_c
        0x24008 -> :sswitch_1
        0x24009 -> :sswitch_3
        0x2400a -> :sswitch_2
        0x2400b -> :sswitch_4
        0x2402b -> :sswitch_b
        0x25001 -> :sswitch_7
        0x2500a -> :sswitch_5
        0x2500e -> :sswitch_6
    .end sparse-switch
.end method