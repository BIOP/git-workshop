// clear the roiManager
roiManager("reset");
// get the current image name
imageName = getTitle();
// "cleaning" using filtering
run("Median...", "radius=1");
// Threshold
setAutoThreshold("Huang dark");
//Convert to mask
run("Invert");
setOption("BlackBackground", true);
run("Convert to Mask");
//morphological operations
run("Close-");
run("Fill Holes");
// analyze particles on the first slice only
run("Set Measurements...", "area mean min centroid center perimeter display redirect=None decimal=3");
run("Analyze Particles...", "display overlay add slice");

