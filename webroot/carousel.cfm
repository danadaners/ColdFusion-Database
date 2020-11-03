 <cfparam name="p" default="carousel" />

<div id="readDeseCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#readDeseCarousel" data-slide-to="0" class="active"
            title="Anne of Green Gables"></li>
        <li data-target="#readDeseCarousel" data-slide-to="1" title="Amelia Bedelia"></li>
        <li data-target="#readDeseCarousel" data-slide-to="2" title="Encyclopedia Brown"></li>
        <li data-target="#readDeseCarousel" data-slide-to="3" title="Store Hours"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="../includes/classimages/AOGG.jpg" alt="..."
                 style="margin-left:auto; margin-right:auto">
            <div class="carousel-caption">
            </div>
        </div>
        <div class="item">
            <img src="includes/classimages/EncyclopediaBrown.jpg" alt="..."
                 style="margin-left:auto; margin-right:auto">
            <div class="carousel-caption">
            </div>
        </div>

    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#readDeseCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#readDeseCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
