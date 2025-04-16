<script lang="ts">
  // 这是一个故意格式混乱的文件，用于测试 Prettier 是否能正确格式化
  let count = $state(0);
  function increment() {
    count++;
    console.log("Count is now: " + count);
  }

  $effect(() => {
    if (count > 10) {
      console.log("Count is greater than 10!");
    }
  });
</script>

<h1>Count: {count}</h1>
<button on:click={increment}> Increment</button>

<style>
  button {
    background-color: #4caf50;
    color: white;
    padding: 15px 32px;
    text-align: center;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
  }
</style>
