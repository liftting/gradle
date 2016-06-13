.class public Lcom/xm/worktest/InterfaceActivity;
.super Landroid/app/Activity;
.source "InterfaceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xm/worktest/InterfaceActivity$MyListListener;
    }
.end annotation


# instance fields
.field private request:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public item(Lcom/xm/worktest/InterfaceActivity$MyListListener;)V
    .locals 0
    .param p1, "listListener"    # Lcom/xm/worktest/InterfaceActivity$MyListListener;

    .prologue
    .line 48
    invoke-interface {p1}, Lcom/xm/worktest/InterfaceActivity$MyListListener;->onItemSelect()V

    .line 49
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v1, 0x7f030018

    invoke-virtual {p0, v1}, Lcom/xm/worktest/InterfaceActivity;->setContentView(I)V

    .line 22
    const v1, 0x7f090048

    invoke-virtual {p0, v1}, Lcom/xm/worktest/InterfaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/xm/worktest/InterfaceActivity;->request:Landroid/widget/Button;

    .line 24
    iget-object v1, p0, Lcom/xm/worktest/InterfaceActivity;->request:Landroid/widget/Button;

    new-instance v2, Lcom/xm/worktest/InterfaceActivity$1; #构建接口对象，

    invoke-direct {v2, p0}, Lcom/xm/worktest/InterfaceActivity$1;-><init>(Lcom/xm/worktest/InterfaceActivity;)V #调用初始化 

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V #调用listener，

    .line 31
    new-instance v0, Lcom/xm/worktest/InterfaceActivity$2;

    invoke-direct {v0, p0}, Lcom/xm/worktest/InterfaceActivity$2;-><init>(Lcom/xm/worktest/InterfaceActivity;)V

    .line 38
    .local v0, "listener":Lcom/xm/worktest/InterfaceActivity$MyListListener;
    invoke-virtual {p0, v0}, Lcom/xm/worktest/InterfaceActivity;->item(Lcom/xm/worktest/InterfaceActivity$MyListListener;)V

    .line 41
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 44
    const-string v0, "test"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 45
    return-void
.end method
