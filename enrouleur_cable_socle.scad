rayon_enroulement=25;
rayon_axe=5;
rayon_bord=35;
largeur=20;
largeur_bord=2;
largeur_clip=5;
bordure_clip=2;
diametre_prise=7;
profondeur_clip=10;
difference(){
union() {    
//creation deuxieme bord avec poignée
translate([0,0,largeur]){
cylinder(largeur_bord,rayon_bord,rayon_bord,$fn=1000);
}

//creation espace pour enrouler le cable
cylinder(largeur,rayon_enroulement,rayon_enroulement,$fn=1000);

//creation et placement poignée
translate([rayon_bord/2,rayon_bord/2,largeur]){
cylinder(10,d=5,d=5,$fn=1000);
}
}

union()
{
translate([0,0,-1]){
//creation de l'espace pour enclipser
translate([0,0,profondeur_clip-largeur_clip+1]){
cylinder (largeur+1,rayon_axe+bordure_clip+1,rayon_axe+bordure_clip+1,$fn=1000);
};
cylinder (profondeur_clip-largeur_clip+1,rayon_axe,rayon_axe,$fn=1000);

}
}
//création de l'espace pour le cable
translate([0,0,largeur-largeur_bord*2]){
rotate([90,0,0]){
cylinder(rayon_enroulement,d=diametre_prise,d=diametre_prise,$fn=1000);
}
}
}
