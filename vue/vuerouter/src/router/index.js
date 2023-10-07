import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import AddStatsView from '../views/AddStatsView.vue'
import AnalyzeStatsView from '../views/AnalyzeStatsView.vue'
import UpdateStatsView from '../views/UpdateStatsView.vue'
import ScheduleView from '../views/ScheduleView.vue'
import AddGameScoreView from '../views/AddGameScoreView.vue'


const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/add',
    name: 'add',
    component: AddStatsView
  },
  {
    path: '/update',
    name: 'update',
    component: UpdateStatsView
  },
  {
    path: '/analyze',
    name: 'analyze',
    component: AnalyzeStatsView
  },
  {
    path: '/add-scores',
    name: 'add-scores',
    component: AddGameScoreView
  },
  {
    path: '/schedule',
    name: 'schedule',
    component: ScheduleView
  }
]

const router = createRouter({
  history: createWebHistory(),
  routes
})

export default router
