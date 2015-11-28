//
//  RichardViewController.m
//  CollectionView
//
//  Created by Ricardo Moya Garcia on 25/08/13.
//  Copyright (c) 2013 Ricardo Moya Garcia. All rights reserved.
//

#import "RichardViewController.h"
#import "Pantalla2.h"

@interface RichardViewController ()

@end

@implementation RichardViewController

@synthesize pajaros;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    pajaros = [NSMutableArray arrayWithObjects:@"BUHO", @"COLIBRÍ", @"CUERVO", @"FLAMENCO", @"KIWI", @"LORO", @"PAVO", @"PINGÜINO", nil];
}


//****************************************************************************//
/*     Métodos de la clase UICollectionView que tenemos que sobreescribir     */
//****************************************************************************//

/*
 * Metodo que devuelve el numero de secciones que va a tener
 */
-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

/*
 * Método que devuelve el numero de celdas que va a tener el Collection View
 */
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return pajaros.count;
}


/*
 * Metodo en el que asignamos contenido a cada celda de la tabla
 */
-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    // Me creo un objeto de la Clase Celda
    Celda *celda = [collectionView dequeueReusableCellWithReuseIdentifier:@"celdaPajaros" forIndexPath:indexPath];
    
    // Poner el contenido en la celda de los diferentes elementos
    celda.miLabel.text = self.pajaros[indexPath.row];
    
    // Añadimos las imagenes de los pajaros
    UIImage *img;
    
    switch (indexPath.row) {
        case 0:
            img = [UIImage imageNamed:@"im_buho.jpg"];
            break;
        case 1:
            img = [UIImage imageNamed:@"im_colibri.jpg"];
            break;
        case 2:
            img = [UIImage imageNamed:@"im_cuervo.jpg"];
            break;
        case 3:
            img = [UIImage imageNamed:@"im_flamenco.jpg"];
            break;
        case 4:
            img = [UIImage imageNamed:@"im_kiwi.jpg"];
            break;
        case 5:
            img = [UIImage imageNamed:@"im_loro.jpg"];
            break;
        case 6:
            img = [UIImage imageNamed:@"im_pavo.jpg"];
            break;
        case 7:
            img = [UIImage imageNamed:@"im_pinguino.jpg"];
            break;
        default:
            break;
    }
    
    celda.miImagen.image = img;
    
    return celda;
}


-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
     
     if ([segue.identifier isEqualToString:@"pasarPajaro"]){
         
         // Defino la vistaDestino
         Pantalla2 *pantallaDestino = [segue destinationViewController];
         
         // Identifico la celda y cojo su posición
         Celda *cell = (Celda *)sender;
         NSIndexPath *posicionCelda = [self.collectionView indexPathForCell:cell];
         
         // Paso el contenido de la celda
         pantallaDestino.nombrePajaro = [pajaros objectAtIndex:posicionCelda.row];
         
     }
 }

@end
