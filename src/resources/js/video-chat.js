document.addEventListener('DOMContentLoaded', () => {
  const chatForm = document.getElementById('chatForm');
  const chatInput = document.getElementById('chatInput');
  const chatMessages = document.getElementById('chatMessages');

  chatForm.addEventListener('submit', (e) => {
    e.preventDefault();
    const message = chatInput.value.trim();
    if (message) {
      const messageElement = document.createElement('div');
      messageElement.textContent = message;
      messageElement.classList.add('chat-message');
      chatMessages.appendChild(messageElement);
      chatInput.value = '';
      chatMessages.scrollTop = chatMessages.scrollHeight;
    }
  });

  // ビデオ通話のセットアップは、WebRTCを使用して追加します。
  // 例: localVideo, remoteVideoへのストリーム設定など。
});