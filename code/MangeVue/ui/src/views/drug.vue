<template>
  <div>
    <el-row :gutter="15">
      <el-form ref="elForm" :model="formData" :rules="rules" size="medium" label-width="100px">
        <el-col :span="12">
          <el-form-item label="药品" prop="field101">
            <el-input v-model="formData.field101" placeholder="请输入药品" clearable :style="{width: '100%'}">
            </el-input>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="药品" prop="field102">
            <el-input v-model="formData.field102" placeholder="请输入药品" clearable :style="{width: '100%'}">
            </el-input>
          </el-form-item>
        </el-col>
        <el-col :span="24">
          <el-form-item label="查询" prop="field105">
            <el-button type="primary" icon="el-icon-search" size="medium"> 点击查询 </el-button>
          </el-form-item>
        </el-col>
        <el-col :span="24">
          <el-form-item label="相互作用" prop="field104">
            <el-input type="textarea" v-model="formData.field104" readonly placeholder="显示相互作用" clearable :style="{width: '100%'}">
            </el-input>
          </el-form-item>
        </el-col>
        <el-col :span="24">
          <el-form-item size="large">
            <el-button type="primary" @click="submitForm">提交</el-button>
            <el-button @click="resetForm">重置</el-button>
          </el-form-item>
        </el-col>
      </el-form>
    </el-row>
  </div>
</template>
<script>
export default {
  components: {},
  props: [],
  data() {
    return {
      formData: {
        field101: undefined,
        field102: undefined,
        field105: undefined,
        field104: undefined,
      },
      rules: {
        field101: [{
          required: true,
          message: '请输入药品',
          trigger: 'blur'
        }],
        field102: [{
          required: true,
          message: '请输入药品',
          trigger: 'blur'
        }],
        field104: [{
          required: false,
          message: '请输入相互作用',
          trigger: 'blur'
        }],
      },
    }
  },
  computed: {},
  watch: {},
  created() {},
  mounted() {},
  methods: {
    submitForm() {
      this.$refs['elForm'].validate(valid => {
        if (!valid) return
        // TODO 提交表单
      })
    },
    resetForm() {
      this.$refs['elForm'].resetFields()
    },
  }
}

</script>
<style>
</style>
