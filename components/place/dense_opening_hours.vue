<template>
  <v-list-item-subtitle v-if="openingHours">
    <v-icon
      :class="{ 'success--text': state === 'open', 'error--text': state === 'closed' }"
      x-small
    >osm-time</v-icon>
    <span v-if="alwaysOpen">{{ $t(`details.opening_hours.state.${state}`) }}</span>
    <span v-else>{{ $t(`${namespace}.state_until_date`, { state: $t(`details.opening_hours.state.${state}`), date: formatNextDate}) }}</span>
  </v-list-item-subtitle>
</template>

<script>
import DetailsOpeningHours from './detail_opening_hours';

export default {
  extends: DetailsOpeningHours,
}
</script>
