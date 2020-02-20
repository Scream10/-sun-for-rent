import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
import { toggleDateInputs } from '../components/booking';

initMapbox();
toggleDateInputs();

// A BOUGER DANS LE BON FICHIER MAIS JE SAIS PAS LEQUEL...
$(function () {
  $('[data-toggle="popover"]').popover()
})
