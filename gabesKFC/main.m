//
//  main.m
//  gabesKFC
//
//  Created by ITMAC1 on 1/29/18.
//  Copyright © 2018 Senior Life Insurance Company. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    typedef enum orderItem {
        Bucket = 1,
        Sandwich = 2,
        Soda = 3,
        FamilyDeal = 4,
        DoubleTrouble = 5,
        LonelyBird = 6,
    };
    
    float bucketPrice = 10.00;
    float bucketCost = 3.75;
    float sandwichPrice = 3.25;
    float sandwichCost = 1.25;
    float sodaPrice = 2.00;
    float sodaCost = 0.25;
    
    float familyPrice = 15.00;
    float familyCost = 4.75;
    float doublePrice = 9.50;
    float doubleCost = 4.50;
    float lonelyPrice = 5.00;
    float lonelyCost = 1.50;
    
    NSArray *orderArray = @[@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda)];
    
    float costTotal = 0;
    float revenueTotal = 0;
    
    for (NSNumber *orderItem in orderArray) {
        
        switch ([orderItem integerValue]) {
            case Bucket:
                
                revenueTotal = revenueTotal + bucketCost;
                costTotal = costTotal + bucketCost;
                
                break;
                
            case Sandwich:
                
                revenueTotal = revenueTotal + sandwichCost;
                costTotal = costTotal + sandwichPrice;
                
                break;
                
            case Soda:
                
                revenueTotal = revenueTotal + sodaCost;
                costTotal = costTotal + sodaPrice;
                
                break;
                
            case FamilyDeal:
                
                revenueTotal = revenueTotal + familyCost;
                costTotal = costTotal + familyPrice;
                
                break;
                
            case DoubleTrouble:
                
                revenueTotal = revenueTotal + doubleCost;
                costTotal = costTotal + doublePrice;
                
                break;
                
            case LonelyBird:
                
                revenueTotal = revenueTotal + lonelyCost;
                costTotal = costTotal + lonelyPrice;
                
                break;
                
            default:
                break;
        }
    }
    
    float profit = revenueTotal - costTotal;
    
    return 0;
}
