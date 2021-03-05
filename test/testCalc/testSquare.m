classdef (TestTags = {'TestSquare'}) testSquare < matlab.unittest.TestCase
    %TESTCALC Summary of this class goes here
    %   Detailed explanation goes here
    
    methods(Test)
        function testSquareForNumbers(testCase)
            %TESTCALC Construct an instance of this class
            %   Detailed explanation goes here
            testCase.verifyEqual(sqNum(2), 4);
        end
    end
end
