classdef myBaselineTest < sltest.TestCase
    methods (Test)
        function testOne(testCase)
            testCase.loadSystem('sltest_ratelim');

            in = testCase.createSimulationInput('sltest_ratelim',...
                'WithHarness','sltest_ratelim_Harness1');           
            in = in.setVariable('t_gain',[0;2],...
                'Workspace','sltest_ratelim');
            in = in.setVariable('u_gain',[-0.02;-4.02],...
                'Workspace','sltest_ratelim');

            simOut = testCase.simulate(in);
            testCase.verifySignalsMatch(simOut,'baseline1.mat');
        end
    end
end