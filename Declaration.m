classdef Declaration < handle
    %Declaration Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        name;
        value;
    end
    
    methods
        function self = Declaration(name, value)
            self.name = name;
            self.value = value;
        end
    end
    
end

