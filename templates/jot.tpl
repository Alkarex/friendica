<button class="btn btn-sm btn-main pull-right" id="jotOpen" onclick="jotShow(); return false;"><i class="fa fa-pencil-square-o fa-2x"></i></button>
<!--data-toggle="modal" data-target="#jot-modal"-->



<div id="jot-content">
	<form id="profile-jot-form" action="{{$action}}" method="post">
		<div id="profile-jot-wrapper">
			<div>
				<div id="character-counter" class="grey jothidden text-info pull-left"></div>
				<!--<div id="profile-jot-desc" class="jothidden pull-right">&nbsp;</div>-->
			</div>

			<div id="profile-jot-banner-end"></div>

			<input type="hidden" name="type" value="{{$ptyp}}" />
			<input type="hidden" name="profile_uid" value="{{$profile_uid}}" />
			<input type="hidden" name="return" value="{{$return_path}}" />
			<input type="hidden" name="location" id="jot-location" value="{{$defloc}}" />
			<input type="hidden" name="coord" id="jot-coord" value="" />
			<input type="hidden" name="post_id" value="{{$post_id}}" />
			<input type="hidden" name="preview" id="jot-preview" value="0" />
			<input type="hidden" name="post_id_random" value="{{$rand_num}}" />
			{{if $notes_cid}}
			<input type="hidden" name="contact_allow[]" value="<{{$notes_cid}}>" />
			{{/if}}
			<div id="jot-title-wrap"><input name="title" id="jot-title" class="jothidden jotforms form-control" type="text" placeholder="{{$placeholdertitle}}" title="{{$placeholdertitle}}" value="{{$title}}" style="display:block;" /></div>
			{{if $placeholdercategory}}
			<div id="jot-category-wrap"><input name="category" id="jot-category" class="jothidden jotforms form-control" type="text" placeholder="{{$placeholdercategory}}" title="{{$placeholdercategory}}" value="{{$category}}" /></div>
			{{/if}}

			<div id="jot-text-wrap">
			<textarea rows="2" cols="64" class="profile-jot-text form-control" id="profile-jot-text" name="body" style="min-width:100%; max-width:100%;">{{if $content}}{{$content}}{{else}}{{$share}}{{/if}}</textarea>
			</div>

			<ul id="profile-jot-submit-wrapper" class="jothidden nav nav-pills">
				<li><a id="profile-location" onclick="jotGetLocation();return false;" title="{{$setloc}}"><i class="fa fa-map-marker"></i></a></li>
				<li><a href="#" id="wall-image-upload" title="{{$upload}}" data-toggle="modal" data-target="#PhotoModal"><i class="fa fa-picture-o"></i></a></li>
				<li><a href="#" onclick="return false;" id="wall-file-upload"  title="{{$attach}}"><i class="fa fa-paperclip"></i></a></li>
				<li><a id="profile-link"  ondragenter="return linkdropper(event);" ondragover="return linkdropper(event);" ondrop="linkdrop(event);" onclick="jotGetLink(); return false;" title="{{$weblink}}"><i class="fa fa-link"></i></a></li>
				<li><a id="profile-video" onclick="jotVideoURL();return false;" title="{{$video}}"><i class="fa fa-film"></i></a></li>
				<li><a id="profile-audio" onclick="jotAudioURL();return false;" title="{{$audio}}"><i class="fa fa-music"></i></a></li>
				<!-- TODO: waiting for a better placement 
				<li><a id="profile-nolocation" onclick="jotClearLocation();return false;" title="{{$noloc}}">{{$shortnoloc}}</a></li>
				-->

				<li class="pull-right"><button class="btn btn-primary" id="jot-submit" type="submit" id="profile-jot-submit" name="submit" ><i class="fa fa-slideshare fa-fw"></i> {{$share}}</button></li>
				<div id="profile-rotator-wrapper" style="display: {{$visitor}};" >
					<img id="profile-rotator" src="images/rotator.gif" alt="{{$wait}}" title="{{$wait}}" style="display: none;" />
				</div> 
				<div id="profile-jot-plugin-wrapper">
					{{$jotplugins}}
				</div>
			</ul>
		</div>

		<div id="profile-jot-acl-wrapper" style="display: none;">
			{{$acl}}
		</div>

		<div id="jot-preview-content" style="display:none;"></div>

		{{if $content}}<script>initEditor();</script>{{/if}}
	</form>
</div>


<!-- Modal -->
<div id="jot-modal" class="modal fade" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">

			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<!--<h4 class="modal-title">Modal Header</h4>-->
				<ul class="nav nav-tabs" role="menubar" data-tabs="tabs">
					{{* mark the first list entry as active because it is the first which is active after opening
						the modal. Changing of the activity status is done by js in jot.tpl-header *}}
					<li class="active" role="menuitem"><a id="jot-text-lnk" onclick="jotActive(); return false;">Text</a></li>
					{{if $acl}}<li role="menuitem"><a id="jot-perms-lnk" onclick="aclActive();return false;">Permissions</a></li>{{/if}}
					<li role="menuitem"><a id="jot-preview-lnk" onclick="previewActive();return false;">{{$preview}}</a></li>
				</ul>
			</div>


			<div id="jot-modal-body" class="modal-body">


<!-- End Modal -->
			</div>
		</div>
	</div>
</div>


<script>
        $('iframe').load(function() {
            this.style.height = this.contentWindow.document.body.offsetHeight + 'px';
        });
</script>