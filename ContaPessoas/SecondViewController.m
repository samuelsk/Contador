//
//  SecondViewController.m
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController () {
      Contador *contador;
}

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    contador = [Contador instance];
    contador.delegate = self; //Esta classe se declara como uma delegatee.
    [self atualizarContador]; //Antes da SecondViewController ser carregada pela primeira vez, ela não se declara como delegatee, ou seja, o método de atualização não pode ser invocado automaticamente durante a invocação dos métodos da FirstView. Por isso, é necessário invocar o método de atualização nesta primeira vez.
}

//Delegate (first attempt)
//- (void)viewDidAppear:(BOOL)animated {
//    [self click:self];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click:(id)sender {
    _totalBoys.text = [NSString stringWithFormat: @"%d", [contador getBoys]];
    _totalGirls.text = [NSString stringWithFormat: @"%d", [contador getGirls]];
    _total.text = [NSString stringWithFormat:@"%d", [contador getTotal]];
}

//Delegate (second attempt)
- (void) atualizarContador {
    _totalBoys.text = [NSString stringWithFormat: @"%d", [contador getBoys]];
    _totalGirls.text = [NSString stringWithFormat: @"%d", [contador getGirls]];
    _total.text = [NSString stringWithFormat:@"%d", [contador getTotal]];
}


@end
