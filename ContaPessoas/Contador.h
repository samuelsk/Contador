//
//  Contador.h
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

@class Contador; //Declara uma classe para que o protocolo possa enxergá-la.

@protocol ContadorDelegate <NSObject>

- (void)atualizarContador; //Método que deve ser aderido por todas as classes que implementam este protocolo.

@end

@interface Contador : NSObject

@property (nonatomic, weak) id <ContadorDelegate> delegate; //Declara ContadorDelegate como um delegate.

- (void)maisUmCueca;
- (void)maisUmaGata;

+(Contador*) instance;
-(int)getBoys;
-(int)getGirls;
-(int)getTotal;

@end

