<form method="post" action="domainchecker.php" id="frmDomainHomepage">
    <div class="home-domain-search field-background" id=natix-search-domain>
        <div class="container">
            <div class="p-5 clearfix">
             {*  <h2 class="text-center">{lang key="secureYourDomainShort"}</h2> *}
                <input type="hidden" name="transfer" />
                <div class="input-group-wrapper">
                    <div class="input-group">
                        <input type="text" class="form-control" name="domain" placeholder="{lang key="exampledomain"}" autocapitalize="none">
                        <span class="input-group-append d-none d-sm-block">
                            {if $registerdomainenabled}
                                <button type="submit" class="btn btn-primary domain-search-btn{$captcha->getButtonClass($captchaForm)}" id="btnDomainSearch">
                                    {lang key="search"}
                                </button>   
                            {/if}
                            {if $transferdomainenabled}
                                <button type="submit" id="btnTransfer" data-domain-action="transfer" class="btn btn-success domain-transfer-btn{$captcha->getButtonClass($captchaForm)}">
                                    {lang key="domainstransfer"}
                                </button> 
                            {/if}
                        </span>
                    </div>
                </div>
                <div class="row d-sm-none">
                    {if $registerdomainenabled}
                        <div class="col-6">
                            <button type="submit" class="btn btn-primary domain-search-btn{$captcha->getButtonClass($captchaForm)} btn-block" id="btnDomainSearch2">
                                {lang key="search"}
                            </button>
                        </div>
                    {/if}
                    {if $transferdomainenabled}
                        <div class="col-6">
                            <button type="submit" id="btnTransfer2" data-domain-action="transfer" class="btn btn-success domain-transfer-btn{$captcha->getButtonClass($captchaForm)} btn-block">
                                {lang key="domainstransfer"}
                            </button>
                        </div>
                    {/if}
                </div>
                {include file="$template/includes/captcha.tpl"}

                {if $featuredTlds}
                    <ul class="tld-logos">
                        {foreach $featuredTlds as $num => $tldinfo}
                            {if $num < 3}
                                <li>
                                    <img src="{$BASE_PATH_IMG}/tld_logos/{$tldinfo.tldNoDots}.png">
                                    {if is_object($tldinfo.register)}
                                        {$tldinfo.register->toFull()}
                                    {else}
                                        {lang key="domainregnotavailable"}
                                    {/if}
                                </li>
                            {/if}
                        {/foreach}
                    </ul>
                {/if}

                <a href="{routePath('domain-pricing')}" class="btn btn-link btn-sm float-right">View all pricing</a>
            </div>
        </div>
    </div>
</form>

{*
<div class="field-background">
      <div class="container">
        <div class="field">  
            <form class="subscribe-form">
                <div class="form-group">
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Find Your Perfect Domain Name...">
                </div>
                <button class="search-btn" type="submit">Search</button>
            </form>
            <ul class="price list-unstyled pt-2 pl-xl-4 pr-xl-4">
                <li>.com | $9.99/yr</li>
                <li>.net | $12.99/yr</li>
                <li class="price-setting">.org | $19.99/yr</li>
                <li>.city | $24.99/yr</li>
                <li>.website | $29.99/yr</li>
            </ul>
          </div>
      
    </div>
</div>
*}

