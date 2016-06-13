.class Lcom/xm/worktest/WeiSmaliService$1;
.super Ljava/lang/Object;
.source "WeiSmaliService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations 注解，
.annotation system Ldalvik/annotation/EnclosingClass; # 注解属性 注解类名
    value = Lcom/xm/worktest/WeiSmaliService; # 注解字段 = 值
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xm/worktest/WeiSmaliService; # 关键字表名是合成的， 内部类自动保存着外部类的一个引用


# direct methods
.method constructor <init>(Lcom/xm/worktest/WeiSmaliService;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/xm/worktest/WeiSmaliService$1;->this$0:Lcom/xm/worktest/WeiSmaliService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/xm/worktest/WeiSmaliService$1;->this$0:Lcom/xm/worktest/WeiSmaliService;

    # getter for: Lcom/xm/worktest/WeiSmaliService;->isSendNotify:Z
    invoke-static {v0}, Lcom/xm/worktest/WeiSmaliService;->access$000(Lcom/xm/worktest/WeiSmaliService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/xm/worktest/WeiSmaliService$1;->this$0:Lcom/xm/worktest/WeiSmaliService;

    # invokes: Lcom/xm/worktest/WeiSmaliService;->sendNotify()V
    invoke-static {v0}, Lcom/xm/worktest/WeiSmaliService;->access$100(Lcom/xm/worktest/WeiSmaliService;)V

    .line 101
    iget-object v0, p0, Lcom/xm/worktest/WeiSmaliService$1;->this$0:Lcom/xm/worktest/WeiSmaliService;

    # getter for: Lcom/xm/worktest/WeiSmaliService;->mNotifyHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/xm/worktest/WeiSmaliService;->access$300(Lcom/xm/worktest/WeiSmaliService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xm/worktest/WeiSmaliService$1;->this$0:Lcom/xm/worktest/WeiSmaliService;

    # getter for: Lcom/xm/worktest/WeiSmaliService;->notifyRunable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/xm/worktest/WeiSmaliService;->access$200(Lcom/xm/worktest/WeiSmaliService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/xm/worktest/WeiSmaliService$1;->this$0:Lcom/xm/worktest/WeiSmaliService;

    # invokes: Lcom/xm/worktest/WeiSmaliService;->cancelNotify()V
    invoke-static {v0}, Lcom/xm/worktest/WeiSmaliService;->access$400(Lcom/xm/worktest/WeiSmaliService;)V

    goto :goto_0
.end method
