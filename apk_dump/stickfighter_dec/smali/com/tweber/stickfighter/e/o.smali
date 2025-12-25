.class Lcom/tweber/stickfighter/e/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/e/m;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/e/m;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/e/o;->a:Lcom/tweber/stickfighter/e/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/e/o;->a:Lcom/tweber/stickfighter/e/m;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/e/m;->dismiss()V

    return-void
.end method
