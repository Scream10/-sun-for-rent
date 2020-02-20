import "bootstrap";
import 'flatpickr/dist/themes/material_green';

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
import { toggleDateInputs } from '../plugins/init_flatpickr';
import { flatpickr } from '../plugins/init_flatpickr';

initMapbox();
toggleDateInputs();

// A BOUGER DANS LE BON FICHIER MAIS JE SAIS PAS LEQUEL...
$(function () {
  $('[data-toggle="popover"]').popover()
})
