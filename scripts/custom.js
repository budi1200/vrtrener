function link(){
	console.log('Hello World');
}

AFRAME.registerComponent('cursor-listener', {
  init: function () {
	  link();
      console.log('Registered!');
  }
});