.class Lcom/tweber/stickfighter/e/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/e/q;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/e/q;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/e/t;->a:Lcom/tweber/stickfighter/e/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/e/t;->a:Lcom/tweber/stickfighter/e/q;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/e/q;->dismiss()V

    return-void
.end method
