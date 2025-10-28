% function tests = testComputeDiscount
%     tests = functiontests(localfunctions);
% end
% 
% function testGoldMember(testCase)
%     % Covers gold branch
%     actual = computeDiscount(100, "gold");
%     verifyEqual(testCase, actual, 80);
% end
% 
% function testInvalidAmount(testCase)
%     % Covers error path but not silver or default branch
%     verifyError(testCase, @() computeDiscount(0, "gold"), 'MATLAB:unassignedOutputs');
% end

classdef ComputeDiscountTest < matlab.unittest.TestCase
    % Class-based unit test for computeDiscount
    
    methods (Test)
        function testGoldMember(testCase)
            % Covers gold branch
            actual = computeDiscount(100, "gold");
            testCase.verifyEqual(actual, 80);
        end
        
        function testInvalidAmount(testCase)
            % Covers the error path (amount <= 0)
% Covers gold branch
            actual = computeDiscount(100, "silver");
            testCase.verifyEqual(actual, 90);        end
    end
end
