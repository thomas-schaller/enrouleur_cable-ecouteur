rayon_enroulement=25;
rayon_axe=5;
rayon_bord=35;
largeur=20;
profondeur_clip=10;
largeur_bord=2;
largeur_clip=5;
bordure_clip=2;
espace_clip=bordure_clip*2;
//creation premier bord
cylinder(largeur_bord,rayon_bord,rayon_bord,$fn=1000);

//creation axe qui va s'enclipser
difference(){
    
    union(){
translate([0,0,profondeur_clip-largeur_clip]){
cylinder (largeur_clip,rayon_axe+bordure_clip,rayon_axe,$fn=1000);
};
cylinder (profondeur_clip-largeur_clip,rayon_axe,rayon_axe,$fn=1000);
}
translate([0,0,(largeur_clip+largeur_bord)/2])
{
cube([espace_clip,200,(200)*2],center=true);
}
}

//creation du couvercle
translate([0,0,largeur_bord]){
    
difference(){
cylinder(largeur,r=rayon_bord,$fn=1000,angle=180);
cylinder(largeur,r=rayon_bord-largeur_bord,$fn=1000);
cube([rayon_bord,rayon_bord,largeur-largeur_bord]);
}
}


