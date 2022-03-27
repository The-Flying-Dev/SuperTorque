import React from 'react'
import ReactDOM from 'react-dom'
import PayTypeselector from 'PayTypeSelector'

document.addEventListener('turbolinks:load', function() {
  var element = document.getElementById("pay-type-component");
  ReactDOM.render(<PayTypeselector />, element);
});