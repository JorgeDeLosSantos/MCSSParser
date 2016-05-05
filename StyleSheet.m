classdef StyleSheet < handle
    % StyleSheet     A stylesheet class
    
    properties
        rules;
    end
    
    methods
        function self = StyleSheet(rules)
            self.rules = rules;
        end
    end
    
end

