import { Story, Meta } from '@storybook/react';
import { App } from './app';

export default {
  component: App,
  title: 'App',
} as Meta;

const Template: Story<typeof App> = (args) => <App {...args} />;

export const Primary = Template.bind({});
Primary.args = {};
