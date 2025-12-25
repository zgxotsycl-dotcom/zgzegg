.class public final enum Lcom/tweber/stickfighter/h/o;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/tweber/stickfighter/h/o;

.field public static final enum b:Lcom/tweber/stickfighter/h/o;

.field private static final synthetic c:[Lcom/tweber/stickfighter/h/o;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tweber/stickfighter/h/o;

    const-string v1, "All"

    invoke-direct {v0, v1, v2}, Lcom/tweber/stickfighter/h/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tweber/stickfighter/h/o;->a:Lcom/tweber/stickfighter/h/o;

    new-instance v0, Lcom/tweber/stickfighter/h/o;

    const-string v1, "Primitives"

    invoke-direct {v0, v1, v3}, Lcom/tweber/stickfighter/h/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tweber/stickfighter/h/o;->b:Lcom/tweber/stickfighter/h/o;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tweber/stickfighter/h/o;

    sget-object v1, Lcom/tweber/stickfighter/h/o;->a:Lcom/tweber/stickfighter/h/o;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tweber/stickfighter/h/o;->b:Lcom/tweber/stickfighter/h/o;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tweber/stickfighter/h/o;->c:[Lcom/tweber/stickfighter/h/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tweber/stickfighter/h/o;
    .locals 1

    const-class v0, Lcom/tweber/stickfighter/h/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/o;

    return-object v0
.end method

.method public static values()[Lcom/tweber/stickfighter/h/o;
    .locals 1

    sget-object v0, Lcom/tweber/stickfighter/h/o;->c:[Lcom/tweber/stickfighter/h/o;

    invoke-virtual {v0}, [Lcom/tweber/stickfighter/h/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tweber/stickfighter/h/o;

    return-object v0
.end method
