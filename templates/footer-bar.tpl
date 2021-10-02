<section class="footer-bar" id="footer-bar">
        <div class="container">
            <div class="row">
                <div class="footer-cards col-lg-6 col-md-6 col-sm-6">
                    <small>Payment Method</small>
                    <ul class="footer-cards-list list-unstyled">
                        <li><a href="#"><i class="fab fa-cc-paypal"></i></a></li>
                        <li><a href="#"><i class="fab fa-cc-mastercard"></i></a></li>
                        <li><a href="#"><i class="fab fa-cc-visa"></i></a></li>
                        <li><a href="#"><i class="fab fa-cc-amex"></i></a></li>
                        <li><a href="#"><i class="fab fa-cc-discover"></i></a></li>
                    </ul>
                </div>
                
                <div class="footer-arrow col-lg-6 col-sm-6">
                {include file="$template/includes/social-accounts.tpl"}
                {if $languagechangeenabled && count($locales) > 1 || $currencies}
                        <button type="button" class="btn" data-toggle="modal" data-target="#modalChooseLanguage">
                            <div class="d-inline-block align-middle">
                                <div class="iti-flag {if $activeLocale.countryCode === 'GB'}us{else}{$activeLocale.countryCode|lower}{/if}"></div>
                            </div>
                            {$activeLocale.localisedName}
                            /
                            {$activeCurrency.prefix}
                            {$activeCurrency.code}
                        </button>
                {/if}
                    <a  href="#body"><i class="footer-arrow-setting fas fa-arrow-up"></i></a>
                </div>
            </div>
        </div>
</section>

