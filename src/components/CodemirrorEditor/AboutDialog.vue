<template>
  <el-dialog
    title="关于"
    class="about__dialog"
    :visible="visible"
    @close="$emit('close')"
    width="30%"
    center
  >
    <div style="text-align: center">
      <h3>一款高度简洁的微信 Markdown 编辑器</h3>
      <p>扫码关注公众号：魏奇洛，原创文章第一时间推送！</p>
      <img
        src="https://chilohdata.s3.bitiful.net/qrcode.jpg"
        style="width: 40%"
      />
    </div>
    <template slot="footer">
      <el-button
        type="primary"
        @click="onRedirect('https://github.com/chilohwei/md-editor')"
        plain
      >
        项目地址
      </el-button>
      <el-button
        type="primary"
        @click="onRedirect('https://blog.chiloh.cn')"
        plain
      >
        作者博客
      </el-button>
    </template>
  </el-dialog>
</template>

<script>
export default {
  props: {
    visible: {
      type: Boolean,
      default: false,
    },
  },
  methods: {
    onRedirect(url) {
      window.open(url)
    },
  },
}
</script>

<style lang="less" scoped>
/deep/ .el-dialog {
  min-width: 420px;
}
</style>
