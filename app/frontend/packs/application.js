import Rails from "@rails/ujs"
import '../styles/application.scss'
import 'bootstrap/dist/js/bootstrap'

Rails.start()
const images = require.context('../images', true)
