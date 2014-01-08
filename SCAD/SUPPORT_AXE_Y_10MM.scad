//Dessiné pour arbres de 10mm. Voir le fichier SUPPORT_AXE_Y_8MM.stl pour la version pour arbres 8mm.

r_tige=4.1;
r_cote=4;
r_m3=2;
r_ecrou_m3=3.3;
ecart=8;
hauteur=6;

module support_axe_y(){
	difference(){
		hull(){
			cylinder(h=hauteur, r=r_tige+3, $fn=100);
			translate([ecart,0,0]){cylinder(h=hauteur, r=r_cote, $fn=100);}
			translate([-ecart,0,0]){cylinder(h=hauteur, r=r_cote, $fn=100);}
		}
		translate([0,0,-5]){cylinder(h=hauteur+10, r=r_tige, $fn=100);}
		translate([ecart,0,-5]){cylinder(h=hauteur+10, r=r_m3, $fn=100);}
		translate([-ecart,0,-5]){cylinder(h=hauteur+10, r=r_m3, $fn=100);}

		translate([ecart,0,hauteur-3]){rotate([0,0,30])cylinder(h=hauteur, r=r_ecrou_m3, $fn=6);}
		translate([-ecart,0,hauteur-3]){rotate([0,0,30])cylinder(h=hauteur, r=r_ecrou_m3, $fn=6);}
	}

}

support_axe_y();