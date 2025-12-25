.class Lcom/tweber/stickfighter/g/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/g/w;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/g/w;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/g/y;->a:Lcom/tweber/stickfighter/g/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/g/y;->a:Lcom/tweber/stickfighter/g/w;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/g/w;->a(Lcom/tweber/stickfighter/g/w;F)V

    return-void
.end method
