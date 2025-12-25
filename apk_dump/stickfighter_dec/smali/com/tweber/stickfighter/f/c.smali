.class public final enum Lcom/tweber/stickfighter/f/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/tweber/stickfighter/f/c;

.field public static final enum b:Lcom/tweber/stickfighter/f/c;

.field public static final enum c:Lcom/tweber/stickfighter/f/c;

.field public static final enum d:Lcom/tweber/stickfighter/f/c;

.field private static final synthetic e:[Lcom/tweber/stickfighter/f/c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tweber/stickfighter/f/c;

    const-string v1, "DELETE_SEQUENCE"

    invoke-direct {v0, v1, v2}, Lcom/tweber/stickfighter/f/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tweber/stickfighter/f/c;->a:Lcom/tweber/stickfighter/f/c;

    new-instance v0, Lcom/tweber/stickfighter/f/c;

    const-string v1, "IMPORT_SEQUENCE"

    invoke-direct {v0, v1, v3}, Lcom/tweber/stickfighter/f/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tweber/stickfighter/f/c;->b:Lcom/tweber/stickfighter/f/c;

    new-instance v0, Lcom/tweber/stickfighter/f/c;

    const-string v1, "SAVE_BACKUP"

    invoke-direct {v0, v1, v4}, Lcom/tweber/stickfighter/f/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tweber/stickfighter/f/c;->c:Lcom/tweber/stickfighter/f/c;

    new-instance v0, Lcom/tweber/stickfighter/f/c;

    const-string v1, "FRAME_DRAW"

    invoke-direct {v0, v1, v5}, Lcom/tweber/stickfighter/f/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tweber/stickfighter/f/c;->d:Lcom/tweber/stickfighter/f/c;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tweber/stickfighter/f/c;

    sget-object v1, Lcom/tweber/stickfighter/f/c;->a:Lcom/tweber/stickfighter/f/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tweber/stickfighter/f/c;->b:Lcom/tweber/stickfighter/f/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tweber/stickfighter/f/c;->c:Lcom/tweber/stickfighter/f/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tweber/stickfighter/f/c;->d:Lcom/tweber/stickfighter/f/c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tweber/stickfighter/f/c;->e:[Lcom/tweber/stickfighter/f/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tweber/stickfighter/f/c;
    .locals 1

    const-class v0, Lcom/tweber/stickfighter/f/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/f/c;

    return-object v0
.end method

.method public static values()[Lcom/tweber/stickfighter/f/c;
    .locals 1

    sget-object v0, Lcom/tweber/stickfighter/f/c;->e:[Lcom/tweber/stickfighter/f/c;

    invoke-virtual {v0}, [Lcom/tweber/stickfighter/f/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tweber/stickfighter/f/c;

    return-object v0
.end method
