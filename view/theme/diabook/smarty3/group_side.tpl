<div id="profile_side" >
	<div class="">
		<h3 style="margin-left: 2px;">{{$title}}<a href="group/new" title="{{$createtext}}" class="icon text_add"></a></h3>
	</div>

	<div id="sidebar-group-list">
		<ul class="menu-profile-side">
			{{foreach $groups as $group}}
			<li class="menu-profile-list">
				<a href="{{$group.href}}" class="menu-profile-list-item">
					<span class="menu-profile-icon {{if $group.selected}}group_selected{{else}}group_unselected{{/if}}"></span>
					{{$group.text}}
				</a>
				{{if $group.edit}}
					<a href="{{$group.edit.href}}" class="action"><span class="icon text_edit" ></span></a>
				{{/if}}
				{{if $group.cid}}
					<input type="checkbox" 
						class="{{if $group.selected}}ticked{{else}}unticked {{/if}} action" 
						onclick="contactgroupChangeMember('{{$group.id}}','{{$group.cid}}');return true;"
						{{if $group.ismember}}checked="checked"{{/if}}
					/>
				{{/if}}
			</li>
			{{/foreach}}
		</ul>
	</div>
  {{if $ungrouped}}
  <div id="sidebar-ungrouped">
  <a href="nogroup">{{$ungrouped}}</a>
  </div>
  {{/if}}
</div>	

