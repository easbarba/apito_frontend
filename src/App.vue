<script setup lang="ts">
import Navbar from '@/components/NavbarSection.vue'
import Footer from '@/components/FooterSection.vue'
</script>

<template>
  <header>
    <Navbar id="navbar"></Navbar>
  </header>

  <Footer id="footer"></Footer>
</template>

<style scoped>
@tailwind base;
@tailwind components;
@tailwind utilities;
</style>
