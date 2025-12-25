.class public Lcom/tweber/stickfighter/f/k;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tweber/stickfighter/h/v;

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tweber/stickfighter/h/v;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tweber/stickfighter/f/k;->a:Lcom/tweber/stickfighter/h/v;

    iput-boolean p2, p0, Lcom/tweber/stickfighter/f/k;->b:Z

    iput-object p3, p0, Lcom/tweber/stickfighter/f/k;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/tweber/stickfighter/h/v;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/f/k;->a:Lcom/tweber/stickfighter/h/v;

    return-object v0
.end method
