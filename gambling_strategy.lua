function pvp_avatarinfo:ForFun()

    local capital = 1000; --￥

    local chip = 1;

    math.randomseed(tostring(os.time()):reverse():sub(1, 6));


        for i=1,100 do

            local roll = math.random(1,100);

            print("本金:"..capital.."    筹码:"..chip.."   骰子:"..roll)

            if roll <= 10 then

                capital = capital - chip;

                chip = chip + chip;

            else

                capital = capital + (10*chip);

                chip = 1;

            end

        end

        print("100轮后我的本金:"..capital);


end