import Rails from "@rails/ujs"
import '../styles/application.scss'

Rails.start()
const images = require.context('../images', true)
