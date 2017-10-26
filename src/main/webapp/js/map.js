AmCharts.makeChart( "mapdiv", {
  /**
   * this tells amCharts it's a map
   */
  "type": "map",

  /**
   * create data provider object
   * map property is usually the same as the name of the map file.
   * getAreasFromMap indicates that amMap should read all the areas available
   * in the map data and treat them as they are included in your data provider.
   * in case you don't set it to true, all the areas except listed in data
   * provider will be treated as unlisted.
   */
  "dataProvider": {
    "map": "GoianiaRegioes",
    "areas" : [
    	{"id" : "GO-CENTRAL"},
    	{"id" : "GO-SUDESTE"},
    	{"id" : "GO-NORTE"},
    	{"id" : "GO-SUL"},
    	{"id" : "GO-SUDOESTE"},
    	{"id" : "GO-OESTE"},
    	{"id" : "GO-NOROESTE"}
    	]
  },

  /**
   * create areas settings
   * autoZoom set to true means that the map will zoom-in when clicked on the area
   * selectedColor indicates color of the clicked area.
   */
  "areasSettings": {
    "autoZoom": true,
    "selectedColor": "#CC0000"
  },
} );