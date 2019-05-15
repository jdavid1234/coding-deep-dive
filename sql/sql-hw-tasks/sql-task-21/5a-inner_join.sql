select    objects.*, 
          images.public_caption, 
          images.original_image_url, 
          images.caption, 
          images.is_oasc, 
          images.gcs_url


from     `bigquery-public-data.the_met.images` images

          -- --------------------------------------------------------------------------------
    inner join `bigquery-public-data.the_met.objects`  objects

      on images.object_id = objects.object_id