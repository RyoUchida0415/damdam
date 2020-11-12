$(function () {
  function readURL(input) {
      //画像を読み込む
      var reader = new FileReader();
      //画像URLをimgに追加
      //画像ファイルが読み込んだら、処理が実行される
      reader.onload = function (e) {
        $('.img_prev').attr('src', e.target.result);
      }
      //画像ファイルのURLを取得
      reader.readAsDataURL(input.files[0]);
  }

  $('.img_field').change(function () {
    readURL(this);
  });
});