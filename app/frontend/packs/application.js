import Rails from "@rails/ujs"
import '../styles/application'
import 'bootstrap/dist/js/bootstrap'
import "@fortawesome/fontawesome-free/css/all"

Rails.start()
const images = require.context('../images', true)
