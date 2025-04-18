<?php $this->view('header') ?>

<div class="row p-2 col-md-8 shadow mx-auto border rounded">

         <div class="col-md-10 my-3">
            <?php if (!empty($post)): ?>
                  <?php $this->view('post-full', $data) ?>
            <?php endif; ?>

            <?php $pager->display()?>
         </div>
      </div>
</div>

<?php $this->view('footer') ?>

