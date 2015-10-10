//
//  main.m
//  bereketHangmanProject
//
//  Created by Bereket  on 6/19/15.
//  Copyright (c) 2015 Bereket . All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char answer[14];
        char guess;
        int currentStrikes = 0;
        int maxStrikes = 6;
        char * phrase = "an beal bocht";
        int  wrong=0;
        int  correctAnswer=0;
        
        for (int counter=0; counter<=12;counter++) {
            answer[counter] = '_';
        }
        answer[13] = '\0';
        
        //main game loop
        while (currentStrikes<maxStrikes && correctAnswer < 11) {
            wrong = 0;
            printf("guess yo lettah!\n");
            scanf("%c",&guess);
            
            if(guess != '\n') {
                
                
                for(int counter=0;counter<=12;counter++){
                    
                    if(guess == phrase[counter])
                    {
                        answer[counter]= guess;
                        
                        correctAnswer++;
                        
                    }
                    //printf("%c",answer[counter]);
                    
                    if (guess != phrase[counter]) {
                        wrong=wrong+1;
                    }
                }
                
                if(wrong==13)
                {
                    currentStrikes++;
                    printf("WRONG! ANSWER\n");
                } else {
                    printf("correct!\n");
                }
                
                printf("%s\n", answer);
                
            }
            
            if(correctAnswer==13)
            {
                printf("YOU WIN");
            }
            
            if (currentStrikes==6) {
                printf("YOU LOSE!!!");
                
            }
            
            fpurge(stdin);
        }
        
        
    }
    
    return 0;
}








//check phrase for guess//

//        for(int counter=0;counter<=13;counter++){
//
//            if(guess == phrase[counter])
//            {
//                answer[counter]=guess;
//                correctAnswer++;
//            }
//            if(correctAnswer==9)
//            {
//                printf("YOU WIN");
//            }
//            printf("%s",answer[counter]);
//
//            if (phrase != answer[counter]) {
//                wrong=wrong+1;
//            }
//                if(wrong==13)
//                {
//                    currentStrikes++;
//                    printf("WRONG! ANSWER");
//                }
//            if (currentStrikes==6) {
//                printf("YOU LOSE!!!");
//
//            }



//    }

// while (phrase[phraseLength] != '\0'){
//     phraseLength++;
// }

