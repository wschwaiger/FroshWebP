{extends file="parent:frontend/detail/images.tpl"}

{block name='frontend_detail_image_thumbs_main_img'}
    <picture>
        {if isset($sArticle.image.thumbnails[0].webp)}
            <source srcset="{$sArticle.image.thumbnails[0].webp.sourceSet}" type="image/webp">
        {/if}
        <img loading="lazy" srcset="{$sArticle.image.thumbnails[0].sourceSet}"
             src="{$sArticle.image.thumbnails[0].source}"
             alt="{s name="DetailThumbnailText" namespace="frontend/detail/index"}{/s}: {$alt}"
             title="{s name="DetailThumbnailText" namespace="frontend/detail/index"}{/s}: {$alt|truncate:160}"
             class="thumbnail--image" />
    </picture>
{/block}

{block name='frontend_detail_image_thumbs_images_img'}
    <picture>
        {if isset($image.thumbnails[0].webp)}
            <source srcset="{$image.thumbnails[0].webp.sourceSet}" type="image/webp">
        {/if}
        <img loading="lazy" srcset="{$image.thumbnails[0].sourceSet}"
             src="{$image.thumbnails[0].source}"
             alt="{s name="DetailThumbnailText" namespace="frontend/detail/index"}{/s}: {$alt}"
             title="{s name="DetailThumbnailText" namespace="frontend/detail/index"}{/s}: {$alt|truncate:160}"
             class="thumbnail--image" />
    </picture>
{/block}
