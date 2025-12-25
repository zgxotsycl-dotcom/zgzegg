.class public Landroid/support/v4/view/da;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/view/df;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/de;

    invoke-direct {v0}, Landroid/support/v4/view/de;-><init>()V

    sput-object v0, Landroid/support/v4/view/da;->a:Landroid/support/v4/view/df;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/dd;

    invoke-direct {v0}, Landroid/support/v4/view/dd;-><init>()V

    sput-object v0, Landroid/support/v4/view/da;->a:Landroid/support/v4/view/df;

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/view/dc;

    invoke-direct {v0}, Landroid/support/v4/view/dc;-><init>()V

    sput-object v0, Landroid/support/v4/view/da;->a:Landroid/support/v4/view/df;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v4/view/db;

    invoke-direct {v0}, Landroid/support/v4/view/db;-><init>()V

    sput-object v0, Landroid/support/v4/view/da;->a:Landroid/support/v4/view/df;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewConfiguration;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/da;->a:Landroid/support/v4/view/df;

    invoke-interface {v0, p0}, Landroid/support/v4/view/df;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/ViewConfiguration;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/da;->a:Landroid/support/v4/view/df;

    invoke-interface {v0, p0}, Landroid/support/v4/view/df;->b(Landroid/view/ViewConfiguration;)Z

    move-result v0

    return v0
.end method
