.class Lcom/xm/worktest/InterfaceActivity$1;
.super Ljava/lang/Object;
.source "InterfaceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener; #指定了该类，实现了接口


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xm/worktest/InterfaceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xm/worktest/InterfaceActivity; #外部类的引用


# direct methods
.method constructor <init>(Lcom/xm/worktest/InterfaceActivity;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/xm/worktest/InterfaceActivity$1;->this$0:Lcom/xm/worktest/InterfaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xm/worktest/InterfaceActivity$1;->this$0:Lcom/xm/worktest/InterfaceActivity;

    invoke-virtual {v0}, Lcom/xm/worktest/InterfaceActivity;->show()V

    .line 28
    return-void
.end method
