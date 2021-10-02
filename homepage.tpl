{if $templatefile != 'homepage'}
{if !empty($productGroups) || $registerdomainenabled || $transferdomainenabled}
    <h2 class="text-center mb-md-5 mb-4 text-white">Browse our Products/Services</h2>

    <div class="card-columns home">
        {foreach $productGroups as $productGroup}

            <div class="card mb-3 product-boxes">
                <div class="card-body p-lg-4 p-xl-5 text-center">
                    <h3 class="card-title pricing-card-title">
                        {$productGroup->name}
                    </h3>
                    <p>{$productGroup->tagline}</p>
                    <a href="{$productGroup->getRoutePath()}" class="btn btn-block btn-outline-primary">
                        {lang key='browseProducts'}
                    </a>
                </div>
            </div>

        {/foreach}

        {if $registerdomainenabled}
            <div class="card mb-3 product-boxes">
                <div class="card-body p-lg-4 p-xl-5 text-center">
                    <h3 class="card-title pricing-card-title">
                        {lang key='orderregisterdomain'}
                    </h3>
                    <p>{lang key='secureYourDomain'}</p>
                    <a href="cart.php?a=add&domain=register" class="btn btn-block btn-outline-primary">
                        {lang key='navdomainsearch'}
                    </a>
                </div>
            </div>
        {/if}
        {if $transferdomainenabled}
            <div class="card mb-3 product-boxes">
                <div class="card-body p-lg-4 p-xl-5 text-center">
                    <h3 class="card-title pricing-card-title">
                        {lang key='transferYourDomain'}
                    </h3>
                    <p>{lang key='transferExtend'}</p>
                    <a href="cart.php?a=add&domain=transfer" class="btn btn-block btn-outline-primary">
                        {lang key='transferYourDomain'}
                    </a>
                </div>
            </div> 
        {/if} 
    </div>
{/if}
</section>
{/if}
<section class="homepage-help-section">
<div class="container">
<h2 class="text-center mb-md-5 mb-4 text-white">{lang key='howCanWeHelp'}</h2>

<div class="row action-icon-btns">
    <div class="col-6 col-md-4 col-lg mb-3">
        <a href="{routePath('announcement-index')}" class="card-accent-teal">
            <figure class="ico-container">
                <i class="fal fa-bullhorn"></i>
            </figure>
            {lang key='announcementstitle'}
        </a>
    </div>
    <div class="col-6 col-md-4 col-lg mb-3">
        <a href="serverstatus.php" class="card-accent-pomegranate">
            <figure class="ico-container">
                <i class="fal fa-server"></i>
            </figure>
            {lang key='networkstatustitle'}
        </a>
    </div>
    <div class="col-6 col-md-4 col-lg mb-3">
        <a href="{routePath('knowledgebase-index')}" class="card-accent-sun-flower">
            <figure class="ico-container">
                <i class="fal fa-book"></i>
            </figure>
            {lang key='knowledgebasetitle'}
        </a>
    </div>
    <div class="col-6 col-md-4 offset-md-2 offset-lg-0 col-lg mb-3">
        <a href="{routePath('download-index')}" class="card-accent-asbestos">
            <figure class="ico-container">
                <i class="fal fa-download"></i>
            </figure>
            {lang key='downloadstitle'}
        </a>
    </div>
    <div class="col-6 offset-3 offset-md-0 col-md-4 col-lg mb-3">
        <a href="submitticket.php" class="card-accent-green">
            <figure class="ico-container">
                <i class="fal fa-life-ring"></i>
            </figure>
            {lang key='homepage.submitTicket'}
        </a>
    </div>  
</div>
</div>

{* <h2 class="text-center mb-md-5 mb-4 text-white">{lang key='homepage.yourAccount'}</h2> *}
<div class="container">
<div class="row action-icon-btns">
    <div class="col-6 col-md-4 col-lg mb-lg-0 mb-3">
        <a href="clientarea.php" class="card-accent-midnight-blue">
            <figure class="ico-container">
                <i class="fal fa-home"></i>
            </figure>
            {lang key='homepage.yourAccount'}
        </a>
    </div>
    <div class="col-6 col-md-4 col-lg mb-lg-0 mb-3">
        <a href="clientarea.php?action=services" class="card-accent-midnight-blue">
            <figure class="ico-container">
                <i class="far fa-cubes"></i>
            </figure>
            {lang key='homepage.manageServices'}
        </a>
    </div>
    <div class="col-6 col-md-4 col-lg mb-lg-0 mb-3">
        <a href="clientarea.php?action=domains" class="card-accent-midnight-blue">
            <figure class="ico-container">
                <i class="fal fa-globe"></i>
            </figure>
            {lang key='homepage.manageDomains'}
        </a>
    </div>
    <div class="col-6 col-md-4 offset-md-2 offset-lg-0 col-lg mb-lg-0 mb-3">
        <a href="supporttickets.php" class="card-accent-midnight-blue">
            <figure class="ico-container">
                <i class="fal fa-comments"></i>
            </figure>
            {lang key='homepage.supportRequests'}
        </a>
    </div>
    <div class="col-6 offset-3 offset-md-0 col-md-4 col-lg mb-lg-0 mb-3">
        <a href="clientarea.php?action=masspay&all=true" class="card-accent-midnight-blue">
            <figure class="ico-container">
                <i class="fal fa-credit-card"></i>
            </figure>
            {lang key='homepage.makeAPayment'}
        </a>
    </div>



