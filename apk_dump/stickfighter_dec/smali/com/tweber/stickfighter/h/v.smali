.class public Lcom/tweber/stickfighter/h/v;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tweber/stickfighter/h/v;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:F

.field private e:I

.field private f:Lcom/tweber/stickfighter/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tweber/stickfighter/h/v;->a:Lcom/tweber/stickfighter/h/v;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;FI)V
    .locals 4

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tweber/stickfighter/h/v;->e:I

    iput p1, p0, Lcom/tweber/stickfighter/h/v;->b:I

    iput-object p2, p0, Lcom/tweber/stickfighter/h/v;->c:Ljava/lang/String;

    iput p3, p0, Lcom/tweber/stickfighter/h/v;->d:F

    if-nez p4, :cond_0

    move p4, v0

    :cond_0
    iput p4, p0, Lcom/tweber/stickfighter/h/v;->e:I

    new-instance v0, Lcom/tweber/stickfighter/c/a;

    int-to-long v2, p1

    invoke-direct {v0, v2, v3}, Lcom/tweber/stickfighter/c/a;-><init>(J)V

    iput-object v0, p0, Lcom/tweber/stickfighter/h/v;->f:Lcom/tweber/stickfighter/c/a;

    return-void
.end method

.method public static a()Lcom/tweber/stickfighter/h/v;
    .locals 1

    sget-object v0, Lcom/tweber/stickfighter/h/v;->a:Lcom/tweber/stickfighter/h/v;

    return-object v0
.end method

.method public static a(Lcom/tweber/stickfighter/h/v;)V
    .locals 0

    sput-object p0, Lcom/tweber/stickfighter/h/v;->a:Lcom/tweber/stickfighter/h/v;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tweber/stickfighter/h/v;->e:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tweber/stickfighter/h/v;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/h/v;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/tweber/stickfighter/h/v;->d:F

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/tweber/stickfighter/h/v;->e:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/tweber/stickfighter/h/v;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/tweber/stickfighter/h/v;

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/v;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/v;->b()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f()Lcom/tweber/stickfighter/c/a;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/h/v;->f:Lcom/tweber/stickfighter/c/a;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/v;->b()I

    move-result v0

    return v0
.end method
