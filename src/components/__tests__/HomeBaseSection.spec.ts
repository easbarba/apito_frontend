import { describe, it, expect } from 'vitest'

import { mount } from '@vue/test-utils'
import HomeBase from '../HomeBaseSection.vue'

describe('HelloWorld', () => {
  it('renders properly', () => {
    const wrapper = mount(HomeBase)

    expect(wrapper.text()).toContain('Leagues')
  })
})
