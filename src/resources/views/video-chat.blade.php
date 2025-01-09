<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ビデオ通話とチャット</title>
  <link rel="stylesheet" href="{{ asset('css/video-chat.css') }}">
</head>

<body>
  <div class="container">
    <!-- ビデオ通話画面 -->
    <div class="video-section">
      <video id="remoteVideo" autoplay playsinline></video>
      <video id="localVideo" autoplay playsinline muted></video>
    </div>

    <!-- チャット画面 -->
    <div class="chat-section">
      <div class="chat-header">
        <h3>チャット</h3>
      </div>
      <div class="chat-messages" id="chatMessages">
        <!-- メッセージがここに追加される -->
      </div>
      <form id="chatForm" class="chat-input">
        <input type="text" id="chatInput" placeholder="メッセージを入力..." autocomplete="off" />
        <button type="submit">送信</button>
      </form>
    </div>
  </div>

  <script src="{{ asset('js/video-chat.js') }}"></script>
</body>

</html>