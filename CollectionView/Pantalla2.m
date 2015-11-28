//
//  Pantalla2.m
//  CollectionView
//
//  Created by Ricardo Moya Garcia on 25/08/13.
//  Copyright (c) 2013 Ricardo Moya Garcia. All rights reserved.
//

#import "Pantalla2.h"

@interface Pantalla2 ()

@end

@implementation Pantalla2

@synthesize miLabelPantalla2;
@synthesize nombrePajaro;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.miLabelPantalla2.text = nombrePajaro;
}



@end
