<div ng-if="activetab =='/'">{include file='controllers/modules/addons-login.tpl'}</div>
<div ng-if="activetab =='/'">{include file='controllers/modules/pub-banner.tpl'}</div>

<hr>
<div class="row row-margin-bottom row-margin-top">
  <div class="col-sm-8">
     <ul id="modules-main-nav" class="nav nav-pills">
     {literal}
      <li ng-class="{active: activetab =='/'}"><a ng-href="#" ><i class="icon-cube"></i> Catalog</a></li>
      <li ng-class="{active: activetab == '/configure'}"><a ng-href="#/configure" ><i class="icon-sliders"></i> Configure</a></li>
      <li ng-class="{active: activetab == '/notifications'}"><a ng-href="#/notifications"><i class="icon-bell-o"></i> Notifications <span class="badge">5</span></a></li>
      {/literal}
    </ul>   
  </div>
  <div class="col-sm-4">
    <form class="navbar-form navbar-left" role="search">
      <div id="modules-search" class="input-group">
        <input type="text" class="form-control" placeholder="{l s='Search...'}" ng-model="shared.search.term">
        <span class="input-group-btn">
          <button class="btn btn-default" type="button"><i class="icon-search"></i></button>
        </span>
      </div>
    </form>
  </div>
</div>
<hr>
<div ng-if="!shared.search.term" ng-view></div>

<div ng-if="shared.search.term">{include file='controllers/modules/search.tpl'}</div>