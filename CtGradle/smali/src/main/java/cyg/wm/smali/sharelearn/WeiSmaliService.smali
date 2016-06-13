.class public Lcom/xm/worktest/WeiSmaliService;
.super Landroid/app/Service;
.source "WeiSmaliService.java"


# instance fields  变量
.field private isSendNotify:Z

.field private mNotifyHandler:Landroid/os/Handler;

.field private notifyRunable:Ljava/lang/Runnable;


# direct methods 私有 直接方法，
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 96
    new-instance v0, Lcom/xm/worktest/WeiSmaliService$1; # 这个是匿名内部类，构造后放到v0寄存器，
    #这里初始化，因为定义了一个内部类，要初始化内部类的this, 将p0 传过去了，p0作为第二个参数
    invoke-direct {v0, p0}, Lcom/xm/worktest/WeiSmaliService$1;-><init>(Lcom/xm/worktest/WeiSmaliService;)V

    iput-object v0, p0, Lcom/xm/worktest/WeiSmaliService;->notifyRunable:Ljava/lang/Runnable; #再讲上面的内部类实例赋值给变量，

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xm/worktest/WeiSmaliService;->isSendNotify:Z

    return-void
.end method
#匿名内部类的一些调用，会自动生成一些方法， 而且是静态的但是都会在参数寄存器上赋值上对象的地址，
# 这个函数 读取变量字段值
.method static synthetic access$000(Lcom/xm/worktest/WeiSmaliService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xm/worktest/WeiSmaliService;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/xm/worktest/WeiSmaliService;->isSendNotify:Z #获取实例变量 给寄存器 v0

    return v0
.end method

#这个函数是 调用方法
.method static synthetic access$100(Lcom/xm/worktest/WeiSmaliService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xm/worktest/WeiSmaliService;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/xm/worktest/WeiSmaliService;->sendNotify()V

    return-void
.end method

#这个函数是获取对象， Runnable 实例对象，
.method static synthetic access$200(Lcom/xm/worktest/WeiSmaliService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/xm/worktest/WeiSmaliService;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xm/worktest/WeiSmaliService;->notifyRunable:Ljava/lang/Runnable;

    return-object v0
.end method

#这个是获取handler对象
.method static synthetic access$300(Lcom/xm/worktest/WeiSmaliService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xm/worktest/WeiSmaliService;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xm/worktest/WeiSmaliService;->mNotifyHandler:Landroid/os/Handler;

    return-object v0
.end method

#这个是调用 方法 因为方法在主类里面
.method static synthetic access$400(Lcom/xm/worktest/WeiSmaliService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xm/worktest/WeiSmaliService;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/xm/worktest/WeiSmaliService;->cancelNotify()V

    return-void
.end method
#取消通知方法，
.method private cancelNotify()V
    .locals 6 #本地寄存器， 

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/xm/worktest/WeiSmaliService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2 # 这里是获取上次执行invoke的结果放到寄存器中

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0 #把上面执行获取的service对象存放寄存器 v0中

    check-cast v0, Landroid/app/AlarmManager; #因为代码是进行强制转换，这里进行check

    .line 50
    .local v0, "alarmManager":Landroid/app/AlarmManager; #.local 声明了变量的作用域，在 .loacl 声明和.end local之间， 如果没有.end local 表示是到函数结束
    invoke-virtual {p0}, Lcom/xm/worktest/WeiSmaliService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2 #getApplicationContext v2

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.weishop.push.notify"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V #构建intent，

    const/high16 v5, 0x8000000 #这个值是PendingIntent 的flag

    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 54
    .local v1, "notifyIntent":Landroid/app/PendingIntent; #这里是提示，v1中存储的是什么类型的值
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 55
    return-void
.end method

.method private initHandler()V
    .locals 3

    .prologue #代码开始
    .line 83
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "notify_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 85
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xm/worktest/WeiSmaliService;->mNotifyHandler:Landroid/os/Handler;

    .line 86
    return-void
.end method

.method private schedule()V
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xm/worktest/WeiSmaliService;->isSendNotify:Z

    .line 90
    iget-object v0, p0, Lcom/xm/worktest/WeiSmaliService;->mNotifyHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xm/worktest/WeiSmaliService;->notifyRunable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method

.method private sendNotify()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 64
    invoke-virtual {p0}, Lcom/xm/worktest/WeiSmaliService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 67
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {p0}, Lcom/xm/worktest/WeiSmaliService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.weishop.push.notify"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x8000000

    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 71
    .local v1, "scheduleIntent":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 72
    .local v2, "time":J
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_0 # 如果v4 < v5 进行跳转到 :cond_0位置，不是就执行下面的代码

    .line 73
    invoke-virtual {v0, v8, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {v0, v8, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0 #上面已经定义了跳转点， 执行完之后，直接goto 过去
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/xm/worktest/WeiSmaliService;->initHandler()V

    .line 32
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 33
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xm/worktest/WeiSmaliService;->isSendNotify:Z

    .line 25
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 27
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/xm/worktest/WeiSmaliService;->schedule()V

    .line 38
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
