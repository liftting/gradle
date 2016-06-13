.class Lcom/xm/worktest/InterfaceActivity$2;
.super Ljava/lang/Object;
.source "InterfaceActivity.java"

# interfaces
.implements Lcom/xm/worktest/InterfaceActivity$MyListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xm/worktest/InterfaceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xm/worktest/InterfaceActivity;


# direct methods
.method constructor <init>(Lcom/xm/worktest/InterfaceActivity;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/xm/worktest/InterfaceActivity$2;->this$0:Lcom/xm/worktest/InterfaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelect()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/xm/worktest/InterfaceActivity$2;->this$0:Lcom/xm/worktest/InterfaceActivity;

    invoke-virtual {v0}, Lcom/xm/worktest/InterfaceActivity;->show()V

    .line 35
    return-void
.end method
