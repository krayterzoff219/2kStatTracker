<template>
    <div class="wrap">
        <div class = "text">
            <analyze-form/>
            <analyze-table/>
        </div>
    </div>
</template>

<script>
import AnalyzeForm from '@/components/AnalyzeForm.vue'
import AnalyzeTable from '@/components/AnalyzeTable.vue'
export default {
  components: { AnalyzeForm, AnalyzeTable },

}
</script>

<style scoped>

</style>
