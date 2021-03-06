//
//  Contador.m
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contador.h"


@implementation Contador {
    int boy;
    int girl;
}

@synthesize delegate;

static Contador *_instance = nil;

-(id)init {
    self = [super init];
    if (self) {
        boy = 0;
        girl = 0;
    }
    return self;
}

//Singleton
+(Contador*) instance {
    if (_instance == nil) {
        _instance = [[Contador alloc] init];
    }
    return _instance;
}

//Quando um dos métodos abaixo é chamado pela FirstViewController, o delegate envia um comando de atualização para a SecondViewController.
- (void)maisUmCueca {
    boy = boy + 1;
    [delegate atualizarContador];
}
- (void)maisUmaGata {
    girl++;
    [delegate atualizarContador];
}

-(int)getBoys {
    return boy;
}

-(int)getGirls {
    return girl;
}

-(int)getTotal {
    return boy+girl;
}



@end

