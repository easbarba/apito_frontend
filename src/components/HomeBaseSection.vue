<template>
  <main>
    <h3>Leagues</h3>

    <div>
      <ul v-if="leagues && leagues.length">
        <li v-for="(league, index) of leagues" :key="index" style="list-style: none">
          <p>
            <strong>Name:</strong> {{ league.name }} <strong>Year:</strong>
            {{ league.year }}
          </p>
          <p><strong>Teams:</strong> {{ league.teams }}</p>
        </li>
      </ul>
      <ul v-if="errors && errors.length">
        <li v-for="(error, index) of errors" :key="index">
          {{ error.message }}
        </li>
      </ul>
    </div>
    <slot />
  </main>
</template>

<script setup lang="ts">
import { ref, onMounted } from 'vue'
import axios, { type AxiosResponse } from 'axios'

interface League {
  name: string
  year: number
  teams: string[]
}

let leagues: League[] = ref([])
let errors: AxiosResponse = ref([])

function getLeagues(): void {
  axios
    .get<League[]>(`http://localhost:5000/api/v1/leagues`, {
      headers: {
        Accept: 'application/json'
      }
    })
    .then((response) => {
      let foo = response.data
      leagues.value = foo.data // JSON responses are automatically parsed.
    })
    .catch((e) => {
      errors.value.push(e)
    })
}

onMounted(() => {
  getLeagues()
})
</script>
