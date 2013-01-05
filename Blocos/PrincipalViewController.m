//
//  PrincipalViewController.m
//  Blocos
//
//  Created by Rafael Brigagão Paulino on 23/08/12.
//  Copyright (c) 2012 Rafael Brigagão Paulino. All rights reserved.
//

#import "PrincipalViewController.h"

@interface PrincipalViewController ()

@end

@implementation PrincipalViewController

-(IBAction)botaoAnimarClicado:(id)sender
{
    //alterar a posicao do quadrado
    //arc4random gera numeros randomicos (o % e o resto da divisao)
    
    int x = arc4random()%320;
    int y = arc4random()%460;
    //testando para o quadrado nao sair da tela
    if (x + 100 > 320) {
        x = x - 100;
    }
    
    if(y + 100 > 460) {
        y = y - 100;
    }
    
    float vermelho = arc4random()%100;
    float verde = arc4random()%100;
    float azul = arc4random()%100;
    
   
    //faz a animacao ficar mais suave
    /*
     [UIView animateWithDuration:1 animations:^{
        //bloco executado durante a animacao
        quadrado.frame = CGRectMake(x, y, 100, 100);
    }];
    */
    
    //faz a animacao ficar mais suave
    [UIView animateWithDuration:1 animations:^{
        //bloco executado durante a animacao
        quadrado.frame = CGRectMake(x, y, 100, 100);
        
    } completion:^(BOOL finished) {
        //mudando a cor do quadrado
        quadrado.backgroundColor = [UIColor colorWithRed:vermelho/100 green:verde/100 blue:azul/100 alpha:1];
        
    }];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
