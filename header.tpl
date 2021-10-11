<!doctype html>
<html lang="en">

<head>
    <meta charset="{$charset}" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - Apro Hosting</title>
    {include file="$template/includes/head.tpl"}
    {$headoutput}
</head>

<body class="primary-bg-color page-name-{$templatefile}" data-phone-cc-input="{$phoneNumberInputStyle}" id="body">

    {$headeroutput}
    <header id="header" class="header">
        {if $loggedin}
        <div class="topbar variation-2">
            <div class="container">
                <div class="d-flex">
                    <div class="mr-auto">
                        <button type="button" class="btn login-notification" data-toggle="popover"
                            id="accountNotifications" data-placement="bottom">
                            <i class="far fa-flag"></i>
                            {if count($clientAlerts) > 0}
                            {count($clientAlerts)}
                            <span class="d-none d-sm-inline">Notifications</span>
                            {else}
                            <span class="d-sm-none">0</span>
                            <span class="d-none d-sm-inline">{lang key='nonotifications'}</span>
                            {/if}
                        </button>
                        <div id="accountNotificationsContent" class="w-hidden">
                            <ul class="client-alerts">
                                {foreach $clientAlerts as $alert}
                                <li>
                                    <a href="{$alert->getLink()}">
                                        <i
                                            class="fas fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}exclamation-triangle{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
                                        <div class="message">{$alert->getMessage()}</div>
                                    </a>
                                </li>
                                {foreachelse}
                                <li class="none">
                                    {lang key='notificationsnone'}
                                </li>
                                {/foreach}
                            </ul>
                        </div>
                    </div>

                    <div class="ml-auto">
                        <div class="input-group active-client" role="group">
                            <div class="input-group-prepend d-none d-md-inline">
                                <span class="input-group-text">Logged in as:</span>
                            </div>
                            <div class="btn-group">
                                <a href="{$WEB_ROOT}/clientarea.php?action=details" class="btn btn-active-client">
                                    <span>
                                        {if $client.companyname}
                                        {$client.companyname}
                                        {else}
                                        {$client.fullName}
                                        {/if}
                                    </span>
                                </a>
                                <a href="{routePath('user-accounts')}" class="btn switch-btn" data-toggle="tooltip"
                                    data-placement="bottom" title="Switch Account">
                                    <i class="fad fa-random"></i>
                                </a>
                                {if $adminMasqueradingAsClient || $adminLoggedIn}
                                <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-return-to-admin"
                                    data-toggle="tooltip" data-placement="bottom"
                                    title="{if $adminMasqueradingAsClient}{lang key='adminmasqueradingasclient'} {lang key='logoutandreturntoadminarea'}{else}{lang key='adminloggedin'} {lang key='returntoadminarea'}{/if}">
                                    <i class="fas fa-redo-alt"></i>
                                    <span class="d-none d-md-inline-block">{lang key="admin.returnToAdmin"}</span>
                                </a>
                                {/if}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        {/if}


        <div class="navbar navbar-expand-xl main-navbar-wrapper pt-2 pb-2 background-pink">
            <div class="container">
                <div class="collapse navbar-collapse" id="mainNavbar">
                    <form method="post" action="{routePath('knowledgebase-search')}" class="d-xl-none">
                        <div class="input-group search w-100 mb-2">
                            <div class="input-group-prepend">
                                <button class="btn btn-default" type="submit">
                                    <i class="fas fa-search"></i>
                                </button>
                            </div>
                            <input class="form-control prepended-form-control" type="text" name="search"
                                placeholder="{lang key=" Search Our Knowledgebase"}...">
                        </div>
                    </form>
                    <ul id="nav" class="navbar-nav mr-auto natix-host-dropdown-list">
                        {include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}
                    </ul>
                    <ul class="navbar-nav ml-auto natix-host-dropdown">
                        {include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar rightDrop=true}
                    </ul>
                </div>
            </div>
        </div>
    </header>
    <div class="logo-background pt-xl-4 pb-xl-4 pt-3 pb-3">
        <div class="container">
            <a class="navbar-brand" href="/index.php">
                <figure class="navbar-logo">
                    <img class="img-fluid" src="{$WEB_ROOT}/templates/{$template}/assets/images/logo.svg" alt="">
                </figure>
            </a>
            <div class="ml-auto d-flex">
                <form class="d-xl-flex ml-auto natix-host-form mb-0" method="post"
                    action="{routePath('knowledgebase-search')}">
                    <div class="input-group search d-none d-xl-flex text-right float-right ml-auto">
                        <input
                            class="form-control appended-form-control natix-host-form-control ml-auto font-weight-light"
                            type="text" name="search" placeholder="{lang key=" searchOurKnowledgebase"}...">
                    </div>
                </form>
                <ul class="navbar-nav toolbar natix-host-cart ml-auto float-xl-left list-item list-inline-item">
                    <li class="nav-item ml-auto cart-icon">
                        <a class="btn nav-link cart-btn " href="cart.php?a=view">
                            <i class="cart far fa-shopping-cart fa-fw"></i>
                            
                            <span class="badge badge-info">{$cartitems}</span>
                            <span class="sr-only">Shopping Cart</span>
                           

                        </a>
                    </li>
                    <li class="nav-item ml-auto user-icon">
                        <a class="nav-link user-btn " href="cart.php?a=view">
                            <i class="user fas fa-user-lock"></i>
                        </a>
                    </li>
                    <li class="nav-item  d-xl-none ml-auto">
                        <button class="options-btn nav-link" type="button" data-toggle="collapse"
                            data-target="#mainNavbar">
                            <span class="options fal fa-ellipsis-v"></span>
                        </button>
                    </li>
                </ul>
            </div>
        </div>
    </div {* <header class="header">
    <div class="top-bar pb-2 pt-2">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="topbar-setting">
                        <small>WHMCS Theme Already Available. <a class="demo" href=""><span>View Live
                                    Demo</span></a></small>
                        <a class="right-arrow" href="#"><i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <div class="social-settting col-lg-6 col-md-6 col-sm-6 pr-xl-1 ">
                    <ul class="social list-unstyled list-inline float-right mb-0">
                        <li><i class="social-setting fab fa-blogger"></i><a href="#">Blog</a></li>
                        <li><i class="social-setting fas fa-server"></i><a href="#"> Datacenter</a></li>
                        <li><i class="social-setting fas fa-envelope"></i><a href="#">Contact</a></li>
                        <li><i class="phone fas fa-phone-volume"></i><span><a href="tel:+(123) 1234-567-8900">+(123)
                                    1234-567-8900</a></span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    *}

    </header>







    {include file="$template/includes/network-issues-notifications.tpl"}
    {if $templatefile == 'homepage'}
    {include file="$template/templates/banner.tpl"}
    {/if}

    {*
    <nav class="master-breadcrumb" aria-label="breadcrumb">
        <div class="container">
            {include file="$template/includes/breadcrumb.tpl"}
        </div>
    </nav>
    *}

    {include file="$template/includes/verifyemail.tpl"}

    {if $templatefile == 'homepage'}
    {if $registerdomainenabled || $transferdomainenabled}
    {include file="$template/includes/domain-search.tpl"}
    {/if}
    {/if}
    {if $templatefile == 'homepage'}
    {include file="$template/templates/web-hosting-plan.tpl"}
    {/if}

    {if $templatefile == 'homepage'}
    {include file="$template/templates/guarrantee-plan-box.tpl"}
    {/if}

    {if $templatefile == 'homepage'}
    
    {/if}

    {if $templatefile == 'homepage'}
    {include file="$template/templates/feature-section.tpl"}
    {/if}


    {if $templatefile != 'homepage'}
    <section class="   {if $templatefile == 'homepage'} homepage-section {/if} " id="main-body">



        {if $templatefile != 'about' && $templatefile != 'sharedhosting' && $templatefile != 'dedicatedserver' &&
        $templatefile != 'vpsserver' && $templatefile != 'domain' && $templatefile != 'reseller' && $templatefile !=
        'contact-natix' && $templatefile != 'support' && $templatefile != 'datacenter' && $templatefile != 'affiliate'
        && $templatefile != 'ssl-certificate'}

        <div class="{if !$skipMainBodyContainer}container{/if} ">
            <div class="row">
                {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
                <div class="col-lg-4 col-xl-3">
                    <div class="sidebar">
                        {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
                    </div>
                    {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                    <div class="d-none d-lg-block sidebar">
                        {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                    </div>
                    {/if}
                </div>
                {/if}



                <div
                    class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-lg-8 col-xl-9{else}col-12{/if} primary-content">

                    {/if}


                    {/if}