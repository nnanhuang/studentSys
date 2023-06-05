  <template>
    <div class="modal">
      <!-- 弹窗内容 -->
      <h2>这是一个弹窗</h2>
      <p>你可以在这里放置你的弹窗内容。</p>
      <button @click="$emit('close')">关闭</button>
    </div>
  </template>
  
  <script>
  export default {
    // 这里的 $emit('close') 用于向父组件发送一个关闭弹窗的事件
  }
  </script>
  
  <style>
  .modal {
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background-color: #fff;
    padding: 20px;
    border: 1px solid #ccc;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
  }
  </style>
  