classdef Rule < handle
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        selector;
        declarations;
    end
    
    methods
        function self = Rule(selector, declarations)
            self.selector = selector;
            self.declarations = declarations;
        end
    end
    
end

