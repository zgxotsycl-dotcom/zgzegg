.class public Landroid/support/v4/app/dc;
.super Landroid/support/v4/app/dk;


# static fields
.field public static final a:Landroid/support/v4/app/dl;

.field private static final g:Landroid/support/v4/app/de;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/CharSequence;

.field private final d:[Ljava/lang/CharSequence;

.field private final e:Z

.field private final f:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/app/df;

    invoke-direct {v0}, Landroid/support/v4/app/df;-><init>()V

    sput-object v0, Landroid/support/v4/app/dc;->g:Landroid/support/v4/app/de;

    :goto_0
    new-instance v0, Landroid/support/v4/app/dd;

    invoke-direct {v0}, Landroid/support/v4/app/dd;-><init>()V

    sput-object v0, Landroid/support/v4/app/dc;->a:Landroid/support/v4/app/dl;

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/app/dh;

    invoke-direct {v0}, Landroid/support/v4/app/dh;-><init>()V

    sput-object v0, Landroid/support/v4/app/dc;->g:Landroid/support/v4/app/de;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/app/dg;

    invoke-direct {v0}, Landroid/support/v4/app/dg;-><init>()V

    sput-object v0, Landroid/support/v4/app/dc;->g:Landroid/support/v4/app/de;

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/dk;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/dc;->b:Ljava/lang/String;

    iput-object p2, p0, Landroid/support/v4/app/dc;->c:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/support/v4/app/dc;->d:[Ljava/lang/CharSequence;

    iput-boolean p4, p0, Landroid/support/v4/app/dc;->e:Z

    iput-object p5, p0, Landroid/support/v4/app/dc;->f:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/dc;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/dc;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/dc;->d:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/dc;->e:Z

    return v0
.end method

.method public e()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/dc;->f:Landroid/os/Bundle;

    return-object v0
.end method
