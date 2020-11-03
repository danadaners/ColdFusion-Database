 <cfparam name="p" default="carousel" />

<div id="carousel-desc">
<h2>Featured Books</h2>
<p>
Curabitur finibus finibus velit id laoreet. Aliquam quis urna varius, rutrum nulla eu, volutpat diam. Suspendisse ac maximus tellus, ac pellentesque turpis.Duis massa lacus, convallis quis dui sed, ultricies laoreet purus. Curabitur scelerisque vestibulum nisi a vestibulum. Cras a ex mi.</p>

</div>
<div id="readDeseCarousel" class="carousel slide" data-ride="carousel" data-interval="10000">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#readDeseCarousel" data-slide-to="0" class="active"
            title="Slide1"></li>
        <li data-target="#readDeseCarousel" data-slide-to="1" title="Slide2"></li>

    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="https://lithub.com/wp-content/uploads/2018/12/educated.jpg" alt="..."
                 style="margin-left:auto; margin-right:auto">
            </div>
        </div>
        <div class="item">
            <img src="https://lithub.com/wp-content/uploads/2018/12/9781788731577-4f24c93871d376efaf059ac12bc3811c.jpg" alt="..."
                 style="margin-left:auto; margin-right:auto">
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
