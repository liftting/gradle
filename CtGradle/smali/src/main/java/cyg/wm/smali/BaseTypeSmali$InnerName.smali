.class Lcyg/wm/smali/BaseTypeSmali$InnerName;
.super Ljava/lang/Object;
.source "BaseTypeSmali.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyg/wm/smali/BaseTypeSmali;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerName"
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field final synthetic this$0:Lcyg/wm/smali/BaseTypeSmali;


# direct methods
.method private constructor <init>(Lcyg/wm/smali/BaseTypeSmali;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcyg/wm/smali/BaseTypeSmali$InnerName;->this$0:Lcyg/wm/smali/BaseTypeSmali;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcyg/wm/smali/BaseTypeSmali;Lcyg/wm/smali/BaseTypeSmali$1;)V
    .registers 3
    .param p1, "x0"    # Lcyg/wm/smali/BaseTypeSmali;
    .param p2, "x1"    # Lcyg/wm/smali/BaseTypeSmali$1;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcyg/wm/smali/BaseTypeSmali$InnerName;-><init>(Lcyg/wm/smali/BaseTypeSmali;)V

    return-void
.end method

.method static synthetic access$102(Lcyg/wm/smali/BaseTypeSmali$InnerName;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcyg/wm/smali/BaseTypeSmali$InnerName;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcyg/wm/smali/BaseTypeSmali$InnerName;->data:Ljava/lang/String;

    return-object p1
.end method
