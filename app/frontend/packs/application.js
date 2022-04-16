import Rails from "@rails/ujs"
import '../styles/application'
import '../styles/user'
import 'bootstrap/dist/js/bootstrap'
import '@fortawesome/fontawesome-free/css/all'
import 'lightbox2/dist/js/lightbox-plus-jquery'

Rails.start()
const images = require.context('../images', true)
