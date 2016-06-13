.class public Lcyg/wm/smali/BaseTypeSmali;
.super Ljava/lang/Object;
.source "BaseTypeSmali.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyg/wm/smali/BaseTypeSmali$1;,
        Lcyg/wm/smali/BaseTypeSmali$InnerName;
    }
.end annotation


# instance fields
.field private name_array:[I

.field private name_boolean:Z

.field private name_byte:B

.field private name_char:C

.field private name_class_type:Lcyg/wm/smali/BaseTypeSmali$InnerName;

.field private name_double:D

.field private name_float:F

.field private name_int:I

.field private name_much_array:[[I

.field private name_short:S


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public add(II)I
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 38
    add-int v0, p1, p2

    .line 39
    .local v0, "c":I
    return v0
.end method

.method public arrayOperate()[I
    .registers 5

    .prologue
    .line 49
    const/4 v3, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    .line 51
    .local v2, "data":[I
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget v0, v2, v3

    .line 53
    .local v0, "c":I
    array-length v3, v2

    new-array v1, v3, [I

    .line 55
    .local v1, "cpData":[I
    return-object v1

    .line 49
    nop

    :array_10
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public getNameInt()I
    .registers 2

    .prologue
    .line 29
    iget v0, p0, Lcyg/wm/smali/BaseTypeSmali;->name_int:I

    return v0
.end method

.method public getNameMuchArray()[[I
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcyg/wm/smali/BaseTypeSmali;->name_much_array:[[I

    return-object v0
.end method

.method public show()V
    .registers 3

    .prologue
    .line 44
    new-instance v0, Lcyg/wm/smali/BaseTypeSmali$InnerName;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcyg/wm/smali/BaseTypeSmali$InnerName;-><init>(Lcyg/wm/smali/BaseTypeSmali;Lcyg/wm/smali/BaseTypeSmali$1;)V

    .line 45
    .local v0, "innerName":Lcyg/wm/smali/BaseTypeSmali$InnerName;
    const-string v1, "ceshi"

    # setter for: Lcyg/wm/smali/BaseTypeSmali$InnerName;->data:Ljava/lang/String;
    invoke-static {v0, v1}, Lcyg/wm/smali/BaseTypeSmali$InnerName;->access$102(Lcyg/wm/smali/BaseTypeSmali$InnerName;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    return-void
.end method
